
ALTER TABLE `proyecto`.`tabla_xml` 
DROP FOREIGN KEY `fk_tabla_xml_tabla_sql`;
ALTER TABLE `proyecto`.`tabla_xml` 
CHANGE COLUMN `index_sql` `index_sql` INT NULL AUTO_INCREMENT ;
ALTER TABLE `proyecto`.`tabla_xml` 
ADD CONSTRAINT `fk_tabla_xml_tabla_sql`
  FOREIGN KEY (`index_sql`)
  REFERENCES `proyecto`.`tabla_sql` (`index_sql`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;