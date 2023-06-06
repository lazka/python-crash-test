project('project', 'c', 'cpp',
  version : '0.1',
  default_options : [
    'warning_level=3',
    'buildtype=debugoptimized',
  ]
)

foreach i : range(200)
    lib = shared_library('my-shared-lib'+i.to_string(),
                         'my-shared-lib.c')
    exec = executable('my-executable'+i.to_string(),
                      'my-executable.c',
                      link_with: [lib])
endforeach
