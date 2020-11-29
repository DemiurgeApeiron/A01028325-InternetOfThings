a = [35,49,53,61,78,84,96,121,132,149]
i = 0
z = 0
m = a[0]
t = a[0]
media = 0
while(i != 9):
    z = a[i + 1] - a[i]
    if z > 0:
        p = a[i + 1] - t
        if p > 0:
            t = a[i + 1]
    if z < 0:
        p = m - a[i + 1]
        if p > 0:
            m = a[i + 1]
    i += 1
print(f"max: {t} min: {m}")
i = 0
media = 1
while(media > 0):
    media = t - m - (2 * i)
    #print(f"media: {media} i: {i}")
    i += 1
output = i - 1

media = m + output

print(f"resultado por agoritmo instruido: {media}")
avrage = sum(a)/len(a)
print(f"promedio obtenido forma tradicional: {avrage}")

#este es mi algoritmo, no modifique el original
i = 0
media = 1
while(media > 0):
    media = sum(a) - 10 * i
    i += 1
output = i - 1

print(f"promedio obtenido con mi agloritmo: {output}")
                
import random
for _ in range(96):
    randomlist = random.sample(range(0, 1024), 10)
    for i in randomlist:
        print(i)
    