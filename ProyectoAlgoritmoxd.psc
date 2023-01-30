// Funciones o SubAlgoritmo  del proyecto
// SubAlgoritmo menus del proyecto
Funcion opcion=presentarMenu(titulo,menu,lim)
	Definir opcion Como Caracter
	Definir pos Como Entero
	Borrar Pantalla
	Escribir titulo
	Para pos=0 Hasta lim-1 Con Paso 1 Hacer
		Escribir menu[pos]
	Fin Para
	Escribir "       Elija opción[1..",lim,"]" Sin Saltar
	leer opcion
FinFuncion
//                                                             Ejercicios de Numeros


// Pide dos numeros y presenta el mayor de los dos
Funcion mayorDosNumeros()
	Definir num1,num2 Como Entero
	Escribir "Ingrese numero1"
	leer num1
	Escribir "Ingrese numero2"
	leer num2
	Si num1 > num2 Entonces
		Escribir num1," Es mayor que ",num2
	SiNo
		Si num1 < num2 Entonces
			Escribir num1," Es menor que ",num2
		SiNo
			Escribir num1," Es igual a ",num2
		Fin Si
	Fin Si
FinFuncion
//Dividir dos numeros por restas
Funcion Dividirdosnumerosporrestas
	definir num1, num2 , resultado Como Entero
escribir "Escriba un numero, por favor"
leer num1
Escribir "escriba otro numero, por favor"
leer num2
resultado = 0
Mientras num1 >= num2 Hacer //Hasta que el dividendo sea menor que el divisor
	num1 = num1 - num2 
	resultado = resultado + 1
FinMientras
Escribir "El resultado de la division por restas es: ", resultado 
FinFuncion
//Multiplicar dos numeros por sumas
Funcion Multiplicardosnumerosporsumas
	Definir num1,num2,sum Como real;
	Definir i como  entero;
	Escribir "ingrese el primer numero"
	Leer num1
	Escribir "ingrese el segundo numero"
	Leer num2
	sum=0 
	Para i<- 1 hasta num2 con paso 1 Hacer
		sum<-sum+num1
	FinPara
	Escribir sum-num1, " + ", num1, " = ", sum
FinFuncion
//4)Suma Pares y Productos multiplos de 5 de una secuencia de numeros"
Funcion ProductoMultiplos5
	Definir num,sump,prod,secuencia,a Como Real
	sump=0
	prod=1
	a=0
	Escribir "¿Cuantos numeros tendra la secuencia?"
	Leer secuencia
	Para a=1 Hasta secuencia Con Paso 1 Hacer
		Escribir "Ingresa un numero"
		Leer num
		Si num mod 2=0 Entonces
			sump=sump+num
		Fin Si
		Si num mod 5=0 Entonces
			prod=prod*num
		Fin Si
	Fin Para
	Escribir "La suma de los pares es: ",sump
	Escribir "El producto de los multiplos de 5 es: ",prod
FinFuncion
//5)Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0
Funcion secuenciacero
	Definir num,c como real
	c=0
	Escribir "Ingrese un número"
	Leer num
	Mientras num<>0
		Mientras num>0
			num = trunc(num/10)
			c = c + 1
		FinMientras
		Escribir "Ingrese un nuemro"
		Leer num
	FinMientras
	Escribir "la cantidad de digitos es : " c
FinFuncion
//6)Mostrar El Precio, descuento, iva y pago de n trajes del amacen SomosMas
Funcion almacenSomosMas
	Definir trajes, c, i, prec, dsct, iva Como real
	Escribir "ingrese cantidad de trajes"
	leer trajes
	c=0
	Para i=1 Hasta trajes Con Paso 1 Hacer
		Escribir "precio del traje: "
		Leer prec
		Si prec>100 Entonces
			c=trajes+1
			trajes=c
			dsct=prec*0.10
			iva=prec-dsct*0.12
			Escribir "su descuento fue de 10% y su total mas iva es: ", iva
		SiNo
			dsct=prec*0.05
			iva=prec*0.12
			Escribir "su descuento fue de 5% y su total mas iva es: ", iva
		FinSi
	FinPara
