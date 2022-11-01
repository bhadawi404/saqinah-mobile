import 'package:http/http.dart' as http;

class LoginProvider{
  final _url = "https://saqinah.id/dev/api/auth";

  
 
  Future postData(String email, String password)async{
    try{
      final response = await http.post(Uri.parse(_url),
      body: {
        "email": email,
        "password":password,
      }
      );
      print(response);
      if(response.statusCode == 200){
        return response;
      }else{
        return response;
      }
    }catch(e){
      print(e.toString());
    }
  }
}


