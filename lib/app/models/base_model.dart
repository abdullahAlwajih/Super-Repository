abstract class BaseModel {
  BaseModel();

  List<BaseModel> fromJsonList(List<dynamic> json);

  BaseModel fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson();
}
