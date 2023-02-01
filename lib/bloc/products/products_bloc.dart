import 'dart:async';

// ignore: constant_identifier_names
const PRODUCTS = ["Micrófono", "Altavoz", "Teclado", "Cámara"];

class ProductsBloc {
  //! * = return Stream not Furure
  Stream<List<String>> get getProducts async* {
    final List<String> products = [];
    for (var i in PRODUCTS) {
      await Future.delayed(const Duration(milliseconds: 2000));
      products.add(i);
      yield products;
    }
  }

  final StreamController<int> _productCounter = StreamController<int>();
  Stream<int> get productsCounter => _productCounter.stream;

  ProductsBloc() {
    getProducts.listen((productList) => _productCounter.add(productList.length));
  }
  dispose() {
    _productCounter.close();
  }
}
