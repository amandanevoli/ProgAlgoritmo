numeros = []

for i in range(15):
    numero = int(input(f"Digite o {i+1}º número: "))
    numeros.append(numero)

numeros.sort()

print("Números em ordem crescente: ")
for numero in numeros:
    print(numero, end = " ")
print()

pares = 0
impares = 0
for numero in numeros:
    if numero % 2 == 0:
        pares += 1
    else:
        impares += 1

print(f"Quantidade de números pares: {pares}")
print(f"Quantidade de números ímpares: {impares}")