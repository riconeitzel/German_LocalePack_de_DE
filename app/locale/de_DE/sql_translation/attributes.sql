/* 
Übersetzungen für das Magento 1.4.x / 1.5.x Backend

Snippet für eigene Attributübersetzungen: 
UPDATE `eav_attribute` SET `frontend_label` = 'MeinAttributLabel' WHERE `eav_attribute`.`attribute_code` ='attribut_code_aus_datenbank' && `entity_type_id`=1;

Vorne das deutsche Label, hinten den original Attribut-Code - dann noch bei Bedarf die Attributart (Nummer hinten).
Nur nötig wenn es einen Wert öfter gibt und er unterschiedlich heißen soll.

Achtung! Wenn Sie eine Datenbank mit Prefixen nutzen, dann müssen Sie zwingend diese Datei anpassen.
Ändern Sie (mit Suchen / Ersetzen Funktion Ihres Editors) wie folgt ab wenn das genutze Tabellenprefix z.B.
"mage_" lautet:

Standard:
UPDATE `eav_attribute` SET `frontend_label` = 'Zugeordnet zu Website' WHERE `eav_attribute`.`attribute_code` ='website_id';

Wenn mit Tabellenprefix:
UPDATE `mage_eav_attribute` SET `frontend_label` = 'Zugeordnet zu Website' WHERE `mage_eav_attribute`.`attribute_code` ='website_id';

"entity_type_id" unter Magento 1.4.0.1, 1.4.1.0, 1.4.1.1 & 1.4.2.0 Stable 
(mit und ohne installierten Beispieldaten) 

 1 = Kundenattribute
 2 = Kunden Adress-Attribute
 3 = Kategorieattribute (9 wenn Sample Daten installiert)
 4 = Artikelattribute (10 wenn Sample Daten installiert)
12 = Attribute Bestellverarbeitung (6 wenn Sample Daten installiert )
10 = Bonus (Extra Artikelattribute der Beispieldateien)

Daniel Sasse - http://www.golox-web.de/ - info@golox-web.de

*/

-- Kunden und Kundenadress-Attribute + Bestellverarbeitung (1, 2, 6 und 12)
UPDATE `eav_attribute` SET `frontend_label` = 'Zugeordnet zu Website' WHERE `eav_attribute`.`attribute_code` ='website_id';
UPDATE `eav_attribute` SET `frontend_label` = 'Angelegt in' WHERE `eav_attribute`.`attribute_code` ='store_id';
UPDATE `eav_attribute` SET `frontend_label` = 'Angelegt von' WHERE `eav_attribute`.`attribute_code` ='created_in';
UPDATE `eav_attribute` SET `frontend_label` = 'Vorname' WHERE `eav_attribute`.`attribute_code` ='firstname';
UPDATE `eav_attribute` SET `frontend_label` = 'Zweiter Vorname' WHERE `eav_attribute`.`attribute_code` ='middlename';
UPDATE `eav_attribute` SET `frontend_label` = 'Nachname' WHERE `eav_attribute`.`attribute_code` ='lastname';
UPDATE `eav_attribute` SET `frontend_label` = 'E-Mail' WHERE `eav_attribute`.`attribute_code` ='email';
UPDATE `eav_attribute` SET `frontend_label` = 'Kundengruppe' WHERE `eav_attribute`.`attribute_code` ='group_id';
UPDATE `eav_attribute` SET `frontend_label` = 'Geburtstag' WHERE `eav_attribute`.`attribute_code` ='dob';
UPDATE `eav_attribute` SET `frontend_label` = 'Standard Rechnungsanschrift' WHERE `eav_attribute`.`attribute_code` ='default_billing';
UPDATE `eav_attribute` SET `frontend_label` = 'Standard Lieferanschrift' WHERE `eav_attribute`.`attribute_code` ='default_shipping';
UPDATE `eav_attribute` SET `frontend_label` = 'Firma' WHERE `eav_attribute`.`attribute_code` ='company';
UPDATE `eav_attribute` SET `frontend_label` = 'Straße' WHERE `eav_attribute`.`attribute_code` ='street';
UPDATE `eav_attribute` SET `frontend_label` = 'Ort' WHERE `eav_attribute`.`attribute_code` ='city';
-- bis Magento 1.4.0.1 "country"
UPDATE `eav_attribute` SET `frontend_label` = 'Land' WHERE `eav_attribute`.`attribute_code` ='country';
-- ab Magento 1.4.1.0 "country_id"
UPDATE `eav_attribute` SET `frontend_label` = 'Land' WHERE `eav_attribute`.`attribute_code` ='country_id';
UPDATE `eav_attribute` SET `frontend_label` = 'Bundesland' WHERE `eav_attribute`.`attribute_code` ='region';
UPDATE `eav_attribute` SET `frontend_label` = 'Bundesland' WHERE `eav_attribute`.`attribute_code` ='region_id';
UPDATE `eav_attribute` SET `frontend_label` = 'Postleitzahl' WHERE `eav_attribute`.`attribute_code` ='postcode';
UPDATE `eav_attribute` SET `frontend_label` = 'Telefon' WHERE `eav_attribute`.`attribute_code` ='telephone';
UPDATE `eav_attribute` SET `frontend_label` = 'Steuernummer / USt. ID' WHERE `eav_attribute`.`attribute_code` ='taxvat';
UPDATE `eav_attribute` SET `frontend_label` = 'Ist bestätigt' WHERE `eav_attribute`.`attribute_code` ='confirmation';
UPDATE `eav_attribute` SET `frontend_label` = 'Angelegt am' WHERE `eav_attribute`.`attribute_code` ='created_at';
UPDATE `eav_attribute` SET `frontend_label` = 'Geschlecht' WHERE `eav_attribute`.`attribute_code` ='gender';

