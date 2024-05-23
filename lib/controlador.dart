import 'package:get/get.dart';

class Controlador extends GetxController {
  final _tituloBarra = 'Curriculum'.obs;

  final _cambioVista= 0.obs;
  

  // metodos
  void cambioTitulo(String titulo) {
    _tituloBarra.value = titulo;
  }

  void cambioPosicion(int numero) {
    _cambioVista.value = numero;
  }

  //  Se define un getter llamado tituloBarra que devuelve el valor actual de _tituloBarra
  // permite acceder al valor actual del título desde fuera de la clase Controlador
  String get tituloBarra => _tituloBarra.value;
  int get cambioVista => _cambioVista.value;
}
