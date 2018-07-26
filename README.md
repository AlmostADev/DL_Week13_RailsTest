# Consejos para la realización de esta evaluación:
### Leer la prueba completa antes de comenzar.
- Copia de código fuente será castigada con nota 0.
- Concentrarse en incluir la mayor cantidad de ítems funcionales posibles, comenzar por los más fáciles.
- Se puede utilizar: Google, StackOverflow, Blogs, material previo del curso, etc... 
# Prueba 1 de Rails
#### El objetivo de esta actividad es evaluar la implementación del patron de diseño MVC, el manejo de arquitectura REST, la creación de formularios y la validación de modelos.
#### En esta evaluación desarrollarás una ToDo List app que permita ingresar, leer, editar y eliminar ToDos. Cada ToDo debe poseer además la opción de ser marcado como completado.
#### Buena suerte !!
# Parte I: CRUD
- Crear un nuevo proyecto en Rails 5.1 llamado todo_app.
- Crear el controller todos (se debe crear vacío, los métodos se irán agregando manualmente a medida que avanzamos)
- Crear el model Todo con los campos description (string) y completed (boolean). Revisar y correr la migración.
- Agregar el CDN de jQuery al layout.
- Agregar el CDN de Bootstrap al layout.
            
## Index: :heavy_check_mark:
- Crear la ruta '/todos' que apunte al método todos#index con el verbo get. :heavy_check_mark:
    - Hint: Recordar las rutas deben obedecer a la arquitectura REST (prefixs y verbs).
- En el controller todos crear el método index. En este método se debe declarar una variable de instancia @todos que almacenará la colección de ToDos existentes. :heavy_check_mark:
- Crear la vista index.html.erb.
    - En la vista se debe listar cada ToDo utilizando la clase well de Bootstrap. :heavy_check_mark:
## New: :heavy_check_mark:
- Crear la ruta 'todos/new' con el verbo get. :heavy_check_mark:
- En el controller todos crear el método new. En este método se debe declarar una variable de instancia @todo que almacenará una nueva instancia de Todo. :heavy_check_mark:
- Crear la vista new.html.erb. :heavy_check_mark:
    - La vista debe contener el formulario para la creación de un nuevo ToDo.
    - El formulario se debe generar utilizando form_with asociado a @todo. (No olvidar asignar el atributo local:true).
- En la vista Index: agregar un link a Crear ToDo. :heavy_check_mark:
## Create: :heavy_check_mark:
- Crear la ruta '/todos' que apunte al método todos#create con el verbo post. :heavy_check_mark:
- En el controller todos crear el método create. Este método debe crear un nuevo ToDo a partir de los parámetros recibidos del formulario bajo el scope de ToDo (params[:todo]). :heavy_check_mark:
- Filtrar los parámetros recibidos bajo el scope de ToDos en un método privado llamado todo_params para poder utilizar asignación masiva. :heavy_check_mark:
- El método create después de almacenar el todo debe redireccionar al index de ToDos. :heavy_check_mark:
## Show: :heavy_check_mark:
- Crear la ruta '/todos/:id' que apunte al método todos#show con el verbo get y el prefijo todo. :heavy_check_mark:
- En el controller todos crear el método show. Este método debe buscar un ToDo en base al parámetro 'id'. (Todo.find) y asignarlo a a la variable @todo :heavy_check_mark:
- Crear la vista show.html.erb. :heavy_check_mark:
    - La vista debe mostrar la descripción del ToDo y si se encuentra completado o no.
- En la vista Index: agregar un link a Show a cada ToDo listado. :heavy_check_mark:
## Edit: :heavy_check_mark:
- Crear la ruta '/todos/:id/edit' que apunte al método todos#edit con el verbo get. :heavy_check_mark:
- En el controller todos crear el método edit. Este método debe buscar un ToDo en base al parámetro 'id'. (Todo.find) y asignarlo a a la variable @todo. :heavy_check_mark:
- Crear la vista edit.html.erb. :heavy_check_mark:
    - La vista debe contener el formulario para la edición del ToDo.
    - El formulario se debe generar utilizando form_with asociado a @todo. (No olvidar asignar el atributo local:true y corroborar que el formulario se haya creado con el método patch).     
- En la vista Index: agregar un link a Edit a cada ToDo listado. :heavy_check_mark:
## Update: :heavy_check_mark:
- Crear la ruta '/todos/:id' que apunte al método todos#update con el verbo patch. :heavy_check_mark:
- En el controller todos crear el método update. Este método debe buscar un ToDo en base al parámetro 'id'. (Todo.find) y asignarlo a a la variable @todo. :heavy_check_mark:
- Filtrar los parámetros recibidos bajo el scope de ToDos en el mismo método privado todo_params para poder utilizar asignación masiva. :heavy_check_mark:
- El método update después de actualizar el todo debe redireccionar al index de ToDos. :heavy_check_mark:
## Destroy: :heavy_check_mark:
- Crear la ruta '/todos/:id' que apunte al método todos#destroy con el verbo delete. :heavy_check_mark:
- En el controller todos crear el método destroy. Este método debe buscar un ToDo en base al parámetro 'id'. (Todo.find) :heavy_check_mark:
- Eliminar el ToDo y luego redireccionar al index de ToDos. :heavy_check_mark:
- En la vista Index: agregar un link a Destroy (con el método delete) a cada ToDo listado. :heavy_check_mark:
## Marcar como completado: :heavy_check_mark:
- Crear la ruta '/todos/:id/complete' que apunte al método todos#complete con el verbo get. :heavy_check_mark:
- En el controller todos crear el método complete. Este método debe buscar un ToDo en base al parámetro 'id' (Todo.find) y asignarlo a a la variable @todo. Finalmente modificar el atributo completed = true, guardar el registro y redirigir al Index. :heavy_check_mark:
- En la vista index, agregar un botón a cada ToDo que permita marcar como completado utilizando la ruta correspondiente. :heavy_check_mark:
## Parte II: Landing nuevo y refactoring de vistas parciales. :heavy_check_mark:
- Crear la ruta /todos/list con el verbo get. :heavy_check_mark:
- Crear un método list en controller. Este método debe crear una variable de instancia @todos que almacene la colección de ToDos existentes. :heavy_check_mark:
- Crear una vista list.html.erb. :heavy_check_mark:
    - Esta vista debe -utilizando la grilla de bootstrap- separar la pantalla en dos secciones de 6 columnas cada una.
    - A la izquierda se deben listar los ToDos NO completados.
    - A la derecha se deben listar los ToDos completados.
- Crear una vista parcial que contenga un navbar fixed de Bootstrap. :heavy_check_mark:
    - El navbar debe contener un link a Index, un link a List y un link al formulario de creación de nuevo ToDo.
    - Cargar la vista parcial en el layout.
- Refactorizar los formularios utilizados en las vistas de creación y edición de un ToDo. Se debe crear una vista parcial que contenga el formulario, la cual debe ser implementada en ambas vistas. :x:
## Parte III: Validaciones :heavy_multiplication_x:
- Se debe validar que la descripción debe estar presente al crear un nuevo ToDo. :x: