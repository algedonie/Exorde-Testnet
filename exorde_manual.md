# Sunucu güncelleyip docker yükleyin.

```
sudo apt update && sudo apt upgrade -y
```
```
sudo apt install docker.io -y
```
```
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
```
```
sudo apt install screen -y
```

# Binary dosyalarını çekin.

```
git clone https://github.com/exorde-labs/ExordeModuleCLI.git
```
```
cd ExordeModuleCLI
```
```
docker build -t exorde-cli .
```

# Screen açıp run'layın. `<METAMASKWALLET>` kısmını testnetler için kullandığınız metamask adresiyle değiştirmeyi unutmayın.

```
screen -S Exorde
```
```
docker run -it exorde-cli -m <METAMASKWALLET> -l 2
```
