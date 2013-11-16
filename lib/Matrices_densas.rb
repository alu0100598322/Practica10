require "Matrices.rb"

  class MatricesDen < Matrices
    def initialize(ancho,*elements)
      super
      @matriz= Array.new(ancho)
      for j in 0...ancho
	@matriz[j]=Array.new(ancho)
      end
      for i in 0...ancho
	for k in 0...ancho
	  @matriz[i][k]=elements[i*ancho+k]
	end
      end
	
    end
    def +(other)
				resultado= Matrices.new(@ancho)
				for i in 0...@ancho
				  for j in 0...@ancho
					resultado[i][j]=@matriz[i][j]+other.matriz[i][j]
				  end
				end
				resultado
	end
	def - (other)
				resultado= Matrices.new(@ancho)
				 for i in 0...@ancho
				  for j in 0...@ancho
					resultado[i][j]=@matriz[i][j]-other.matriz[i][j]
				  end
				end
				resultado
	end
	def * (other)
				resultado= Matrices.new(@ancho)
				for i in 0...@ancho
				  for j in 0...@ancho
				    resultado[i][j]=0
				  end
				end  
				
				for i in 0...@ancho
				  for j in 0...@ancho
				    for k in 0...@ancho
				      resultado[i][j]+=@matriz[i][k]*other.matriz[k][j]
				    end
				  end
				end
				resultado				
	end
	
	def -@
		resultado= Matrices.new(@ancho)
		for i in 0...@ancho
		  for j in 0...@ancho
		    resultado[i][j]=-@matriz[i][j]
		  end
		end
        resultado
	end
	
	def == (other)
		for i in 0...@ancho
		  for j in 0...@ancho
        	 	if(matriz[i][j]!=other.matriz[i][j])
					return false
			end
		  end
		end
		return true
	end
end	