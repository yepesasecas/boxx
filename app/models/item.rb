class Item < ActiveRecord::Base
	#before_save :random_image
	validates :name, presence: true
	
	belongs_to :box

	def random_image
		image=["http://www.mythclothes.com/images/myth_cloth_poissons_l.jpg",
			"http://mla-s2-p.mlstatic.com/set-20-munecos-gashapon-saint-seiya-caballeros-del-zodiaco-10510-MLA20030069760_012014-F.jpg",
			"http://i166.photobucket.com/albums/u100/ku21/Tauro.jpg",
			"http://mla-s2-p.mlstatic.com/munecos-caballeros-del-zodiaco-8779-MLA20008226739_112013-F.jpg",
			"http://i1215.photobucket.com/albums/cc507/nahuel_bocampeon/caballeros%20de%20bronce/hyogav3.jpg"].sample
		self.photo_big_url |=image
		self.photo_small_url |= image 
	end
end
