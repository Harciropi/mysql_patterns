UPDATE test_columns
SET ordinal_number_int=(@current_nr := IF(ordinal_number_int = 0 AND @current_nr = NULL, 1, @current_nr + 1))
ORDER BY name_txt;
