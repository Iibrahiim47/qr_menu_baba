import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:qr_menu_baba/model/category_model.dart';
import 'package:qr_menu_baba/model/product_model.dart' as product;
import 'package:qr_menu_baba/model/product_model.dart';
import 'package:qr_menu_baba/static_values.dart';
import 'package:http/http.dart' as http;
import 'package:qr_menu_baba/model/get_slider_model.dart' as slider;
import 'package:qr_menu_baba/model/category_model.dart' as category;

class CategoryController extends GetxController {
  static CategoryController get to => Get.find();
  // var picker = ImagePicker();
  File? addImage;
  bool isImageSelected = false;
  http.Response? response;
  var image;
  String? fileName;
  String selectedCatName = "Category Name";

  //////////getCategory///////////
  generateCatName(String engName, arName) {
    selectedCatName = "$arName - $engName";
    update();
  }

  List<category.Data> getFoodCatagoriesListData = [];
  List<category.Data> getDrinklCatagoriesListData = [];

  Future<List<category.Data>> getCatagoriesList() async {
    getDrinklCatagoriesListData.clear();
    getFoodCatagoriesListData.clear();
    response = await http.get(
      Uri.parse(StaticValues.getAllCategoryUrl),
      headers: {
        "Content-type": " application/json-patch+json",
      },
    );
    if (response!.statusCode == 200) {
      var catData = GetCatagoryListModel.fromJson(jsonDecode(response!.body));
      for (var u in catData.data!) {
        if (u.categoryType == 1) {
          getFoodCatagoriesListData.add(u);
        } else {
          getDrinklCatagoriesListData.add(u);
        }
      }
    }
    update();
    return getFoodCatagoriesListData;
  }

  //////////getproducts///////////

  List<product.Data> getProductListData = [];

  Future<List<product.Data>> getProductList(int catId) async {
    getProductListData.clear();
    response = await http.get(
      Uri.parse("${StaticValues.getproducteUrl}$catId"),
      headers: {
        "Content-type": " application/json-patch+json",
      },
    );

    if (response!.statusCode == 200) {
      var productData = GetProductModel.fromJson(jsonDecode(response!.body));
      for (var u in productData.data!) {
        getProductListData.add(u);
      }
    }
    update();
    return getProductListData;
  }

  ///////////getsliderimagemethod////////
  List<slider.Data> getSliderListData = [];

  Future<List<slider.Data>> getSliderList() async {
    getSliderListData.clear();
    response = await http.get(
      Uri.parse(StaticValues.getSliderUrl),
      headers: {
        "Content-type": " application/json-patch+json",
      },
    );

    if (response!.statusCode == 200) {
      var catData = slider.GetSliderModel.fromJson(jsonDecode(response!.body));
      for (var u in catData.data!) {
        getSliderListData.add(u);
      }
    }
    return getSliderListData;
  }
}
