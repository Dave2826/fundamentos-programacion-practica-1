#!/bin/bash

# Script de commits automáticos secuenciales
# Dave Morales – Fundamentos de Programación

# Lista de ejercicios para subir (prueba con 4.1, 4.2 y 4.3)
ejercicios=("4.1" "4.2" "4.3")

for ejercicio in "${ejercicios[@]}"
do
  echo "🚀 Subiendo Ejercicio $ejercicio..."
  git add ejercicios.js
  git commit -m "Ejercicio $ejercicio Resuelto"
  git push origin main
  echo "✅ Ejercicio $ejercicio subido correctamente a GitHub."
  echo "⏳ Esperando 10 minutos antes del siguiente..."
  sleep 600  # 10 minutos (600 segundos)
done

echo "🎯 Todos los ejercicios de prueba han sido subidos con éxito."
