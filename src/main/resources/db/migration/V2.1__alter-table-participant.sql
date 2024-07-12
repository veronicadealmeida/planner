-- Passo 1: Remover a chave estrangeira existente
ALTER TABLE participants
DROP CONSTRAINT participants_trip_id_fkey;

-- Passo 2: Adicionar uma nova chave estrangeira com ON DELETE CASCADE
ALTER TABLE participants
ADD CONSTRAINT participants_trip_id_fkey
FOREIGN KEY (trip_id) REFERENCES trips(id) ON DELETE CASCADE;