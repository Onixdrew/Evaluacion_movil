import 'package:flutter/material.dart';
import 'package:flutter_application_2/main.dart';

drawerP() {
  return Drawer(
    child: Column(
      children: [
        Text('Menú'),
        
        ListTile(
          title: const Text("Inicio"),
          leading: const Icon(Icons.home),
          onTap: () {
            controladorBody.cambioTitulo("Inicio");
              controladorBody.cambioPosicion(0);

          },
        ),
        ListTile(
          title: const Text("Deportes"),
          leading: const Icon(Icons.sports),
          onTap: () {
            controladorBody.cambioTitulo("Datos personales");
            controladorBody.cambioPosicion(1);

          },
        ),
        ListTile(
            title: const Text("Tecnología."),
            leading: const Icon(Icons.computer),
            onTap: () {
              controladorBody.cambioTitulo("Referencias");
              controladorBody.cambioPosicion(2);

            }),
        ListTile(
          title: const Text("Entretenimiento"),
          leading: const Icon(Icons.movie),
          onTap: () {
            controladorBody.cambioTitulo("Acerca de.");
            controladorBody.cambioPosicion(3);

          },
        ),
        
      ],
    ),
  );
}