-- Kategorie-Attribute (entity_type_id 3  und wenn Sample Daten installiert 9)
UPDATE `eav_attribute` SET `frontend_label` = 'Name der Kategorie' WHERE `eav_attribute`.`attribute_code` ='name';
UPDATE `eav_attribute` SET `frontend_label` = 'Kategorie Aktiv' WHERE `eav_attribute`.`attribute_code` ='is_active';
UPDATE `eav_attribute` SET `frontend_label` = 'URL Bezeichner' WHERE `eav_attribute`.`attribute_code` ='url_key';
UPDATE `eav_attribute` SET `frontend_label` = 'Beschreibung' WHERE `eav_attribute`.`attribute_code` ='description';
-- UPDATE `eav_attribute` SET `frontend_label` = 'Kategorie Bild' WHERE `eav_attribute`.`attribute_code` ='image';
UPDATE `eav_attribute` SET `frontend_label` = 'Anzeige Modus' WHERE `eav_attribute`.`attribute_code` ='display_mode';
UPDATE `eav_attribute` SET `frontend_label` = 'Als Anker für Filter-Navigation' WHERE `eav_attribute`.`attribute_code` ='is_anchor';
UPDATE `eav_attribute` SET `frontend_label` = 'Pfad' WHERE `eav_attribute`.`attribute_code` ='path';
UPDATE `eav_attribute` SET `frontend_label` = 'Reihenfolge' WHERE `eav_attribute`.`attribute_code` ='position';
UPDATE `eav_attribute` SET `frontend_label` = 'Eigenes Design' WHERE `eav_attribute`.`attribute_code` ='custom_design';
UPDATE `eav_attribute` SET `frontend_label` = 'Anwenden auf' WHERE `eav_attribute`.`attribute_code` ='custom_design_apply';
UPDATE `eav_attribute` SET `frontend_label` = 'Aktiv ab' WHERE `eav_attribute`.`attribute_code` ='custom_design_from';
UPDATE `eav_attribute` SET `frontend_label` = 'Aktiv bis' WHERE `eav_attribute`.`attribute_code` ='custom_design_to';
UPDATE `eav_attribute` SET `frontend_label` = 'Seiten Layout' WHERE `eav_attribute`.`attribute_code` ='page_layout';
UPDATE `eav_attribute` SET `frontend_label` = 'Eigenes Layout Update' WHERE `eav_attribute`.`attribute_code` ='custom_layout_update';
UPDATE `eav_attribute` SET `frontend_label` = 'Stufe' WHERE `eav_attribute`.`attribute_code` ='level';
UPDATE `eav_attribute` SET `frontend_label` = 'Verfügbares Artikel-Listing sortiert nach' WHERE `eav_attribute`.`attribute_code` ='available_sort_by';
UPDATE `eav_attribute` SET `frontend_label` = 'Standard Artikel-Listing sortiert nach' WHERE `eav_attribute`.`attribute_code` ='default_sort_by';
-- ab Magento 1.4.1.0
UPDATE `eav_attribute` SET `frontend_label` = 'In Shop Navigation anzeigen' WHERE `eav_attribute`.`attribute_code` ='include_in_menu';

