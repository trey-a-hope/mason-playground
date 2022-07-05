import 'dart:io';
 

class {{#pascalCase}}{{name}}{{/pascalCase}}View extends StatelessWidget {
  const {{#pascalCase}}{{name}}{{/pascalCase}}View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<{{#pascalCase}}{{name}}{{/pascalCase}}ViewModel>(
      init: {{#pascalCase}}{{name}}{{/pascalCase}}ViewModel(),
      builder: (model) {
        return Center(child: Text('Demo'),);
  
      },
    );
  }
}