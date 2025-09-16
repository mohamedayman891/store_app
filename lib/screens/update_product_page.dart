import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:storeapp/model/product_model.dart';
import 'package:storeapp/services/update_product.dart';
import 'package:storeapp/widget/custom_button.dart';
import 'package:storeapp/widget/custom_text_field.dart';

class UpdateProductPage extends StatefulWidget {
  static String id = "updateProduct";

  const UpdateProductPage({super.key});
  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? title;
  String? description;
  String? price;
  String? image;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    var product = ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          title: Text("Update Product", style: TextStyle(color: Colors.black)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 100),
                CustomTextField(
                  onChanged: (data) {
                    title = data;
                  },
                  hintText: "ProductName",
                ),
                SizedBox(height: 10),
                CustomTextField(
                  onChanged: (data) {
                    description = data;
                  },
                  hintText: "descreption",
                ),
                SizedBox(height: 10),
                CustomTextField(
                  onChanged: (data) {
                    price = data;
                  },
                  inputType: TextInputType.number,
                  hintText: "Price",
                ),
                SizedBox(height: 10),
                CustomTextField(
                  onChanged: (data) {
                    image = data;
                  },
                  hintText: "image",
                ),
                SizedBox(height: 50),
                CustomButton(
                  text: "Update",
                  onTap: () async {
                    isLoading = true;
                    setState(() {});
                    try {
                      await updateProductMethod(product);
                      print("Success");
                    } catch (e) {
                      print(e.toString());
                    }
                    isLoading = false;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProductMethod(ProductModel product) async {
    await UpdateProductService().updateProduct(
      id: product.id.toString(),
      title: title == null ? product.title : title!,
      price: price == null ? product.price.toString() : price!,
      description: description == null ? product.description : description!,
      image: image == null ? product.image : image!,
      category: product.category,
    );
  }
}
