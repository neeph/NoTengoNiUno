<?php

class TransaccionController extends Zend_Controller_Action {

    public function init() {
        $ajaxContext = $this->_helper->getHelper('AjaxContext');
        $ajaxContext->addActionContext('add', array('html', 'json'))
                ->addActionContext('carga', array('html', 'json'))
                ->addActionContext('desactiva', array('html', 'json'))
                ->addActionContext('cargaTotales', array('html', 'json'))
                ->initContext();

        $this->view->headLink()->appendStylesheet($this->view->BaseUrl() . '/themes/base/jquery.ui.all.css');
        $this->view->headLink()->appendStylesheet($this->view->BaseUrl() . '/css/registro.css');
        $this->view->headScript()->appendFile($this->view->BaseUrl() . '/js/ui/jquery.ui.core.js');
        $this->view->headScript()->appendFile($this->view->BaseUrl() . '/js/ui/jquery.ui.widget.js');
        $this->view->headScript()->appendFile($this->view->BaseUrl() . '/js/ui/jquery.ui.datepicker.js');
        $this->view->headScript()->appendFile($this->view->BaseUrl() . '/js/ui/i18n/jquery.ui.datepicker-es.js');
        $this->view->headScript()->appendFile($this->view->BaseUrl() . '/js/jquery.validate.js');
        $this->view->headScript()->appendFile($this->view->BaseUrl() . '/js/ui/jquery.ui.mouse.js');
        $this->view->headScript()->appendFile($this->view->BaseUrl() . '/js/ui/jquery.ui.draggable.js');
        $this->view->headScript()->appendFile($this->view->BaseUrl() . '/js/jquery.number_format.js');
        $this->view->headScript()->appendFile($this->view->BaseUrl() . '/js/depagify.jquery.js');
        $this->view->headScript()->appendFile($this->view->BaseUrl() . '/js/registro.js');
            
        $this->me = Zend_Registry::get("me");
        if(!isset($this->me["id_usuario"])) {
            $data = new Application_Model_Usuario();
            $MP = new Application_Model_UsuarioMP();
            $MP->fetchByFb($this->me["id"], $data);
            $this->me["id_usuario"] = $data->getIdUsuario();
            $authNamespace->id_usuario = $this->me["id_usuario"];
        }
        Zend_Registry::getInstance()->set('me', $this->me);
        $request = $this->getRequest();
        $this->view->controlador = $request->getControllerName();
        
        $this->regMP = new Application_Model_RegistroMP();
        $this->proMP = new Application_Model_ProyectoMP();
        $pro = new Application_Model_Proyecto();
        $this->proMP->find($this->me['id_usuario'], $pro);
        $pro->setIngresos($this->regMP->fetchSumTipo(1, $pro->getIdProyecto()));
        $pro->setEgresos($this->regMP->fetchSumTipo(2, $pro->getIdProyecto()));
        $pro->setBalance($pro->getIngresos() - $pro->getEgresos());
        $this->view->proyecto = $pro;
    }

    public function indexAction() {
        Zend_Paginator::setDefaultScrollingStyle('Sliding');
        Zend_View_Helper_PaginationControl::setDefaultViewPartial('controls.phtml');
        $formReg = new Application_Form_Registro();
        
        $this->view->formReg = $formReg;
        $where = array('ID_PROYECTO' => $this->me['id_usuario']);
        $this->view->reg = $this->regMP->fetchAll(null, $where);
        $attr = array('ID_CATEGORIA', 'CATEGORIA');
        $where = array('ID_PROYECTO' => $this->me["id_usuario"]);
        $catMP = new Application_Model_CategoriaMP();
        $cat = $catMP->fetchAll($attr, $where);
        $catArr = array();
        foreach ($cat as $c) {
            $catArr[$c->getIdCategoria()] = $c->getCategoria();
        }
        $this->view->catArr = $catArr;
        $paginator = Zend_Paginator::factory($this->view->reg);
        $paginator->setItemCountPerPage(20);
        $paginator->setCurrentPageNumber($this->_getParam('page', 1));
        $this->view->paginator = $paginator;

        $catMP = new Application_Model_CategoriaMP();
        $attr = array("ID_CATEGORIA", "CATEGORIA");
        $where = array('ID_PROYECTO' => $this->me['id_usuario']);
        $this->view->cat = $catMP->fetchAll($attr, $where);
    }

    public function addAction() {
        $request = $this->getRequest();
        $form = new Application_Form_Registro();

        if ($this->getRequest()->isPost()) {
            if ($form->isValid($request->getPost())) {
                $data = new Application_Model_Registro($form->getValues());
                $data->setIdUsuario($this->me['id_usuario']);
                $MP = new Application_Model_RegistroMP();
                $res = $MP->save($data);
                $data->setIdRegistro($res);
                
                $MPCat = new Application_Model_CategoriaMP();
                $cat = new Application_Model_Categoria();
                $MPCat->find($data->getIdCategoria(), $cat);
                
//                print_r($cat);
                
                $out["idRegistro"] = $data->getIdRegistro();
                $out["idCategoria"] = $cat->getIdCategoria();
                $out["nomCategoria"] = $cat->getCategoria();
                $out["idTipoRegistro"] = $data->getIdTipoRegistro();
                $out["montoRegistro"] = $data->getMontoRegistro();
                $out["fechaRegistro"] = $data->getFechaRegistro();
                $out["descRegistro"] = $this->view->escape($data->getDescRegistro());
//                $proyecto = array();
                if($out["idTipoRegistro"] == 1) {
                    $proyecto["ingresos"] = $this->view->proyecto->getIngresos() + $out["montoRegistro"];
                    $proyecto["balance"] = $this->view->proyecto->getBalance() + $out["montoRegistro"];
                    $proyecto["egresos"] = $this->view->proyecto->getEgresos();
                } else {
                    $proyecto["egresos"] = $this->view->proyecto->getEgresos() + $out["montoRegistro"];
                    $proyecto["balance"] = $this->view->proyecto->getBalance() - $out["montoRegistro"];
                    $proyecto["ingresos"] = $this->view->proyecto->getIngresos();
                }
                $proyecto["nombre"] = $this->view->proyecto->getNomProyecto();
                $this->view->pro = $proyecto;
                $this->view->res = $out;
            } else {
                $this->view->inn = $form->getValues();
                $this->view->res1 = "form no valido";
            }
        } else {
            $this->view->res2 = "no post";
        }

        $this->view->form = $form;
    }

