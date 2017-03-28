require 'test_helper'

class JobTest < ActiveSupport::TestCase
  test "fixtures work properly" do
    jobs = Job.all.sort_by &:created_at
    assert jobs.length == 2

    assert jobs[0].poster == "Poster1",
      "jobs[0].poster is #{jobs[0].poster}"
    assert jobs[0].description == "Brief description 1",
      "jobs[0].description is #{jobs[0].description}"

    assert jobs[1].poster == "Poster2",
      "jobs[1].poster is #{jobs[1].poster}"
    assert jobs[1].description == "Brief description 2",
      "jobs[1].description is #{jobs[1].description}"

    (0..1).each do |i|
      assert jobs[i].category == "cleaning",
        "jobs[#{i}].category is #{jobs[i].category}"
      assert jobs[i].location == "cambridge",
      "jobs[#{i}].location is #{jobs[i].location}"
      assert jobs[i].statusval == "in_progress",
      "jobs[#{i}].statusval is #{jobs[i].statusval}"
    end

  end

  test "create and retrieve new job" do
    job = Job.new(poster: "Bob", category: :cleaning, location: :boston,
      statusval: :created, description: "Do some cleaning at 1 Fart St.")
    job.save!

    jobs = Job.all
    assert jobs.length == 3, "jobs.length is #{jobs.length}"
    new_job = jobs[2]
    assert new_job[:poster] == "Bob", "correctly set poster"
  end
end
