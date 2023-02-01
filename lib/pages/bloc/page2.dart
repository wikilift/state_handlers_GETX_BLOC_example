import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:states_handlers/bloc/user/user_bloc.dart';
import 'package:states_handlers/models/user_to_test.dart';

class Page2Screen extends StatelessWidget {
  const Page2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<UserBloc>(context, listen: false);
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
                  final userToSend = UserToTest(age: 36, name: "Paco", profession: ["Herrero"]);
                  bloc.add(ActivateUser(userToSend));
                },
                child: const Text('Establecer Usuario', style: TextStyle(color: Colors.white))),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    bloc.add(ChangeUserAgeEvent(18));
                  },
                  child: const Text('Cambiar Edad', style: TextStyle(color: Colors.white)))),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  bloc.add(AddProfessionEvent("Carpintero"));
                },
                child: const Text('Añadir Profesion', style: TextStyle(color: Colors.white))),
          ),
        ],
      )),
    );
  }
}
