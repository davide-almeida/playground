# Install dotnet 8

1 - Add and install package

```bash
wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
```

```bash
sudo dpkg -i packages-microsoft-prod.deb
```

```bash
rm packages-microsoft-prod.deb
```

2 - Configuring the Microsoft source package

- Crie um arquivo

```bash
sudo nano /etc/apt/preferences
```

- Adicione o texto abaixo

```
Package: *
Pin: origin “packages.microsoft.com”
Pin-Priority: 1001
```

- Save the file

```
Ctrl + X
Y
```

3 - Update

```bash
sudo apt update
```

4 - Install .NET SDK 8.0

```bash
sudo apt update
```

5 - Check dotnet version (optional)

```bash
dotnet --version
```
