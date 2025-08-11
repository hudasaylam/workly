class Recommendation {
  final String? name, image, source, text;
  Recommendation({this.name, this.image, this.source, this.text});
}

final List<Recommendation> jobRecommendations = [
  Recommendation(
    name: 'Flutter Developer',
    image: 'images/flt.jpg',
    source: 'TechVision Co.',
    text:
        'We’re looking for a creative Flutter developer to build cross-platform apps with beautiful UI.',
  ),
  Recommendation(
    name: 'Data Analyst',
    image: 'images/dataan.jpg',
    source: 'InsightX',
    text:
        'Join our data team to turn insights into real business impact. SQL, Excel, and Python skills needed.',
  ),
  Recommendation(
    name: 'UI/UX Designer',
    image: 'images/uxui.jpg',
    source: 'CreativeStudio',
    text:
        'Design intuitive and stunning interfaces for mobile and web. Figma + user testing experience required.',
  ),
  Recommendation(
    name: 'Backend Engineer',
    image: 'images/Coder.jpg',
    source: 'CodeCore',
    text:
        'Build scalable APIs with Node.js and MongoDB. Experience with RESTful services is a must.',
  ),
  Recommendation(
    name: 'Marketing Specialist',
    image: 'images/mrkt.jpg',
    source: 'AdWise Agency',
    text:
        'Plan and execute digital campaigns. We need someone who loves data and storytelling.',
  ),
];
