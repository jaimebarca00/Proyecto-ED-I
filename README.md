<h1 align="center"> Desarrollo semáforo inteligente para discapacitados</h1>
<p align="center"><img src="https://github.com/jaimebarca00/Proyecto-ED-I/assets/127891811/dac30d72-9182-42d7-a7f9-7c6605d61744)"/</p>
<h1 align="center">Jaime Elíecer González Zambrano</h1>
<p align="center"><img src="https://github.com/jaimebarca00/Proyecto-ED-I/assets/127891811/c6b609a2-75f5-497f-b9c3-a08bd0a02ac9"/></p> 

## Tabla de contenidos:
---

- [Descripción](#Descripción)
- [Alcance y problemática](#Alcance-y-roblemática)
- [Objetivos](#Objetivos)
- [PESTAL](#PESTAL)
- [Descripción del funcionamiento](#Descripción-del-funcionamiento)
- [Dispositivos](#Dispositivos)
- [Diagrama de flujo](#Diagrama-de-flujo)
- [Máquina de estados](#Máquina-de-estados)
- [Referencias](#Referencias)

## Descripción
---
Este sistema está diseñado para regular el tráfico y garantizar la seguridad de peatones y conductores en un entorno urbano, el semáforo utiliza diferentes sensores para detectar la presencia de vehículos en las intersecciones. Estos sensores envían señales al sistema, indicando la necesidad de detener o permitir el flujo vehicular en cada dirección. Además, se incorpora un botón de paso peatonal que los peatones pueden activar cuando desean cruzar la calle.

Un componente clave del sistema es el controlador, que procesa la información de los sensores y decide cuándo cambiar las luces del semáforo además se utiliza un algoritmo que considera los patrones de tráfico, los tiempos de espera y la prioridad de los peatones para tomar decisiones adecuadas.

El semáforo muestra diferentes colores de luz: rojo, amarillo y verde, para regular el tráfico. Cuando no hay vehículos detectados en una dirección, el semáforo muestra luz verde para permitir que los vehículos pasen de manera segura y en caso de detectarse vehículos o si se activa el botón de paso peatonal, el semáforo cambia a luz roja para detener el tráfico y permitir que los peatones crucen la calle,  además de las luces del semáforo, se pueden utilizar señales auditivas para indicar el cambio de estado y advertir a los conductores y peatones sobre los movimientos permitidos. Este sistema se adapta dinámicamente a las condiciones del tráfico y prioriza la seguridad de los peatones al permitirles cruzar la calle de manera segura cuando sea necesario.


## Alcance y problemática
---
En Colombia, nos enfrentamos a una problemática preocupante relacionada con la falta de prioridad de paso para personas discapacitadas en los cruces de calles y vías públicas. Es lamentable observar cómo muchas personas con discapacidad se enfrentan a dificultades para cruzar de manera segura, ya que los vehículos y peatones no les otorgan la consideración necesaria, esta situación puede llegar a genera riesgos, exclusiones y limitaciones para las personas discapacitadas en su movilidad diaria. A menudo, se ven obligadas a esperar largos periodos de tiempo para cruzar o tienen que enfrentarse a conductores y peatones que no les brindan la prioridad que merecen.

Ante este panorama, es necesario implementar un proyecto que aborde esta problemática de manera efectiva. El alcance de este proyecto se centra en garantizar la prioridad de paso para las personas discapacitadas en los cruces de calles y vías públicas. Para lograrlo, se propone la instalación de dispositivos de señalización visual y auditiva que indiquen claramente la prioridad de paso de las personas con discapacidad.

El objetivo principal de este proyecto es mejorar la calidad de vida de las personas discapacitadas, brindándoles la posibilidad de cruzar de manera segura y sin obstáculos. Al implementar este sistema de señalización y promover la conciencia en la comunidad, se busca fomentar la inclusión social y garantizar el pleno ejercicio de los derechos de las personas con discapacidad, es necesario trabajar juntos como comunidad para crear un entorno inclusivo donde todas las personas, sin importar su condición, puedan desplazarse de manera segura y digna.

## Objetivos
---
### Objetivo General
- Diseñar y desarrollar un semáforo inteligente, enfocado en brindar prioridad de paso a las personas discapacitadas en los cruces de calles y vías pública
 ### Objetivos específicos
- Desarrollar un algoritmo de control que ajuste la temporización de los semáforos en respuesta a la detección de la solicitud de cruce, brindando prioridad al peatón correspondiente.
- Realizar un divisor de frecuencia que se encargue de generar un pulso de reloj de 1 segundo a partir del reloj de entrada. Este pulso de reloj se utiliza para sincronizar el sistema y controlar los tiempos del semáforo.
- Implementar 7 segmentos para la visualización sualización de los contadores realhechos
## PESTAL
---
### Político:
- Legislación: Es fundamental analizar las leyes existentes relacionadas con la seguridad vial y los derechos de las personas discapacitadas en Colombia. Esto incluye las normativas que establecen los derechos de acceso y movilidad de las personas con discapacidad, así como las regulaciones sobre señalización vial y prioridad de paso en cruces. El proyecto debe cumplir con todas las disposiciones legales y garantizar el cumplimiento normativo en su implementación.

- Políticas públicas: Colombia cuenta con políticas públicas que buscan promover la inclusión y accesibilidad de las personas con discapacidad. Es importante alinear el proyecto con estas políticas y buscar el apoyo de las instituciones gubernamentales encargadas de su implementación. Esto puede involucrar la coordinación con entidades como el Ministerio de Transporte, el Instituto Nacional de Vías (INVÍAS) y otras organizaciones relacionadas.
Algunos de estos reglamentos incluyen el Decreto 1079 de 2015, que regula la instalación y uso de semáforos y otros dispositivos de control de tráfico en Colombia, y la Ley 1383 de 2010, que establece las sanciones y multas que se pueden imponer a los conductores que infrinjan las normas de tráfico.
### Económico:
- Recursos financieros: La implementación del proyecto requiere recursos financieros adecuados. Esto implica evaluar la disponibilidad de fondos tanto públicos como privados para financiar la adquisición de los componentes necesarios en caso de aplicarse a gran escala, la instalación de los dispositivos y la capacitación del personal encargado del mantenimiento. También es importante considerar la sostenibilidad financiera a largo plazo del proyecto, incluyendo posibles fuentes de financiamiento continuo.

- Impacto económico: La implementación del proyecto puede tener impactos económicos positivos, como la generación de empleo en la instalación y mantenimiento de los dispositivos de prioridad de paso. Además, la mejora en la accesibilidad y seguridad vial puede contribuir al desarrollo económico de las ciudades, fomentando el turismo y la inversión.

### Social:
- Conciencia social: Es fundamental sensibilizar a la sociedad sobre los derechos y necesidades de las personas con discapacidad. Esto implica desarrollar campañas de concienciación que destaquen la importancia de brindar prioridad de paso en los cruces. Además, se puede trabajar en colaboración con organizaciones de discapacitados y otros actores relevantes para promover la inclusión y la igualdad de oportunidades en el ámbito de la movilidad.

- Participación comunitaria: Involucrar a las comunidades locales en la planificación e implementación del proyecto puede aumentar su aceptación y compromiso. Esto puede incluir la realización de consultas públicas, la participación de grupos de interés y la colaboración con asociaciones comunitarias. La participación activa de la comunidad puede contribuir a identificar necesidades específicas y a adaptar el proyecto a las condiciones locales.

### Tecnológico:
- Infraestructura tecnológica: El proyecto requiere de una infraestructura tecnológica adecuada para su funcionamiento. Esto implica evaluar la disponibilidad y calidad de los componentes electrónicos necesarios, como los botones de activación y los sistemas de detección de presencia. Además, es importante considerar la integración de estos componentes con los sistemas de control de semáforos existentes en los cruces.
- Innovación tecnológica: Es importante mantenerse actualizado sobre los avances tecnológicos en el ámbito de la electrónica digital y la automatización de sistemas de control de tráfico. Esto permite aprovechar nuevas soluciones y dispositivos que puedan mejorar la eficiencia y la efectividad del proyecto. Además, la capacidad de adaptación a futuras innovaciones tecnológicas garantiza la escalabilidad y la durabilidad del sistema implementado.
### Ambiental:
- Impacto ambiental: Durante la implementación del proyecto, es esencial evaluar y minimizar el impacto ambiental. Esto implica utilizar tecnologías y materiales sostenibles en la instalación de los dispositivos, así como considerar la eficiencia energética en su funcionamiento. Además, se deben cumplir con las regulaciones ambientales vigentes para garantizar la protección del entorno natural durante todo el proceso.
### Legal:
- Cumplimiento normativo: Es necesario asegurarse de que el proyecto cumpla con todas las regulaciones y normativas legales relacionadas con la seguridad vial, la accesibilidad y los derechos de las personas con discapacidad. Esto incluye obtener los permisos y autorizaciones necesarios para la instalación de los dispositivos en los cruces de calles y vías públicas. También es importante tener en cuenta los derechos de propiedad intelectual en relación con el código y los componentes utilizados en el proyecto.

## Descripción del funcionamiento
---
El proyecto representa una solución inteligente para controlar el tráfico y garantizar la seguridad de peatones y conductores. Mediante diversas entidades interconectadas, el sistema se encarga de regular el flujo vehicular y permitir el paso de peatones de manera eficiente.

La entidad principal, "Semaforo", establece los puertos de entrada y salida necesarios para la interacción con el entorno. Además, incluye sensores de detección de vehículos y un botón de paso peatonal. Estos elementos proporcionan información clave para la toma de decisiones en el sistema.

La sincronización temporal es fundamental en el funcionamiento del semáforo, y esto se logra gracias a la entidad "div_frec". Esta entidad divide el reloj del sistema en intervalos de 1 segundo, brindando una referencia precisa para controlar los tiempos de cambio de estados.

La entidad "Control_Sensores" se encarga de gestionar los sensores de detección de vehículos y el botón de paso peatonal. Mediante señales de control generadas, se indica la presencia de vehículos y si se debe priorizar el paso de peatones, permitiendo así una interacción adecuada con el entorno.

Para medir los intervalos de espera y controlar los cambios de estado, se utilizan los contadores de tiempo. Las entidades "Cont_Sem", "Cont_Peatonal_NP" y "Cont_Peatonal_P" se encargan de contar los ciclos de reloj necesarios para determinar el tiempo que el semáforo debe permanecer en cada estado y permitir el paso de peatones de manera segura.

La máquina de estados implementada en la entidad "Maquina_Estados_Sem" es la encargada de controlar el comportamiento del semáforo. A través de la combinación de las señales de control de los sensores, el tiempo y el reloj, se determina cuándo cambiar de estado y se generan las salidas necesarias para controlar los semáforos y permitir el flujo vehicular adecuado.

Las entidades "Bin_a_BCD" y "Selector_7Seg" se ocupan de la conversión de números binarios a BCD y de la selección y visualización de los números en los displays de 7 segmentos y los LEDs correspondientes a los semáforos, brindando una interfaz visual clara y comprensible para los usuarios.

## Dispositivos
---
### Sensor infrarrojo
Emisores: LEDs infrarrojos de bajo costo.  
Bajo resolución. Usados en detección. 
Rangos cortos.
Son sensores reflexivos basados en intensidad, los cuales son susceptibles a la luz ambiente 

![1](https://github.com/jaimebarca00/Proyecto-ED-I/assets/127891811/9ef1cba5-8738-4dd4-836b-0b15dae7e8ce)
### Pulsador
Permite o impide el paso de la corriente eléctrica cuando se aprieta o pulsa una sola vez sin necesidad de mantenerlo oprimido.
![2](https://github.com/jaimebarca00/Proyecto-ED-I/assets/127891811/7e12302d-1f85-44d1-a6a2-dfb75d9e53f1)
### Módulo semáforo
Componente electrónico que posee 4 pines analógicos, uno para cada LED de color diferente y la referencia tierra. 
![3](https://github.com/jaimebarca00/Proyecto-ED-I/assets/127891811/1008b7ce-c11c-48b9-9205-dfe383f056be)


### Display 7 segmentos:
Dispositivo que permite representar caracteres como letras, símbolos y números al encender y apagar 7 segmentos de manera individual.

![4](https://github.com/jaimebarca00/Proyecto-ED-I/assets/127891811/e91b48ba-b341-4e76-9368-33c1c5d43c33)

### LEDs:
Diodos emisores de luz de material semiconductor que posee dos terminales. Pueden ser de diferente color y cada uno tiene una tensión alimentación específica. 


![5](https://github.com/jaimebarca00/Proyecto-ED-I/assets/127891811/f5882106-3e2e-40ed-a86d-e7eda52c9669)


![6](https://github.com/jaimebarca00/Proyecto-ED-I/assets/127891811/156f4ea6-b7be-44e2-a632-c054ae0da8aa)





## Diagrama de flujo
---
### Diagrama de caja negra

![10](https://github.com/jaimebarca00/Proyecto-ED-I/assets/127891811/e932eac9-8f08-4f23-894a-4f3f505685fc)

### Divisor de frecuencia
![7](https://github.com/jaimebarca00/Proyecto-ED-I/assets/127891811/af98b0d4-5f14-4501-8e34-3ce5ee1805d6)

### Contadores adicionales

![8](https://github.com/jaimebarca00/Proyecto-ED-I/assets/127891811/c64a0d4f-a297-487a-9dea-88446f3b2d2e)

### Contador del semáforo

![9](https://github.com/jaimebarca00/Proyecto-ED-I/assets/127891811/25bafaa8-d832-41c8-a655-f471b9973247)




## Máquina de estados
---
![11](https://github.com/jaimebarca00/Proyecto-ED-I/assets/127891811/797d35a4-bd1a-4b2a-a77c-fa3115b74f4b)

![12](https://github.com/jaimebarca00/Proyecto-ED-I/assets/127891811/50542257-b909-41b5-a8fe-5110dc060077)

![13](https://github.com/jaimebarca00/Proyecto-ED-I/assets/127891811/6223a732-2dd5-46d9-ba57-c4982392982a)

![14](https://github.com/jaimebarca00/Proyecto-ED-I/assets/127891811/ff3eb918-30a6-4a90-8825-101209efb54f)



## Referencncias 

- [1]C. J. Quintana. "Proyecto Semáforo de Dos Vías Con VHDL | PDF | Semáforo | Vhdl". Scribd. https://es.scribd.com/document/324717768/Proyecto-Semaforo-de-Dos-Vias-Con-VHDL (accedido el 25 de junio de 2023).

- [2]R. E. TIEMPO. "Semáforos para los discapacitados visuales ya hay en seis puntos de Bogotá". El Tiempo. https://www.eltiempo.com/archivo/documento/CMS-6466655 (accedido el 25 de junio de 2023).
- [3]J. D. Moreno S, "Semáforo inteligente implementado con vhdl", Bogotá, Informe Universidad Escuelas Colombiana de Carreras industriales, mayo de 2016.
