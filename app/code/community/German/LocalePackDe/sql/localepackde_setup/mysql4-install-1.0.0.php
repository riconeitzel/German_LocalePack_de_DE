<?php
/**
 * @category  German
 * @package   German_LocalePack
 * @authors   MaWoScha <mawoscha@siempro.co, http://www.siempro.co/>
 * @developer MaWoScha <mawoscha@siempro.co, http://www.siempro.co/>  
 * @version   1.9.1.0.0
 * @license   http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
 */
$installer = $this;

$installer->startSetup();

$blockContent = <<<EOD
Falls Sie Fragen oder Anregungen haben, kontaktieren Sie uns bitte wahlweise
{{depend store_email}}per E-Mail <a href=\"mailto:{{var store_email}}\">{{var store_email}}</a>,{{/depend}}
{{depend store_phone}}per Telefon <a href=\"tel:{{var phone}}\">{{var store_phone}}</a>,{{/depend}}
via <a title=\"Meine Service-Seite auf Skype\" href=\"skype:mein.laden?chat\" target=\"_blank\">Skype-Chat</a> (Benutzername: mein.laden)
oder in Facebook auf unserer <a title=\"Meine Fanseite auf Facebook\" href=\"http://www.facebook.com/mein.laden\" target=\"_blank\">Meine Fanseite</a>.
EOD;

$storeId = 1;

$staticBlocks = array(
    array(
        'title'         => 'eMail Template Say Hello de',
        'identifier'    => 'email_template_say_hello',
        'content'       => 'Sehr geehrte(r)',
        'is_active'     => 0,
        'stores'        => array($storeId)
    ),
    array(
        'title'         => 'eMail Template Contact de',
        'identifier'    => 'email_template_contact',
        'content'       => $blockContent,
        'is_active'     => 0,
        'stores'        => array($storeId)
    ),
    array(
        'title'         => 'eMail Template Say Bye de',
        'identifier'    => 'email_template_say_bye',
        'content'       => 'Vielen Dank für Ihren Kauf!',
        'is_active'     => 0,
        'stores'        => array($storeId)
    )
);

/**
 * Insert default blocks
 */
foreach ($staticBlocks as $data) {
    try {
        Mage::getModel('cms/block')->setData($data)->save();
    } catch (Exception $e) {
        # To prevent exception "A block identifier with the same properties already exists
        # in the selected store." in "app:code:core:Mage:Cms:Model:Resource:Block.php"
#        throw new Exception("Oops, mi error in DE German LocalePack");
    }
}

$installer->endSetup();

?>
