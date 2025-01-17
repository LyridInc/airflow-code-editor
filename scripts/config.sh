# Airflow home
if [ -n "${AIRFLOW_HOME}" ]; then
    export AIRFLOW_HOME=$(realpath "${AIRFLOW_HOME}")
else
    export AIRFLOW_HOME="$(realpath $(dirname "$0"))/venv"
fi

# Airflow config
export AIRFLOW__CORE__DAGS_FOLDER="${AIRFLOW_HOME}/dags"
export AIRFLOW__CORE__PLUGINS_FOLDER="${AIRFLOW_HOME}/plugins"
export AIRFLOW__DATABASE__SQL_ALCHEMY_CONN="sqlite:///${AIRFLOW_HOME}/airflow.db"
export AIRFLOW__LOGGING__BASE_LOG_FOLDER="${AIRFLOW_HOME}/logs"
export AIRFLOW__LOGGING__DAG_PROCESSOR_MANAGER_LOG_LOCATION="${AIRFLOW_HOME}/logs/dag_processor_manager/dag_processor_manager.log"
export AIRFLOW__SCHEDULER__CHILD_PROCESS_LOG_DIRECTORY="${AIRFLOW_HOME}/logs"

# Code Editor config
export AIRFLOW__CODE_EDITOR__ENABLED="True"
export AIRFLOW__CODE_EDITOR__MOUNT_NAME="airflow_home"
export AIRFLOW__CODE_EDITOR__MOUNT_PATH="${AIRFLOW_HOME}"
export AIRFLOW__CODE_EDITOR__MOUNT1_NAME="logs"
export AIRFLOW__CODE_EDITOR__MOUNT1_PATH="${AIRFLOW_HOME}/logs"
