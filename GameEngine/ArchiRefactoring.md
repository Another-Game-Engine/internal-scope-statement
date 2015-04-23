#refactor architecture

Voila un petit doc pour y poser toutes vos idées de refactoring d'architecture. Si vous vouhaitez ouvrir un topic, il vous suffit seulement de crée un nouveau titre et d'y soumettre vos idées. N'oublié pas de mettre votre nom. voilou :)

##Exemple

DODO :
- idee 1
- idee 2

POLO:
- idee 1
- idee 2

## Refactor sémantique dans le prepare render thread

Dorian:
* Pour les noms de component je pense que l'on devrait procéder comme suivant : Nom1Component, Nom2Component. En plus de cela on rajouterai un namespace Cmpt.
**code**
<code>
namespace cmpt
{

  class PointLightComponent
  {
  };

}

cmpt::PointLightComponent l;
</code>

* Pour les component cullables, c'est à dire qui doivent passer au travers du render thread : Nom1Cullable, Nom2Cullable.
Dans un namespace cull
**code**
<code>
namespace cull
{

  class PointLightCullable : Cullable<Sphere>
  {

  };

}

cull::PointLightCullable p;
</code>

## Refactor sur les message entre les threads

Dorian:
* Pour les component, Interdiction d'avoir plus d'un argument par message, si jamais plusieur info doivent transiter faire un objet: Nom1Data, Nom2Data servent à se tranfère. Toujours dans le namespace cmpt
**code**
`
  namespace cmpt
  {
    class SpotLightComponent
    {

    };

    class SpotLightData
    {

    };
  }

  struct SetSpotLightMessage
  {
    SetSpotLightMessage(SpotLightData const &);
    SpotLightData data;
  };
`
* Peut etre mettre tous les messages entre thread dans un namespace genre msg ?
