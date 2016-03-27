//
//  PokeCellCollectionViewCell.swift
//  pokedex
//
//  Created by Zoey  Sun on 3/25/16.
//  Copyright © 2016 Zoey  Sun. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon:Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
        // each view has its own layer
        layer.cornerRadius = 5.0
    }
    
    func configureCell(pokemon:Pokemon){
        self.pokemon = pokemon
        nameLbl.text = self.pokemon.name.capitalizedString
        thumImg.image = UIImage(named:"\(self.pokemon.pokedexId)")
    }
    
}
