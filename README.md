<p align="center">
  <img src="https://img.shields.io/badge/macOS-12%20→%2026-000000?style=for-the-badge&logo=apple&logoColor=white" alt="macOS 12-26">
  <img src="https://img.shields.io/badge/Shell-ZSH-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white" alt="ZSH">
  <img src="https://img.shields.io/badge/License-MIT-blue?style=for-the-badge" alt="License">
  <img src="https://img.shields.io/badge/by-i--pro.by-FF6B00?style=for-the-badge" alt="i-pro.by">
</p>

<h1 align="center">🍎 macOS Scripted Setup</h1>
<p align="center">
  <strong>Автоматическая настройка и установка приложений на macOS</strong><br>
  <em>от <a href="https://i-pro.by">i-pro.by</a> — IT-решения для бизнеса и жизни</em>
</p>

---

## 🚀 Что это?

Скриптовый установщик для macOS, который **автоматически настраивает систему и устанавливает приложения** на новом Mac. Работает на Intel и Apple Silicon, совместим с macOS 12 Monterey → macOS 26 Tahoe.

![Screenshot of macOS Scripted Setup in action](/README_demo.png?raw=true)

**Идеально подходит для:**
- 🏢 Развёртывания Mac для сотрудников компании
- 💻 Быстрой настройки нового MacBook
- 🔄 Восстановления конфигурации после переустановки macOS
- 📦 Стандартизации рабочего окружения

---

## 📋 Возможности

<details>
<summary><strong>⚙️ Системные настройки (клик чтобы раскрыть)</strong></summary>

| Категория | Что настраивается |
|-----------|-------------------|
| 🔒 Безопасность | FileVault, Firewall, экран входа, пароль заставки |
| ⚙️ Сервисы | Time Machine, AirDrop через Ethernet, автообновления |
| 🖥️ Интерфейс | Меню-бар, Mission Control, прозрачность, прокрутка |
| ⌨️ Ввод | Автокоррекция, трекпад, мышь, клавиша fn |
| 📁 Finder | Вид окон, расширения файлов, скриншоты, Spotlight |
| 🚀 Dock | Автоскрытие, очистка, анимации, только активные |
| 🌙 Дисплей | Night Shift, все разрешения |
| 💻 Терминал | UTF-8, кастомные темы, .zshrc |

</details>

<details>
<summary><strong>📦 Устанавливаемые приложения (клик чтобы раскрыть)</strong></summary>

| Категория | Приложения |
|-----------|------------|
| 🔧 Базовые | Homebrew, Xcode CLT, Rosetta 2 |
| 🗜 Файлы | Keka, QuickLook-плагины |
| 🌐 Браузеры | Firefox, Brave, Google Chrome |
| 💼 Офис | Microsoft Office 365, Notion, 1Password, Strongbox |
| 🎵 Медиа | VLC, Spotify, eqMac, Pixelmator Pro |
| 🛠 Утилиты | AlDente, LinearMouse, OverSight, Sentinel, Xnapper, Warp |
| 💬 Общение | Telegram, AyuGram, Discord, Halloy IRC |
| 🧑‍💻 Разработка | Git, VS Code, Fork, Nova, Docker/OrbStack, Node.js, Composer, MAMP, Sequel Ace, SonarQube |
| 🎮 Игры | Steam, Heroic Games Launcher |

</details>

---

## 📥 Быстрый старт

### 1. Скачать

Откройте **Terminal.app** и выполните:

```bash
curl -SL "https://github.com/iproby/macOS-scripted-setup/archive/refs/heads/installer.zip" | tar xz -C "$HOME/Downloads" && open "$HOME/Downloads/macOS-scripted-setup-installer"
```

Или скачайте ZIP из [Releases](../../releases).

### 2. Настроить

**Вариант А** — используйте **Config Wizard** (скачайте из [Releases](../../releases))

**Вариант Б** — вручную:
```bash
cp config.default.sh config.sh
open -a TextEdit config.sh
```
Измените настройки на `true` / `false` под ваши нужды.

> [!WARNING]
> Без файла `config.sh` будут использованы дефолтные настройки из `config.default.sh`

### 3. Запустить

```bash
cd ~/Downloads/macOS-scripted-setup-installer/ && chmod +x ./run.sh && ./run.sh
```

> [!TIP]
> Время от времени потребуется ввод — следуйте инструкциям на экране.

### 4. Продолжить (если прервали)

Прогресс сохраняется в `config.rerun.sh`. Просто запустите `./run.sh` снова.

---

## 🗂 Структура проекта

```
macOS-scripted-setup/
├── run.sh                  # Главный скрипт-оркестратор
├── helpers.sh              # Утилитные функции
├── config.default.sh       # Настройки по умолчанию
├── config.sh               # Ваши настройки (создать вручную)
├── mycommands.template.sh  # Шаблон для кастомных команд
├── Applications/           # Скрипты установки приложений (50+)
├── Usersettings/           # Настройки пользователя
├── Systemservices/         # Системные сервисы
└── FilesFolders/           # Файлы и папки
```

---

## ❓ FAQ

<details>
<summary><strong>Безопасно ли это запускать?</strong></summary>

Да. Все скрипты открыты и доступны для проверки. Перед запуском делается синтаксическая проверка всех файлов. Скрипт использует только стандартные утилиты macOS (`defaults`, `curl`, `hdiutil`).

</details>

<details>
<summary><strong>Можно ли запускать повторно?</strong></summary>

Да. Скрипт отслеживает прогресс и пропускает уже выполненные шаги.

</details>

<details>
<summary><strong>Какие версии macOS поддерживаются?</strong></summary>

macOS 12 Monterey, 13 Ventura, 14 Sonoma, 15 Sequoia, 25 и 26 Tahoe. Работает на Intel и Apple Silicon.

</details>

---

## 🤝 Участие в разработке

- 🐛 Нашли баг? → [Создайте Issue](../../issues)
- 💡 Есть идея? → [Начните Discussion](../../discussions)
- 🔧 Хотите помочь? → [Fork и Pull Request](../../fork)

---

## 📜 Лицензия

MIT License — свободное использование, модификация и распространение.

---

<p align="center">
  <strong>🍎 Сделано с ❤️ командой <a href="https://i-pro.by">i-pro.by</a></strong><br>
</p>
