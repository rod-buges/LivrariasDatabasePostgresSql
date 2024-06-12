create table categoria (
	id serial primary key,
	nome varchar (60) not null
)

select * from categoria

create table editora (
	id serial primary key,
	nome varchar(60) not null 
)

select * from editora

create table autor (
	id serial primary key,
	nome varchar(120) not null,
	nacionalidade varchar (60)
)

select * from autor

create table livro (
	ISBN varchar(22) primary key,
	titulo varchar (100) not null,
	ano_publicacao integer not null,
	fk_editora integer,
	fk_categoria integer,
	foreign key (fk_editora) references editora(id),
	foreign key (fk_categoria) references categoria(id)
)

select * from livro

create table livroautor (
	id serial primary key,
	fk_livro varchar(22),
	fk_autor integer,
	foreign key (fk_livro) references livro(isbn),
	foreign key (fk_autor) references autor(id)
)

select * from livroautor

INSERT INTO editora (nome) values ('Rocco'), ('Wmf Martins Fontes'), ('Casa da Palavra'), ('Belas Letras'), ('Matrix');
select * from editora

INSERT INTO autor (nome, nacionalidade) values ('J. K. Rowling', 'Inglaterra');
INSERT INTO autor (nome, nacionalidade) values ('Clive Staples Lewis', 'Inglaterra');
INSERT INTO autor (nome, nacionalidade) values ('Affonso Solano', 'Brasil');
INSERT INTO autor (nome, nacionalidade) values ('Marcos Piangers', 'Brasil');
INSERT INTO autor (nome, nacionalidade) values ('Ciro Botelho - Tiririca', 'Brasil');
INSERT INTO autor (nome, nacionalidade) values ('Bianca Mól', 'Brasil');
select * from autor;

INSERT INTO categoria (nome) values ('Literatura Juvenil'), ('Ficção Científica'), ('Humor');
select * from categoria;

INSERT INTO livro (ISBN, titulo, ano_publicacao, fk_editora, fk_categoria) values ('8532511015', 'Harry Potter e A Pedra Filosofal', 2000, 1, 1)
INSERT INTO livro (ISBN, titulo, ano_publicacao, fk_editora, fk_categoria) values ('9788578270698', 'As Crônicas de Nárnia', 2009, 2, 1)
INSERT INTO livro (ISBN, titulo, ano_publicacao, fk_editora, fk_categoria) values ('9788577343348', 'O Espadachim de Carvão', 2013, 3, 2)
INSERT INTO livro (ISBN, titulo, ano_publicacao, fk_editora, fk_categoria) values ('9788581742458', 'O Papai É Pop', 2015, 4, 3)
INSERT INTO livro (ISBN, titulo, ano_publicacao, fk_editora, fk_categoria) values ('9788582302026', 'Pior Que Tá Não Fica', 2015, 5, 3)
INSERT INTO livro (ISBN, titulo, ano_publicacao, fk_editora, fk_categoria) values ('9788577345670', 'Garota Desdobrável', 2015, 3, 1)
INSERT INTO livro (ISBN, titulo, ano_publicacao, fk_editora, fk_categoria) values ('8532512062', 'Harry Potter e o
prisioneiro de Azkaban', 2000, 1, 1)
	
select * from livro

select * from livroautor

INSERT INTO livroautor (fk_livro, fk_autor) values ('8532511015' , 1);
INSERT INTO livroautor (fk_livro, fk_autor) values ('9788578270698' , 2);
INSERT INTO livroautor (fk_livro, fk_autor) values ('9788577343348' , 3);
INSERT INTO livroautor (fk_livro, fk_autor) values ('9788581742458' , 4);
INSERT INTO livroautor (fk_livro, fk_autor) values ('9788582302026' , 5);
INSERT INTO livroautor (fk_livro, fk_autor) values ('9788577345670' , 6);
INSERT INTO livroautor (fk_livro, fk_autor) values ('8532512062' , 1);

delete from livroautor

select * from livro

select * from livroautor



