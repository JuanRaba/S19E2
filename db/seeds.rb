# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.destroy_all
0.times do|i|
  Task.create(
    name: Faker::VForVendetta.quote,
    photo: "https://picsum.photos/200/200/?image=#{i+1}"
    )
end

Task.create(
  name: 'Musica',
  photo: 'http://www.hacerfamilia.cl/hf-comprendido/uploads/2014/09/musica_chilena.jpg'
)
Task.create(
  name: 'Fonda',
  photo: 'http://los40cl00.epimg.net/los40/imagenes/2014/09/12/actualidad/1410476028_530960_1410976892_noticia_normal.jpg'
)
Task.create(
  name: 'Fiesta sin plastico',
  photo: 'http://biosferamia.cl/wp-content/uploads/2018/06/fiestas-patrias-300x300.png'
)
Task.create(
  name: 'Enorgullecerse de ser republica',
  photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqsI2iIUpHCfHfBnc5jq0uEtlM7Mo3BdVyWaLjqNslU9vflncULQ'
)
Task.create(
  name: 'Hacer un asado',
  photo: 'http://www.tallereslumen.cl/wp-content/uploads/2018/08/asado_800x800-300x300.jpg'
)
Task.create(
  name: 'Portar la bandera',
  photo: 'http://s1.paula.cl/wp-content/uploads/2018/09/18-300x300.png'
)
Task.create(
  name: 'Bailar una cueca',
  photo: 'https://3.bp.blogspot.com/-_kuwo9_KWDI/V9jFmTUxLMI/AAAAAAADGVw/T7YIqJAcDFET9f4Axd37Z8IF134Fxi70wCLcB/s1600/mtraiguen.cl.jpg'
)
Task.create(
  name: 'Destapar una cerveza',
  photo: 'https://static.wixstatic.com/media/248753_febc0b08d7c34c97ab09307eaf3cc59e~mv2.gif'
)
Task.create(
  name: 'Picarse con ajis',
  photo: 'https://rincondelchili.files.wordpress.com/2012/09/chile-arbol-planta_2.jpg?w=590'
)