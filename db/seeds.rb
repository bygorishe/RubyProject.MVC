#TODO переделать под мои данные

Image.delete_all
Image.reset_pk_sequence
Image.create([

               {name: 'P.-A. Renoir, Бал в Мулен де ла Галетт', file: 'Renoir Бал в Мулен де ла Галлет.jpg', theme_id: 2},
               {name: 'P.-A. Renoir, Букет', file: 'Renoir букет.jpg', theme_id: 2},
               {name: 'P. Picasso, Фабрика', file: 'Picasso Fabrique.jpg', theme_id: 3},
               {name: 'H. Matiss, Балерина', file: 'Matiss Балерина.jpg', theme_id: 4},
             ])

Theme.delete_all
Theme.reset_pk_sequence
Theme.create([

               {name: "-----"},      # 1 Нет темы
               {name: "Какое из произведений художника О.Ренуара наилучшим образом характеризует его творчество?"},      # 2
               {name: "Какое из произведений художника П.Пикассо наилучшим образом характеризует его творчество?"},      # 3
               {name: "Какое из произведений художника А.Матисса наилучшим образом характеризует его творчество?"},      # 4
             ])

Заполнить Image   и   Theme  самостоятельными данными на основе данного примера.

  User.delete_all
User.reset_pk_sequence
User.create([

              {name: "Example User", email: "example@railstutorial.org", password: "222222", password_confirmation: "222222"},
            ])
