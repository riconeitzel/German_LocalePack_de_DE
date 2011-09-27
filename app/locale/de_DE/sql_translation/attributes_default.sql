/* 
Übersetzungen für das Magento 1.4.x / 1.5.x Backend
Snippet für eigene Attributübersetzungen: 
UPDATE `eav_attribute` SET `frontend_label` = 'MeinAttributLabel' WHERE `eav_attribute`.`attribute_code` ='attribut_code_aus_datenbank' && `entity_type_id`=1;

Vorne das deutsche Label, hinten den original Attribut-Code - dann noch bei Bedarf die Attributart (Nummer hinten).
Nur nötig wenn es einen Wert öfter gibt und er unterschiedlich heißen soll.




"entity_type_id" unter Magento 1.4.0.1 & 1.4.1.0 Stable 
(mit und ohne installierten Beispieldaten) 

 1 = Kundenattribute
 2 = Kunden Adress-Attribute
 3 = Kategorieattribute (9 wenn Sample Daten installiert)
 4 = Produktattribute (10 wenn Sample Daten installiert)
12 = Attribute Bestellverarbeitung (6 wenn Sample Daten installiert )
10 = Bonus (Extra Produktattribute der Beispieldateien)
*/

-- Kunden und Kundenadress-Attribute + Bestellverarbeitung (1, 2, 6 und 12)
UPDATE `eav_attribute` SET `frontend_label` = 'Associate to Website' WHERE `eav_attribute`.`attribute_code` ='website_id';
UPDATE `eav_attribute` SET `frontend_label` = 'Create In' WHERE `eav_attribute`.`attribute_code` ='store_id';
UPDATE `eav_attribute` SET `frontend_label` = 'Create From' WHERE `eav_attribute`.`attribute_code` ='created_in';
UPDATE `eav_attribute` SET `frontend_label` = 'First Name' WHERE `eav_attribute`.`attribute_code` ='firstname';
UPDATE `eav_attribute` SET `frontend_label` = 'Middle Name/Initial' WHERE `eav_attribute`.`attribute_code` ='middlename';
UPDATE `eav_attribute` SET `frontend_label` = 'Last Name' WHERE `eav_attribute`.`attribute_code` ='lastname';
UPDATE `eav_attribute` SET `frontend_label` = 'Email' WHERE `eav_attribute`.`attribute_code` ='email';
UPDATE `eav_attribute` SET `frontend_label` = 'Customer Group' WHERE `eav_attribute`.`attribute_code` ='group_id';
UPDATE `eav_attribute` SET `frontend_label` = 'Date of Birth' WHERE `eav_attribute`.`attribute_code` ='dob';
UPDATE `eav_attribute` SET `frontend_label` = 'Default Billing Address' WHERE `eav_attribute`.`attribute_code` ='default_billing';
UPDATE `eav_attribute` SET `frontend_label` = 'Default Shipping Address' WHERE `eav_attribute`.`attribute_code` ='default_shipping';
UPDATE `eav_attribute` SET `frontend_label` = 'Company' WHERE `eav_attribute`.`attribute_code` ='company';
UPDATE `eav_attribute` SET `frontend_label` = 'Street Address' WHERE `eav_attribute`.`attribute_code` ='street';
UPDATE `eav_attribute` SET `frontend_label` = 'City' WHERE `eav_attribute`.`attribute_code` ='city';
-- bis Magento 1.4.0.1 "country"
UPDATE `eav_attribute` SET `frontend_label` = 'Country' WHERE `eav_attribute`.`attribute_code` ='country';
-- ab Magento 1.4.1.0 "country_id"
UPDATE `eav_attribute` SET `frontend_label` = 'Country' WHERE `eav_attribute`.`attribute_code` ='country_id';
UPDATE `eav_attribute` SET `frontend_label` = 'State/Province' WHERE `eav_attribute`.`attribute_code` ='region';
UPDATE `eav_attribute` SET `frontend_label` = 'State/Province' WHERE `eav_attribute`.`attribute_code` ='region_id';
UPDATE `eav_attribute` SET `frontend_label` = 'Zip/Postal Code' WHERE `eav_attribute`.`attribute_code` ='postcode';
UPDATE `eav_attribute` SET `frontend_label` = 'Telefon' WHERE `eav_attribute`.`attribute_code` ='telephone';
UPDATE `eav_attribute` SET `frontend_label` = 'Tax/VAT number' WHERE `eav_attribute`.`attribute_code` ='taxvat';
UPDATE `eav_attribute` SET `frontend_label` = 'Is confirmed' WHERE `eav_attribute`.`attribute_code` ='confirmation';
UPDATE `eav_attribute` SET `frontend_label` = 'Created At' WHERE `eav_attribute`.`attribute_code` ='created_at';
UPDATE `eav_attribute` SET `frontend_label` = 'Gender' WHERE `eav_attribute`.`attribute_code` ='gender';