FinFuncion
//7)Dado tres numeros indicar si el segundo es el mayor
Funcion segundomayor
	Definir a,b,c como entero;
	Escribir "Inserte los números"
	Leer a,b,c
	Si a=b entonces
		Escribir "hay números iguales"
	Sino
		Si a>b entonces
			Si a>c
				Escribir "El Numero Medio no es mayor"
			Sino
				Escribir "hay dos Números iguales"
			Finsi
		Sino
			Si b=c entonces
				Escribir "hay números iguales"
			Sino
				Si b>c entonces
					Escribir"El Numero del Medio es mayor"
				Sino
					Escribir" El Numero Medio no es mayor"
				Finsi
			Finsi
		Finsi
	Finsi
FinFuncion
//8)Dado una secuencia de numeros presentar su promedio
Funcion secuenciadenumerospresentarpromedio
	Definir Promedio como real;
	Definir suma,c,num como entero;
	Escribir "INGRESE UN VALOR"
	Leer num
	Promedio=1
	suma=0
	c=0
	Mientras num>=0 Hacer
		suma=suma+num
		c=c+1
		leer num
	Fin Mientras
	Si c>0 Entonces
		Escribir"EL PROMEDIO ES: ", suma/c
	Fin Si
FinFuncion
//9)Numeros amigos
Funcion Numerosamigos
	Definir num1,num2,c,s1,s2,r Como Entero
	Escribir "Insertar Numero"
	leer num1
	Escribir "Insertar otro numero"
	Leer num2
	s1<-0
	s2<-0
	Escribir "Los Divisores de ",num1," son:"
	para c<-1 hasta num1-1
		r<-num1 mod c
		si r= 0 Entonces
			s1<-s1+c
			Escribir c
		FinSi
	FinPara
	Escribir "Los Divisores de ",num2," son:"
	para c<-1 hasta num2 -1 Hacer
		r<- num2 mod c
		si r=0 Entonces 
			s2<-s2+c
			Escribir c
		FinSi
	FinPara
	Si ((s1=num2) y (s2=num1)) Entonces
		Escribir "Son amigos"
	SiNo 
		Escribir "No son amigos"
	FinSi
FinFuncion
//10)primos gemelos
funcion primosgemelos
	Definir a, b, c, i, c2 Como Entero
	Escribir "Ingrese un numero"
	Leer a
	Escribir "Ingrese un numero"
	Leer b
	c=0
	Para i=1 Hasta a Hacer
		Si a mod i=0 Entonces
			c=c+1
		FinSi
	FinPara
	Si c=2 Entonces
	FinSi
	c2=0
	Para i=1 Hasta b Hacer
		Si b mod i=0 Entonces
			c2=c2+1
		FinSi
	FinPara
	Si c=c2 Entonces
		Escribir "Son primos gemelos"
	SiNo
		Escribir "No son primos gemelos"
	FinSi
Finfuncion
//                                                     EJERCICIOS DE CADENAS
//1)Presentar un nombre caracter por caracter"
Funcion caracterporcaracter
	definir n, palabra, cadena Como Caracter
	definir tamaño, i Como Entero
	escribir "ingrese un nombre"
	leer n
	cadena=Subcadena(n,0,4)
	Escribir cadena
	tamaño=longitud(n)
	Dimension palabra(tamaño)
	para i=0 hasta tamaño-1 con paso 1 hacer 
		palabra[i]=subcadena(n,i,i)
		Escribir i,":", palabra[i]
	FinPara
FinFuncion
//2)Presentar el primero, el medio y el ultimo caracter de una frase
Funcion primermedioultimo
	Definir frase Como Caracter
	Definir pos, l, medio Como Entero
	frase=""; pos=0; l=0; medio=0
	Escribir "Ingrese la frase"
	Leer frase
	l=Longitud(frase)
	medio = trunc (l/2)
	Escribir "La primera letra de la frase es: ", Subcadena(frase,pos,pos)
	Escribir "La letra de la mitad de la frase es: ", Subcadena(frase,medio,medio)
	Escribir "La última letra de la frase es: ", Subcadena(frase,l-1,l-1)
