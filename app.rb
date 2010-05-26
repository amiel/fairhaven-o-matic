require 'rubygems'
require 'sinatra'

require 'markov_chainer'

get '/' do
  mc = MarkovChainer.new(2)
  mc.add_text(File.read('seeds.txt'))
  mc.generate_sentence
end

