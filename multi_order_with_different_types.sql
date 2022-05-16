SELECT mp.id, IF(mps.code_txt IN ('fur_pattern','color','characteristics'), 0, mp.ordinal_number_int) AS ordinal_number, mp.ordinal_number_int, mp.magazine_parameter_txt_hu AS magazine_parameter, mps.code_txt AS code, mps.label_txt AS label
FROM magazine_parameters AS mp LEFT JOIN magazine_parameters_settings AS mps
ON mp.category_int = mps.code_int
WHERE mp.lang_txt = 'hu' AND mp.active_int = 1 AND mp.category_int > 0 AND CONCAT('|',mp.allowed_species_blob,'|') LIKE '%|1|%'
ORDER BY mps.ordinal_number_int, mp.category_int, ordinal_number, IF(mps.code_txt IN ('fur_pattern','color','characteristics'), magazine_parameter, '');