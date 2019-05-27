FROM python:3

LABEL "com.github.actions.name"="Pipenv for Github Actions"
LABEL "com.github.actions.description"="Use pipenv commands in your GitHub Actions Workflow"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="green"

RUN pip install --upgrade pip \
 && pip install pipenv \
 && python --version ; pip --version ; pipenv --version

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
