Image.delete_all
Image.reset_pk_sequence
Image.create([
               {name: 'Крейсер альянса', file: 'AllianceCruiser.png', theme_id: 2},
               {name: 'Путь преднаначения', file: 'DestinyAscension.jpg', theme_id: 2},
               {name: 'Кварианский корабль', file: 'QuarianEnvoyShip.png', theme_id: 2},
               {name: 'Турианский крейсер', file: 'TurianCruiser.jpg', theme_id: 2},
               {name: 'Земля', file: 'Earth.png', theme_id: 3},
               {name: 'Ферос', file: 'Feros.jpg', theme_id: 3},
               {name: 'Иден-Прайм', file: 'IdenPrime.png', theme_id: 3},
               {name: 'Иллиум', file: 'Illiym.png', theme_id: 3},
               {name: 'Новерия', file: 'Noveria.png', theme_id: 3},
               {name: 'Гиннес', file: 'Guinees.jpeg', theme_id: 4},
               {name: 'Балтика Имперский Стаут', file: 'ImperialStout.jpeg', theme_id: 4},
               {name: 'Крушовице', file: 'Krusovice.jpeg', theme_id: 4},
               {name: 'Балтика Портер', file: 'Porter.jpeg', theme_id: 4},
             ])

Theme.delete_all
Theme.reset_pk_sequence
Theme.create([
               {name: "-----"},        # 1 Нет темы
               {name: "Корабли"},      # 2
               {name: "Планеты"},      # 3
               {name: "Пиво"},         # 4
             ])

User.delete_all
User.reset_pk_sequence
User.create([
              {name: "Example User 1", email: "example@railstutorial1.org"},
              {name: "Example User 2", email: "example@railstutorial2.org"},
              {name: "Example User 3", email: "example@railstutorial3.org"},
            ])

Value.delete_all
Value.reset_pk_sequence
Value.create([
              {user_id: 1, image_id: 1, value: 123},
              {user_id: 1, image_id: 3, value: 23},
              {user_id: 1, image_id: 8, value: 4124},
              {user_id: 2, image_id: 4, value: 123},
              {user_id: 2, image_id: 7, value: 124243},
              {user_id: 2, image_id: 12, value: 121413},
              {user_id: 3, image_id: 4, value: 11},
              {user_id: 3, image_id: 10, value: 1223},
              {user_id: 3, image_id: 5, value: 123},
              {user_id: 3, image_id: 7, value: 12342},
              {user_id: 3, image_id: 2, value: 112423},
              {user_id: 3, image_id: 1, value: 121243},
            ])
