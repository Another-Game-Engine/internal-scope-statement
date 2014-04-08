# Scene Editor

## 3D space

Different view :
- Up / Bottom
- Left / Right
- Back / Front

View from different cameras

Different 3D space activated ( ex :  camera free fly + view form camera 1)

On peut ouvrir differentes vue en meme temps (vue de camera free fly et vue d'entity disposant d'une camera)
J'appelerais le entity disposant d'une camera, des "cameras inGame".

Il doit etre possible d'etiter le monde a travers une camera in game

Lors de l'edition du monde a travers la camera in game, les transformation appliquees a la camera seront sauvegradee

## Entity transform

Gizmo integration for :
- Rotation
- Translation

Property panel for :
- Rotation
- Scale (XYZ + total)
- Translation

## Entity selection

Click on entity for seleciton. Different possibility :
- Pixel perfect selection (draw color on framebuffer) // <<-- M'a l'air le plus simple a faire
- Raycasting with bullet (a rigid body for each object)

Il doit etre possible de selectionner plusieurs entites.
Dans ce cas la, un gizmo apparait au centre du groupe pour permettre d'effectuer des rotations et translation de groupe

Il faut aussi proposer une liste des entites dans une arborescene
Les entites pourront etre nommees pour simplifier l'utilisation
Les entites pourront etre drag and droppee

## Entity modification

Possibilite d'ajouter des entites

Possibilite d'ajouter des components aux entites

Possibiblie d'editer les valeurs des attributes de components de l'entite

Possibilite d'editer les tags des entites

Possibilite de locker des entites pour ne plus les modifier

## Prefabs

Un prefab est une entite pre configuree ou une collection d'entite

Je me demande si, dans le cas ou c'est un collection d'entite, on utilise une entite root pour les regrouper.
Comme ca on est assure que dans le graph node la position des objets reste relative au groupe

## Scene modification

Douloureux a implementer mais surement necessaire



## Cameras

Camera control panel :
- FOV
- etc etc

Camera display :
Cameras have to be visible in the 3D space. Their "FOV" have to be visible to.

Camera control :
Bind mouse and keyboard on cameras

## Shaders and display

L'editeur de scene va avoir besoin de different shader et effet

- Un shader grille, pour afficher une grille de reference a l'horizonal
- Un shader de surbrillance pour designer les entites selectionnee ou hover

## Sauvegarde et export

Deux formats de sortie et d'entree sont disponible

Un format de sauvegarde :
- En .json
- Les scene sont sauvegardee dans ce format lors de l'edition
- Elles peuvent aussi etre loader par l'editeur en ce format
- L'engine pourra aussi les loader en ce format (fast path), ce qui permettra au game designer de tester son jeu sans avoir besoin de baker la scene

Un format d'export
- Format binaire
- Il est possible de laoder des scene dans l'editeur a partir de format d'export
- Il est possible de baker un json en format d'export
- Il est possible de sauvegarder une scene en format d'export