// ignore: camel_case_types
class chat_item_model {
  String name;
  String mostrecentmessage;
  String messagedata;

  chat_item_model(String s, 
      {required this.messagedata,
      required this.mostrecentmessage,
      required this.name});
}