-- Tab in Artikelverwaltung "Prices"
UPDATE `eav_attribute_group` SET `attribute_group_name` = 'Preise' WHERE `eav_attribute_group`.`attribute_group_name` ='Prices';
UPDATE `eav_attribute_group` SET `attribute_group_name` = 'Wiederkehrendes Profil' WHERE `eav_attribute_group`.`attribute_group_name` ='Recurring Profile';

-- Hinweise an Feldern
UPDATE `eav_attribute` SET `note` = 'Artikel mit einem wiederkehrenden Profil werden im Katalog wie normale Artikel angezeigt.' WHERE `eav_attribute`.`attribute_code` ='is_recurring';
UPDATE `eav_attribute` SET `note` = 'Maximal 255 Zeichen' WHERE `eav_attribute`.`attribute_code` ='meta_description';

-- Artikelattribute (entity_type_id 4 und wenn Sample Daten installiert 10)
UPDATE `eav_attribute` SET `frontend_label` = 'Name' WHERE `eav_attribute`.`attribute_code` ='name';
UPDATE `eav_attribute` SET `frontend_label` = 'Beschreibung' WHERE `eav_attribute`.`attribute_code` ='description';
UPDATE `eav_attribute` SET `frontend_label` = 'Kurzbeschreibung' WHERE `eav_attribute`.`attribute_code` ='short_description';
UPDATE `eav_attribute` SET `frontend_label` = 'Artikelnummer' WHERE `eav_attribute`.`attribute_code` ='sku';
UPDATE `eav_attribute` SET `frontend_label` = 'Preis' WHERE `eav_attribute`.`attribute_code` ='price';
UPDATE `eav_attribute` SET `frontend_label` = 'Sonderpreis' WHERE `eav_attribute`.`attribute_code` ='special_price';
UPDATE `eav_attribute` SET `frontend_label` = 'Sonderpreis ab dem' WHERE `eav_attribute`.`attribute_code` ='special_from_date';
UPDATE `eav_attribute` SET `frontend_label` = 'Sonderpreis bis zum' WHERE `eav_attribute`.`attribute_code` ='special_to_date';
UPDATE `eav_attribute` SET `frontend_label` = 'Kosten (EK)' WHERE `eav_attribute`.`attribute_code` ='cost';
UPDATE `eav_attribute` SET `frontend_label` = 'Gewicht' WHERE `eav_attribute`.`attribute_code` ='weight';
UPDATE `eav_attribute` SET `frontend_label` = 'Hersteller' WHERE `eav_attribute`.`attribute_code` ='manufacturer';
UPDATE `eav_attribute` SET `frontend_label` = 'Medien Galerie' WHERE `eav_attribute`.`attribute_code` ='media_gallery';
UPDATE `eav_attribute` SET `frontend_label` = 'Preisstaffel' WHERE `eav_attribute`.`attribute_code` ='tier_price';
UPDATE `eav_attribute` SET `frontend_label` = 'Farbe' WHERE `eav_attribute`.`attribute_code` ='color';
UPDATE `eav_attribute` SET `frontend_label` = 'Artikel als neu setzen ab' WHERE `eav_attribute`.`attribute_code` ='news_from_date';
UPDATE `eav_attribute` SET `frontend_label` = 'Artikel als neu setzen bis' WHERE `eav_attribute`.`attribute_code` ='news_to_date';
UPDATE `eav_attribute` SET `frontend_label` = 'Bilder Galerie' WHERE `eav_attribute`.`attribute_code` ='gallery';
UPDATE `eav_attribute` SET `frontend_label` = 'Steuerklasse' WHERE `eav_attribute`.`attribute_code` ='tax_class_id';
UPDATE `eav_attribute` SET `frontend_label` = 'URL Bezeichner' WHERE `eav_attribute`.`attribute_code` ='url_key';
UPDATE `eav_attribute` SET `frontend_label` = 'Minimal Preis' WHERE `eav_attribute`.`attribute_code` ='minimal_price';
UPDATE `eav_attribute` SET `frontend_label` = 'Sichtbarkeit' WHERE `eav_attribute`.`attribute_code` ='visibility';
UPDATE `eav_attribute` SET `frontend_label` = 'Geschenknachricht erlauben' WHERE `eav_attribute`.`attribute_code` ='gift_message_available';
UPDATE `eav_attribute` SET `frontend_label` = 'Eigenes Design' WHERE `eav_attribute`.`attribute_code` ='custom_design';
UPDATE `eav_attribute` SET `frontend_label` = 'Aktiv ab' WHERE `eav_attribute`.`attribute_code` ='custom_design_from';
UPDATE `eav_attribute` SET `frontend_label` = 'Aktiv bis' WHERE `eav_attribute`.`attribute_code` ='custom_design_to';
UPDATE `eav_attribute` SET `frontend_label` = 'Eigenes Layout Update' WHERE `eav_attribute`.`attribute_code` ='custom_layout_update';
UPDATE `eav_attribute` SET `frontend_label` = 'Seiten Layout' WHERE `eav_attribute`.`attribute_code` ='page_layout';
UPDATE `eav_attribute` SET `frontend_label` = 'Artikeloptionen anzeigen in' WHERE `eav_attribute`.`attribute_code` ='options_container';
UPDATE `eav_attribute` SET `frontend_label` = 'Soll man das Artikel via Google Checkout bestellen können' WHERE `eav_attribute`.`attribute_code` ='enable_googlecheckout';
UPDATE `eav_attribute` SET `frontend_label` = 'Preis Ansicht' WHERE `eav_attribute`.`attribute_code` ='price_view';
-- since Magento 1.6.x
UPDATE `eav_attribute` SET `frontend_label` = 'Herstellungsland' WHERE `eav_attribute`.`attribute_code` ='country_of_manufacture';
UPDATE `eav_attribute` SET `frontend_label` = 'UVP' WHERE `eav_attribute`.`attribute_code` ='msrp';
UPDATE `eav_attribute` SET `frontend_label` = 'Tatsächlicher Preis' WHERE `eav_attribute`.`attribute_code` ='msrp_display_actual_price_type';
UPDATE `eav_attribute` SET `frontend_label` = 'UVP anwenden' WHERE `eav_attribute`.`attribute_code` ='msrp_enabled';
/*
UPDATE `eav_attribute` SET `frontend_label` = 'Bild ALT Text' WHERE `eav_attribute`.`attribute_code` ='image_label';
UPDATE `eav_attribute` SET `frontend_label` = 'Kleines Bild ALT Text' WHERE `eav_attribute`.`attribute_code` ='small_image_label';
UPDATE `eav_attribute` SET `frontend_label` = 'Vorschau Bild ALT Text' WHERE `eav_attribute`.`attribute_code` ='thumbnail_label';
UPDATE `eav_attribute` SET `frontend_label` = 'Versand' WHERE `eav_attribute`.`attribute_code` ='shipment_type';
UPDATE `eav_attribute` SET `frontend_label` = 'Beispiel Titel' WHERE `eav_attribute`.`attribute_code` ='samples_title';
UPDATE `eav_attribute` SET `frontend_label` = 'Link Titel' WHERE `eav_attribute`.`attribute_code` ='links_title';
*/

