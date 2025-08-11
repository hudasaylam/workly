import 'package:flutter/material.dart';
import 'package:workly/constans.dart';
import 'package:workly/models/recommendation.dart';
import 'package:workly/responsive.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Our Project', style: Theme.of(context).textTheme.headlineSmall),
          SizedBox(height: kDefaultPadding),
          Responsive(
            desktop: buildGirdWiew(
              itemCount: jobRecommendations.length,
              crossAxisCount: 3,
              childAspectRatio: 0.75,
              itemBuilder:
                  (context, index) => Jobcart(job: jobRecommendations[index]),
            ),
            mobile: buildGirdWiew(
              itemCount: jobRecommendations.length,
              crossAxisCount: 1,
              childAspectRatio: 0.75,
              itemBuilder:
                  (context, index) => Jobcart(job: jobRecommendations[index]),
            ),
            tablet: buildGirdWiew(
              itemCount: jobRecommendations.length,
              crossAxisCount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
              childAspectRatio: 0.75,
              itemBuilder:
                  (context, index) => Jobcart(job: jobRecommendations[index]),
            ),
            mobileLarge: buildGirdWiew(
              itemCount: jobRecommendations.length,
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              itemBuilder:
                  (context, index) => Jobcart(job: jobRecommendations[index]),
            ),
          ),
        ],
      ),
    );
  }

  GridView buildGirdWiew({
    required int itemCount,
    required int crossAxisCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
  }) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: itemCount, //jobRecommendations.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: kDefaultPadding,
        mainAxisSpacing: kDefaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: itemBuilder,
    );
  }
}

class Jobcart extends StatelessWidget {
  const Jobcart({super.key, required this.job});
  final Recommendation job;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Container(
        color: kSecondaryColor,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2,
            horizontal: kDefaultPadding / 2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(job.image!, fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              Text(
                job.name ?? '',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: kDefaultPadding),
              Expanded(
                child: Text(
                  job.text ?? '',
                  style: TextStyle(height: 1.4),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: kDefaultPadding / 4),
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {},
                  child: Text('More info..', style: TextStyle(color: kBgColor)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
