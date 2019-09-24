defmodule ExAws.MediaConvertTest do
  use ExUnit.Case, async: true

  alias ExAws.Operation.JSON
  alias ExAws.MediaConvert

  test "Create job" do
    assert %JSON{
             before_request: nil,
             data: "{\"id1\":\"value1\"}",
             headers: [{"content-type", "application/x-amz-json-1.1"}],
             http_method: :post,
             params: %{},
             parser: _,
             path: "/2017-08-29/jobs",
             service: :mediaconvert,
             stream_builder: nil
           } = MediaConvert.create_job(Poison.encode!(%{"id1" => "value1"}))
  end

  test "List jobs" do
    assert %JSON{
             before_request: nil,
             data: %{"Queue" => "q1"},
             headers: [{"content-type", "application/x-amz-json-1.1"}],
             http_method: :get,
             params: %{},
             parser: _,
             path: "/2017-08-29/jobs",
             service: :mediaconvert,
             stream_builder: nil
           } = MediaConvert.list_jobs(queue: "q1")
  end

  test "Get job" do
    assert %JSON{
             before_request: nil,
             data: "",
             headers: [{"content-type", "application/x-amz-json-1.1"}],
             http_method: :get,
             params: %{},
             parser: _,
             path: "/2017-08-29/jobs/job1",
             service: :mediaconvert,
             stream_builder: nil
           } = MediaConvert.get_job("job1")
  end

  test "Cancel job" do
    assert %JSON{
             before_request: nil,
             data: "",
             headers: [{"content-type", "application/x-amz-json-1.1"}],
             http_method: :delete,
             params: %{},
             parser: _,
             path: "/2017-08-29/jobs/job2",
             service: :mediaconvert,
             stream_builder: nil
           } = MediaConvert.cancel_job("job2")
  end
end
