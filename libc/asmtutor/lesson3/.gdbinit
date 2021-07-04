break _start
define hook-stop
	info registers eax
	info registers ebx
	info registers ecx
	info registers edx
	info registers esp
	info registers ebp
	info registers eip
	info registers eflags
	x/23xb &string
	disassemble $eip,+24
end
