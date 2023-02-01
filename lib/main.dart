import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:states_handlers/pages/bloc/bloc_patern_example.dart';
import 'package:states_handlers/pages/bloc/calc_bloc.dart';
import 'package:states_handlers/pages/bloc/page1.dart';
import 'package:states_handlers/pages/bloc/page2.dart';
import 'package:states_handlers/pages/getX/page1.dart';
import 'package:states_handlers/pages/getX/page2.dart';
import 'package:states_handlers/pages/main_page.dart';

import 'bloc/bloc_claculator/calculator_bloc.dart';
import 'bloc/user/user_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserBloc>(create: (_) => UserBloc()),
        BlocProvider<CalculatorBloc>(create: (_) => CalculatorBloc())
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'getx_main_page',
        getPages: [
          GetPage(name: '/pagina1', page: () => const Page1Screen()),
          GetPage(name: '/pagina2', page: () => const Page2Screen()),
          GetPage(name: '/bloc_pattern', page: () => BlocPatternExampleScreen()),
          GetPage(name: '/calc_bloc_patern', page: () => const CalculatorScreen()),
          GetPage(name: '/getx_page_one', page: () => const Page1GetXScreen()),
          GetPage(name: '/getx_page_two', page: () => const Page2GetXScreen()),
          GetPage(name: '/getx_main_page', page: () => const MainPageScreen()),
        ],
      ),
    );
  }
}
