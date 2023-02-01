import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:states_handlers/controllers/user_controller.dart';
import 'package:states_handlers/models/user_getx.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';

class Page2GetXScreen extends StatelessWidget {
  const Page2GetXScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userCtrl = Get.find<UserController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  userCtrl.loadUser(UserGetX(name: "pablo", age: 50));
                },
                child: const Text('Establecer Usuario', style: TextStyle(color: Colors.white))),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    if (userCtrl.user.value.name == null) Get.snackbar("VOID", "message");
                    userCtrl.setAge(16);
                  },
                  child: const Text('Cambiar Edad', style: TextStyle(color: Colors.white)))),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  if (userCtrl.user.value.name == null) Get.snackbar("Error", "No user set", colorText: Colors.white);
                  userCtrl.addProfesion("Ebanista");
                },
                child: const Text('Añadir Profesion', style: TextStyle(color: Colors.white))),
          ),
        ],
      )),
    );
  }
}
