SELECT id, category_txt_hu,
	@group_length := IF(@current_group = owner_int, @group_length + 1, 1) AS row_nr,
	@current_group := owner_int AS owner_int
FROM categories
ORDER BY owner_int;