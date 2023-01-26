import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'REGISTRAR',
    'CONSULTAR',
    'SINCRONIZAR DATOS',
    'CERRAR SESION'
  ];
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Tipo 2'),
          backgroundColor: Colors.indigo,
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            //leading: const Icon(Icons.access_alarm),
            title: Text(options[index]),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.indigo,
            ),
            onTap: () {
              final game = options[index];
              print(game);
            },
          ),
          separatorBuilder: (context, index) => const Divider(),
        ));
  }
}
