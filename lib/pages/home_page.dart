import 'package:brasileirao_app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomeController controller = HomeController();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Brasileirão"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            final time = controller.tabela[index];

            return ListTile(
              leading: Image.network(time.brasao.toString()),
              title: Text(time.nome.toString()),
              trailing: Text(time.pontos.toString()),
            );
          },
          separatorBuilder: (_, __) => const Divider(),
          padding: const EdgeInsets.all(8),
          itemCount: controller.tabela.length),
    );
  }
}
