import 'package:carrot/models/product.dart';
import 'package:carrot/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(product.title, style: textTheme().bodyLarge),
          const SizedBox(height: 4.0),
          Text('${product.title} • ${product.publishedAt}'),
          const SizedBox(height: 4.0),
          Text(
            '${numberFormat(product.price)}원',
            style: textTheme().headlineMedium,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Visibility(
                visible: product.commentsCount > 0,
                child: _buildIcons(
                  product.commentsCount,
                  CupertinoIcons.chat_bubble_2,
                ),
              ),
              const SizedBox(width: 8.0),
              Visibility(
                visible: product.heartCount > 0,
                child: _buildIcons(
                  product.heartCount,
                  CupertinoIcons.heart,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  numberFormat(String price) {
    final formatter = NumberFormat('#,###');
    return formatter.format(int.parse(price));
  }

  Widget _buildIcons(int count, IconData iconData) {
    return Row(
      children: [
        Icon(iconData, size:  14.0),
        const SizedBox(width: 4.0),
        Text('$count')
      ],
    );
  }
}
