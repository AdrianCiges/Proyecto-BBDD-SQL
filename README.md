# Creaci贸n BBDD Videoclub SQL 馃摴
## CONTENIDO 馃搼
[1 - Objetivo 馃幆](#O)<br />
[2 - Extracci贸n, Transformaci贸n y Carga 鈿欙笍](#ETL) <br />
[3 - Estructura Relacional 馃З](#ER)<br />
[4 - Queries de Comprobaci贸n 鉂揮(#QC)<br />

## 1 - OBJETIVO 馃幆<a name="O"/> 
馃挜 Cargar y limpiar los datos de los archivos.csv proporcionados en el repositorio del proyecto.

馃挜 Crear una base de datos (BBDD) de un videoclub en MySQL Workbench con las correspondientes relaciones l贸gicas.

馃挜 Probar el buen funcionamiento de la base de datos ejecutando diversas queries de consulta en la misma. 

## 2 - EXTRACCI脫N, TRANSFORMACI脫N Y CARGA 鈿欙笍<a name="ETL"/>

馃搧 Leemos los archivos.csv en Jupyther Notebook. <br />

馃Ъ Limpiamos los datos con Pandas a partir de DataFrames: <br />

&emsp; &emsp; &emsp; 鉂? Eliminamos columnas con nulos. <br />
&emsp; &emsp; &emsp; 鉂? Eliminamos columnas con valores constantes: <br />

&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; 馃棏锔? 'last_update' en todas las tablas (dato constante). <br />
&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; 馃棏锔? 'release_year' en df_FILM. <br />
&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; 馃棏锔? 'original_language_id' en df_FILM.  <br />

&emsp; &emsp; &emsp; 鉂? Si queremos escalar el proyecto, deberemos reconsiderar su eliminaci贸n.

猡达笍 Exportamos a SQL. <br />

## 3 - ESTRUCTURA RELACIONAL 馃З<a name="ER"/>

馃洜锔? Creamos columna para concatenar el nombre en tabla ACTOR. <br />

鉂? Eliminamos columnas duplicadas en proceso de pruebas. <br />

馃敘 Modificamos valores err贸neos de 'inventory_id' por random. <br />

馃洜锔? Creamos columna para concatenar el nombre en tabla OLD_HDD. <br />

馃洜锔? Creamos tabla permanente para relaci贸n many-to-many (OLD_HDD), cambiamos nombre a FILMACTOR. <br />

馃棟锔? A帽adimos categor铆a de 'primary key' y relaciones con 'foreign key'. <br />

馃攲 Corregimos columnas que daban problemas de compatibilidad. <br />

![image](https://user-images.githubusercontent.com/109532909/200290927-2044aa71-2963-4d3c-b74f-c117696bf5d3.png)


## 4 - QUERIES DE COMPROBACI脫N 鉂? <a name="QC"/>
##### Tiramos queries para comprobar el buen funcionamiento de la BBDD

### 馃 驴Cu谩les son los 10 actores con m谩s pel铆culas de rating "R"?

![image](https://user-images.githubusercontent.com/109532909/187027815-0f5157a5-5863-4b5b-880d-17cf2485b584.png)

### 馃 驴Cu谩les son las 10 pelis de "rental duration" > 5 con m谩s actores?

![image](https://user-images.githubusercontent.com/109532909/187027861-0c2b892c-5d3f-495b-811c-a9cdae59cc5d.png)

### 馃 驴Cu谩les son las 10 pelis de mayor duraci贸n sin actores y rate >  4?

![image](https://user-images.githubusercontent.com/109532909/187027866-703a4a13-1d9f-4624-bcee-e8ce3c9ead3c.png)

### 馃 驴Cu谩les son las mejores pelis de horror (rate 4+) de +120 min?

![image](https://user-images.githubusercontent.com/109532909/187027873-3680ee65-3ce7-4ac2-8b69-b5c76db210e8.png)

### 馃 驴Cu谩les son las comedias inglesas con menos actores?

![image](https://user-images.githubusercontent.com/109532909/187027878-4bfb2583-d823-48a7-a503-ead38c5f0536.png)

### 馃 驴Cu谩les son las categor铆as con m谩s pel铆culas?

![image](https://user-images.githubusercontent.com/109532909/187027884-242bf1d1-3281-46db-bf37-fbea79412e7c.png)

