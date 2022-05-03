<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220503231035 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE concerner (id INT AUTO_INCREMENT NOT NULL, quantite INT DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE commande ADD concerner_id INT NOT NULL');
        $this->addSql('ALTER TABLE commande ADD CONSTRAINT FK_6EEAA67D95131E34 FOREIGN KEY (concerner_id) REFERENCES concerner (id)');
        $this->addSql('CREATE INDEX IDX_6EEAA67D95131E34 ON commande (concerner_id)');
        $this->addSql('ALTER TABLE produit ADD concerner_id INT NOT NULL');
        $this->addSql('ALTER TABLE produit ADD CONSTRAINT FK_29A5EC2795131E34 FOREIGN KEY (concerner_id) REFERENCES concerner (id)');
        $this->addSql('CREATE INDEX IDX_29A5EC2795131E34 ON produit (concerner_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE commande DROP FOREIGN KEY FK_6EEAA67D95131E34');
        $this->addSql('ALTER TABLE produit DROP FOREIGN KEY FK_29A5EC2795131E34');
        $this->addSql('DROP TABLE concerner');
        $this->addSql('DROP INDEX IDX_6EEAA67D95131E34 ON commande');
        $this->addSql('ALTER TABLE commande DROP concerner_id');
        $this->addSql('DROP INDEX IDX_29A5EC2795131E34 ON produit');
        $this->addSql('ALTER TABLE produit DROP concerner_id');
    }
}
