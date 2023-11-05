# Execução dos Testes

Os testes foram divididos em duas partes. A primeira parte é referente ao desempenho bruto da máquina, ou seja, processador e memória e a segunda parte é referente ao desempenho especifico da máquina, ou seja, em aplicações relacionadas ao desenvolvimento de software.

## Execução dos Testes de Desempneho Bruto

Para o desempenho bruto foram utilizadas as ferramentas Geekbench e Passmark para medir

### Geekbench

#### Para Windows

Primeiramente é necessário baixar o software através do [link](https://www.geekbench.com/download/)

Após baixar o software basta realizar a instalação dele seguindo as instruções do instalador.

Depois basta abrir o software e rodar os testes: Run CPU Benchmark e anotar os resultados.

#### Para Linux

Primeiramente é necessário baixar o software através do [link](https://www.geekbench.com/download/)


Você pode utilizar o comando wget para baixar o software e depois usar o tar para descompactar ele como no exemplo abaixo:

```bash
wget https://cdn.geekbench.com/Geekbench-6.2.1-Linux.tar.gz
tar xvzf Geekbench-6.2.1-Linux.tar.gz
```

Depois bastar acessar a pasta extraída do zip e executar o Geekbench como no exemplo abaixo:

```bash
chmod +x Geekbench-6.2.1-Linux/geekbench6
Geekbench-6.2.1-Linux/geekbench6
```

### Passmark

#### Para Windows

Primeiramente é necessário baixar o software através do [link](https://www.passmark.com/products/performancetest/download.php)

Após baixar o software basta realizar a instalação dele seguindo as instruções do instalador.

Depois basta abrir o software e rodar os testes: CPU MARK e MEMORY MARK e anotar os resultados.

#### Para Linux

Primeiramente é necessário baixar o software através do [link](https://www.passmark.com/products/pt_linux/download.php)

Você pode utilizar o comando wget para baixar o software e depois usar o unzip para descompactar ele como no exemplo abaixo:

```bash
wget https://www.passmark.com/downloads/pt_linux_x64.zip
unzip pt_linux_x64.zip
```

Depois bastar acessar a pasta extraída do zip e executar o Passmark escolhendo a opção "A" como no exemplo abaixo:

```bash
chmod +x PerformanceTest/pt_linux_x64
PerformanceTest/pt_linux_x64
```

## Execução dos Testes de Desempenho Específico

Para o desempenho específico foram realizadas simulações de desenvolvimento testando o tempo execução de um frontend com Vue.js e javascript em modo dev, o tempo para realizar build desse forntend, o tempo para realizar o build e depois executar um container docker relacionado ao desenvolvimento e por último, o tempo para realizar build de um container docker do projeto Shinobi-CCTV.

### Execução Frontend em Modo Dev

Primeiramente você irá clonar o repositório do frontend do projeto.

Depois você rá acessar o diretório do repositório e executar o frontend em modo dev com os seguintes comandos (cronometrando o tempo do segundo comando):

```bash
yarn install
yarn dev
```

### Build do Frontend

Primeiramente você irá clonar o repositório do frontend do projeto.

Depois você irá acessar o diretório do repositório e executar o build do frontend com os seguintes comandos (cronometrando o tempo do segundo comando):

```bash
yarn install
time yarn build
```

### Build do Container Docker do Projeto

Primeiramente você irá clonar o repositório do backend do projeto.

Depois você irá acessar o diretório do repositório e executar o build do backend com o seguinte comando, cronometrando o tempo:

```bash
time docker build -t my_backend .
```

### Execução do Container Docker do Projeto

Primeiramente você irá clonar o repositório do backend do projeto.  

Depois você irá acessar o diretório do repositório e executar o backend com o seguinte comando, cronometrando o tempo:

```bash
time docker compose up -d
```

### Build do Container Docker do Projeto Shinobi-CCTV

Primeiramente você irá clonar o repositório do Shinobi-CCTV com o seguinte comando:

```bash
git clone https://gitlab.com/Shinobi-Systems/Shinobi.git
```

Depois você irá acessar o diretório do repositório e executar o build da imagem de container docker cronometrando o tempo para realizar o build com o seguinte comando:

```bash
cd Shinobi
time docker build -t my_shinobi .
```

## Referências
