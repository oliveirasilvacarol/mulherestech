'''idade = int(input('DIGITE SUA IDADE: '))
print(idade)


if idade >=18:
	print("ACESSO LIBERADO!")

else:
	print("Acesso NEGADO! RALA MUCILON! ")'''
 
 
 
'''idade = int(input('DIGITE SUA IDADE: '))
print(idade)

if idade <18:
    print('acesso negado!')

elif idade == 18:
    print('voce esta quase laa, mas falta pouco para o ter o acesso')
else:
    print('acesso liberado, boa festa!')'''
    
    
    
'''print('Digite a nota do Primeiro Bimestre:')
b1 = float(input())
print('Digite a nota do Segundo Bimestre:')
b2 = float(input())
print(' Digite a nota do teceiro Bimestre:')
b3 = float(input())
print(' Digite a nota do Quarto Bimestre:')
b4 = float(input())
media = (b1 + b2 + b3 + b4) / 4
print('A média do aluno é:',media)


if media < 5:
    print('reprovado')
    
elif media <7:
    print('recuperação')

else:
    print ('aprovado')'''
    
    #codigo para verificar se pode participar do mulheres tech
    
'''print('qual seu genero? (F ou M)')
genero = input() #variavel
print('qual  municipio voce mora?')
municipio = input() #variavel


if genero.upper() == 'F'and municipio.lower() == 'rio de janeiro':
    print('voce pode participar do mulheres tech')
else:
    print('voce nao pode participar do mulheres tech')'''
    
print('Qual sua idade?')   
idade = int(input())




if idade  >= 18:
	print(" Bom filme!\nBom filme!")#\n é para escrever na linha de baixo sem precisar escrever outro print

elif idade >= 16:
    print("Está com responsável?")
    responsavel = input().upper()
    if responsavel == "SIM":
        print ("Acesso liberado!\nBom fimel!")
    else:
        print("só poderá assistir o filme acompnahdo de um responsável maior de idade")
else:
	print("acesso negado")
   
    