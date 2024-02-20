import 'package:flutter/material.dart';

class pruebaPage extends StatefulWidget {
  const pruebaPage({super.key});

  @override
  State<pruebaPage> createState() => _nameState();
}

class _nameState extends State<pruebaPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('HOLA MUNDO PERO PROGRAMANDO '),
    );
  }
}