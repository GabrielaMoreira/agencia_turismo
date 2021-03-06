class Atracao < ApplicationRecord
  belongs_to :pacote
  belongs_to :turistico, polymorphic: true

  validates :pacote, :turistico, :dia_visita, presence: true
end

public

  def descricao
    turistico.descricao
  end

  def endereco
    turistico.endereco
  end

  def tipo
    if turistico_type == 'CasaDeShow'
      'Casa de Show'
    else
      turistico_type
    end
  end
