import 'package:news_app/models/category_model.dart';

List<CategoryModel> getCategory() {
  List<CategoryModel> myCategories = List<CategoryModel>();
  CategoryModel categoryModel;

  categoryModel = new CategoryModel();
  categoryModel.categoryName = 'Business';
  categoryModel.imageAssetUrl =
      'https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80';
  myCategories.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryName = 'Entertainment';
  categoryModel.imageAssetUrl =
      'https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80';
  myCategories.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryName = 'General';
  categoryModel.imageAssetUrl =
      'https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80';
  myCategories.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryName = 'Health';
  categoryModel.imageAssetUrl =
      'https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80';
  myCategories.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryName = 'Science';
  categoryModel.imageAssetUrl =
      'https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80';
  myCategories.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryName = 'Sports';
  categoryModel.imageAssetUrl =
      'https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80';
  myCategories.add(categoryModel);

  categoryModel = new CategoryModel();
  categoryModel.categoryName = 'Technology';
  categoryModel.imageAssetUrl =
      'https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80';
  myCategories.add(categoryModel);

  return myCategories;
}
