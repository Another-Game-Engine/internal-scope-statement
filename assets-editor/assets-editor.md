# Assets Manager

## Description

- L'asset manager permet de convertir les assets en format binaire lisible par AGE
- L'asset manager propose la creation et l'edition de certain type d'assets
- L'asset manager propose une interface graphique en QT

## Formats d'entree

- Textures
	- tga
	- png
	- jpg
	- pkm
- Mesh
	- Obj
	- Collada
	- Fbx
- Material
	- mtl
	- fbx
	- collada
- Fonts
	- ttf
- Rigid body
	- Concave
	- Convex
	- Groups

## Formats de sortie

- Textures
	- Texture (.tage, compressées, non compressées, cube maps et textures 3D)
- Mesh
	- Mesh (.sage)
	- Skeleton (.skage)
	- Animation (.aage)
- Material
	- Material (.mage)
- Fonts
	- Charset (.fage)
- Rigid body
	- Concave (.phage)
	- Convex (.phage)
	- Dynamic / Static (.phage)
	- Groups (.phgage)

## Data types

### Textures

Voici liste ci dessous les informations contenu dans le fichier serialize.
Au moment du load, les informations inutiles seront liberee en memoire :
- Binary pixel data

#### Texture (.tage)

- Width
- Height
- Compression ? (la texture est compressée ou non)
- Color type (rgb, rgba, 8, 16, 32, etc)
- Layer Nbr (6 pour les cube maps, correspond à la depth pour les textures 3d)
- Layer byte size (tous les layers ont la même taille)
- MipMaps Nbr (si il y a des mipmaps précalculées)
- Binary pixel data

### Meshs

Les skeletons et animations seront a definir plus precisemment au fil du developpement.

Concernant le mesh simples (statiques, type .obj). Il faut garder en tete que ces derniers doivent pouvoir contenir des geopmetries composees (plusieurs sub-mesh).
De plus ces assets doivent pouvoir contenir des infos de material par defaut.

#### Mesh (.sage)

- Bounding box
	- Width
	- Height
	- Depth
- Bounding sphere
	- Radius
- Center
- Vertices[]
	- Colors
	- Positions
	- Normals
	- Binormals
	- ... (autres informations supplementaires si presentent dans l'asset natif)
- Name
- Shapes[]
	- Indices[]
	- Name
	- Bounding box
	- Bounding sphere
	- Offset
	- Center
	- Material (path name)

// Ces sections sont a remplir
#### Skeleton
#### Animation

### Materials

- diffuse color
- ambiant color
- specular color
- diffuse ratio
- ambiant ratio
- specular ratio
- normal map ratio
- reflection map ratio
- transparence ratio
- NormalMap
- ReflectionMap
- brillance ratio
- emissive ratio

### Fonts

- Sizes[]
	- Size (int32)
	- Uvs[vec2] // based on ASCII table
	- TexturePath
- HasChar[bool] // tableau de boolean indiquant si la font contient ou non le character