-- ab Magento 1.4.1.0
UPDATE `eav_attribute` SET `frontend_label` = 'Wiederkehrendes Profil verwenden' WHERE `eav_attribute`.`attribute_code` ='is_recurring';
UPDATE `eav_attribute` SET `frontend_label` = 'Wiederkehrendes Zahlungsprofil' WHERE `eav_attribute`.`attribute_code` ='recurring_profile';

-- Bonus (Artikel-Attribute aus Beispieldaten - entity_type_id 10)
UPDATE `eav_attribute` SET `frontend_label` = 'Aktivierungs-Information' WHERE `eav_attribute`.`attribute_code` ='activation_information';
UPDATE `eav_attribute` SET `frontend_label` = 'Anzahl Megapixel' WHERE `eav_attribute`.`attribute_code` ='megapixels';
UPDATE `eav_attribute` SET `frontend_label` = 'Shirt Größe' WHERE `eav_attribute`.`attribute_code` ='shirt_size';
UPDATE `eav_attribute` SET `frontend_label` = 'Maximale Auflösung' WHERE `eav_attribute`.`attribute_code` ='max_resolution';
UPDATE `eav_attribute` SET `frontend_label` = 'Größe des Arbeitsspeichers' WHERE `eav_attribute`.`attribute_code` ='ram_size';
UPDATE `eav_attribute` SET `frontend_label` = 'Schuh Art' WHERE `eav_attribute`.`attribute_code` ='shoe_type';
UPDATE `eav_attribute` SET `frontend_label` = 'Dynamisches Kontrastverhältnis' WHERE `eav_attribute`.`attribute_code` ='contrast_ratio';
UPDATE `eav_attribute` SET `frontend_label` = 'Antwortzeit' WHERE `eav_attribute`.`attribute_code` ='response_time';
UPDATE `eav_attribute` SET `frontend_label` = 'CPU Geschwindigkeit' WHERE `eav_attribute`.`attribute_code` ='cpu_speed';
UPDATE `eav_attribute` SET `frontend_label` = 'Festplatten Geschwindigkeit' WHERE `eav_attribute`.`attribute_code` ='harddrive_speed';
UPDATE `eav_attribute` SET `frontend_label` = 'Form' WHERE `eav_attribute`.`attribute_code` ='shape';
UPDATE `eav_attribute` SET `frontend_label` = 'Detailbeschreibung' WHERE `eav_attribute`.`attribute_code` ='in_depth';
UPDATE `eav_attribute` SET `frontend_label` = 'Abmessungen' WHERE `eav_attribute`.`attribute_code` ='dimension';
UPDATE `eav_attribute` SET `frontend_label` = 'Model / Ausführung' WHERE `eav_attribute`.`attribute_code` ='model';
UPDATE `eav_attribute` SET `frontend_label` = 'Prozessor' WHERE `eav_attribute`.`attribute_code` ='processor';
UPDATE `eav_attribute` SET `frontend_label` = 'Speicher' WHERE `eav_attribute`.`attribute_code` ='memory';
UPDATE `eav_attribute` SET `frontend_label` = 'Festplatte' WHERE `eav_attribute`.`attribute_code` ='hardrive';
UPDATE `eav_attribute` SET `frontend_label` = 'Bildschirmgröße' WHERE `eav_attribute`.`attribute_code` ='screensize';
UPDATE `eav_attribute` SET `frontend_label` = 'Geschlecht' WHERE `eav_attribute`.`attribute_code` ='gender';
UPDATE `eav_attribute` SET `frontend_label` = 'Schuhgröße' WHERE `eav_attribute`.`attribute_code` ='shoe_size';
UPDATE `eav_attribute` SET `frontend_label` = 'Hergestellungsland' WHERE `eav_attribute`.`attribute_code` ='country_orgin';
UPDATE `eav_attribute` SET `frontend_label` = 'Raum' WHERE `eav_attribute`.`attribute_code` ='room';
UPDATE `eav_attribute` SET `frontend_label` = 'fertigstellen' WHERE `eav_attribute`.`attribute_code` ='finish';
UPDATE `eav_attribute` SET `frontend_label` = 'Computer Hersteller' WHERE `eav_attribute`.`attribute_code` ='computer_manufacturers';