FinFuncion
//3)Dado dos nombres indicar si son iguales
Funcion nombresiguales
	Definir n1,n2 Como Caracter
	Escribir " escriba dos nombres"
	leer n1
	leer n2
	si n1=n2
		Escribir "los nombres son iguales"
	SiNo
		Escribir "los nombres no son iguales"
	FinSi
FinFuncion
//4)Dadas dos frase indicar la de mayor longitud
Funcion mayorlongitud
	Definir f1,f2 Como Caracter
	Escribir "escriba 2 frases"
	Escribir "Frase 1"
	leer f1
	Escribir "Frase 2"
	leer f2
	si Longitud(f1)>Longitud(f2)
		Escribir " la frase 1 tiene mayor longitud"
	SiNo
		Escribir "La frase 2 tienes mayor longitud"
	FinSi
FinFuncion
// 5)Indicar cuantas ,.;: hay en una cadena
Funcion comas
	Definir frase Como Caracter
	Definir n,p,c,d,pc,x Como Entero
	Escribir "Ingresa una frase"
	leer frase
	n = Longitud(frase)
	x = 0 
	p = 0
	c = 0
	d = 0
	pc = 0
	
	Mientras x <= n Hacer
		segun Subcadena(frase,x,x) hacer
			".":
				p = p + 1
			","o ",,":
				c = c + 1
			":":
				d = d + 1
			";":
				pc = pc + 1
		FinSegun
		x = x + 1
	FinMientras
	Escribir "La frase",frase," tiene"
	Escribir "puntos(.) :", p
	Escribir "comas(,) :", c
	Escribir "dos puntos(:) :", d
	Escribir "punto y coma(;) :", pc
FinFuncion
//6)Dado una cadena indicar cuantas vocales, consonantes y digitos hay
Funcion vocalesconsonates
	Definir frase Como Caracter
	Definir n,c,v,x Como Entero
	Definir contador, num Como Entero
	Escribir "Ingresa una frase"
	leer frase
	contador=0
	n = Longitud(frase)
	x = 1 
	v =0
	c = 0
	num=0
	Mientras x <= n Hacer
		segun Subcadena(frase,x,x) hacer
			"a" o "a":
				v = v + 1
			"e" o "E":
				v = v + 1
			"i" o "I":
				v = v + 1
			"o" o "O":
				v = v + 1
			"u" o "U":
				v = v + 1
			De Otro Modo:
				c = c + 1
		FinSegun
		x = x + 1
	FinMientras
	Mientras n >= 1 Hacer
		n = trunc(n/10)
		contador = contador + 1
	FinMientras
	Escribir "La frase ",frase," tiene ",v," vocales"
	Escribir "La frase ",frase," tiene ",c," consonantes"
	Escribir "EL numero tiene ",contador," dígitos"
FinFuncion
//7)Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras
Funcion palabrafrase
	definir frase como Cadena;
	Definir espacios,i,cantidad Como Entero;
	espacios=0
	i=0
	cantidad=0
	escribir "Escribir una frase"
	leer frase;
	cantidad=Longitud(frase);
	para i<-0 hasta cantidad-1 con paso 1 hacer 
		si Subcadena(frase,i,i)=" " Entonces
			espacios=espacios+1
		FinSi
	FinPara
	Escribir "la frase tiene ", espacios+1 , " palabras ";
FinFuncion
//8)Presentar la suma de los digitos de una cedula"
Funcion cedula
	Definir n,suma Como Entero
	Escribir "Ingresa su numero de cedula"
	leer n
	suma = 0
	Mientras n > 0 Hacer
		suma = suma + (n mod 10)
		n = trunc(n/10)
	FinMientras
	Escribir "La suma de los digitos es: ",suma
