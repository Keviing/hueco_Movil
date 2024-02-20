import 'package:flutter/material.dart';
import 'package:hueca_movil/features/user_auth/presentation/widgets/restaurant_info.dart';

class RestaurantCardHorizontal extends StatelessWidget {
  final String id;
  final String name;
  final String description;
  final String address;
  final double rating;
  final String imageUrl;

  const RestaurantCardHorizontal({
    Key? key,
    required this.id,
    required this.name,
    required this.description,
    required this.address,
    required this.rating,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                RestaurantInfo(id: id), // Pasa el ID al nuevo widget
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        elevation: 4.0,
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(
                  8.0), // Ajusta el valor del padding según necesites
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    10.0), // Ajusta el radio del borde para controlar el redondeo
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                  height: 100.0,
                  width: 100.0,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description,
                      style: const TextStyle(fontSize: 12),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      address,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 20,
                        ),
                        Text(
                          '$rating',
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
