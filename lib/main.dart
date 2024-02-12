import 'package:flutter/material.dart';


void main() => runApp(RussianPamirDictionaryApp());

class RussianPamirDictionaryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue, // Цвет темы
        brightness: Brightness.light, // Светлая тема
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark, // Темная тема
      ),
      home: DictionaryHomePage(),
    );
  }
}

class DictionaryHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent.shade400,
        title: Text('Русско-Памирский Словарь',
          style: const TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
        centerTitle: true,
      ),
      //Меню
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage('https://storage.theoryandpractice.ru/tnp/uploads/image_block/000/063/747/image/base_692b890d23.jpg'),
                    fit: BoxFit.cover,
                ),
                color: Colors.blue,
              ),
              child: Text(
                'Меню',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.menu_book),
              iconColor: Colors.blue,
              title: Text('Памирские Языки'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PamirLanguage()),    // Открыть страницу Памирские языки
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.abc),
              iconColor: Colors.blue,
              title: Text('Алфавит'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Alphabet()),    // Открыть страница Алфавит
                );
              },
            ),
            Divider(height: 0),
            ListTile(
              leading: Icon(Icons.favorite),
              iconColor: Colors.blue,
              title: Text('Избранное'),
              onTap: () {
                // Открыть страницу избранного
              },
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text('Поиск'),
              iconColor: Colors.blue,
              onTap: () {

                // Открыть страницу поиска
              },
            ),
            ListTile(
                leading: Icon(Icons.settings),
                iconColor: Colors.blue,
                title: Text('Настройки'),
                onTap: () {
                  // Открыть страницу настроек
                }
            ),
            ListTile(
              leading: Icon(Icons.star),
              iconColor: Colors.blue,
              title: Text('Оценить'),
              onTap: () {
                // Оценит приложение
              },
            ),
            Divider(height: 0),
          ],
        ),
      ),


      //Список Слова

      body: ListView(

        children: const <Widget>[

          ListTile(
            leading: CircleAvatar(child: Text('A')),
          ),
          ListTile(
            title: Text('Абади, кори абади.'),
            subtitle: Text("Вечный , вечное дело"),
            trailing: Icon(Icons.favorite_rounded),
          ),
          Divider(height: 0),
          ListTile(
            title: Text('А баченб, а бачо. А бачен тама нан качад? '),
            subtitle: Text("Ребята, дети. Ребята где ваша мама?"),
            trailing: Icon(Icons.favorite_rounded),
          ),
          Divider(height: 0),
          ListTile(
            title: Text('Абаш'),
            subtitle: Text("Чернокожий"),
            trailing: Icon(Icons.favorite_rounded),
          ),

        ],
      ),
    );
  }
}


                                    //  Cтраница Памирские языки

class PamirLanguage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Памирские Языки'),
      ),
      body: Center(
        child: Text('Привет, это другое окно!'),
      ),
    );
  }
}

                                   // Открыть страница Алфавит

class Alphabet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Алфавит'),
      ),
      body: Center(
        child: Text('Привет, это другое окно!'),
      ),
    );
  }
}