FinFuncion
//9)Indicar si una palabra es palindroma
Funcion palindroma
	Definir x,a,b Como Entero
	Definir palabra Como Caracter
	Escribir "ingrese una palabra"
	Leer palabra
	b = Longitud(palabra)
	a = 1
	x = 1
	Mientras a < b Hacer
		si Subcadena(palabra,a,a)<>Subcadena(palabra,b,b) Entonces
			x = x + 1
		FinSi
		a = a + 1
		b = b - 1
	Fin Mientras
	si x <= b Entonces
		Escribir "la palabra ",palabra, " es palindromo"
	SiNo
		Escribir "la palabra ",palabra," no es palindromo"
	FinSi
FinFuncion
//10)Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena"
Funcion Posicion
	definir frase,carter Como Caracter
	definir i como entero
	i=0
	Escribir "ingrese una frase"
	leer frase
	Escribir "ingrese el caracter que le gustaria buscar"
	Leer carter
	Para i=1 hasta longitud(frase) Con Paso 1 Hacer
		result=Subcadena(frase,1,1)
		si carter=result Entonces
			mostrar  "ese caracter esta en la posicion... ", i
		FinSi
	FinPara
FinFuncion

//                                                     EJERCICIOS DE ARREGLOS

//"Dado un arreglo cualquiera ingresarlo y presentarlo"
Funcion arreglos1
	Definir numeros,pos,lon,num Como Entero 
	Dimension numeros[10]
	lon=0;pos=0
	Escribir "Cantidad de elemetnos de la serie"
	leer lon
	Para pos=0 hasta lon-1 con paso 1 hacer 
		Escribir "numero#",pos+1
		Leer num
		numeros[pos] = num
	Fin para 
	Escribir "Numeros del arreglo"
	para pos=0 Hasta lon-1 Con Paso 1 Hacer 
		Escribir "[",pos,"]=", numeros[pos]
	FinPara
FinFuncion

//2)Presentar los numeros pares de un arreglo"
Funcion paresarreglo
	Definir i,pares,impares,arreglo como Entero
	pares=0
	impares=0
	Dimension arreglo[5]
	Para i<- 1 Hasta 4  Con Paso 1 Hacer
		Escribir "ingresar numero"
		Leer arreglo[i]
	Fin Para
	Escribir "Los numeros pares son:"
	Para i<- 1 Hasta 4 Con Paso 1 Hacer
		Si arreglo[i] mod 2=0 Entonces
			Escribir arreglo[i]
		FinSi
	Fin Para
FinFuncion
//3)Dado una serie de numeros guardar en un arreglo solo los numeros negativos
Funcion Negativos
	Definir i,arreglo como entero;
	Dimension arreglo[5]
	Para i<-1 Hasta 4 Con Paso 1 Hacer
		Escribir "INGRESE LOS VALORES "
		Leer arreglo[i]
	Fin Para
	Para i<-1 Hasta 4 Con Paso 1 Hacer
		Si arreglo[i]<0 Entonces
			Escribir  "LOS NUMEROS NEGATIVOS SON : ", arreglo[i]
		Fin Si
	Fin Para
FinFuncion
//4)Dado un arreglo de nombres presentar el primer caracter de cada nombre
Funcion CaracterDeUnNombre
	Definir x, n,contador, cont, cont1 Como Entero
	definir nombres Como Caracter
	x=0
	contador=0
	cont=1
	cont1=1
	Escribir "Cuantos nombres desea ingresar"
	leer n
	Dimension nombres[n+1]
	para x = 1 Hasta n Con Paso 1 Hacer
		Escribir "Ingrese el nombre #", cont
		Leer nombres[x]
		cont=cont+1
	FinPara
	Para x = 1 Hasta n Con Paso 1 Hacer
		contador = contador + 1
		Escribir "La incial del nombre #",cont1, " ", subcadena(nombres[x],0,0)
		cont1=cont1+1
	FinPara
FinFuncion
//5)Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo
Funcion ElTotalCantidadYPromedio
	Definir n,c,arreglo,num,pos,pos2,acu Como Entero
	Definir div Como Real
	Escribir "INGRESE LA CANTIDAD DE NUMEROS";Leer n
	Dimension arreglo[n]
	c=0;pos=0;pos2=0;acu=0;
	Mientras c < n Hacer
		Escribir "ingrese Numero"
		Leer num
		si num > 0 Entonces
			arreglo[pos]=num
			pos=pos+1
			acu=acu+num
		FinSi
		c=c+1
	FinMientras
	div=acu/pos
	Escribir "ARREGLO"
	para c=0 Hasta pos-1 Con Paso 1 Hacer
		Escribir "[",c,"]=",arreglo[c]
	FinPara
	Escribir "hay ",pos," digitos"
	Escribir "la suma es ",acu
	Escribir "el promedio es ",div
