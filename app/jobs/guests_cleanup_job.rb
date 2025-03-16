class GuestsCleanupJob < ApplicationJob
  queue_as :default

  def perform
    Rails.logger.info("**************************************************")
    Rails.logger.info("**************************************************")
    Rails.logger.info("**************************************************")
    Rails.logger.info("INSIDE JOB")
    Rails.logger.info("**************************************************")
    Rails.logger.info("**************************************************")
    Rails.logger.info("**************************************************")

    Post.create(title: "Job", body: "Job content: #{Time.now}")
  end
end
