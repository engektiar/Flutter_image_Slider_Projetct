class Travel {
  String name;
  String location;
  String img;
  Travel(this.name, this.location, this.img);
  static List<Travel> travelInfo() {
    return [
      Travel("Mad01", "dhaka", "images/n.png"),
      Travel("Mad02", "dhaka", "images/n1.png"),
      Travel("Mad03", "dhaka", "images/n2.png"),
      Travel("Mad04", "dhaka", "images/n3.png"),
      Travel("Mad05", "dhaka", "images/n5.png"),
    ];
  }

  static List<Travel> mostPopularTravel() {
    return [
      Travel("Most1", "dhaka", "images/n.png"),
      Travel("Most2", "dhaka", "images/n1.png"),
      Travel("Most3", "dhaka", "images/n2.png"),
      Travel("Most4", "dhaka", "images/n3.png"),
      Travel("Most5", "dhaka", "images/n5.png"),
    ];
  }
}
