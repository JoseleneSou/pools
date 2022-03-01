DB = []

class Main
  attr_accessor :vote

def initialize(vote:)
  @vote = vote
end

def save
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


def filter_votes_by_name(name)
  DB.select {|i| i == name}
end

def count_vote
  vote_lula = filter_votes_by_name("Lula")
  vote_bolsonaro = filter_votes_by_name("Bolsonaro")
  em_branco = filter_votes_by_name("em branco")
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

main1.save
main2.save
main3.save
main4.save
main5.save
main6.save
main7.save
main8.save

p main1.count_vote
