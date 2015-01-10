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

$cmsBlocks = array(
    array(
        'title'         => 'eMail Template Say Hello de',
        'identifier'    => 'email_template_say_hello',
        'content'       => 'Sehr geehrte(r)',
        'is_active'     => 1,
        'stores'        => 0
    ),
    array(
        'title'         => 'eMail Template Contact de',
        'identifier'    => 'email_template_contact',
        'content'       => $blockContent,
        'is_active'     => 1,
        'stores'        => 0
    ),
    array(
        'title'         => 'eMail Template Say Bye de',
        'identifier'    => 'email_template_say_bye',
        'content'       => 'Vielen Dank für Ihren Kauf!',
        'is_active'     => 1,
        'stores'        => 0
    )
);

/**
 * Insert default blocks
 */
foreach ($cmsBlocks as $data) {
    Mage::getModel('cms/block')->setData($data)->save();
}

$installer->endSetup();

?>
