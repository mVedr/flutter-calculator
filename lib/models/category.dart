class Category{
  String id;
  String name;
  bool isChecked;
  Category({required this.id,required this.name,this.isChecked=true});
}
var category = Category(id: '1', name:'All');