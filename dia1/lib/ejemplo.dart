import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Flutter Layer Demo"),
        Image.asset("assets/foto.jpg"),
        const Row(
          children: [
            Column(
              children: [
                Text("Foto del una Montaña"),
                Text("Esa Montaña esta en USA")
              ],
            ),
            Row(
              children: [
                Icon(Icons.star),
                Text("41")
              ],
            )
          ],
        ),
        Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.call),
                    Container(
                      child: Text("CALL"),
                    )
                  ],
                ),
                const Column(
                  children: [
                    Icon(Icons.route),
                    Text("ROUTE"),
                  ],
                ),
                const Column(
                  children: [
                    Icon(Icons.share),
                    Text("SHARE"),
                  ],
                )
              ],
            ),
            const Text("En las alturas majestuosas de la montaña, donde el viento susurra entre los picos nevados y las nubes rozan suavemente las cimas, la naturaleza revela su grandeza. Rocas milenarias emergen con fuerza, talladas por el tiempo y los elementos, mientras los valles verdes se extienden como un manto que nutre la vida salvaje. La tranquilidad domina, interrumpida solo por el eco de las águilas que surcan el cielo y los riachuelos cristalinos que serpentean entre los peñascos. Es en este santuario de la tierra donde el alma encuentra paz y el espíritu, inspiración.")
      ],
    );
  }
}