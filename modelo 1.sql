create database biblioteca;

use biblioteca;


	create table livro(
		pk int not null auto_increment, primary key(pk),
		nome varchar(45),
		ISBN varchar(255)
);
	
	create table emprestimo(
		pk int not null auto_increment, primary key(pk),
		data_emprestimo varchar(45),
		data_devolucao varchar(45),
		livro_fk  int not null, foreign key (livro_fk) references livro (pk),
        aluno_fk int not null, foreign key (aluno_fk) references aluno (pk)
);

	create table aluno(
		pk int not null auto_increment, primary key(pk),
		nome varchar(45),
		cgm varchar(255)
);


select * from livro;

insert into livro (pk, nome, ISBN) values (1, "palo a inocência do amor verdadeiro", "1002475");

insert into livro (pk, nome, ISBN) values (2, "orgulho e preconceito", "1008765");

insert into livro (pk, nome, ISBN) values (3, "pequeno principe", "1008795");

insert into livro (pk, nome, ISBN) values (pk, "pequeno principe", "1009865");

select pk, data_devolucao from emprestimo where pk = 2;

select * from aluno;

update livro set ISBN = "1008765" where pk = 2;

