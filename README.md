# Modelo de Simulación Politicas Públicas Rurales Medellín
# Por: Julian Andres Castillo Grisales.
## Resumen

Medellín cuenta con una importante demanda de alimentos frescos, pero al mismo tiempo el 70% de su territorio es rural, donde no sólo ofrece servicios ambientales, sino que produce alrededor de 29.000 toneladas/año de alimentos, lo que lo convierte en una excelente alternativa para proveer alimentos “0 kilómetros” a la ciudad.
Esta propuesta de investigación pretende mediante la combinación de dos herramientas, hacer una evaluación de las políticas públicas asociadas al fortalecimiento de las unidades productivas agrícola de los corregimientos de Medellín. Por tanto, se realizará una evaluación de percepción junto con un modelo de simulación para evaluar diversas políticas identificadas en el análisis exploratorio, con el ánimo de realizar sugerencias de política pública al municipio, de acuerdo con la percepción de la población, la producción y el cambio en la tenencia de la tierra dedicada a la actividad agrícola. Dada la metodología propuesta, la selección del paradigma de simulación se hará posterior a la revisión del estado del arte.
Este proyecto se enmarca en la línea de investigación de poder y organización, donde se precisa la importancia de estas unidades agrícolas en la estructura productiva de la ciudad.


## Los Agentes

El sistema se encarga de relacionar las capas del suelo obtenidas desde mapas del plan de ordenamiento territorial y se establecen como las políticas de suelo y se traspasan estas propiedades al agente el cual se ubica en el centroide de cada lote o parcela. Las propiedades de cada agente se describen en la tabla 1.
 Los agentes son instanciados como un objeto relacionado al lote o parcela en donde tendrá la capacidad de interactuar con sus vecinos de acuerdo con criterios de inicialización del modelo para que de acuerdo con sus características ya sea residenciales o sin construcciones tendrá la capacidad de adaptarse a su entorno.


## El Entorno

El entorno del modelo está basado en una malla de 30 x 30 parches y se configura como una ubicación de esquina con inicio abajo a la izquierda. Esto se relaciona con los 380 Km² de extensión del Distrito, los cuales se representa en el gráfico de inicio del modelo de la imagen 2. El entorno relacionado con los parches sólo vincula una codificación de comuna, un identificador y un color. La comuna describe la posibilidad de separar el entorno rural del urbano, las comunas rurales son numeradas del 50 al 90 de 10 en 10 y las comunas urbanas son numeradas del 1 al 16 de 1 en 1. Al usar el complemento [gis] de NetLogo permite vincular los objetos geográficos como parches al modelo y es esta relación es la que admite vincular un agente a cada objeto vectorial del modelo de los lotes o parcelas. Los elementos geográficos del modelo corresponden con los lotes del Distrito. Esta información se encuentra disponible en datos abiertos llamada Medata y de allí se exportaron los más recientes datos del Plan de Ordenamiento Territorial, la capa de Lotes y la información necesaria agregada para el procedimiento descrita en la parte inicial del documento.

## El modelo

La inicialización del modelo se basa en 3 partes las cuales se describen a continuación:
###   Limpieza e inicialización de variables.
>*   Se reestablecen todas las variables del modelo incluyendo el tiempo (ticks)
>*   Se definen la forma y característica de los agentes
>*   Se carga el dataset GIS de Medellín y se asigna un parche a cada entidad vectorial del mapa. 
*   Identificación y caracterización de los agentes.
>*   Se identifica el tipo de clúster de los dos posibles escenarios, ya sea KMEANS o JERARQUICO se aplica el proceso diferenciador de color en donde a cada clúster (8 a 15) se le asigna un color para su identificación.
>*   A los lotes o parcelas no identificadas se les asigna el color negro como se observa en la imagen #. 
*   Asignación de Agentes a los lotes o parcelas
>*   Se recorre por cada objeto espacial tipo lote y a su centroide geográfico se le asigna un agente con su coordenada X e Y y se le asignan las variables relacionadas con este de acuerdo con elementos decisorios del modelo, estos elementos son entre otros su ubicación geográfica codificada, su coordenada X e Y como variables, su área de terreno (área de lote), los componentes de caracterización, el uso predial, las variables booleanas Cambia y Escaneado en donde inician en falso y por último la suma y el promedio de los datos dicotómicos de los componentes geográficos de políticas públicas (POT).
*   Variables decisorias del modelo, el modelo permite tener variables de control las cuales se definen a continuación
>*   Tipo de Clúster (TipoCluster): Esta variable define la ruta a tomar por el modelo, ya sea usando la clasificación de los clústeres usando KMeans o Jerárquico.
>*   Cantidad de Clusteres (CantidadClusters): esta variable define la cantidad de clústeres a utilizar en el modelo, varia de 8 hasta 15.
>*   Área Mínima (AreaMinima): esta variable define el área mínima que debe tener un lote para ser tenido en cuenta en el modelo, entre mayor sea el área menos cantidad de lotes y si es menor mayor cantidad de lotes entraran en el modelo.
>*   Predios en un radio definido (PrediosRadioParche): 

 
Luego del proceso de inicialización, el modelo se ejecuta con una base anualizada, es decir, cada paso del tiempo del modelo representa un año en el cual los agentes toman decisiones basándose en los elementos que los rodea. El modelo se compone de tres partes, (1) la configuración de los agentes y los parches usando la data geográfica para la definición del tipo de clasificación, (2) calcular el entorno teniendo en cuenta la cantidad de agentes de una característica en su radio de acción, (3) reportar la cantidad de cambios de acuerdo con las decisiones que toman los agentes.
El modelo requiere varios submodelos los cuales se describen a continuación de acuerdo con el nombre asignado en el código.
La inicialización del modelo comprende el entorno de "Setup" del programa. Este se encarga de limpiar los elementos que puedan quedar de simulaciones anteriores y garantizar una correcta inicialización de todas las entidades. Posteriormente, se carga la información geográfica de Medellín. En el entorno rural, la información se encuentra con un nivel de agregación a nivel de lote, mientras que para la parte urbana no se cuenta con esta agregación a nivel de lote, sino a nivel de barrio. Esto se debe a que los entornos urbanos no serán parte del modelo y se representan en color negro, como se muestra en la imagen, para favorecer la visualización para el interlocutor.
Cada lote en el entorno geográfico se representa como un agente (parche) en el entorno de NetLogo. Para definir el color de cada parche (lote), se utiliza un clasificador. Desde el entorno binario de KMeans o Jerárquico, detallado previamente, se subdividen en una cantidad de clústeres que varía de ocho a quince para el modelo. Cada objeto que pertenezca a un clúster tendrá un color diferente. El primer clúster, el cero, corresponde a la sección urbana y se pinta de negro. Los demás colores se describen a continuación para cada clúster:
>*   0 - black
>*   1 - white
>*   2 - gray
>*   3 - red
>*   4 - orange
>*   5 - brown
>*   6 - yellow
>*   7 - green
>*   8 - lime
>*   9 - turquoise
>*   10 - cyan
>*   11 - sky
>*   12 - blue
>*   13 - violet
>*   14 - magenta
>*   15 - pink
>*   16 – lightpink (138)

