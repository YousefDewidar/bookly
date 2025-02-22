import 'package:bookly/core/utils/shimmer/shimmer_card.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard(
      {super.key, required this.book, required this.width, this.marginR = 0.0});
  final BookEntity book;
  final double width;
  final double marginR;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .34,
      width: width,
      margin: EdgeInsets.only(right: marginR),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          imageUrl: book.imageUrl,
          fit: BoxFit.fill,
          errorListener: (value) {
            return;
          },
          errorWidget: (context, url, error) => const Icon(Icons.error),
          placeholder: (context, url) => ShimmerCard(
            width: 150,
            height: MediaQuery.of(context).size.height * .3,
          ),
        ),
      ),
    );
  }
}