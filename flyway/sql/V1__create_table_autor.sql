CREATE TABLE autor
(
   id     integer        NOT NULL PRIMARY KEY,
   nome   varchar(150)   NOT NULL,
   ativo  boolean
);

CREATE TABLE editora
(
   id     integer        NOT NULL PRIMARY KEY, 
   nome   varchar(150)   NOT NULL
);

CREATE TABLE leitor
(
   id        integer        NOT NULL PRIMARY KEY,
   nome      varchar(150)   NOT NULL,
   telefone  varchar(20),
   email     varchar(100)
);

CREATE TABLE livro
(
   id              integer        NOT NULL PRIMARY KEY,
   titulo          varchar(200)   NOT NULL,
   edicao          integer,
   ano_publicacao  integer,
   id_autor        integer,
   id_editora      integer
);

ALTER TABLE livro
  ADD CONSTRAINT fk_livro_autor FOREIGN KEY (id_autor)
  REFERENCES autor (id)
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
  DEFERRABLE INITIALLY DEFERRED;

ALTER TABLE livro
  ADD CONSTRAINT fk_livro_editora FOREIGN KEY (id_editora)
  REFERENCES editora (id)
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
  DEFERRABLE INITIALLY DEFERRED;