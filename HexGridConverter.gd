func hexToCartesian(hexCoord: Vector3, point1_1: Vector2) -> Vector2:
    Cartesian_x = (hexCoord.x - hexCoord.y) / 2
    Cartesian_y = -1 * point1_1.y * hexCoord.z
    return Vector2(Cartesian_x, Cartesian_y)

func hexToGrid(hexCoord: Vector3) -> Vector2:
    gridCoord_x = hexCoord.x - hexCoord.y
    gridCoord_y = -1 * hexCoord.z
    return Vector2(gridCoord_x, gridCoord_y)

func gridToHex(gridCoord: Vector2) -> Vector3:
    hexCoord_x = (gridCoord.x + gridCoord.y) / 2
    hexCoord_y = (gridCoord.y - gridCoord.x) / 2
    hexCoord_z = -1 * gridCoord.y
    return Vector3(hexCoord_x, hexCoord_y, hexCoord_z)

func gridTo2D_Array(gridCoord: Vector2, originPoint: Array[int]) -> Array[int]:
    array_y = originPoint[1] - gridCoord.y
    if int(gridCoord.x) % 2 == 0:
        array_x = originPoint[0] + (gridCoord.x / 2)
    else:
        array_x = originPoint[0] + ((gridCoord.x + 1) / 2)
    return [int(array_x), int(array_y)]
