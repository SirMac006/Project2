import { PokemonTCG } from 'pokemon-tcg-sdk-typescript';

PokemonTCG.findCardByID('xy7-54')
  .then(card => {
    // do stuff with the cards
    console.log(card);
  })
  .catch(error => {
    // do something with the error
    console.error(error);
});
