  COMBINATIONS = {
    forced: {
      single: {
        '000': { new: '100', runs_scored: 0, play_call: 'Base hit puts man on first' },
        '100': { new: '110', runs_scored: 0, play_call: 'Base hit puts men on first and second' },
        '110': { new: '111', runs_scored: 0, play_call: 'Base hit loads up the bases' },
        '101': { new: '111', runs_scored: 0, play_call: 'Base hit loads up the bases' },
        '111': { new: '111', runs_scored: 1, play_call: 'Base hit scores a run and keeps bases loaded' },
        '010': { new: '110', runs_scored: 0, play_call: 'Base hit puts men on first and second' },
        '011': { new: '111', runs_scored: 0, play_call: 'Base hit loads the bases' },
        '001': { new: '101', runs_scored: 0, play_call: 'Base hit men on first' }
      },
# only worked up to this point
      double: {
        '000': { new: '010', runs_scored: 0, play_call: 'Double puts a man on second' },
        '100': { new: '011', runs_scored: 0, play_call: 'Double puts a man on second and third' },
        '110': { new: '011', runs_scored: 1, play_call: 'Double scores a run and leaves men on second and third' },
        '101': { new: '011', runs_scored: 1, play_call: 'Double scores a run and leaves men on second and third' },
        '111': { new: '011', runs_scored: 2, play_call: 'Double brings 2 home and leaves men on second and third' },
        '010': { new: '010', runs_scored: 1, play_call: 'Double scores a run and puts a man on second' },
        '011': { new: '010', runs_scored: 2, play_call: 'Double scores 2 runs and leaves a man on second' },
        '001': { new: '010', runs_scored: 1, play_call: 'Double scores a run and leaves a man on second' }
      },

      triple: {
        '000': { new: '001', runs_scored: 0, play_call: 'Triple puts a man on third' },
        '100': { new: '001', runs_scored: 1, play_call: 'Triple scores a run and puts a man on third' },
        '110': { new: '001', runs_scored: 2, play_call: 'Triple scores 2 runs and puts a man on third' },
        '101': { new: '001', runs_scored: 2, play_call: 'Triple scores 2 runs and puts a man on third' },
        '111': { new: '001', runs_scored: 3, play_call: 'Triple scores 3 runs and puts a man on third' },
        '010': { new: '001', runs_scored: 1, play_call: 'Triple scores a run and puts a man on third' },
        '011': { new: '001', runs_scored: 2, play_call: 'Triple scores 2 runs and puts a man on third' },
        '001': { new: '001', runs_scored: 1, play_call: 'Triple scores a run and puts a man on third' }
      },

      homerun: {
        '000': { new: '000', runs_scored: 1, play_call: 'Solo home run scores 1' },
        '100': { new: '000', runs_scored: 2, play_call: 'Home run scores 2' },
        '110': { new: '000', runs_scored: 3, play_call: 'Home run scores 3' },
        '101': { new: '000', runs_scored: 3, play_call: 'Home run scores 3' },
        '111': { new: '000', runs_scored: 4, play_call: 'Home run scores 4' },
        '010': { new: '000', runs_scored: 2, play_call: 'Home run scores 2' },
        '011': { new: '000', runs_scored: 3, play_call: 'Home run scores 3' },
        '001': { new: '000', runs_scored: 2, play_call: 'Home run scores 2' }
      },

      steal: {
        '000': { new: '000', runs_scored: 0, play_call: 'Can not steal with no one on base' },
        '100': { new: '010', runs_scored: 0, play_call: 'Stolen base brings man to second' },
        '110': { new: '011', runs_scored: 0, play_call: 'Steal! Men advance to second and third' },
        '101': { new: '010', runs_scored: 1, play_call: 'Steal! Scores a run and brings man to second' },
        '111': { new: '011', runs_scored: 1, play_call: 'Steal! Scores a run and brings men to second and third' },
        '010': { new: '001', runs_scored: 0, play_call: 'Steal! Man advances to third' },
        '011': { new: '001', runs_scored: 1, play_call: 'Steal! Scores a run and man advances to third' },
        '001': { new: '000', runs_scored: 1, play_call: 'Home plate stolen! Scores a run!' }
      }
    },
    not_forced: {
      single: {
        '000': { new: '100', runs_scored: 0, play_call: 'Base hit puts man on first' },
        '100': { new: '110', runs_scored: 0, play_call: 'Base hit puts men on first and second' },
        '110': { new: '111', runs_scored: 0, play_call: 'Base hit loads up the bases' },
        '101': { new: '110', runs_scored: 1, play_call: 'Base hit scores a run and puts men on first and second' },
        '111': { new: '111', runs_scored: 1, play_call: 'Base hit scores a run and keeps bases loaded' },
        '010': { new: '101', runs_scored: 0, play_call: 'Base hit puts men on first and third' },
        '011': { new: '101', runs_scored: 1, play_call: 'Base hit scores a run and puts men on first and third' },
        '001': { new: '100', runs_scored: 1, play_call: 'Base hit scores a run and puts a man on first' }
      },

      double: {
        '000': { new: '010', runs_scored: 0, play_call: 'Double puts a man on second' },
        '100': { new: '011', runs_scored: 0, play_call: 'Double puts a man on second and third' },
        '110': { new: '011', runs_scored: 1, play_call: 'Double scores a run and leaves men on second and third' },
        '101': { new: '011', runs_scored: 1, play_call: 'Double scores a run and leaves men on second and third' },
        '111': { new: '011', runs_scored: 2, play_call: 'Double brings 2 home and leaves men on second and third' },
        '010': { new: '010', runs_scored: 1, play_call: 'Double scores a run and puts a man on second' },
        '011': { new: '010', runs_scored: 2, play_call: 'Double scores 2 runs and leaves a man on second' },
        '001': { new: '010', runs_scored: 1, play_call: 'Double scores a run and leaves a man on second' }
      },

      triple: {
        '000': { new: '001', runs_scored: 0, play_call: 'Triple puts a man on third' },
        '100': { new: '001', runs_scored: 1, play_call: 'Triple scores a run and puts a man on third' },
        '110': { new: '001', runs_scored: 2, play_call: 'Triple scores 2 runs and puts a man on third' },
        '101': { new: '001', runs_scored: 2, play_call: 'Triple scores 2 runs and puts a man on third' },
        '111': { new: '001', runs_scored: 3, play_call: 'Triple scores 3 runs and puts a man on third' },
        '010': { new: '001', runs_scored: 1, play_call: 'Triple scores a run and puts a man on third' },
        '011': { new: '001', runs_scored: 2, play_call: 'Triple scores 2 runs and puts a man on third' },
        '001': { new: '001', runs_scored: 1, play_call: 'Triple scores a run and puts a man on third' }
      },

      homerun: {
        '000': { new: '000', runs_scored: 1, play_call: 'Solo home run scores 1' },
        '100': { new: '000', runs_scored: 2, play_call: 'Home run scores 2' },
        '110': { new: '000', runs_scored: 3, play_call: 'Home run scores 3' },
        '101': { new: '000', runs_scored: 3, play_call: 'Home run scores 3' },
        '111': { new: '000', runs_scored: 4, play_call: 'Home run scores 4' },
        '010': { new: '000', runs_scored: 2, play_call: 'Home run scores 2' },
        '011': { new: '000', runs_scored: 3, play_call: 'Home run scores 3' },
        '001': { new: '000', runs_scored: 2, play_call: 'Home run scores 2' }
      },

      steal: {
        '000': { new: '000', runs_scored: 0, play_call: 'Can not steal with no one on base' },
        '100': { new: '010', runs_scored: 0, play_call: 'Stolen base brings man to second' },
        '110': { new: '011', runs_scored: 0, play_call: 'Steal! Men advance to second and third' },
        '101': { new: '010', runs_scored: 1, play_call: 'Steal! Scores a run and brings man to second' },
        '111': { new: '011', runs_scored: 1, play_call: 'Steal! Scores a run and brings men to second and third' },
        '010': { new: '001', runs_scored: 0, play_call: 'Steal! Man advances to third' },
        '011': { new: '001', runs_scored: 1, play_call: 'Steal! Scores a run and man advances to third' },
        '001': { new: '000', runs_scored: 1, play_call: 'Home plate stolen! Scores a run!' }
      }
    }
  }.freeze
