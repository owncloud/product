def main(ctx):
  before = [
    testing(ctx),
  ]

  stages = []

  after = [
    website(ctx),
  ]

  return before + stages + after

def testing(ctx):
  return {
    'kind': 'pipeline',
    'type': 'docker',
    'name': 'testing',
    'platform': {
    'os': 'linux',
    'arch': 'amd64',
    },
    'steps': [
      {
        'name': 'build',
        'image': 'klakegg/hugo:0.69.0-ext-alpine',
        'pull': 'always',
        'commands': [
          'hugo-official',
        ],
      },
      {
        'name': 'list',
        'image': 'owncloudci/alpine:latest',
        'commands': [
          'tree public',
        ],
      },
    ],
    'trigger': {
      'ref': [
        'refs/heads/master',
        'refs/tags/**',
        'refs/pull/**',
      ],
    },
  }

def website(ctx):
  return {
    'kind': 'pipeline',
    'type': 'docker',
    'name': 'website',
    'platform': {
      'os': 'linux',
      'arch': 'amd64',
    },
    'steps': [
        {
        'name': 'build',
        'image': 'klakegg/hugo:0.69.0-ext-alpine',
        'pull': 'always',
        'commands': [
          'hugo-official',
        ],
      },
      {
        'name': 'publish',
        'image': 'plugins/gh-pages:1',
        'pull': 'always',
        'settings': {
          'username': {
            'from_secret': 'github_username',
          },
          'password': {
            'from_secret': 'github_token',
          },
          'pages_directory': 'public/',
        },
        'when': {
          'ref': {
            'exclude': [
              'refs/pull/**',
            ],
          },
        },
      },
    ]
  }