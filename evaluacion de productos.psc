Proceso SistemaBancario
	Definir cuentaA, cuentaB, cuentaMaster, monto Como Real
	Definir opcion, cuentaOrigen, cuentaDestino Como Entero
	
	// Inicializar saldos
	Escribir "Ingrese el saldo inicial de la Cuenta A:"
	Leer cuentaA
	Escribir "Ingrese el saldo inicial de la Cuenta B:"
	Leer cuentaB
	cuentaMaster = 0
	
	Repetir
		Escribir "=============================="
		Escribir "       MENÚ DE OPERACIONES    "
		Escribir "=============================="
		Escribir "1. Transferencia entre Cuentas A y B"
		Escribir "2. Inyectar dinero desde Cuenta Master"
		Escribir "3. Consultar saldos"
		Escribir "4. Salir"
		Escribir "Seleccione una opción:"
		Leer opcion
		
		Si opcion = 1 Entonces
			Escribir "Seleccione cuenta origen (1 para A, 2 para B):"
			Leer cuentaOrigen
			Escribir "Seleccione cuenta destino (1 para A, 2 para B):"
			Leer cuentaDestino
			
			Si cuentaOrigen = cuentaDestino Entonces
				Escribir "No puede transferir a la misma cuenta."
			SiNo
				Escribir "Ingrese el monto a transferir:"
				Leer monto
				
				Si monto > 0 Entonces
					Si cuentaOrigen = 1 Y cuentaDestino = 2 Entonces
						Si monto <= cuentaA Entonces
							cuentaA = cuentaA - monto
							cuentaB = cuentaB + monto
							Escribir "Transferencia realizada de A a B."
						SiNo
							Escribir "Saldo insuficiente en Cuenta A."
						FinSi
					SiNo
						Si cuentaOrigen = 2 Y cuentaDestino = 1 Entonces
							Si monto <= cuentaB Entonces
								cuentaB = cuentaB - monto
								cuentaA = cuentaA + monto
								Escribir "Transferencia realizada de B a A."
							SiNo
								Escribir "Saldo insuficiente en Cuenta B."
							FinSi
						SiNo
							Escribir "Cuentas inválidas."
						FinSi
					FinSi
				SiNo
					Escribir "Monto inválido. Debe ser mayor a 0."
				FinSi
			FinSi
			
		SiNo
			Si opcion = 2 Entonces
				Escribir "Ingrese el monto a ingresar a la Cuenta Master:"
				Leer monto
				Si monto > 0 Entonces
					cuentaMaster = cuentaMaster + monto
					Escribir "Fondos añadidos a Cuenta Master."
					
					Escribir "¿A qué cuenta desea transferir desde la Cuenta Master? (1 para A, 2 para B):"
					Leer cuentaDestino
					Escribir "Ingrese el monto a inyectar desde la Cuenta Master:"
					Leer monto
					
					Si monto > 0 Y monto <= cuentaMaster Entonces
						Si cuentaDestino = 1 Entonces
							cuentaA = cuentaA + monto
							cuentaMaster = cuentaMaster - monto
							Escribir "Inyección exitosa a Cuenta A."
						SiNo
							Si cuentaDestino = 2 Entonces
								cuentaB = cuentaB + monto
								cuentaMaster = cuentaMaster - monto
								Escribir "Inyección exitosa a Cuenta B."
							SiNo
								Escribir "Cuenta destino inválida."
							FinSi
						FinSi
					SiNo
						Escribir "Monto inválido o saldo insuficiente en Cuenta Master."
					FinSi
				SiNo
					Escribir "El monto debe ser mayor a 0."
				FinSi
				
			SiNo
				Si opcion = 3 Entonces
					Escribir "Saldo Cuenta A: ", cuentaA
					Escribir "Saldo Cuenta B: ", cuentaB
					Escribir "Saldo Cuenta Master: ", cuentaMaster
					
				SiNo
					Si opcion = 4 Entonces
						Escribir "Saliendo del programa..."
					SiNo
						Escribir "Opción no válida. Intente nuevamente."
					FinSi
				FinSi
			FinSi
		FinSi
		
	Hasta Que opcion = 4

FinProceso

