DB = []

class Main
  attr_accessor :vote

def initialize(vote:)
  @vote = vote
end

def urn_save
  x = vote
  case x
    when 13
    DB << "Lula"
    when 17
    DB << "Bolsonaro"
    when 0
    DB << "em branco"
    else
    "Candidato não localizado"
  end
end

def total_votes
  DB.size
end

def count_vote
  vote_lula = DB.select do |i|
    i == "Lula"
  end
  vote_bolsonaro = DB.select do |i|
    i == "Bolsonaro"
  end
  em_branco = DB.select do |i|
    i == "em branco"
  end
total_votes
  {
    result_lula: "Lula teve #{vote_lula.size * 100 / total_votes}% dos votos apurados.",
    result_bolsonaro: "Bolsonaro teve #{vote_bolsonaro.size * 100 / total_votes}% dos votos apurados.",
    result_em_branco: "#{em_branco.size * 100 / total_votes}% dos votos foram em branco."
  }
  end
end

main1 = Main.new(vote: 13)
main2 = Main.new(vote: 17)
main3 = Main.new(vote: 13)
main4 = Main.new(vote: 0)
main5 = Main.new(vote: 17)
main6 = Main.new(vote: 17)
main7 = Main.new(vote: 13)
main8 = Main.new(vote: 13)

main1.urn_save
main2.urn_save
main3.urn_save
main4.urn_save
main5.urn_save
main6.urn_save
main7.urn_save
main8.urn_save

p main1.count_vote