FinFuncion
//6)Dado un arreglo presentarlo al revez solo los numeros multiplos de 5
Funcion MultiplosDe5AlReves
	definir num,i, totnum como entero
	dimension num[50]
	i=0
	Escribir "ingrese el total de numeros a ingresar"
	leer totnum
	para i=1 hasta totnum con paso 1 hacer
		escribir "ingrese los numeros" , "numero: ",i
		leer num[i]
	FinPara
	para i=totnum hasta 1 con paso -1 Hacer
		si num[i] mod 5 = 0 Entonces
			Mostrar "Los numeros del arreglo al reves multiplos de 5 son: ", num[i]
		FinSi
	FinPara
FinFuncion
//7)Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo
Funcion PrimerMedioYUltimo
	Definir arreglo, lon, pos, num, numedio Como Real
	Definir primer, medio, ultimo Como Real
	lon=0;pos=0
	primer=0
	medio=0
	ultimo=0
	Escribir "Cuantos numeros va a ingresar"
	Leer lon
	Dimension arreglo[lon]
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir "Ingrese el numero"
		Leer num
		arreglo[pos]=num
	Fin Para
	
	primer=arreglo[0]
	ultimo=arreglo[lon-1]
	Si (lon)%2=0 Entonces
		numedio=(lon)/2
		medio=(arreglo[numedio-1]+arreglo[numedio])/2-0.5
	SiNo
		numedio=(lon)/2+0.5
		medio=arreglo[numedio-1]
	Fin Si
	Escribir primer," ",medio," ",ultimo
FinFuncion
//8)Dado un arreglo copiarlo en otro y presentarlo
Funcion otroarreglo
	definir num,num2,i como entero
	dimension num[50]
	dimension num2[50]
	para i=1 hasta 5 con paso 1 hacer
		escribir "ingrese 5 numeros " , "Numero: ",i
		Leer num[]
		num2[i]=num[]
	FinPara
	para i=1 hasta 5 Hacer
		mostrar "[" num2[i] "]" Sin Saltar
	FinPara
FinFuncion
//9)Dado 2 arreglos copiar en un otroarreglo la suma de cada elemento de los 2 arreglos
Funcion dosarreglosuma
	Definir arreglo1, arreglo2, arreglo3, n, pos Como Entero
	n=5
	Dimension arreglo1[n]
	Dimension arreglo2[n]
	Dimension arreglo3[n]
	
	Para pos=0 Hasta n-1 Con Paso 1 Hacer
		Escribir "Ingrese su primer arreglo ", pos Sin Saltar
		Leer arreglo1(pos)
	FinPara
	
	Escribir "<<INGRESE SU SEGUNDO ARREGLO>>"
	
	Para pos=0 Hasta n-1 Con Paso 1 Hacer
		Escribir "Ingrese su segundo arreglo ", pos Sin Saltar
		Leer arreglo2(pos)
	FinPara 
	
	Para pos=0 Hasta n-1 Con Paso 1 Hacer
		Arreglo3(pos)=arreglo1(pos)+arreglo2(pos)
		Escribir "arreglo3: ", arreglo3(pos)
	FinPara
FinFuncion
//10)Dado una serie de numeros guarda en un arreglo los factoriales
Funcion factoriales
	definir mum, facto, n Como Entero
	Dimension facto[50]
	para i=1 hasta 5 con paso 1 Hacer
		Escribir  "ingrese 5 numeros del segundo arreglo " , "Numero: " ,i
		leer num
		n=num
		Mientras n>1 Hacer
			n=n-1
			num = num * n
		FinMientras
		facto[i]=num
	FinPara
	Escribir ""
	para i=1 hasta 5 con paso 1 Hacer
		Mostrar facto[i] " , " Sin Saltar
	FinPara
