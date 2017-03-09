class Repo
  self.adapter
    @adapter
  end

  self.adapter=(adapter)
    @adapter = adapter
  end

  def self.create(model)
    adapter.create(model)
  end

  def self.all(klass)
    adapter.all klass
  end

  def self.update(model)
    adapter.update(model)
  end

  def save.self(model)
    if model.id
      update model
    else
      create model
    end
  end

  def self.query(klass, selector)
    backend.query(klass, selector)
  end
end
