import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildImage(),
            _buildTitle(),
            _buildActions(),
            _buildtext(),
            _buildtext(),
            _buildtext(),
            _buildtext(),
            _buildtext(),
            _buildtext(),
          ],
        ),
      ),
    );
  }

  _buildTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 20.0,
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Lago con un puente',
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'Un lago en Alemania',
                    style: estiloSubtitulo,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  _buildImage() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
          'https://concepto.de/wp-content/uploads/2015/03/paisaje-2-e1549600987975.jpg',
        ),
        height: 180.0,
        fit: BoxFit.cover,
      ),
    );
  }

  _buildActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _action(Icons.call, 'CALL'),
        _action(Icons.near_me, 'ROUTE'),
        _action(Icons.share, 'Share'),
      ],
    );
  }

  _action(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        ),
      ],
    );
  }

  _buildtext() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 40.0,
          vertical: 20.0,
        ),
        child: Text(
          'El concepto de paisaje es utilizado tanto por la geografía, por el arte, e incluso por la literatura. Si bien todas estas acepciones son diferentes, tienen como base común que encontramos uno o mas observadores que se refieren a una extensión de terreno, destacándose generalmente por características que lo hacen diferenciarse (ya sean positivas o  negativas).',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
