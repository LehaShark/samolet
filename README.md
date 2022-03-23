**Установка Python.**

Перед установкой Python, обязательно необходимо уставить зависимости, если их нет.

`sudo apt-get install build-essential`

`sudo apt-get install python-dev libreadline6-dev libbz2-dev libedit-dev libssl-dev libssl-dev libsqlite3-dev libxslt1-dev libxml2-dev libffi-dev libncurses5-dev zlib1g zlib1g-dev`

`sudo apt-get install git`

**Установка Poetry**

`curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python`

После установки необходимо в терминале вбить команду добавляющую путь к Poetry:

`export PATH="$HOME/.poetry/bin:$PATH"`

**Работа с mmdetection**
Заходим в папку с проектом mmdetection.

```
poetry init
poetry shell
poetry add torch==1.10.0
poetry add -D torchvision==0.11.1
pip install mmcv-full -f https://download.openmmlab.com/mmcv/dist/cu102/torch1.10.0/index.html
```
```
git clone https://github.com/open-mmlab/mmdetection.git
cd mmdetection
pip install -r requirements/build.txt
pip install -v -e .
```
Проверим правильно ли установился mmdetection

`python`

`from mmdet.apis import inference_detector`

**Создадим кернел для работы в jupiter.**

`poetry add -D ipykernel`

`ipython kernel install --user --name name_env --display-name="name_env"`

Также загрузим в корень проекта папку с нашим датасетом в формате COCO.

├── _dataset
|   ├── _annotations
|   └── _images

