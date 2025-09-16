import 'package:storeapp/helper/api.dart';
import 'package:storeapp/model/product_model.dart';

class AllProductsService {
  Future<List<ProductModel>> getAllProduct() async {
    List<dynamic> data = await Api().get(
      url: "https://fakestoreapi.com/products",
    );

    List<ProductModel> productlist = [];
    for (int i = 0; i < data.length; i++) {
      productlist.add(ProductModel.fromjson(data[i]));
    }
    return productlist;
  }
}
