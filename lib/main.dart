// dependencias
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// mis funciones
import 'package:flutter_application_2/DatosPersonales.dart';
import 'package:flutter_application_2/barraEstado.dart';
import 'package:flutter_application_2/bodyContent.dart';
import 'package:flutter_application_2/controlador.dart';
import 'package:flutter_application_2/menuHamburguesa.dart';


void main(List<String> args) {
  Get.put(Controlador());
  runApp(const Home());
}


// creo una instancia del controlador

Controlador controladorBody = Get.find();







class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: barraEstado(),
          drawer: drawerP(),
          body: Obx(()=> coleccioPaginas[controladorBody.cambioVista])),
    );
  }
}

///////////////////////

List coleccioPaginas = [
  bodyContent(),
  datosPersonales(),
  experienciaLaboral(),
];

// //////////////

experienciaLaboral() {
  return ListView.builder(
    itemCount: datosLaborales.length,
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
        title: Text(datosLaborales[index]['empresa']),
        subtitle: Text(datosLaborales[index]['puesto']),
        leading: const Icon(Icons.arrow_circle_right),
        onTap: () {},
      );
    },
  );
}

List datosLaborales = [
  {
    'empresa': 'Empresa A',
    'puesto': 'Desarrollador de Software',
    'periodo': 'Enero 2018 - Diciembre 2019',
    'funciones': 'Desarrollo de aplicaciones móviles y web.'
  },
  {
    'empresa': 'Empresa B',
    'puesto': 'Diseñador Gráfico',
    'periodo': 'Marzo 2020 - Presente',
    'funciones':
        'Diseño de logotipos, material publicitario y contenido para redes sociales.'
  },
  {
    'empresa': 'Empresa C',
    'puesto': 'Desarrollador de Software',
    'periodo': 'Enero 2018 - Diciembre 2019',
    'funciones': 'Desarrollo de aplicaciones móviles y web.'
  },
  {
    'empresa': 'Empresa D',
    'puesto': 'Diseñador Gráfico',
    'periodo': 'Marzo 2020 - Presente',
    'funciones':
        'Diseño de logotipos, material publicitario y contenido para redes sociales.'
  },
  {
    'empresa': 'Empresa E',
    'puesto': 'Desarrollador de Software',
    'periodo': 'Enero 2018 - Diciembre 2019',
    'funciones': 'Desarrollo de aplicaciones móviles y web.'
  },
  {
    'empresa': 'Empresa F',
    'puesto': 'Diseñador Gráfico',
    'periodo': 'Marzo 2020 - Presente',
    'funciones':
        'Diseño de logotipos, material publicitario y contenido para redes sociales.'
  },
  {
    'empresa': 'Empresa G',
    'puesto': 'Desarrollador de Software',
    'periodo': 'Enero 2018 - Diciembre 2019',
    'funciones': 'Desarrollo de aplicaciones móviles y web.'
  },
  {
    'empresa': 'Empresa H',
    'puesto': 'Diseñador Gráfico',
    'periodo': 'Marzo 2020 - Presente',
    'funciones':
        'Diseño de logotipos, material publicitario y contenido para redes sociales.'
  },
  {
    'empresa': 'Empresa I',
    'puesto': 'Desarrollador de Software',
    'periodo': 'Enero 2018 - Diciembre 2019',
    'funciones': 'Desarrollo de aplicaciones móviles y web.'
  },
  {
    'empresa': 'Empresa J',
    'puesto': 'Diseñador Gráfico',
    'periodo': 'Marzo 2020 - Presente',
    'funciones':
        'Diseño de logotipos, material publicitario y contenido para redes sociales.'
  },
  {
    'empresa': 'Empresa K',
    'puesto': 'Desarrollador de Software',
    'periodo': 'Enero 2018 - Diciembre 2019',
    'funciones': 'Desarrollo de aplicaciones móviles y web.'
  },
  {
    'empresa': 'Empresa M',
    'puesto': 'Diseñador Gráfico',
    'periodo': 'Marzo 2020 - Presente',
    'funciones':
        'Diseño de logotipos, material publicitario y contenido para redes sociales.'
  },
];
