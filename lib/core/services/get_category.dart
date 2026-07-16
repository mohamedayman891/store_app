import 'package:storeapp/core/helper/api.dart';
import 'package:storeapp/core/model/product_model.dart';

class CatecoriesService {
  Future<List<ProductModel>> getCategoriesProducts({
    required String categoryName,
  }) async {
    List<dynamic> data = await Api().get(
      url: "https://fakestoreapi.com/products/category/$categoryName",
    );
    List<ProductModel> productlist = [];
    for (int i = 0; i < data.length; i++) {
      productlist.add(ProductModel.fromjson(data[i]));
    }
    return productlist;
  }
}
