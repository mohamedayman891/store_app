import 'dart:developer';

import 'package:storeapp/core/helper/api.dart';
import 'package:storeapp/core/model/product_model.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
    required String id,
  }) async {
    log("product id = $id");
    Map<String, dynamic> data = await Api().put(
      url: "https://fakestoreapi.com/products/$id",
      body: {
        "title": title,
        "price": price,
        "description": description,
        "image": image,
        "category": category,
      },
      token: '',
    );
    return ProductModel.fromjson(data);
  }
}
