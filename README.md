## Mapa Cultural

Mapa Cultural é uma plataforma livre, colaborativa e interativa de mapeamento do cenário cultural cearense e instrumento de governança digital no aprimoramento da gestão pública, dos mecanismos de participação e da democratização do acesso às políticas culturais promovidas pela Secretaria da Cultura do Estado do Ceará. Além de conferir a agenda de eventos, você também pode colaborar na gestão da cultura do estado: basta criar seu perfil de agente cultural. A partir do cadastro, fica mais fácil participar dos editais e programas da Secretaria e também divulgar seus eventos, espaços ou projetos.

## Hardware

As estimativas abaixo podem variar de acordo com a velocidade dos cores, velocidade do disco, entre outros fatores, por isso recomenda-se que o sysadmin monitore o sistema para ajustar os recursos de acordo com a demanda.

Sobre o armazenamento deve-se considerar que a tendência é que o uso de espaço em disco cresça constantemente a medida que novos editais vão sendo cadastrados. A quantidade indicada nas tabelas abaixo são uma estimativa para o primeiro ano de uso da plataforma, mas deve ser monitorado e ajustado de acordo com a demanda.

### Instalações de pequeno porte (até 2.000 usuários ativos)

<table><thead><tr><th> </th><th width="150">CPUs</th><th width="150">RAM</th><th>Armazenamento</th></tr></thead><tbody><tr><td>mínimo</td><td>2</td><td>2GB</td><td>25GB SSD</td></tr><tr><td>recomendado</td><td>4</td><td>4GB</td><td>50GB SSD</td></tr><tr><td>durante grandes editais</td><td>6</td><td>6GB</td><td>50GB SSD</td></tr></tbody></table>

### Instalações de médio porte (entre 2.000 e 10.000 usuários ativos)

<table><thead><tr><th> </th><th width="150">CPUs</th><th width="150">RAM</th><th>Armazenamento</th></tr></thead><tbody><tr><td>mínimo</td><td>4</td><td>4GB</td><td>50GB SSD</td></tr><tr><td>recomendado</td><td>6</td><td>6GB</td><td>75GB SSD</td></tr><tr><td>durante grandes editais</td><td>8</td><td>8GB</td><td>75GB SSD</td></tr></tbody></table>

### Instalações de grante porte (acima de 10.000 usuários ativos)

<table><thead><tr><th> </th><th width="150">CPUs</th><th width="150">RAM</th><th>Armazenamento</th></tr></thead><tbody><tr><td>mínimo</td><td>6</td><td>6GB</td><td>150GB SSD</td></tr><tr><td>recomendado</td><td>8</td><td>8GB</td><td>250GB SSD</td></tr><tr><td>durante grandes editais</td><td>16</td><td>16GB</td><td>250GB SSD</td></tr></tbody></table>

Vale lembrar que os requisitos de hardware podem variar de acordo com a latência da rede, velocidade dos cores dos cpus, uso de proxies, entre outros fatores. Recomendamos aos sysadmin da rede em que a aplicação será instalada um monitoramento de tráfego e uso durante o período de 6 meses a 1 ano para avaliação de cenário de uso. 

## Instalação do Mapa Cultural

A maneira mais simples e segura para instalar o Mapas Cultural é utilizando Docker e o Docker Composer para rodar a aplicação, facilitando os processos de deploy e de atualizaçao.

### Clonar o Repositório

Clone o repositório usando SSH ou HTTPS:


```
git clone git@github.com:secultce/mapa-producao.git mapacultural
```

ou 

```
git clone https://github.com/secultce/mapa-producao.git mapacultural
```

### Navegar para o diretório do projeto

Mude para o diretorio do projeto:

```
cd mapacultural
```

### Criação do arquivo .env

Crie o arquivo .env baseado no .env.example incluído nesse repositório:

```
mv .env.example .env
```

#### Inicar os containers docker

Execute o docker compose para iniciar os contêiners:

```
docker compose up -d
```

Caso seja necessário, utilize o docker compose logs para ver os logs da aplicação:

```
docker compose logs -f
```

Para para a execução dos containers execute:

```
docker compose down
```



## Uso

Depois de ter executado os containers, você pode acessar sua instância do mapa cultural em http://localhost:8080.

### Usuário padrão

Usuário para primeiro acesso

<table>
<tr>
<th>email</th>
<th>senha</th>
</tr>
<tr>
<td>Admin@local</td>
<td>mapas123</td>
</tr>

