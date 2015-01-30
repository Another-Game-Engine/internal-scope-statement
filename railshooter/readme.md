### Simple rail shooter projet

#### Présentation

Un jeu type rail shooter sans rails :)

Une scene avec des elements de decors.

Vue a la premiere personne.

Des ennemis spawn dans la scene. Se mettent a l'abris derriere les element des de decor, en sorte pour nous tirer dessus.

Nous clickons sur les ennemis pour viser et tirer.

Nous pouvons avec la barre espace nous mettre a l'abri et recharger notre pistolet.

Lorsqu'un projectile ennemi nous touche nous perdons de la vie.

Lorsqu'un de nos projectile touche un ennemi, il meurt.

Lorsque nous n'avons plus de vie, la partie est finie.

### Objectifs

Eprouver le moteur et motiver les troupes.

Un des objectifs est d'essayer de garder le code le moins hacké possible (meme si il y aura necessairement des hacks, les rendre le plus temporaire possible)

Ce projet peut amener a developper un world editor. Ca n'est pas la premiere priorite. Il faut penser un editeur dans un premier temps propre au jeu, pour ensuite essayer de se diriger vers un editeur generique pour le moteur.

Le jeu devra tourner a 60fps minimum en 1220x620 sur des ordis tels que ceux de Paul Dorian Cesar, et 30fps sur celui d'Epitech.
En 1920x1080 il est interdit de descendre en dessous de 30fps sur les ordis modernes.

### Phases de developpement

#### I

- Scene composées de mesh simples (cubes)
- Ennemis non animés, utilisant un mesh simple
- Projectiles ennemis -> player
- Projectiles player -> ennemis
- 5 projectiles par chargeur, touche espace pour recharger pistolet
- Les ennemis disparaissent en mourant
- Le joueur perd de la vie lorsque touche (decrementation d'une variable)
- Point lights - no shadows

#### II

- Le joueur se cache pour recharger, il n'est alors plus impacté par les projectiles. Lorsque le joueur se cache, interpolation.
- Mise en place d'un decor static (http://archive3d.net/)
- Ajout d'elements dynamiques physiqués

### III

- Les ennemis sont animés (on utilise les animations que l'on trouve sur internet)
- Une main armée suit le mouvement de la souris
- Effets de lumiere lorsque l'on tire
- Spotlights - shadows

### IV

- Ragdolls lorsqu'un ennemi meurt

### V

- Decals lorsque l'on tire sur des objets (une propriete Decals peut etre attachée aux objets, decrivant la texture a utiliser)

### VI

- Ajout d'objets semi-transparent dans la scene.

### VII

- Particules lorsque l'on tire, a l'impacte ...
- Integration du son

### VIII

- GUI
- Sons

### IX

- Ajout d'element de gameplay :
    - Bonus (il faut tirer dessus)
    - Otage a ne pas tuer
    - Nouveau type d'arme

### X

- Elements breakeable

-------------------------------------------------

### Liste des components

- Rigidbody
- Pistol
- Bullet
- Player
- Life
- Mesh
- Camera




