# Install

Criar a instância via terraform

## Baixa o rpm:

via browser

https://dl.grafana.com/oss/release/grafana-8.5.2-1.x86_64.rpm

via wget

wget https://dl.grafana.com/oss/release/grafana-8.5.2-1.x86_64.rpm

## Copiar para o servidor

scp ~/Downloads/grafana-8.5.2-1.x86_64.rpm ec2-user@ec2-34-200-224-202.compute-1.amazonaws.com:~

## Acessar a instância

ssh ec2-user@ec2-34-200-224-202.compute-1.amazonaws.com


Instalar dependencias:
	fontconfig is needed by grafana-8.5.2-1.x86_64
	urw-fonts is needed by grafana-8.5.2-1.x86_64

$ sudo yum install fontconfig urw-fonts -y

$ sudo rpm -i grafana-8.5.2-1.x86_64.rpm

$ sudo /bin/systemctl daemon-reload

$ sudo /bin/systemctl enable grafana-server.service

$ sudo /bin/systemctl start grafana-server.service

Acessar no browser: http://34.200.224.202:3000

admin
admin

$ netstat -atunp | grep 3000
(Not all processes could be identified, non-owned process info
 will not be shown, you would have to be root to see it all.)
tcp6       0      0 :::3000                 :::*                    LISTEN      -                   
tcp6       0      0 172.31.6.228:3000       177.143.184.149:57988   ESTABLISHED -


## Liberar acesso para as portas

## Dashboard

https://grafana.com/grafana/dashboards/159-prometheus-system/

ID 159

# Demo

url https://demo.promlabs.com