FinFuncion

// Algoritmo principal del proyecto
Algoritmo Proyecto
	Definir menuPrincipal,menuNumeros,menuCadenas,menuArreglos,titulo,titulo2,opc,opcn,apcc,apca Como Caracter
	Definir pos,lim Como Entero
	Dimension menuPrincipal[4],menuNumeros[11],menuCadenas[11],menuArreglos[11]
	// Arreglo menu principal
	menuPrincipal[0] = "  1)Ejercicios con Numeros"
	menuPrincipal[1] = "  2)Ejercicios con Cadenas"
	menuPrincipal[2] = "  3)Ejercicios con Arreglos"
	menuPrincipal[3] = "  4)Salir"
	
	// arreglo submenu numeros
	menuNumeros[0] = "  1)Mayor de 2 Numeros"
	menuNumeros[1] = "  2)Dividir dos numeros por restas"
	menuNumeros[2] = "  3)Multiplicar dos numeros por sumas"
	// n=5 : 20,5,10,2,1 respuesta: sumpares=32  multiplos5=1000
	menuNumeros[3] = "  4)Suma Pares y Productos multiplos de 5 de una secuencia de numeros"
	//  2,123,10,2345,0 respuesta = 10    r=trunc(2/10)=0 r = 2 mod 10 =2
	menuNumeros[4] = "  5)Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0"
	//El almacen SomosMas tiene una promoción: a todos los trajes que tienen un
	//precio superior a 100, se les aplicará un descuento del 10%  y a los demas
	//el 5%. presentar el valor de cada traje con su respectivo valor, descuento y pago
	//considerando el iva del 12%. Asuma que se ingresan n trajes.
	// n=2
	// PrecioTraje=120   des=precioTraje*0.10=12  iva=(120-12)*0.12 pago=precioTraje-des+iva
	// PrecioTraje=50   des=precioTraje*0.05=2.5  iva=(50-2.5)*0.12
	menuNumeros[5] = "  6)Mostrar El Precio, descuento, iva y pago de n trajes del amacen SomosMas"
	menuNumeros[6] = "  7)Dado tres numeros indicar si el segundo es el mayor"
	// la secuencia termina cuando se ingrese un numero negativo
	// 2,4,6,8,-10
	menuNumeros[7] = "  8)Dado una secuencia de numeros presentar su promedio"
	// dos numeros son amigos cuando la suma de los divisores del primer numero
	// son iguales a la suma de los divisores del segundo numero.
	// n1=6(1,2,3)=6 n2=25(1,5)=6
	menuNumeros[8] = "  9)Numeros amigos"
	// dos numeros son primos gemelos si ambos son primos
	//n1=5  n2=7
	menuNumeros[9] = "  10)primos gemelos"
	menuNumeros[10]= "  11)Salir"
	
	// arreglos submenu cadenas
	// nombre = "ana"  ana
	menuCadenas[0] = "  1)Presentar un nombre caracter por caracter"
	// frase="hola que tal"    hul
	menuCadenas[1] = "  2)Presentar el primero, el medio y el ultimo caracter de una frase"
	//nom1="daniel" nombre2="daniel" si nombre1 = nombre2
	menuCadenas[2] = "  3)Dado dos nombres indicar si son iguales"
	//f1="Hola" f2="mal"  si longitud(f1)>longitud(f2)
	menuCadenas[3] = "  4)Dadas dos frase indicar la de mayor longitud"
	//frase="Hola, que tal; como te va,Bien: y tu, como estas."
	// ,=3  .=1  ;=1 :1   si subcadena(frase,pos,pos)=","
	menuCadenas[4] = "  5)Indicar cuantas ,.;: hay en una cadena"
	//frase="Juan tiene 20 dolares"
	// vocales=8   consonantes=11  digitos=2  si subcadena(frase,pos,pos)>="0" y <="9"
	menuCadenas[5] = "  6)Dado una cadena indicar cuantas vocales, consonantes y digitos hay"
	// frase = "hola   que  tal" palabras=3
	menuCadenas[6] = "  7)Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
	// cedula="0914192182"= 37   convertirANumero(subcadena(frase,pos,pos))
	menuCadenas[7] = "  8)Presentar la suma de los digitos de una cedula"
	// palabra="ana"
	menuCadenas[8] = "  9)Indicar si una palabra es palindroma"
	// cadena="hola que tal"
	//         01234567891011
	//caracter="qui"  resp=-1
	//caracter="que"  resp=5
	menuCadenas[9] = "  10)Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena"
	menuCadenas[10] = "  11)Salir"
	
	// arreglo submenu arreglos
	// arreglo=[2,4,5,8,10]  presentar 2 4 5 8 10
	menuArreglos[0]= "1)Dado un arreglo cualquiera ingresarlo y presentarlo"
	// arreglo=[2,3,4,67,8] presenta 2 4 8  
	menuArreglos[1]= "2)Presentar los numeros pares de un arreglo"
    //n=5
	// 2,4,-6,2,-5 = [-6,-5]  = presenta -6 -5
	menuArreglos[2]= "3)Dado una serie de numeros guardar en un arreglo solo los numeros negativos"
    // n=3
	// ["ana","jose","dan"]  presenta a j d 
	menuArreglos[3]= "4)Dado un arreglo de nombres presentar el primer caracter de cada nombre"
    //n=5  arreglo=[10,20,30,5,10]= total=75  cant=5   prom=15   
	menuArreglos[4]= "5)Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo"
    //n=5  arreglo=[8,20,7,5,4] presenta 5 20
	menuArreglos[5]= "6)Dado un arreglo presentarlo al revez solo los numeros multiplos de 5"
	//n=5  arreglo=[8,20,7,5,4] presenta 8  7  4
	menuArreglos[6]= "7)Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo"
    //n=5  arreglo1=[8,20,7,5,4]   arreglo2=[8,20,7,5,4] presenta 8,20,7,5,4
	menuArreglos[7]= "8)Dado un arreglo copiarlo en otro y presentarlo"
    //n=5  arreglo1=[8,20,7,5,4]
	//     arreglo2=[2,1,3,5,6] copiarArreglo3=[pos]=arreglo1[pos]+arreglo2[pos]
	menuArreglos[8]= "9)Dado 2 arreglos copiar en un otroarreglo la suma de cada elemento de los 2 arreglos"
	//n=5  3,2,1,5,4  arregloFactorual [6,2,1,120,24] 
	menuArreglos[9]= "10)Dado una serie de numeros guarda en un arreglo los factoriales"
	menuArreglos[10]="11) Salir"
	opc=""
    Mientras opc <> "4" Hacer
		opc=presentarMenu("Menu Principal",menuPrincipal,4)
		Segun opc Hacer
		"1":
			opcn=""
			Mientras opcn <> "11" Hacer         
				opcn=presentarMenu("Menu Numeros",menuNumeros,11)
				Segun opcn Hacer
					"1":
						Escribir "Mayor de dos Numeros"
						mayorDosNumeros()
						Esperar 3 Segundos
					"2":
						Escribir "Dividir dos numeros por restas"
						Dividirdosnumerosporrestas
						Esperar 3 Segundos
					"3":
						Escribir "Multiplicar dos numeros por sumas"
						Multiplicardosnumerosporsumas
						Esperar 3 Segundos
					"4":
						Escribir "Suma Pares y Productos multiplos de 5 de una secuencia de numeros"
						ProductoMultiplos5
						
						Esperar 3 Segundos
					"5":
						Escribir "Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0"
						secuenciacero
						Esperar 3 Segundos
					"6":
						Escribir "Mostrar El Precio, descuento, iva y pago de n trajes del amacen SomosMas"
						almacenSomosMas
						Esperar 10 Segundos
					"7":
						Escribir "Dado tres numeros indicar si el segundo es el mayor"
						segundomayor
						Esperar 3 Segundos
					"8":
						Escribir "Dado una secuencia de numeros presentar su promedio"
						secuenciadenumerospresentarpromedio
						Esperar 3 Segundos
					"9":
						Escribir "Numeros amigos"
						Numerosamigos
						Esperar 10 Segundos
					"10":
						Escribir "primos gemelos"
						primosgemelos
						Esperar 3 Segundos
					"11":
						Escribir "Regresando al Menu Principal"
						Esperar 3 Segundos
					De Otro Modo:
						Escribir "Opcion invalida..."
						Esperar 3 Segundos
				Fin Segun
			FinMientras
		    
		"2":
			opcn=""
			Mientras opcn <> "11" Hacer         
				opcn=presentarMenu("Menu cadena",menuCadenas,11)
				Segun opcn Hacer
					"1":
						Escribir "Presentar un nombre caracter por caracter"
						caracterporcaracter
						Esperar 3 Segundo
					"2":
						Escribir "Presentar el primero, el medio y el ultimo caracter de una frase"
						primermedioultimo
						Esperar 3 Segundos
					"3":
						Escribir "Dado dos nombres indicar si son iguales"
						nombresiguales
						Esperar 3 Segundos
					"4":
						Escribir "Dadas dos frase indicar la de mayor longitud"
						mayorlongitud
						Esperar 3 Segundos
					"5":
						Escribir "Indicar cuantas ,.;: hay en una cadena"
						comas
						Esperar 3 Segundos
					"6":
						Escribir "Dado una cadena indicar cuantas vocales, consonantes y digitos hay"
						vocalesconsonates
						Esperar 3 Segundos
					"7":
						Escribir "Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
						palabrafrase
						Esperar 3 Segundos
					"8":
						Escribir "Presentar la suma de los digitos de una cedula"
						cedula
						Esperar 3 Segundos
					"9":
						Escribir "Indicar si una palabra es palindroma"
						palindroma
						Esperar 3 Segundos
					"10":
						Escribir "Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena"
						Posicion
						Esperar 3 Segundos
					"11":
						Escribir "Regresando al Menu Principal"
						Esperar 3 Segundos
					De Otro Modo:
						Escribir "Opcion invalida..."
						Esperar 3 Segundos
					
				FinSegun
			FinMientras
			
		"3":
			opcn=""
			Mientras opcn <> "11" Hacer         
				opcn=presentarMenu("Menu Arreglo",menuArreglos,11)
				Segun opcn Hacer
					"1":
						Escribir "Dado un arreglo cualquiera ingresarlo y presentarlo"
						arreglos1
						Esperar 3 Segundo
					"2":
						Escribir "Presentar los numeros pares de un arreglo"
						paresarreglo
						Esperar 3 Segundo
					"3":
						Escribir "Dado una serie de numeros guardar en un arreglo solo los numeros negativos"
						Negativos
						Esperar 3 Segundo
					"4":
						Escribir "Dado un arreglo de nombres presentar el primer caracter de cada nombre"
						CaracterDeUnNombre
						Esperar 3 Segundo
					"5":
						Escribir "Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo"
						ElTotalCantidadYPromedio
						Esperar 3 Segundo
					"6":
						Escribir "Dado un arreglo presentarlo al revez solo los numeros multiplos de 5"
						MultiplosDe5AlReves
						Esperar 3 Segundo
					"7":
						Escribir "Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo"
						PrimerMedioYUltimo
						Esperar 3 Segundo
					"8":
						Escribir "Dado un arreglo copiarlo en otro y presentarlo"
						otroarreglo
						Esperar 3 Segundo
					"9":
						Escribir "Dado 2 arreglos copiar en un otroarreglo la suma de cada elemento de los 2 arreglos"
						dosarreglosuma
						Esperar 3 Segundo
					"10":
						Escribir "Dado una serie de numeros guarda en un arreglo los factoriales"
						factoriales
						Esperar 3 Segundo
					"11":
						Escribir "Regresando al Menu Principal"
						Esperar 3 Segundos
					De Otro Modo:
						Escribir "Opcion invalida..."
						Esperar 3 Segundos
				FinSegun
			FinMientras
		"4":
			Escribir "Gracias por usar el Sistema"
			Esperar 3 Segundos
	Fin Segun
FinMientras
FinAlgoritmo
