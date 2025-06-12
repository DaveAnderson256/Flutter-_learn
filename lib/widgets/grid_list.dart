// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridList extends StatelessWidget {
  GridList({super.key});
  List<String> Fruits = [
    'Apple',
    'Oranges',
    'Banana',
    'Grapes',
    'Ovacado',
    'Tomatoes'
  ];
  List<String> Suppliers = [
    'Bushid',
    'Farook',
    'Alapha',
    'Dangote',
    'Acacia',
    'James'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 20,
          title: Center(child: Text('Grids and List')),
          backgroundColor: Colors.purple,
        ),
        body: Container(
          child: GridView.builder(
            //use the aspect ration
            itemCount: Fruits.length,
            itemBuilder: (context, index) {
              return Card(
                child: (ListTile(
                  leading: Icon(Icons.person_2_outlined),
                  title: Text(Fruits[index]),
                  subtitle: Text(Suppliers[index]),
                )),
              );
            },
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          ),
        ));
  }
}

//     // Map of fruits and their suppliers
//     final Map<String, String> fruitSuppliers = {
//       'Apple': 'Supplier A',
//       'Oranges': 'Supplier B',
//       'Banana': 'Supplier C',
//       'Grapes': 'Supplier D',
//       'Ovacado': 'Supplier E',
//       'Jambula': 'Supplier F',
//       'Tomatoes': 'Supplier G',
//       'Mangoes': 'Supplier H',
//       'Berries': 'Supplier I',
//       'Jack Fruit': 'Supplier J',
//     };

//     final fruitList = fruitSuppliers.entries.toList();

//     return Scaffold(
//       appBar: AppBar(
//         elevation: 20,
//         title: Center(child: Text('Grids and List')),
//         backgroundColor: Colors.purple,
//       ),
//       body: ListView.builder(
//         itemCount: fruitList.length,
//         itemBuilder: (context, index) {
//           final fruit = fruitList[index].key;
//           final supplier = fruitList[index].value;
//           return Card(
//             color: Color.fromARGB(255, 167, 102, 179),
//             child: ListTile(
//               onTap: () {
//                 print('$fruit supplied by $supplier');
//               },
//               hoverColor: Colors.red,
//               title: Text(fruit),
//               subtitle: Text('Supplier: $supplier'),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