-- Kategorie-Attribute (entity_type_id 3  und wenn Sample Daten installiert 9)
UPDATE `eav_attribute` SET `frontend_label` = 'Name' WHERE `eav_attribute`.`attribute_code` ='name';
UPDATE `eav_attribute` SET `frontend_label` = 'Is Active' WHERE `eav_attribute`.`attribute_code` ='is_active';
UPDATE `eav_attribute` SET `frontend_label` = 'URL key' WHERE `eav_attribute`.`attribute_code` ='url_key';
UPDATE `eav_attribute` SET `frontend_label` = 'Description' WHERE `eav_attribute`.`attribute_code` ='description';
-- UPDATE `eav_attribute` SET `frontend_label` = 'Kategorie Bild' WHERE `eav_attribute`.`attribute_code` ='image';
UPDATE `eav_attribute` SET `frontend_label` = 'Display Mode' WHERE `eav_attribute`.`attribute_code` ='display_mode';
UPDATE `eav_attribute` SET `frontend_label` = 'Is Anchor' WHERE `eav_attribute`.`attribute_code` ='is_anchor';
UPDATE `eav_attribute` SET `frontend_label` = 'Path' WHERE `eav_attribute`.`attribute_code` ='path';
UPDATE `eav_attribute` SET `frontend_label` = 'Position' WHERE `eav_attribute`.`attribute_code` ='position';
UPDATE `eav_attribute` SET `frontend_label` = 'Custom Design' WHERE `eav_attribute`.`attribute_code` ='custom_design';
UPDATE `eav_attribute` SET `frontend_label` = 'Apply To' WHERE `eav_attribute`.`attribute_code` ='custom_design_apply';
UPDATE `eav_attribute` SET `frontend_label` = 'Active From' WHERE `eav_attribute`.`attribute_code` ='custom_design_from';
UPDATE `eav_attribute` SET `frontend_label` = 'Active To' WHERE `eav_attribute`.`attribute_code` ='custom_design_to';
UPDATE `eav_attribute` SET `frontend_label` = 'Page Layout' WHERE `eav_attribute`.`attribute_code` ='page_layout';
UPDATE `eav_attribute` SET `frontend_label` = 'Custom Layout Update' WHERE `eav_attribute`.`attribute_code` ='custom_layout_update';
UPDATE `eav_attribute` SET `frontend_label` = 'Level' WHERE `eav_attribute`.`attribute_code` ='level';
UPDATE `eav_attribute` SET `frontend_label` = 'Available Product Listing Sort By' WHERE `eav_attribute`.`attribute_code` ='available_sort_by';
UPDATE `eav_attribute` SET `frontend_label` = 'Default Product Listing Sort By' WHERE `eav_attribute`.`attribute_code` ='default_sort_by';
-- ab Magento 1.4.1.0
UPDATE `eav_attribute` SET `frontend_label` = 'Include in Navigation Menu' WHERE `eav_attribute`.`attribute_code` ='include_in_menu';

-- Tab in Produktverwaltung "Prices"
UPDATE `eav_attribute_group` SET `attribute_group_name` = 'Prices' WHERE `eav_attribute_group`.`attribute_group_name` ='Prices';
UPDATE `eav_attribute_group` SET `attribute_group_name` = 'Recurring Profile' WHERE `eav_attribute_group`.`attribute_group_name` ='Recurring Profile';

