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

$installer->run("

INSERT INTO `sp_cms_block` (`title`,`identifier`,`content`,`creation_time`,`update_time`,`is_active`) VALUES ('eMail Template Say Hello de','email_template_say_hello','Sehr geehrte(r)',NULL,NULL,'1');
INSERT INTO `sp_cms_block` (`title`,`identifier`,`content`,`creation_time`,`update_time`,`is_active`) VALUES ('eMail Template Contact de','email_template_contact','Falls Sie Fragen oder Anregungen haben, kontaktieren Sie uns bitte wahlweise\r\n{{depend store_email}}per E-Mail <a href=\"mailto:{{var store_email}}\">{{var store_email}}</a>,{{/depend}}\r\n{{depend store_phone}}per Telefon <a href=\"tel:{{var phone}}\">{{var store_phone}}</a>,{{/depend}}\r\nvia <a title=\"Meine Service-Seite auf Skype\" href=\"skype:mein.laden?chat\" target=\"_blank\">Skype-Chat</a> (Benutzername: mein.laden)\r\noder in Facebook auf unserer <a title=\"Meine Fanseite auf Facebook\" href=\"http://www.facebook.com/mein.laden\" target=\"_blank\">Meine Fanseite</a>.',NULL,NULL,'1');
INSERT INTO `sp_cms_block` (`title`,`identifier`,`content`,`creation_time`,`update_time`,`is_active`) VALUES ('eMail Template Say Bye de','email_template_say_bye','Vielen Dank für Ihren Kauf!',NULL,NULL,'1');

    ");

$installer->endSetup();

?>