    public function cargaAction() {
        $request = $this->getRequest();
        if ($this->getRequest()->isGet()) {
            $id = $request->getParam('id');
            $reg = new Application_Model_Registro();
            $MP = new Application_Model_RegistroMP();
            $MP->find($id, $reg);
            
            $MPCat = new Application_Model_CategoriaMP();
            $cat = new Application_Model_Categoria();
            $MPCat->find($reg->getIdCategoria(), $cat);
            
            $out["idRegistro"] = $reg->getIdRegistro();
            $out["idCategoria"] = $cat->getIdCategoria();
            $out["nomCategoria"] = $cat->getCategoria();
            $out["idTipoRegistro"] = $reg->getIdTipoRegistro();
            $out["montoRegistro"] = $reg->getMontoRegistro();
            $out["fechaRegistro"] = $reg->getFechaRegistro();
            $out["descRegistro"] = $reg->getDescRegistro();
            $out["idProyecto"] = $reg->getIdProyecto();

            $this->view->reg = $out;
        }
    }

    public function desactivaAction() {
        $request = $this->getRequest();
        if ($this->getRequest()->isGet()) {
            $id = $request->getParam('id');
            $MP = new Application_Model_RegistroMP();
            $res = $MP->desactiva($id);
            $this->view->res = $res;
            $this->view->proyecto->setIngresos($this->regMP->fetchSumTipo(1, $this->view->proyecto->getIdProyecto()));
            $this->view->proyecto->setEgresos($this->regMP->fetchSumTipo(2, $this->view->proyecto->getIdProyecto()));
            $this->view->proyecto->setBalance($this->view->proyecto->getIngresos() - $this->view->proyecto->getEgresos());
            $proyecto["ingresos"] = $this->view->proyecto->getIngresos();
            $proyecto["balance"] = $this->view->proyecto->getBalance();
            $proyecto["egresos"] = $this->view->proyecto->getEgresos();
            $proyecto["nombre"] = $this->view->proyecto->getNomProyecto();
            $this->view->pro = $proyecto;
        }
    }

    public function cargaTotalesAction() {
        $this->_helper->layout->disableLayout();
        $regMP = new Application_Model_RegistroMP();
        $this->view->ing = $regMP->fetchSumTipo(1, $this->me['id_usuario']);
        $this->view->gas = $regMP->fetchSumTipo(2, $this->me['id_usuario']);
        $this->view->bal = $this->view->ing - $this->view->gas;
    }

    public function categoriaAction() {
        $request = $this->getRequest();
        if ($this->getRequest()->isGet()) {
            $id = $request->getParam('id');
            $this->view->id = $id;
            Zend_View_Helper_PaginationControl::setDefaultViewPartial('controls.phtml');
            $regMP = new Application_Model_RegistroMP();
            $formReg = new Application_Form_Registro();
            $this->view->formReg = $formReg;
            $this->view->categoria = new stdClass();
            $this->view->categoria->ing = $regMP->fetchSumTipo(1, $this->me['id_usuario'], $id);
            $this->view->categoria->gas = $regMP->fetchSumTipo(2, $this->me['id_usuario'], $id);
            $this->view->categoria->bal = $this->view->categoria->ing - $this->view->categoria->gas;
            $where = array('ID_PROYECTO' => $this->me['id_usuario'], 'ID_CATEGORIA' => $id);
            $this->view->reg = $regMP->fetchAll(null, $where);
            $attr = array('ID_CATEGORIA', 'CATEGORIA');
            $where = array('ID_PROYECTO' => $this->me["id_usuario"]);
            $catMP = new Application_Model_CategoriaMP();
            $cat = $catMP->fetchAll($attr, $where);
            $this->view->cat = $cat;
            $catArr = array();
            foreach ($cat as $c) {
                $catArr[$c->getIdCategoria()] = $c->getCategoria();
            }
            $this->view->catArr = $catArr;
            $this->view->categoria->nombre = $catArr[$id];
            $paginator = Zend_Paginator::factory($this->view->reg);
            $paginator->setItemCountPerPage(20);
            $paginator->setCurrentPageNumber($this->_getParam('page', 1));
            $this->view->paginator = $paginator;

//            $catMP = new Application_Model_CategoriaMP();
//            $attr = array("ID_CATEGORIA", "CATEGORIA");
//            $where = array('ID_PROYECTO' => $this->me['id_usuario']);
//            $this->view->cat = $catMP->fetchAll($attr, $where);
//            print_r($this->view->cat);
        }
    }
}
