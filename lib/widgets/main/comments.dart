import 'package:flutter/material.dart';
import 'package:workly/constans.dart';
import 'package:workly/models/comments.dart';

class Comments extends StatelessWidget {
  const Comments({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Client Recommendations',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(height: kDefaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(comments.length, (index) {
                final w = MediaQuery.of(context).size.width;
                final cardWidth = w < 1200 ? 320.0 : 400.0;
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding / 2,
                  ),
                  child: SizedBox(
                    width: cardWidth,
                    height: 200,
                    child: Container(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      color: kSecondaryColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: CircleAvatar(
                              radius: 24,
                              backgroundColor: kPrimaryColor,
                              backgroundImage:
                                  comments[index].image != null
                                      ? AssetImage(comments[index].image!)
                                      : null,
                              child:
                                  comments[index].image == null
                                      ? Icon(
                                        Icons.person,
                                        size: 28,
                                        color: Colors.white,
                                      ) // فallback
                                      : null,
                            ),

                            title: Text(
                              comments[index].name ?? '',
                              style: Theme.of(context).textTheme.titleMedium,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            subtitle: Text(
                              comments[index].source ?? '',
                              style: Theme.of(context).textTheme.bodyMedium,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Expanded(
                            child: Text(
                              comments[index].text ?? '',
                              style: const TextStyle(height: 1.5),
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
