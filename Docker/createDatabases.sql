CREATE SCHEMA `my_database` DEFAULT CHARACTER SET latin1;

CREATE TABLE `my_database`.`foo_bar`(
    `id` INT NOT NULL,
    `nome` VARCHAR(45) NOT NULL,
    `login` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `login_UNIQUE` (`login` ASC),
);