-- Hinweise an Feldern
UPDATE `eav_attribute` SET `note` = 'Products with recurring profile participate in catalog as nominal items.' WHERE `eav_attribute`.`attribute_code` ='is_recurring';
UPDATE `eav_attribute` SET `note` = 'Maximum 255 chars' WHERE `eav_attribute`.`attribute_code` ='meta_description';

-- Produktattribute (entity_type_id 4 und wenn Sample Daten installiert 10)
UPDATE `eav_attribute` SET `frontend_label` = 'Name' WHERE `eav_attribute`.`attribute_code` ='name';
UPDATE `eav_attribute` SET `frontend_label` = 'Description' WHERE `eav_attribute`.`attribute_code` ='description';
UPDATE `eav_attribute` SET `frontend_label` = 'Short Description' WHERE `eav_attribute`.`attribute_code` ='short_description';
UPDATE `eav_attribute` SET `frontend_label` = 'SKU' WHERE `eav_attribute`.`attribute_code` ='sku';
UPDATE `eav_attribute` SET `frontend_label` = 'Price' WHERE `eav_attribute`.`attribute_code` ='price';
UPDATE `eav_attribute` SET `frontend_label` = 'Special Price' WHERE `eav_attribute`.`attribute_code` ='special_price';
UPDATE `eav_attribute` SET `frontend_label` = 'Special Price From Date' WHERE `eav_attribute`.`attribute_code` ='special_from_date';
UPDATE `eav_attribute` SET `frontend_label` = 'Special Price To Date' WHERE `eav_attribute`.`attribute_code` ='special_to_date';
UPDATE `eav_attribute` SET `frontend_label` = 'Cost' WHERE `eav_attribute`.`attribute_code` ='cost';
UPDATE `eav_attribute` SET `frontend_label` = 'Weight' WHERE `eav_attribute`.`attribute_code` ='weight';
UPDATE `eav_attribute` SET `frontend_label` = 'Manufacturer' WHERE `eav_attribute`.`attribute_code` ='manufacturer';
UPDATE `eav_attribute` SET `frontend_label` = 'Media Gallery' WHERE `eav_attribute`.`attribute_code` ='media_gallery';
UPDATE `eav_attribute` SET `frontend_label` = 'Tier Price' WHERE `eav_attribute`.`attribute_code` ='tier_price';
UPDATE `eav_attribute` SET `frontend_label` = 'Color' WHERE `eav_attribute`.`attribute_code` ='color';
UPDATE `eav_attribute` SET `frontend_label` = 'Set Product as New from Date ' WHERE `eav_attribute`.`attribute_code` ='news_from_date';
UPDATE `eav_attribute` SET `frontend_label` = 'Set Product as New to Date ' WHERE `eav_attribute`.`attribute_code` ='news_to_date';
UPDATE `eav_attribute` SET `frontend_label` = 'Image Gallery' WHERE `eav_attribute`.`attribute_code` ='gallery';
UPDATE `eav_attribute` SET `frontend_label` = 'Tax Class' WHERE `eav_attribute`.`attribute_code` ='tax_class_id';
UPDATE `eav_attribute` SET `frontend_label` = 'URL key' WHERE `eav_attribute`.`attribute_code` ='url_key';
UPDATE `eav_attribute` SET `frontend_label` = 'Minimal Price' WHERE `eav_attribute`.`attribute_code` ='minimal_price';
UPDATE `eav_attribute` SET `frontend_label` = 'Visibility' WHERE `eav_attribute`.`attribute_code` ='visibility';
UPDATE `eav_attribute` SET `frontend_label` = 'Display product options in' WHERE `eav_attribute`.`attribute_code` ='gift_message_available';
UPDATE `eav_attribute` SET `frontend_label` = 'Custom Design' WHERE `eav_attribute`.`attribute_code` ='custom_design';
UPDATE `eav_attribute` SET `frontend_label` = 'Active From' WHERE `eav_attribute`.`attribute_code` ='custom_design_from';
UPDATE `eav_attribute` SET `frontend_label` = 'Active To' WHERE `eav_attribute`.`attribute_code` ='custom_design_to';
UPDATE `eav_attribute` SET `frontend_label` = 'Custom Layout Update' WHERE `eav_attribute`.`attribute_code` ='custom_layout_update';
UPDATE `eav_attribute` SET `frontend_label` = 'Page Layout' WHERE `eav_attribute`.`attribute_code` ='page_layout';
UPDATE `eav_attribute` SET `frontend_label` = 'Display product options in' WHERE `eav_attribute`.`attribute_code` ='options_container';
UPDATE `eav_attribute` SET `frontend_label` = 'Is product available for purchase with Google Checkout' WHERE `eav_attribute`.`attribute_code` ='enable_googlecheckout';
UPDATE `eav_attribute` SET `frontend_label` = 'Price View' WHERE `eav_attribute`.`attribute_code` ='price_view';

