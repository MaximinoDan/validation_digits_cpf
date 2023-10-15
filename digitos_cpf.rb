
puts 'Digite o cpf sem os dígitos: '
cpf = gets.chomp

cpf = cpf.delete(".")

multiplicador = 10
soma = 0
for i in 0..8
    soma = soma + (cpf[i].to_i * multiplicador)
    multiplicador = multiplicador - 1
end

resto = soma % 11

if resto < 2
    digito1 = 0
end
if resto >= 2
    digito1 = 11 - resto
end

cpf = cpf + digito1.to_s

multiplicador = 11
soma = 0
for i in 0..9
    soma = soma + (cpf[i].to_i * multiplicador)
    multiplicador = multiplicador - 1
end

resto = soma % 11

if resto < 2
    digito2 = 0
end
if resto >= 2
    digito2 = 11 - resto
end

puts 'Os digitos do cpf são: ' + digito1.to_s + digito2.to_s