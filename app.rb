require 'rubygems'
require 'sinatra'

require ROOT.join('markov_chainer').to_s

get '/' do
  mc = MarkovChainer.new(2)
  mc.add_text(File.read('seeds.txt'))
  mc.generate_sentence
end

