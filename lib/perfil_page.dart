import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('INSTAgram'),),
      body: SafeArea(
              child: Container(
        
              child: Column(
                children: <Widget>[
                  appBarNombre(),
                  SizedBox(height: 15,),
                  avatarImage(),
                  descripcionProfile(),
                  editarPerfil(),
                  SizedBox(height: 10,),
                  memoriesInsta(),
                  SizedBox(height: 15,),
                  Divider(),
                  menuGrid(),
                  Divider(),
                  contendorFotos()
                ],
              )
          ),
      ),
    );
  }

  Widget appBarNombre() {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // decoration: BoxDecoration(border: Border.all(color:  Colors.red)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('leidy.gonzen', style: TextStyle(
              fontSize: 25.0,
              fontWeight:FontWeight.w600,
            ),),
            Icon(Icons.list,size: 30.0,)
          ],
        ),
      ),
    );
  }

  Widget avatarImage() {

    return Container(
      // decoration: BoxDecoration(border: Border.all(color:  Colors.red)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            backgroundImage: 
          NetworkImage('https://pbs.twimg.com/profile_images/1157280883256307723/PWmEDc-E_400x400.jpg'),
            //child: Icon(Icons.people),
          ),
          Column(
            children: <Widget>[
              Text('44', style: TextStyle(fontSize: 20.0,)),
              Text('Publicaciones',style: TextStyle(
            fontWeight:FontWeight.bold,
          ),),
              
            ],
          ),
          Column(
            children: <Widget>[
              Text('107',style: TextStyle(fontSize: 20.0,)),
              Text('Seguidores',style: TextStyle(
            fontWeight:FontWeight.bold,
            ),),  
            ],
          ),
          Column(
            children: <Widget>[
              Text('171',style: TextStyle(fontSize: 20.0,)),
              Text('Siguiendo',style: TextStyle(
            fontWeight:FontWeight.bold,
            ),),  
            ],
          ),
        ],
      ),
    );
  }

  Widget descripcionProfile() {
     return Padding(
       padding: const EdgeInsets.all(8.0),
       child: Container(
        //  decoration: BoxDecoration(border: Border.all(color:  Colors.red)),
         child: Column(
           
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            
            Row(
              children: <Widget>[
                 Text('Leidy Gonzales'
                 ,style: TextStyle(
                 fontWeight:FontWeight.bold,
                 ),),      
              ],
            ),
             Row(
              children: <Widget>[
              Text('Love Yourself'),
              ],
            ),
              Row(
              children: <Widget>[
              Icon(Icons.favorite),
              ],
            ),
            
          ],
    ),
       ),
     );
  }

  Widget editarPerfil() {
     return Container(
      //  decoration: BoxDecoration(border: Border.all(color:  Colors.red)),
       width: 400,
      child:  RaisedButton(
        child: Text('Editar Perfil'),
        onPressed: (){},
      ),
    );
  }

  Widget memoriesInsta() {

    return Container(
      // decoration: BoxDecoration(border: Border.all(color:  Colors.red)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
                CircleAvatar(child: Icon(Icons.add),radius: 30.0,),
                Text('Nueva'),
            ],
          ),
          Column(
            children: <Widget>[
                CircleAvatar(backgroundImage: NetworkImage('https://elmontonero.pe/upload/uploads_images/7bab1-cajamarca.jpg'),radius: 30.0),
                Text('Cajamarca'),
            ],
          ),
          Column(
            children: <Widget>[
                CircleAvatar(backgroundImage: NetworkImage('https://previews.123rf.com/images/milkos/milkos1607/milkos160701005/60418188-unidas-las-manos-de-las-mujeres-jóvenes-manos-elegantes-de-amigas-en-el-boho-hippie-pulseras-cerca-del-.jpg'),radius: 30.0),
                Text('BFF'),
            ],
          ),
          Column(
            children: <Widget>[
                SizedBox(width: 30,)
            ],
          ),
          Column(
            children: <Widget>[
                SizedBox(width: 30,)
            ],
          ),
          Column(
            children: <Widget>[
                SizedBox(width: 30,)
            ],
          )
        ],
      ),
    );
  }

  Widget menuGrid() {
    return Container(
      // decoration: BoxDecoration(border: Border.all(color:  Colors.red)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(Icons.grid_on,color: Colors.black,),
          Icon(Icons.photo,color: Colors.grey)
        ],
      ),
    );
  }

 Widget  fotosGrid() {
   final url = 'https://www.lavanguardia.com/r/GODO/LV/p4/WebSite/2017/10/31/Recortada/img_mrubal_20171031-092614_imagenes_lv_otras_fuentes_istock-610851768-kbdB-U432502831425H0B-992x558@LaVanguardia-Web.jpg';
  return Container(
    // decoration: BoxDecoration(border: Border.all(color:  Colors.red)),
    child: Table(
      children: [
        TableRow(
          children: [
            Container(height: 150,width: 150,margin: EdgeInsets.all(2.0),decoration: BoxDecoration( image: DecorationImage(image: NetworkImage(url),fit: BoxFit.cover))),
            Container(height: 150,width: 150,margin: EdgeInsets.all(2.0),decoration: BoxDecoration( image: DecorationImage(image: NetworkImage(url),fit: BoxFit.cover))),
            Container(height: 150,width: 150,margin: EdgeInsets.all(2.0),decoration: BoxDecoration( image: DecorationImage(image: NetworkImage(url),fit: BoxFit.cover))),
            
         ]
        ),
        TableRow(
          children: [
            Container(height: 150,width: 150,margin: EdgeInsets.all(2.0),decoration: BoxDecoration( image: DecorationImage(image: NetworkImage(url),fit: BoxFit.cover))),
            Container(height: 150,width: 150,margin: EdgeInsets.all(2.0),decoration: BoxDecoration( image: DecorationImage(image: NetworkImage(url),fit: BoxFit.cover))),
            Container(height: 150,width: 150,margin: EdgeInsets.all(2.0),decoration: BoxDecoration( image: DecorationImage(image: NetworkImage(url),fit: BoxFit.cover))),       
            ]
        ),
        TableRow(
          children: [
            Container(height: 150,width: 150,margin: EdgeInsets.all(2.0),decoration: BoxDecoration( image: DecorationImage(image: NetworkImage(url),fit: BoxFit.cover))),
            Container(height: 150,width: 150,margin: EdgeInsets.all(2.0),decoration: BoxDecoration( image: DecorationImage(image: NetworkImage(url),fit: BoxFit.cover))),
            Container(height: 150,width: 150,margin: EdgeInsets.all(2.0),decoration: BoxDecoration( image: DecorationImage(image: NetworkImage(url),fit: BoxFit.cover))),       
            ]
        ),
      ],
     ),
  );
 }

 Widget contendorFotos(){
   return Container(
     height: 360,
    //  decoration: BoxDecoration(border: Border.all(color:  Colors.blue)),
     child: ListView(
       children: <Widget>[
         fotosGrid()
       ],
     ),
   );
 }
}
