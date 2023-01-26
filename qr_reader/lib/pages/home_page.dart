import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/pages/pages.dart';
import 'package:qr_reader/providers/db_provider.dart';
import 'package:qr_reader/providers/ui_provider.dart';
import 'package:qr_reader/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Historial')),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.delete_forever))
        ],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: SacanButtom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // obtener el selectedMenuOpt
    final uiProvider = Provider.of<UiProvider>(context);
    // Cambiar la pagina respectiva
    final currentIndex = uiProvider.selectedMenuOpt;

    //TODO: temporal leer la base de datos
    //final tempScan = new ScanModel(valor: 'http:google.com');
    //DBProvider.db.nuevoScan(tempScan);
    DBProvider.db.getScanAll().then(print);

    switch (currentIndex) {
      case 0:
        return MapasPage();
      case 1:
        return DireccionesPages();
      default:
        return HomePage();
    }
  }
}
