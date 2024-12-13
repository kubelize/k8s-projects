# Fetch the public key from the sealed-secrets controller
kubeseal --fetch-cert --controller-namespace=sealed-secrets > /home/dan/Git/kubelize/kube-projects/environments/home-mck/inventory/secrets/sealed-secrets/pub-home-mck-sealed-secrets.pem

# minecraft rcon password
kubeseal --format=yaml \
  --cert=/home/dan/Git/kubelize/kube-builder/apps/addons/sealed-secrets/home-mck/pub-home-mck-sealed-secrets.pem \
  --secret-file /home/dan/Git/kubelize/kube-projects/base/stable/gameservers/minecraft-vanilla/secret.yaml \
  --sealed-secret-file /home/dan/Git/kubelize/kube-projects/base/stable/gameservers/minecraft-vanilla/minecraft-rcon-password.yaml

# curseforge-api-key
kubeseal --format=yaml \
  --cert=/home/dan/Git/kubelize/kube-builder/apps/addons/sealed-secrets/home-dhe/pub-home-dhe-sealed-secrets.pem \
  --secret-file /home/dan/Git/kubelize/kube-projects/environments/home-dhe/inventory/secrets/secret.yaml \
  --sealed-secret-file /home/dan/Git/kubelize/kube-projects/environments/home-mck/inventory/secrets/cf-api-token.yaml