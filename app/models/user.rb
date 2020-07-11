class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, uniqueness: true  #名前の値はnull・同じ物があったらダメ
  validates :employee_code, length: {is: 7}, numericality: { only_integer: true }, presence: true  #従業員コードは７桁の数字のみでnullはダメ

  has_many :comments
  has_many :process
  has_many :process, through: :users_processes

end