La separación entre los espacios de los lotes se dibuja de color blanco con un grosor de una unidad. 
El procedimiento para crear una tortuga (agente) en cada objeto geográfico (lote) se realiza mediante la función “CrearTortugasEnLotes” en donde primero se destruyen todas las tortugas que tenga el modelo para no generar falsos valores al comienzo y se recorren todos los elementos geográficos con un ciclo “ForEach” para  cada elemento geográfico (lote) se identifica el centroide y se asigna a la variable “location” en donde se empieza a obtener la información geográfica del mapa en donde se captura su coordenada X e Y, el CBML, Área de Lote, el valor del clúster para el modelo de ocho a 15, las propiedades de las políticas públicas dicotómicas del modelo, el Código del uso predial, en donde solo nos interesa si es 1 (residencial) o 9 (lote no construidos), las variables booleanas “Cambia” y “Escaneado” que inician en falso para ser editadas luego por el modelo, luego la suma de sus componentes de políticas públicas, un lote con buenas políticas para nuestro proceso debería sumar 10 y calculamos su promedio, entre más cercano a 1, mejor lo cual definiremos en la ejecución del modelo. Con este procedimiento el agente ya contiene todas las variables necesarias para ser evaluado.
El presente modelo es un modelo basado en entornos por lo tanto el siguiente procedimiento es la función en base a su entorno llamada “CalcularEntorno”, esta función se encarga de definir el ambiente para cada agente y si es susceptible de cambiar de clúster. El procedimiento que realiza cada agente es el siguiente:
1.   Sólo se permite evaluar aquellos lotes que tengan un ambiente aceptable para el cambio, por lo tanto, si cumplen que el promedio políticas públicas es superior a 0.8 la suma de las columnas es mayor a 8 y el área de lote es mayor al área de lote mínima definida previamente.
2.   Se procede a evaluar si el tipo de predio es susceptible de cambio, para estos se valida la variable “C_UsoPredi” la cual debe ser 1 (residencial) o 9 (no construido), esto debido a que las demás destinaciones de los predios ya son aprovechadas comercialmente o no lo permiten, como por ejemplo los código 7 que corresponden a vías.
3.   Luego se evalúa para cada lote en su respectivo tipo de modelo de clasificación de acuerdo con la variable decisoria “CantidadCluster” en donde se define el modelo a utilizar ya sea el de 8, 12 o 15 clústeres para posteriormente evaluar sus alrededores 
4.   El código comienza verificando si la variable “CantidadClusters” es igual a un valor seleccionado en la variable decisoria y procede a evaluar el procedimiento para dicha cantidad de clústeres.
5.   Luego de la cantidad de clústeres se define un ciclo “while” que se ejecuta mientras la variable i se define como el valor del clúster desde cero hasta j la cual es la cantidad de clústeres máximo por ejecución, j varia de 8 a 15 mientras que i varía de 1 hasta el valor de j.
6.   Se cuenta el número de tortugas que tienen un valor de clúster igual a i y que se encuentran dentro de un radio definido por la variable PrediosRadioParche. Este conteo se almacena en una variable local llamada CantTortugasRadio.
7.   Luego, el valor de CantTortugasRadio se agrega al final de una lista (vector) nombrado “x” para luego incrementar la variable i en 1.
8.   Una vez que el ciclo “while” ha terminado, el código calcula el valor máximo en la lista “x” y lo almacena en la variable temporal “q”. Luego, encuentra la posición de este valor máximo dentro de la lista “x” y la almacena en la variable resultado “w”.
9.   Después, el código verifica si “w” es diferente del valor del clúster actual. Si es así, se actualiza el valor de la variable NuevoCluster a “w” y se encuentra un cambio de cluster y se establece la variable Cambia? en true.
10.   Finalmente, independientemente del resultado, se establece la variable Scanned? en true.
11.   Al terminar de recorrer todos los agentes (lotes) se termina el modelo.