/* Kundenbewertungen - (Magento Backend + Frontend) 
Katalog->Kundenmeinungen und Bewertungen->Bewertungen verwalten */

UPDATE `rating` SET `rating_code` = 'Qualität' WHERE `rating`.`rating_id` ='1';
UPDATE `rating` SET `rating_code` = 'Bewertung' WHERE `rating`.`rating_id` ='2';
UPDATE `rating` SET `rating_code` = 'Preis' WHERE `rating`.`rating_id` ='3';

/* Umfragen - (Magento Backend + Frontend) CMS->Umfragen */

/* What is your favorite color? */
UPDATE `poll` SET `poll_title` = 'Was ist Ihre Lieblingsfarbe?' WHERE `poll`.`poll_id` ='1';
/* Antworten */
UPDATE `poll_answer` SET `answer_title` = 'Grün' WHERE `poll_answer`.`answer_id` ='1';
UPDATE `poll_answer` SET `answer_title` = 'Rot' WHERE `poll_answer`.`answer_id` ='2';
UPDATE `poll_answer` SET `answer_title` = 'Schwarz' WHERE `poll_answer`.`answer_id` ='3';
UPDATE `poll_answer` SET `answer_title` = 'Magenta' WHERE `poll_answer`.`answer_id` ='4';


/* What is your favorite Mageto-Feature?*/
UPDATE `poll` SET `poll_title` = 'Was ist Ihre Lieblingsfunktion von Magento?' WHERE `poll`.`poll_id` ='2';
/* Antworten */
UPDATE `poll_answer` SET `answer_title` = 'Filternavigation' WHERE `poll_answer`.`answer_id` ='5';
UPDATE `poll_answer` SET `answer_title` = 'Preisregeln' WHERE `poll_answer`.`answer_id` ='6';
UPDATE `poll_answer` SET `answer_title` = 'Kategorieverwaltung' WHERE `poll_answer`.`answer_id` ='7';
UPDATE `poll_answer` SET `answer_title` = 'Vergleichsliste für Artikel' WHERE `poll_answer`.`answer_id` ='8';