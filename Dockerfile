FROM python:3

LABEL "com.github.actions.name"="GitHub Action for pipenv"
LABEL "com.github.actions.description"="Run pipenv commands"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="green"

RUN pip install --upgrade pip
RUN pip install pipenv
RUN python --version ; pip --version ; pipenv --version

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
