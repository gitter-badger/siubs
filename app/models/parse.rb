class Parse < ActiveRecord::Base
	# validates_format_of :file, with: %r{\.(csv)$}i, multiline: true, 
	# message: "Extensão inválida, por favor selecione um arquivo csv",
	# on: :create

	def self.import(file)
		# CSV.foreach(file.path, headers: true, header_converters: :symbol, converters: :numeric) do |row|
	 #    	ubs_hash = row.to_hash
  #   		cidade = Cidade.create(:name => ubs_hash[:dsc_cidade])
  #   		# bairro = Bairro.create(:name => ubs_hash[:dsc_bairro], 
  #   		# 	:cidade => cidade, 
  #   		# 	:endereco => nil)

	 #    	# endereco = Endereco.create(:bairro => bairro, 
	 #    	# 	:street => ubs_hash[:dsc_endereco], 
	 #    	# 	:country_code => ubs_hash[:cod_munic])

	 #    	# ubs = Ubs.create(:name => ubs_hash[:nom_estab], 
	 #    	# 	:latitude => ubs_hash[:vlr_latitude], 
	 #    	# 	:longitude =>ubs_hash[:vlr_longitude], 
	 #    	# 	:cnes =>ubs_hash[:cod_cnes], 
		#     #     :structure_ambience =>ubs_hash[:dsc_estrut_fisic_ambiencia], 
		#     #     :structure_elderly =>ubs_hash[:dsc_adap_defic_fisic_idosos], 
		#     #     :equipament =>ubs_hash[:dsc_equipamentos], 
		#     #     :drugs =>ubs_hash[:dsc_medicamentos], :endereco => endereco)
	 #    end
	end
end
