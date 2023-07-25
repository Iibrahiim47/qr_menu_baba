class GetCatagoryListModel {
  String? status;
  List<Data>? data;
  bool? isAdmin;

  GetCatagoryListModel({this.status, this.data, this.isAdmin});

  GetCatagoryListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    isAdmin = json['isAdmin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['isAdmin'] = isAdmin;
    return data;
  }
}

class Data {
  String? araName;
  String? engName;
  int? categoryId;
  String? imageUrl;
  int? categoryType;
  String? registrationDateTime;

  Data(
      {this.araName,
      this.engName,
      this.categoryId,
      this.imageUrl,
      this.categoryType,
      this.registrationDateTime});

  Data.fromJson(Map<String, dynamic> json) {
    araName = json['araName'];
    engName = json['engName'];
    categoryId = json['categoryId'];
    imageUrl = json['imageUrl'];
    categoryType = json['categoryType'];
    registrationDateTime = json['registrationDateTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['araName'] = araName;
    data['engName'] = engName;
    data['categoryId'] = categoryId;
    data['imageUrl'] = imageUrl;
    data['categoryType'] = categoryType;
    data['registrationDateTime'] = registrationDateTime;
    return data;
  }
}
