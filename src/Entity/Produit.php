<?php

namespace App\Entity;

use App\Repository\ProduitRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: ProduitRepository::class)]
class Produit
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private $id;

    #[ORM\Column(type: 'string', length: 100)]
    private $nom_produit;

    #[ORM\Column(type: 'string', length: 100)]
    private $description;

    #[ORM\Column(type: 'integer')]
    private $taille;

    #[ORM\Column(type: 'integer')]
    private $stock;

    #[ORM\Column(type: 'integer')]
    private $prix_unitaire_HT;

    #[ORM\Column(type: 'string', length: 255, nullable: true)]
    private $url_image;

    #[ORM\ManyToOne(targetEntity: Categorie::class, inversedBy: 'produits')]
    #[ORM\JoinColumn(nullable: false)]
    private $categorie;

    #[ORM\ManyToOne(targetEntity: Fournisseur::class, inversedBy: 'produits')]
    #[ORM\JoinColumn(nullable: false)]
    private $fournisseur;

    #[ORM\ManyToOne(targetEntity: Commente::class, inversedBy: 'produit')]
    private $commente;

    #[ORM\ManyToOne(targetEntity: Concerner::class, inversedBy: 'produit')]
    #[ORM\JoinColumn(nullable: false)]
    private $concerner;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNomProduit(): ?string
    {
        return $this->nom_produit;
    }

    public function setNomProduit(string $nom_produit): self
    {
        $this->nom_produit = $nom_produit;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getTaille(): ?int
    {
        return $this->taille;
    }

    public function setTaille(int $taille): self
    {
        $this->taille = $taille;

        return $this;
    }

    public function getStock(): ?int
    {
        return $this->stock;
    }

    public function setStock(int $stock): self
    {
        $this->stock = $stock;

        return $this;
    }

    public function getPrixUnitaireHT(): ?int
    {
        return $this->prix_unitaire_HT;
    }

    public function setPrixUnitaireHT(int $prix_unitaire_HT): self
    {
        $this->prix_unitaire_HT = $prix_unitaire_HT;

        return $this;
    }

    public function getUrlImage(): ?string
    {
        return $this->url_image;
    }

    public function setUrlImage(?string $url_image): self
    {
        $this->url_image = $url_image;

        return $this;
    }

    public function getCategorie(): ?Categorie
    {
        return $this->categorie;
    }

    public function setCategorie(?Categorie $categorie): self
    {
        $this->categorie = $categorie;

        return $this;
    }

    public function getFournisseur(): ?Fournisseur
    {
        return $this->fournisseur;
    }

    public function setFournisseur(?Fournisseur $fournisseur): self
    {
        $this->fournisseur = $fournisseur;

        return $this;
    }

    public function getCommente(): ?Commente
    {
        return $this->commente;
    }

    public function setCommente(?Commente $commente): self
    {
        $this->commente = $commente;

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
