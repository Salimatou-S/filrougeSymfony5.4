<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220503225942 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE commente (id INT AUTO_INCREMENT NOT NULL, contenu VARCHAR(100) DEFAULT NULL, date_commentaire DATETIME DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE produit ADD commente_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE produit ADD CONSTRAINT FK_29A5EC2716459DC5 FOREIGN KEY (commente_id) REFERENCES commente (id)');
        $this->addSql('CREATE INDEX IDX_29A5EC2716459DC5 ON produit (commente_id)');
        $this->addSql('ALTER TABLE user ADD commente_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE user ADD CONSTRAINT FK_8D93D64916459DC5 FOREIGN KEY (commente_id) REFERENCES commente (id)');
        $this->addSql('CREATE INDEX IDX_8D93D64916459DC5 ON user (commente_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE produit DROP FOREIGN KEY FK_29A5EC2716459DC5');
        $this->addSql('ALTER TABLE user DROP FOREIGN KEY FK_8D93D64916459DC5');
        $this->addSql('DROP TABLE commente');
        $this->addSql('DROP INDEX IDX_29A5EC2716459DC5 ON produit');
        $this->addSql('ALTER TABLE produit DROP commente_id');
        $this->addSql('DROP INDEX IDX_8D93D64916459DC5 ON user');
        $this->addSql('ALTER TABLE user DROP commente_id');
    }
}
