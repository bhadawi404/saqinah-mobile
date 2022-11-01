import 'package:http/http.dart' as http;

class UsersProvider{
  final _url = "https://saqinah.id/dev/api/registration";

  Future postData(String name, String email, String password)async{
    try{
      final response = await http.post(Uri.parse(_url),
      body: {
        "name": name,
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


