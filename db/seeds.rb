# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#-----------------------------------
#----------PLANES-------------------
#-----------------------------------
Plan.create( name: "Plan Anual", duration: 12, monthly_value: 12500, shipping_value: 1 )
Plan.create( name: "Plan Semestral", duration: 6, monthly_value: 17000, shipping_value: 1 )
Plan.create( name: "Plan Trimestral", duration: 3, monthly_value: 20000, shipping_value: 1 )



#-----------------------------------
#----------BOXES--------------------
#-----------------------------------
box = Box.create( name: "Caja de Navidad", 
		        description: "Todos los objetos de navidad estan en esta caja")

box.status =Status.create( name: "En bodega",
	      	 		   description: "La caja se encuentra actualmente almacenada en la bodega")
Status.create(name:'Confirmando solicitud', description: 'Uno de nuestros asesores se pondra en contacto contigo, para confirmar la solicitud de la caja.')

box.build_boxPlan plan_id: 1, start_day: Date.today, end_day: Date.today + Plan.first.duration_in_months
box.save

box.items.create(  name: "papa noel",
	    	photo_small_url: "http://pictures2.todocoleccion.net/tc/2009/01/12/11500345.jpg",
     		   photo_big_url: "http://pictures2.todocoleccion.net/tc/2009/01/12/11500345.jpg")
box.items.create(  name: "papa noel de trapo",
	    	photo_small_url: "http://comohacerte.com/wp-content/uploads/2009/10/papa-noel-patrones.jpg",
     		   photo_big_url: "http://comohacerte.com/wp-content/uploads/2009/10/papa-noel-patrones.jpg")
box.items.create(  name: "Muñeco de Nieve",
	    	photo_small_url: "http://1.bp.blogspot.com/_8-EKATZfgQc/TLW7zulPMAI/AAAAAAAAAUQ/ftYWDjN4Lus/s1600/SAM_1576.JPG",
     		   photo_big_url: "http://1.bp.blogspot.com/_8-EKATZfgQc/TLW7zulPMAI/AAAAAAAAAUQ/ftYWDjN4Lus/s1600/SAM_1576.JPG")
box.items.create(  name: "Trio muñecos patas largas",
	    	photo_small_url: "http://images01.olx.com.co/ui/14/19/77/1347035321_436531277_2-Munecos-Navidenos-Barranquilla.jpg",
     		   photo_big_url: "http://images01.olx.com.co/ui/14/19/77/1347035321_436531277_2-Munecos-Navidenos-Barranquilla.jpg")
box.items.create(  name: "Adorno de la puerta",
	    	photo_small_url: "http://cdn2.grupos.emagister.com/imagen/muneco_de_nieve_y_papa_noel_feliz_navidad_188582_t0.jpg",
     		   photo_big_url: "http://cdn2.grupos.emagister.com/imagen/muneco_de_nieve_y_papa_noel_feliz_navidad_188582_t0.jpg")

# BOX 2

box = Box.create( name: "Libros del 2000 al 2010", 
		        description: "Colección de libros, entre ellos El dia del relampago.")

box.status =Status.create( name: "En bodega",
	      	 		   description: "La caja se encuentra actualmente almacenada en la bodega")
box.build_boxPlan plan_id: 1, start_day: Date.today, end_day: Date.today + Plan.first.duration_in_months
box.save

box.items.create(  name: "El dia del relampago",
	    	photo_small_url: "http://image.casadellibro.com/libros/0/el-dia-del-relampago-ebook-9788408113447.jpg",
     		   photo_big_url: "http://image.casadellibro.com/libros/0/el-dia-del-relampago-ebook-9788408113447.jpg")

box.items.create(  name: "Blah blah Blah!",
	    	photo_small_url: "http://anticioduke.com/wp-content/uploads/2012/11/blah_book_review.jpg",
     		   photo_big_url: "http://anticioduke.com/wp-content/uploads/2012/11/blah_book_review.jpg")

box.items.create(  name: "Leonardo da Vinci",
	    	photo_small_url: "http://armakedon2013.files.wordpress.com/2011/07/leonardo_da_vinci_the_complete_works.jpg",
     		   photo_big_url: "http://armakedon2013.files.wordpress.com/2011/07/leonardo_da_vinci_the_complete_works.jpg")

box.items.create(  name: "Calculus",
	    	photo_small_url: "http://ecx.images-amazon.com/images/I/51R6YTKKHAL._SL500_AA300_.jpg",
     		   photo_big_url: "http://ecx.images-amazon.com/images/I/51R6YTKKHAL._SL500_AA300_.jpg")

box.items.create(  name: "Business model generation",
	    	photo_small_url: "http://d1u0vyj1e00z8y.cloudfront.net/wp-content/uploads/2011/01/BusinessModelGeneration.png",
     		   photo_big_url: "http://d1u0vyj1e00z8y.cloudfront.net/wp-content/uploads/2011/01/BusinessModelGeneration.png")

box.items.create(  name: "The Startup owners manual",
	    	photo_small_url: "http://images.betterworldbooks.com/098/The-Startup-Owner-s-Manual-Blank-Steve-9780984999309.jpg",
     		   photo_big_url: "http://images.betterworldbooks.com/098/The-Startup-Owner-s-Manual-Blank-Steve-9780984999309.jpg")
