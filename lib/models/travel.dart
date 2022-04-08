class Travel {
  String name;
  String location;
  String url;

  Travel(this.name, this.location, this.url);

  static List<Travel> generateTravelBlog() {
    return [
      Travel('Name 1', "Location 1", "assets/images/1s.jpg"),
      Travel('Name 2', "Location 2", "assets/images/2s.jpg"),
      Travel('Name 3', "Location 3", "assets/images/3s.jpg"),
      Travel('Name 4', "Location 4", "assets/images/4s.jpg"),
    ];
  }
}