-- since Magento 1.6.x
UPDATE `eav_attribute` SET `frontend_label` = 'Country of Manufacture' WHERE `eav_attribute`.`attribute_code` ='country_of_manufacture';
UPDATE `eav_attribute` SET `frontend_label` = 'Manufacturer''s Suggested Retail Price' WHERE `eav_attribute`.`attribute_code` ='msrp';
UPDATE `eav_attribute` SET `frontend_label` = 'Display Actual Price' WHERE `eav_attribute`.`attribute_code` ='msrp_display_actual_price_type';
UPDATE `eav_attribute` SET `frontend_label` = 'Apply MAP' WHERE `eav_attribute`.`attribute_code` ='msrp_enabled';

/*
UPDATE `eav_attribute` SET `frontend_label` = 'Base Image Label' WHERE `eav_attribute`.`attribute_code` ='image_label';
UPDATE `eav_attribute` SET `frontend_label` = 'Short Image Label' WHERE `eav_attribute`.`attribute_code` ='small_image_label';
UPDATE `eav_attribute` SET `frontend_label` = 'Thumbnail Label' WHERE `eav_attribute`.`attribute_code` ='thumbnail_label';
UPDATE `eav_attribute` SET `frontend_label` = 'Versand' WHERE `eav_attribute`.`attribute_code` ='shipment_type';
UPDATE `eav_attribute` SET `frontend_label` = 'Beispiel Titel' WHERE `eav_attribute`.`attribute_code` ='samples_title';
UPDATE `eav_attribute` SET `frontend_label` = 'Link Titel' WHERE `eav_attribute`.`attribute_code` ='links_title';
*/
-- ab Magento 1.4.1.0
UPDATE `eav_attribute` SET `frontend_label` = 'Enable Recurring Profile' WHERE `eav_attribute`.`attribute_code` ='is_recurring';
UPDATE `eav_attribute` SET `frontend_label` = 'Recurring Payment Profile' WHERE `eav_attribute`.`attribute_code` ='recurring_profile';

