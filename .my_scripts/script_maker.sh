#!/usr/local/bin/bash

echo '#!/usr/bin/env python' | cat - $1 > temp && mv temp $1
sudo chmod +x $1
