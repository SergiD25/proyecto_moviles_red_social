import 'package:flutter/material.dart';

class PantallaRedSocial extends StatelessWidget {
  const PantallaRedSocial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red, // Color primario
        backgroundColor: Colors.white, // Color de fondo
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Red social'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Buscar personas',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {},
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        leading: const Icon(Icons.person),
                        title: const Text('Nombre'),
                        subtitle: const Text('Correo electrónico'),
                        trailing: IconButton(
                          icon: const Icon(Icons.more_vert),
                          onPressed: () {},
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Registro'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Salir'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
