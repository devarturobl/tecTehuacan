import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  ItemWidget({super.key});

  List img = [
    {
      'name': 'Latte',
      'price': 88.00,
      'description': 'El Café Latte es una bebida suave y cremosa, ideal para quienes buscan un sabor balanceado entre el espresso y la leche vaporizada. Se prepara con una base de espresso que se mezcla con leche espumosa, creando una textura aterciopelada y un sabor suave, con la opción de personalizarlo con azúcar o jarabes saborizados. Es perfecto para un momento de relajación o para acompañar cualquier momento del día.',
      'volumen': '200ml'
    },
    {
      'name': 'Espresso',
      'price': 30.00,
      'description': 'El Espresso es la esencia del café en su forma más pura y concentrada. Preparado con agua caliente que pasa a alta presión a través de café finamente molido, resulta en una pequeña porción de bebida intensa y aromática, con un sabor robusto y una capa de crema dorada en la superficie. Perfecto para los amantes del café que buscan una experiencia fuerte y auténtica, el espresso también es la base de otras bebidas como el cappuccino y el latte.',
      'volumen': '100ml'
    },
    {
      'name': 'Black Coffee',
      'price': 20.00,
      'description': 'El Black Coffee, o café negro, es la forma más sencilla de disfrutar el café en su estado puro. Preparado solo con agua caliente y granos de café recién molidos, ofrece un sabor pleno y natural, resaltando todos los matices y notas de los granos sin agregar leche ni azúcar. Es perfecto para quienes buscan una experiencia auténtica y directa del café, con su cuerpo ligero y aroma profundo, ideal para disfrutar a cualquier hora del día.',
      'volumen': '80ml'
    },
    {
      'name': 'Cold Coffee',
      'price': 90.00,
      'description': 'El Cold Coffee es una refrescante opción para los amantes del café en días calurosos. Este café se prepara enfriándolo después de la extracción o elaborándolo directamente en frío, resaltando sabores suaves y reduciendo la acidez. Puede servirse solo, con hielo, o combinado con leche, cremas y saborizantes, ofreciendo una experiencia suave y revitalizante. Perfecto para disfrutar de la esencia del café con un toque refrescante, es ideal para energizarte y refrescarte al mismo tiempo.',
      'volumen': '300ml'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (150/195),
      children: [
        for(int i=0; i<img.length; i++)
        Container(
          padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 13.0),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 228, 179, 32),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.5),
                spreadRadius: 4,
                blurRadius: 5
              )
            ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Image.asset("assets/${img[i]['name']}.png",
                    width: 100,
                    height: 100,
                    fit: BoxFit.contain),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(img[i]['name'],
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        Text("Best Coffee",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$${double.parse(img[i]['price'].toString()).toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Icon(
                        CupertinoIcons.add,
                        size: 20,
                      ),
                    )
                  ],
                ),
                )
              ],
            ),
          ),
          ]
        );
  }
}
