<?php

namespace App\Entity;

use App\Repository\CommandeRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: CommandeRepository::class)]
class Commande
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private $id;

    #[ORM\Column(type: 'float')]
    private $montant_HT;

    #[ORM\Column(type: 'float')]
    private $montant_TTC;

    #[ORM\Column(type: 'datetime')]
    private $date_creation;

    #[ORM\Column(type: 'string', length: 50)]
    private $mode_paiement;

    #[ORM\Column(type: 'datetime', nullable: true)]
    private $date_livraison;

    #[ORM\Column(type: 'float')]
    private $frais_livraison;

    #[ORM\ManyToOne(targetEntity: User::class, inversedBy: 'commandes')]
    #[ORM\JoinColumn(nullable: false)]
    private $user;

    #[ORM\ManyToOne(targetEntity: Concerner::class, inversedBy: 'commande')]
    #[ORM\JoinColumn(nullable: false)]
    private $concerner;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getMontantHT(): ?float
    {
        return $this->montant_HT;
    }

    public function setMontantHT(float $montant_HT): self
    {
        $this->montant_HT = $montant_HT;

        return $this;
    }

    public function getMontantTTC(): ?float
    {
        return $this->montant_TTC;
    }

    public function setMontantTTC(float $montant_TTC): self
    {
        $this->montant_TTC = $montant_TTC;

        return $this;
    }

    public function getDateCreation(): ?\DateTimeInterface
    {
        return $this->date_creation;
    }

    public function setDateCreation(\DateTimeInterface $date_creation): self
    {
        $this->date_creation = $date_creation;

        return $this;
    }

    public function getModePaiement(): ?string
    {
        return $this->mode_paiement;
    }

    public function setModePaiement(string $mode_paiement): self
    {
        $this->mode_paiement = $mode_paiement;

        return $this;
    }

    public function getDateLivraison(): ?\DateTimeInterface
    {
        return $this->date_livraison;
    }

    public function setDateLivraison(?\DateTimeInterface $date_livraison): self
    {
        $this->date_livraison = $date_livraison;

        return $this;
    }

    public function getFraisLivraison(): ?float
    {
        return $this->frais_livraison;
    }

    public function setFraisLivraison(float $frais_livraison): self
    {
        $this->frais_livraison = $frais_livraison;

        return $this;
    }

    public function getUser(): ?User
    {
        return $this->user;
    }

    public function setUser(?User $user): self
    {
        $this->user = $user;

        return $this;
    }

    public function getConcerner(): ?Concerner
    {
        return $this->concerner;
    }

    public function setConcerner(?Concerner $concerner): self
    {
        $this->concerner = $concerner;

        return $this;
    }
}
