require 'cucumber'
require 'cucumber/rake/task'

desc 'Execute Smoke Tests'
task :smoke_test do
  sh 'bundle exec cucumber -t @smoke_test'
end

desc 'Execute Search Tests'
task :pesquisar do
  sh 'bundle exec cucumber -t @pesquisar'
end

desc 'Execute Seach Tests with Success'
task :pesquisar_sucesso do
  sh 'bundle exec cucumber -t @pesquisar_sucesso'
end

desc 'Execute Seach Tests without Success'
task :pesquisar_sem_resultado do
  sh 'bundle exec cucumber -t @pesquisar_sem_resultado'
end

desc 'Execute Seach Tests Empty Search'
task :pesquisar_vazio do
  sh 'bundle exec cucumber -t @pesquisar_vazio'
end
