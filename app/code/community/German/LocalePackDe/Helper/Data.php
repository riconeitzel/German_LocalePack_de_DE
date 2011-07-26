<?php
/**
 * @category German
 * @package German_LocalePack
 * @authors Daniel Sasse <info@golox-web.de, http://www.golox-web.de/> - Rico Neitzel <rico@buro71a.de, http://www.buro71a.de/>
 * @developer Daniel Sasse <info@golox-web.de, http://www.golox-web.de/>  
 * @version 1.6.x
 * @copyright TMEDIA cross communications, Doris Teitge-Seifert
 * @license http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)  
 */
?>
<?php
 
class German_LocalePackDe_Helper_Data extends Mage_Core_Helper_Abstract
{
    
	const XML_PATH_ENABLED   = 'localepackde/attributes/install';

    public function isEnabled()
    {
        return Mage::getStoreConfig( self::XML_PATH_ENABLED );
    }
    
}
