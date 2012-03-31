stack = {}

function getStackValue()
	if isError(stack[1]) then
		error("Stack is empty")
	end
	if isError(stack) then
		error("Stack instance does not exist")
	end
	return stack[1]
end

function push(value)
	table.insert(stack,1,value)
end

function pop(value)
	print(#stack)
	
	for i = #stack, 1, -1 do
		if stack[i] == value then
			table.remove(stack,i)
			print(i)
		end
	end
end

function isError(expr)
	if not expr then return true else return false end
end