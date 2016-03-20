{
  'conditions': [
    ['OS=="linux"', {
      'targets': [

        {
          'target_name': 'rpi_ws281x',
          'sources': ['./src/rpi-ws281x.cc'],
          'dependencies': ['rpi_libws2811'],
          'include_dirs': ['<!(node -e "require(\'nan\')")']
        },

        {
          'target_name': 'rpi_libws2811',
          'type': 'static_library',
          'sources': [
            './src/ws2811.c',
            './src/pwm.c',
            './src/dma.c',
            './src/mailbox.c',
            './src/board_info.c'
          ],
          'cflags': ['-O2', '-Wall']
        },

        {
          'target_name':'action_after_build',
          'type': 'none',
          'dependencies': ['rpi_ws281x'],
          'copies': [{
            'destination': './lib/binding/',
            'files': [
              '<(PRODUCT_DIR)/rpi_ws281x.node'
            ]
          }]
        }
      ]
    }, { 
      'targets': [{
        'target_name': 'rpi_ws281x',
        'actions': [{
          'action_name': 'not_supported_msg',
          'inputs': [],
          'outputs': [ '--nothing-being-built--' ],
          'action': ['true'],
          'message': '**** YOU ARE INSTALLING THIS MODULE ON AN UNSUPPORTED PLATFORM ****'
        }]
      }]
    }]
  ]
}