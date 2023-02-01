import 'package:flutter/material.dart';
import 'package:states_handlers/bloc/products/products_bloc.dart';

class BlocPatternExampleScreen extends StatelessWidget {
  BlocPatternExampleScreen({Key? key}) : super(key: key);

  final productBloc = ProductsBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          stream: productBloc.productsCounter,
          builder: (_, AsyncSnapshot<int> snapshot) {
            return (snapshot.hasData) ? Text('Products: ${snapshot.data}') : const Text('Products: 0');
          },
        ),
      ),
      body: StreamBuilder(
        stream: productBloc.getProducts,
        //initialData: initialData,
        builder: (_, AsyncSnapshot<List<String>> snapshot) {
          final product = snapshot.data ?? [];
          return ListView.builder(
            itemCount: product.length,
            itemBuilder: (_, i) {
              return ListTile(
                title: Text(product[i]),
              );
            },
          );
        },
      ),
    );
  }
}
