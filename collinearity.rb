def checkCollinearity (px, py, qx, qy, rx, ry)
  x = (rx - px) * (ry - qy)
  y = (rx - qx) * (ry - py)
  return x == y
end