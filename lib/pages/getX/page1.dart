import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:states_handlers/controllers/user_controller.dart';
import 'package:states_handlers/models/user_getx.dart';

class Page1GetXScreen extends StatelessWidget {
  const Page1GetXScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userCtrl = Get.put(UserController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 1'),
      ),
      body: Obx(() => (userCtrl.userExist.value)
          ? UserInformation(
              user: userCtrl.user.value,
            )
          : const _NoInfo()),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.accessibility_new),
        onPressed: () => Get.toNamed('/getx_page_two'),
      ),
    );
  }
}

class _NoInfo extends StatelessWidget {
  const _NoInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('No user registered'));
  }
}

class UserInformation extends StatelessWidget {
  const UserInformation({super.key, required this.user});
  final UserGetX user;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('General', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Divider(),
          ListTile(title: Text('Nombre: ${user.name}')),
          ListTile(title: Text('Edad: ${user.age}')),
          const Text('Profesiones', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Divider(),
          ...user.profession.map((prof) => ListTile(title: Text(prof))).toList(),
        ],
      ),
    );
  }
}
