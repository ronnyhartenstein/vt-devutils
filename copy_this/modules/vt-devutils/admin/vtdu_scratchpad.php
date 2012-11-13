<?php

class vtdu_scratchpad extends oxAdminView {

   protected $_tpl = 'vtdu_scratchpad.tpl';

   public function render() {
		ob_start();
      $this->doTest();
		$this->_aViewData["content"] = ob_get_contents();
		ob_end_clean();
      parent::render();
      return $this->_tpl;
   }

   public function doTest() {
		
		$cfg = $this->getConfig();
		$soxId = "1074279e67a85f5b1.96907412";
		
		$oContent = oxNew("oxcontent");
		$oContent->load($soxId);
		//$oContent->loadInLang( $this->_iEditLang, $soxId );
		$this->_aViewData["oContent"] = $oContent;
		
		$header = implode("<br/>", $cfg->getConfigParam("aCms2PdfHeader"));
		$content = $oContent->oxcontents__oxcontent->value;
		var_dump($content);
		var_dump($oContent->getLink());
		//$html = oxUtilsView::getInstance()->parseThroughSmarty( $content, $oContent->oxcontents__oxid->value);
		//$html = $oContent->oxcontents__oxcontent->value;
		//echo $html;
		
		
	}

}