import 'package:api_fetch_assignment/Model/photo_model.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PhotoDetailScreen extends StatelessWidget {
  final Photo photo;

  const PhotoDetailScreen({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Details'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 150),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 22 , right: 22),
                    child: CachedNetworkImage(
                      imageUrl: photo.url,
                      //width: 390,
                      //height: 390,
                      //fit: BoxFit.cover,
                      fit: BoxFit.scaleDown,
                      placeholder: (context, url) => const CircularProgressIndicator(),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Title: ${photo.title}',
                    style: const TextStyle(fontSize: 19),
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  'ID: ${photo.id}',
                  style: const TextStyle(fontSize: 19),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
