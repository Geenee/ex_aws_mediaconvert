# ExAws.MediaConvert

MediaConvert Service module for https://github.com/ex-aws/ex_aws

## Installation

The package can be installed by adding `ex_aws_mediaconvert` to your list of 
dependencies in `mix.exs` along with `:ex_aws` and your preferred JSON 
codec / http client

```elixir
def deps do
  [
    {:ex_aws, "~> 2.0"},
    {:ex_aws_mediaconvert, "~> 2.0"},
    {:poison, "~> 3.0"},
    {:hackney, "~> 1.9"},
  ]
end
```

Documentation can be found at [https://hexdocs.pm/ex_aws_mediaconvert](https://hexdocs.pm/ex_aws_mediaconvert).

## Configuration

You MUST set the custom api endpoint under the :ex_aws, :mediaconvert config

```elixir
config :ex_aws,
  ...
  mediaconvert: [
    host: "<apiendpoint>.mediaconvert.<region>.amazonaws.com"
  ]
  ...
```

The value can be found at [https://console.aws.amazon.com/mediaconvert/home#/account](https://console.aws.amazon.com/mediaconvert/home#/account) or under the `Account` submenu in the Aws Media Convert console.

## License

The MIT License (MIT)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
