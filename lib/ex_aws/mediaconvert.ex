defmodule ExAws.MediaConvert do
  @moduledoc """
  Operations on AWS Media Convert
  """

  import ExAws.Utils

  @version "2017-08-29"

  @doc "Creates a new job"
  def create_job(job_settings) do
    request(:post, "/#{@version}/jobs", job_settings)
  end

  @doc "Lists all jobs"
  def list_jobs(opts \\ []) do
    data = opts |> normalize_opts
    request(:get, "/#{@version}/jobs", data)
  end

  @doc "Gets a job"
  def get_job(job_id) do
    request(:get, "/#{@version}/jobs/#{job_id}")
  end

  @doc "Cancels/deletes a job"
  def cancel_job(job_id) do
    request(:delete, "/#{@version}/jobs/#{job_id}")
  end

  defp request(http_method, path, data \\ "") do
    ExAws.Operation.JSON.new(:mediaconvert, %{
      http_method: http_method,
      path: path,
      data: data,
      headers: [{"content-type", "application/x-amz-json-1.1"}],
      service: :mediaconvert
    })
  end

  defp normalize_opts([]) do
    ""
  end

  defp normalize_opts(opts) do
    opts
    |> Enum.into(%{})
    |> camelize_keys()
  end
end
