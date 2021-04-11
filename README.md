# SkillFactory: DEVOPS. Практикум. Модуль 23. Управление конфигурациями

## Задание 23.9.2

 - Создайте Ansible-роль, настраивающую кэширующий DNS-сервер dnsmasq. Примените ее.
 - Напишите Ansible-playbook, создающий группу пользователей superusers, куда входят пользователи user2 и user3, и которая, выполнив sudo -i, сможет повысить свои полномочия и стать root-пользователем. Можете использовать модуль lineinfile. У него есть параметр validate, позволяющий проверять сделанные изменения в файле. В документации есть пример валидации sudoers-файла.
 - Самостоятельно напишите Ansible-роль, настраивающую связку nginx+php-fpm и выдающую при обращении к главной странице веб-сервера информацию о php (содержимое index.php — <?php phpinfo();?>).
 - Дополните роль из п.3: пусть DocumentRoot будет в директории /opt/nginx/ansible. Используйте handler для перечитывания конфигурации nginx.

## Решение

- DNS-сервер dnsmasq настраивается в роли dnsmasq
- пользователи создаются в роли users
- nginx+php-fpm настраиваются в роли php. Handler приведен в папке с ролью

## Использование

В папке other приведены скрипты для создания инфраструктуры - два lxc контейнера, в которые будут установлены dnsmasq и php соответственно.
Также в папке созданы скрипты для применения отдельных ролей.