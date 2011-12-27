class AddForeignKeyRelashionships < ActiveRecord::Migration
  def up
    #inserindo relacionamentos de veiculos
    change_table :vehicles do |t|
      t.references :account
      t.references :vehicle_model
    end
    #add_index :vehicles, [:account_id, :vehicle_model_id] #nao funciona indice de mais de uma coluna
    add_index :vehicles, :account_id
    add_index :vehicles, :vehicle_model_id
    add_index :vehicles, [:account_id, :vehicle_model_id]

    #inserindo relacionamentos de parte de veiculo
    change_table :part_vehicles do |t|
      t.references :part_vehicle_type
      t.references :vehicle
    end
    add_index :part_vehicles, :part_vehicle_type_id
    add_index :part_vehicles, :vehicle_id
    add_index :part_vehicles, [:part_vehicle_type_id, :vehicle_id]


    #inserindo relacionamentos de modelo de veiculo
    change_table :vehicle_models do |t|
      t.references :manufacturer
    end
    add_index :vehicle_models, :manufacturer_id

  end


  def down
    #removendo relacionamentos de veiculos
    remove_index :vehicles, [:account_id, :vehicle_model_id]
    remove_index :vehicles, :account_id
    remove_index :vehicles, :vehicle_model_id
    change_table :vehicles do |t|
      #t.remove :account #isso nao funcionou
      t.remove :account_id
      t.remove :vehicle_model_id
    end

    #removendo relacionamentos de parte de veiculos
    remove_index :part_vehicles, [:part_vehicle_type_id, :vehicle_id]
    remove_index :part_vehicles, :part_vehicle_type_id
    remove_index :part_vehicles, :vehicle_id
    change_table :part_vehicles do |t|
      t.remove :part_vehicle_type_id
      t.remove :vehicle_id
    end

    #removendo relacionamentos de modelo de veiculo
    remove_index :vehicle_models, :manufacturer_id
    change_table :vehicle_models do |t|
      t.remove :manufacturer_id
    end

  end
end
