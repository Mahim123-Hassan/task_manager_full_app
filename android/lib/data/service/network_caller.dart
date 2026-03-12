import 'dart:convert';

import 'package:http/http.dart';

class NetworkCaller {
  
  Future<NetworkResponse> getRequest (String url)async{
    Uri uri = Uri.parse(url);
    Response response =await get(uri);
    final decodedData=jsonDecode(response.body);
    
    if(response.statusCode==200){
      return NetworkResponse(isSuccess: true, responseCode: response.statusCode,
          body: decodedData,);

    }else{
      return NetworkResponse(isSuccess: false,
          responseCode: response.statusCode, errorMessage: '',
          );
    }
  }

}

  class NetworkResponse{
  final bool isSuccess;
  final int responseCode;
  final dynamic body;
  final String? errorMessage;


  NetworkResponse({
    required this.isSuccess,
    required this.responseCode,
    this.body,
     this.errorMessage,
  });
  }