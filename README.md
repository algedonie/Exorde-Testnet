<h1 align="center">Exorde Testneti Kurulum Rehberi

## Exorde Testnetine katılım rehberi. Sağ üstten yıldızlayıp forklamayı unutmayalım. Sorularınız olursa: [LossNode Chat](https://t.me/LossNode)

## Exorde Türkiye Telegram: https://t.me/ExordeTurkish

![image](https://user-images.githubusercontent.com/101462877/201366264-ee389469-9a0d-423f-8c7f-636237afeff0.png)

## Sistem gereksinimleri:
NODE TİPİ | CPU     | RAM      | SSD     |
| ------------- | ------------- | ------------- | -------- |
| Testnet | 2         | 4         | 20  |

## Exorde için önemli linkler:
- [Website](https://exorde.network/)
- [Explorer](https://explorer.exorde.network/leaderboard)
- [Twitter](https://twitter.com/ExordeLabs)
- [Discord](https://discord.gg/zHSTc2FmfK)

# 1a) Script ile kurulum.

```
wget -O exorde.sh https://raw.githubusercontent.com/thisislexar/Exorde-Testnet/main/exorde.sh && chmod +x exorde.sh && ./exorde.sh
```

# 1b) Manuel kurulum.

Node bilginizi geliştirmek adına dilerseniz [Manuel Kurulum](https://github.com/thisislexar/Exorde-Testnet/blob/main/exorde_manual.md) da yapabilirsiniz.

# 2) Devam.


```
nano localConfig.json
```

## Bu kısımda okla gösterdiğim kısım `1.3.4a` değilse ok tuşlarıyla aşağı inerek onu `1.3.4a` yapın. Ardından `CTRL + X`, `Y`, `Enter` basın.
 
![image](https://user-images.githubusercontent.com/101462877/204386606-caddb445-58d1-4e61-bbe4-f5d94102f3c9.png)

## Devam ediyoruz.

```
docker build -t exorde-cli .
```
```
docker run -d --restart unless-stopped --pull always --name exorde-cli rg.fr-par.scw.cloud/exorde-labs/exorde-cli -m $METAMASKWALLET -l 4
```
```
docker run -it exorde-cli -m $METAMASKWALLET -l 2
```


![image](https://user-images.githubusercontent.com/101462877/204386184-58f86374-ee96-40eb-9e2c-efae419ecba5.png)


# Node silmek için:

```
sudo  docker stop Exorde &&  sudo  docker  rm Exorde
sudo  rm -rf ExordeModuleCLI
``` 
