-- Base de la app (separada de la base interna de n8n)
-- CREATE DATABASE tareas;

CREATE TABLE IF NOT EXISTS tasks (
  id         serial PRIMARY KEY,
  text       text NOT NULL,
  created_at timestamptz DEFAULT now()
);

-- La memoria del agente (n8n_chat_histories) la crea automáticamente
-- el nodo Postgres Chat Memory de n8n en esta misma base.
