import 'package:flutter/material.dart';
import 'package:profile_template/http/productos_http.dart';

class Page4 extends StatefulWidget {
  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  // Future<List> user;
  // lista_user = user.get_user();
  // @override
  // void initState() {
  //   user = Users().get_user();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Pagina 4')),
        body: Container(
          child: FutureBuilder<List<User>>(
            future: Users().GetUser(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(snapshot.data[index].title),
                        subtitle: Text(snapshot.data[index].body),
                      );
                    });
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ));
  }
}
