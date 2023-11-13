#utilizando as dependencias
require 'capybara/cucuumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'pry' #pausa a execucao da automação

#instrucao de ambiente acessado
ENVIRONMMENT = ENV['ENVIRONMMENT']

puts "Environmment >> #{ENVIRONMMENT}" #producao ou desenvolvimento

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environmments/#{ENVIRONMMENT}.yml") # Leitura do diretorio

Capybara.configure do |config|
    config.default_driver = :selenium_chrome #o drive padrao será o chrome
    config.app_host = "http://qacoders.com.br" #pagina inicial do projeto sera o qacoders
    config.default_max_wait_time = 10  #vai esperar 10 segundos pelos elementos
end