import 'package:http/http.dart' as http;
import 'package:paymo/models/product.dart';
class RemoteServices {

  static var client = http.Client();
  static Future<List<Product>> fetchProducts() async{

    var response = await client.get('https://modiranpos.com/wp-json/wc/v3/products?consumer_key=ck_54e8ba8616bec7137310155d06afc2c848720490&consumer_secret=cs_28360e4e0b31ff936d84914559d211953fb0a5be');
    if (response.statusCode == 200){
      var jsonString = response.body;

      return productFromJson(jsonString);
    }else{
        // Show Error Message
        return null;
    }
  }

}

