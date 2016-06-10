class Content < ActiveRecord::Base
	extend FriendlyId
	friendly_id :titolo, use: :slugged

	validates :titolo, :decrizione, :price, presence: true
	validates :price, numericality: { greater_then: 49 }
	validates :cover, :allegato, attachment_presence: true

	belongs_to :user
	has_many :sails




	has_attached_file :cover
	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/,
	message: "sono le immagini supportate"

	has_attached_file :allegato
	validates_attachment_content_type :allegato, :content_type => [  /\Aimage\/.*\Z/,'application/msword',
		'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
		'application/mspowerpoint',
		'application/vnd.ms-powerpoint',
		'application/vnd.openxmlformats-officedocument.presentationml.presentation',
		'application/pdf',
		'application/msexecel',
		'application/vnd.ms-execel',
		'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
		'audio/mpeg',
		'audio/mp3'],
		message: "formato non supportato"



		
	end