-- Bonus (Produkt-Attribute aus Beispieldaten - entity_type_id 10)
UPDATE `eav_attribute` SET `frontend_label` = 'Activation-Information' WHERE `eav_attribute`.`attribute_code` ='activation_information';
UPDATE `eav_attribute` SET `frontend_label` = 'Megapixels' WHERE `eav_attribute`.`attribute_code` ='megapixels';
UPDATE `eav_attribute` SET `frontend_label` = 'Shirt Size' WHERE `eav_attribute`.`attribute_code` ='shirt_size';
UPDATE `eav_attribute` SET `frontend_label` = 'Max Resulution' WHERE `eav_attribute`.`attribute_code` ='max_resolution';
UPDATE `eav_attribute` SET `frontend_label` = 'RAM Size' WHERE `eav_attribute`.`attribute_code` ='ram_size';
UPDATE `eav_attribute` SET `frontend_label` = 'Shoe Type' WHERE `eav_attribute`.`attribute_code` ='shoe_type';
UPDATE `eav_attribute` SET `frontend_label` = 'Contrast Ratio' WHERE `eav_attribute`.`attribute_code` ='contrast_ratio';
UPDATE `eav_attribute` SET `frontend_label` = 'Response Time' WHERE `eav_attribute`.`attribute_code` ='response_time';
UPDATE `eav_attribute` SET `frontend_label` = 'CPU Speed' WHERE `eav_attribute`.`attribute_code` ='cpu_speed';
UPDATE `eav_attribute` SET `frontend_label` = 'Disk Speed' WHERE `eav_attribute`.`attribute_code` ='harddrive_speed';
UPDATE `eav_attribute` SET `frontend_label` = 'Shape' WHERE `eav_attribute`.`attribute_code` ='shape';
UPDATE `eav_attribute` SET `frontend_label` = 'In Depth' WHERE `eav_attribute`.`attribute_code` ='in_depth';
UPDATE `eav_attribute` SET `frontend_label` = 'Dimensions' WHERE `eav_attribute`.`attribute_code` ='dimension';
UPDATE `eav_attribute` SET `frontend_label` = 'Model' WHERE `eav_attribute`.`attribute_code` ='model';
UPDATE `eav_attribute` SET `frontend_label` = 'Processor' WHERE `eav_attribute`.`attribute_code` ='processor';
UPDATE `eav_attribute` SET `frontend_label` = 'Memory' WHERE `eav_attribute`.`attribute_code` ='memory';
UPDATE `eav_attribute` SET `frontend_label` = 'Hardrive' WHERE `eav_attribute`.`attribute_code` ='hardrive';
UPDATE `eav_attribute` SET `frontend_label` = 'Screensize' WHERE `eav_attribute`.`attribute_code` ='screensize';
UPDATE `eav_attribute` SET `frontend_label` = 'Gender' WHERE `eav_attribute`.`attribute_code` ='gender';
UPDATE `eav_attribute` SET `frontend_label` = 'Shoe Size' WHERE `eav_attribute`.`attribute_code` ='shoe_size';
UPDATE `eav_attribute` SET `frontend_label` = 'Country of Origin' WHERE `eav_attribute`.`attribute_code` ='country_orgin';
UPDATE `eav_attribute` SET `frontend_label` = 'Room' WHERE `eav_attribute`.`attribute_code` ='room';
UPDATE `eav_attribute` SET `frontend_label` = 'Finish' WHERE `eav_attribute`.`attribute_code` ='finish';
UPDATE `eav_attribute` SET `frontend_label` = 'Brand' WHERE `eav_attribute`.`attribute_code` ='computer_manufacturers';

/* Kundenbewertungen - (Magento Backend + Frontend) 
Katalog->Kundenmeinungen und Bewertungen->Bewertungen verwalten */

UPDATE `rating` SET `rating_code` = 'Quality' WHERE `rating`.`rating_id` ='1';
UPDATE `rating` SET `rating_code` = 'Value' WHERE `rating`.`rating_id` ='2';
UPDATE `rating` SET `rating_code` = 'Price' WHERE `rating`.`rating_id` ='3';

/* Umfragen - (Magento Backend + Frontend) CMS->Umfragen */

/* What is your favorite color? */
UPDATE `poll` SET `poll_title` = 'What is your favorite color' WHERE `poll`.`poll_id` ='1';
UPDATE `poll_answer` SET `answer_title` = 'Green' WHERE `poll_answer`.`answer_id` ='1';
UPDATE `poll_answer` SET `answer_title` = 'Red' WHERE `poll_answer`.`answer_id` ='2';
UPDATE `poll_answer` SET `answer_title` = 'Black' WHERE `poll_answer`.`answer_id` ='3';
UPDATE `poll_answer` SET `answer_title` = 'Magenta' WHERE `poll_answer`.`answer_id` ='4';


/* What is your favorite Mageto-Feature?*/
UPDATE `poll` SET `poll_title` = 'What is your favorite Magento feature?' WHERE `poll`.`poll_id` ='2';
/* Antworten */
UPDATE `poll_answer` SET `answer_title` = 'Layered Navigation' WHERE `poll_answer`.`answer_id` ='5';
UPDATE `poll_answer` SET `answer_title` = 'Price Rules' WHERE `poll_answer`.`answer_id` ='6';
UPDATE `poll_answer` SET `answer_title` = 'Category Management' WHERE `poll_answer`.`answer_id` ='7';
UPDATE `poll_answer` SET `answer_title` = 'Compare Products' WHERE `poll_answer`.`answer_id` ='8';