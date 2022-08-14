local	filename
local	line11
local	lines
local	line_count
local	is_42header
local	protection_name


function addUp(line)
	local	to_add = {"#ifndef " ..protection_name.. "", "# define " ..protection_name.. "", ""}
	if line == -1 then
		vim.api.nvim_buf_set_lines(0, -1, -1, true, to_add)
	else
		vim.api.nvim_buf_set_lines(0, line, line, true, to_add)
	end
end


function addDown()
	vim.api.nvim_buf_set_lines(0, -1, -1, true, {"", "#endif /* " ..protection_name.. " */"})
end

function setProtectionName()
	local	y = (filename:reverse()):find("/");
	protection_name = string.sub(filename, -(y-1))
	protection_name = string.gsub(protection_name, '[%p]', '_')
	protection_name = string.upper(protection_name)
end

function addHeaderProtection()
	filename = vim.api.nvim_buf_get_name(0)
	if not (string.sub(filename, -2) == ".h" or string.sub(filename, -4) == ".hpp") then 
		print("U are not in a header file !")
		return
	end
	
	line_count = vim.api.nvim_buf_line_count(0)
	if line_count >= 11 then 
		line11 = vim.api.nvim_buf_get_lines(0, 10, 11, true)[1]
	else 
		line11 = ""
	end

	setProtectionName()
	fp1, fp2, fp3 = false

	if line11 == "/* ************************************************************************** */" then
		is_42header = true
		if line_count <= 11 then --on rajoute a la fin
			addUp(-1)
			addDown()
			return
		end
	end
	

	for i, line in ipairs(vim.api.nvim_buf_get_lines(0, 0, line_count, true)) do
		if string.match(line, "#") and string.match(line, "ifndef") and string.match(line, protection_name) then fp1 = true end
		if string.match(line, "#") and string.match(line, "define") and string.match(line, protection_name) then fp2 = true end
		if string.match(line, "#") and string.match(line, "endif") and string.match(line, protection_name) then fp3 = true end
	end

	if not fp1 or not fp2 then
		if is_42header then addUp(12) else addUp(0) end
	end

	if not fp3 then
		addDown()
	end
end


--return addHeaderProtection
