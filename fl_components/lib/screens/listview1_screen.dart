import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const [
    'REGISTRAR',
    'CONSULTAR',
    'SINCRONIZAR DATOS',
    'CERRAR SESION'
  ];
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('NOTAS DE DESPACHO'),
        ),
        body: ListView(
          children: [
            ...options
                .map((game) => ListTile(
                      leading: const Icon(Icons.access_alarm),
                      title: Text(game),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    ))
                .toList(),
            //Divider(),
          ],
        ));
  }
}
