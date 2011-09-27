<?php
/**
 * @category German
 * @package German_LocalePack
 * @authors Daniel Sasse <info@golox-web.de, http://www.golox-web.de/> - Rico Neitzel <rico@buro71a.de, http://www.buro71a.de/>
 * @developer Daniel Sasse <info@golox-web.de, http://www.golox-web.de/> - Rico Neitzel <rico@buro71a.de, http://www.buro71a.de/>   
 * @version 1.6.x
 * @license http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)  
 */
class German_LocalePackDe_Model_Address_Config extends Mage_Customer_Model_Address_Config
{
    const DEFAULT_ADDRESS_RENDERER  = 'customer/address_renderer_default';
    const XML_PATH_ADDRESS_TEMPLATE = 'customer/address_templates/';
    const DEFAULT_ADDRESS_FORMAT    = 'oneline';
	
    /**
     * Retrieve default address format
     *
     * @return Varien_Object
     */
    protected function _getDefaultFormat()
    {
        $store = $this->getStore();
        $storeId = $store->getId();
        if(!isset($this->_defaultType[$storeId])) {
            $this->_defaultType[$storeId] = new Varien_Object();
            $this->_defaultType[$storeId]->setCode('default')
                ->setDefaultFormat('{{depend company}}{{var company}} {{/depend}} {{depend prefix}}{{var prefix}} {{/depend}}{{var firstname}} {{depend middlename}}'
                        . '{{var middlename}} {{/depend}}{{var lastname}}{{depend suffix}} {{var suffix}}{{/depend}}, '
                        . '{{var street}}, {{var postcode}}, {{depend region}}{{var region}} {{/depend}}, {{var city}}, {{var country}}');

            $this->_defaultType[$storeId]->setRenderer(
                Mage::helper('customer/address')
                    ->getRenderer(self::DEFAULT_ADDRESS_RENDERER)->setType($this->_defaultType[$storeId])
            );
        }
        return $this->_defaultType[$storeId];
    }

}
