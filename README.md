# Creación BBDD Videoclub SQL 📹
## CONTENIDO 📑
[1 - Objetivo 🎯](#O)<br />
[2 - Extracción, Transformación y Carga ⚙️](#ETL) <br />
[3 - Estructura Relacional 🧩](#ER)<br />
[4 - Queries de Comprobación 🤔](#QC)<br />

## 1 - OBJETIVO 🎯<a name="O"/> 
💥 Cargar y limpiar los datos de los archivos.csv proporcionados en el repositorio del proyecto.

💥 Crear una base de datos (BBDD) de un videoclub en MySQL Workbench con las correspondientes relaciones lógicas.

💥 Probar el buen funcionamiento de la base de datos ejecutando diversas queries de consulta en la misma. 

## 2 - EXTRACCIÓN, TRANSFORMACIÓN Y CARGA ⚙️<a name="ETL"/>

📁 Leemos los archivos.csv en Jupyther Notebook. <br />

🧼 Limpiamos los datos con Pandas a partir de DataFrames: <br />

&emsp; &emsp; &emsp; ❌ Eliminamos columnas con nulos. <br />
&emsp; &emsp; &emsp; ❌ Eliminamos columnas con valores constantes (pero si queremos escalar el proyecto, deberemos reconsiderar su eliminación): <br />
&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; 🗑️ 'last_update' en todas las tablas (dato constante). <br />
&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; 🗑️ 'release_year' en df_FILM. <br />
&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; 🗑️ 'original_language_id' en df_FILM.  <br />

⤴️ Exportamos a SQL. <br />

## 3 - ESTRUCTURA RELACIONAL 🧩<a name="ER"/>

🛠️ Creamos columna para concatenar el nombre en tabla ACTOR. <br />

❌ Eliminamos columnas duplicadas en proceso de pruebas. <br />

🔢 Modificamos valores erróneos de 'inventory_id' por random. <br />

🛠️ Creamos columna para concatenar el nombre en tabla OLD_HDD. <br />

🛠️ Creamos tabla permanente para relación many-to-many (OLD_HDD), cambiamos nombre a FILMACTOR. <br />

🗝️ Añadimos categoría de 'primary key' y relaciones con 'foreign key'. <br />

🔌 Corregimos columnas que daban problemas de compatibilidad. <br />

![image](https://user-images.githubusercontent.com/109532909/200290927-2044aa71-2963-4d3c-b74f-c117696bf5d3.png)


## 4 - QUERIES DE COMPROBACIÓN 🤔 <a name="QC"/>
### Tiramos queries para comprobar el buen funcionamiento de la BBDD

❓ ¿Cuáles son los 10 actores con más películas de rating "R"?

![image](https://user-images.githubusercontent.com/109532909/187027815-0f5157a5-5863-4b5b-880d-17cf2485b584.png)

❓ ¿Cuáles son las 10 pelis de "rental duration" > 5 con más actores?

![image](https://user-images.githubusercontent.com/109532909/187027861-0c2b892c-5d3f-495b-811c-a9cdae59cc5d.png)

❓ ¿Cuáles son las 10 pelis de mayor duración sin actores y rate >  4?

![image](https://user-images.githubusercontent.com/109532909/187027866-703a4a13-1d9f-4624-bcee-e8ce3c9ead3c.png)

❓ ¿Cuáles son las mejores pelis de horror (rate 4+) de +120 min?

![image](https://user-images.githubusercontent.com/109532909/187027873-3680ee65-3ce7-4ac2-8b69-b5c76db210e8.png)

❓ ¿Cuáles son las comedias inglesas con menos actores?

![image](https://user-images.githubusercontent.com/109532909/187027878-4bfb2583-d823-48a7-a503-ead38c5f0536.png)

❓ ¿Cuáles son las categorías con más películas?

![image](https://user-images.githubusercontent.com/109532909/187027884-242bf1d1-3281-46db-bf37-fbea79412e7c.png)

