# Fetch the public key from the sealed-secrets controller
kubeseal --fetch-cert --controller-namespace=sealed-secrets > /home/dan/Git/kubelize/kube-projects/environments/home-dhe/inventory/secrets/sealed-secrets/pub-home-dhe-sealed-secrets.pem

# minecraft rcon password
kubeseal --format=yaml \
  --cert=/home/dan/Git/kubelize/kube-builder/apps/addons/sealed-secrets/home-dhe/pub-home-dhe-sealed-secrets.pem \
  --secret-file /home/dan/Git/kubelize/kube-projects/environments/home-dhe/inventory/secrets/secret-minecraft-rcon.yaml \
  --sealed-secret-file /home/dan/Git/kubelize/kube-projects/environments/home-dhe/inventory/secrets/minecraft-rcon-password.yaml

# curseforge-api-key
kubeseal --format=yaml \
  --cert=/home/dan/Git/kubelize/kube-builder/apps/addons/sealed-secrets/home-dhe/pub-home-dhe-sealed-secrets.pem \
  --secret-file /home/dan/Git/kubelize/kube-projects/environments/home-dhe/inventory/secrets/secret.yaml \
  --sealed-secret-file /home/dan/Git/kubelize/kube-projects/environments/home-dhe/inventory/secrets/cf-api-token.yaml