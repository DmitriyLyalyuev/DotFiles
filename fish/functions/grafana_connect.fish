function grafana_connect --wraps='ssh -L 3000:localhost:3000 ansible@10.100.11.219' --description 'alias grafana_connect ssh -L 3000:localhost:3000 ansible@10.100.11.219'
  ssh -L 3000:localhost:3000 ansible@10.100.11.219 $argv
        
end
