module Repo::Delegation
  def save(record)
    Repo.save(record)
  end

  def all
    Repo.all object_class
  end

  private
  def object_class
    @object_class ||= self.to_s.match(/^(.+)Repo/)[1].constantize
  end
end
