# vim-quickopen-tvio
a small vim plugin for very fast file opening using the leader key and tvio

<leader> + t + key: opens a file mapped to key in a new tab
<leader> + i + key: opens a file mapped to key in a new horizontal split window
<leader> + v + key: opens a file mapped to key in a new vertical split window
<leader> + o + key: opens a file mapped to key in the current window

# Installation 
These instruction are for pathogen installation. See https://github.com/tpope/vim-pathogen to get pathogen. 

cd to your bundle directory:
    cd ~/.vim/bundle/

git clone https://github.com/Erotemic/vim-quickopen-tvio.git

# Customization
Customization is essential with this plugin

I highly recommend having a shortcut to reload your vimrc like:

    noremap <leader>r :source ~/.vimrc<CR>
    noremap <leader>R :source ~/.vimrc<CR>

Also I recommend remapping your leader key to be comma

    let mapleader = ","


Here is an example of adding a tvio command to your vimrc.
This maps <leader> t, v, i, or o + comma to open your vimrc file in different ways. 

    :call QUICKOPEN_leader_tvio(',', '~/.vimrc')

Once this mapping is in place a common pattern to quickly add or edit files that you 
want to quickly get to is to open your vimrc

> ,i,

Then you might add a new tvio mapping and use <leader>R to reload your vimrc and get your new settings. 
Here is an example of how I use this plugin:


    "___________________
    " Quick File Access:
    :call QUICKOPEN_leader_tvio(',', '~/local/vim/portable_vimrc')
    :call QUICKOPEN_leader_tvio('!', '~/local/vim/rc/pyvim_funcs.py')
    :call QUICKOPEN_leader_tvio('@', '~/local/vim/rc/custom_misc_functions.vim')
    :call QUICKOPEN_leader_tvio('*', '~/code/hesaff/pyhesaff/_pyhesaff.py')
    :call QUICKOPEN_leader_tvio('1', '~/code/ibeis/ibeis/control/manual_annot_funcs.py')
    :call QUICKOPEN_leader_tvio('2', '~/code/utool/utool/util_scripts/ensure_python3_compatible.py')
    :call QUICKOPEN_leader_tvio('3', '~/code/guitool/guitool/api_item_model.py')
    :call QUICKOPEN_leader_tvio('4', '~/local/init/ubuntu_core_packages.sh')
    :call QUICKOPEN_leader_tvio('5', '~/local/bashrc.sh')
    :call QUICKOPEN_leader_tvio('7', '~/local/vim/rc/custom_font_functions.vim')
    :call QUICKOPEN_leader_tvio('6', '~/code/pyrf')
    :call QUICKOPEN_leader_tvio('8', '~/code/flann/src/python/pyflann/flann_ctypes.py')
    :call QUICKOPEN_leader_tvio('9', '~/local/misc/modulechanges.sh')

    :call QUICKOPEN_leader_tvio('0', '~/local/vim/rc/custom_regex_commands.vim')
    :call QUICKOPEN_leader_tvio('_', '$VIMRUNTIME/../_vimrc')
    :call QUICKOPEN_leader_tvio('a', '~/code/ibeis/ibeis/all_imports.py')
    :call QUICKOPEN_leader_tvio('A', '~/code/ibeis/ibeis/dev/results_all.py')
    :call QUICKOPEN_leader_tvio('b', '~/local/bashrc.sh')
    :call QUICKOPEN_leader_tvio('c', '~/code/ibeis/ibeis/control/IBEISControl.py')
    ":call QUICKOPEN_leader_tvio('C', '~/Dropbox/')
    :call QUICKOPEN_leader_tvio('C', '~/code/ibeis/ibeis/constants.py')
    ":call QUICKOPEN_leader_tvio('d', '~/code/ibeis/dev.py')
    :call QUICKOPEN_leader_tvio('D', '~/code/ibeis/ibeis/model/hots/devcases.py')
    :call QUICKOPEN_leader_tvio('d', '~/code/ibeis/dev.py')
    ":call QUICKOPEN_leader_tvio('D', '~/code/ibeis/ibeis/model/hots/smk/smk_debug.py')
    :call QUICKOPEN_leader_tvio('e', '~/code/ibeis/ibeis/dev/experiment_printres.py')
    ":call QUICKOPEN_leader_tvio('e', '~/code/hesaff/src/hesaff.cpp')
    :call QUICKOPEN_leader_tvio('E', '~/code/ibeis/ibeis/dev/experiment_configs.py')
    :call QUICKOPEN_leader_tvio('f', '~/code/ibeis/ibeis/ibsfuncs.py')
    ":call QUICKOPEN_leader_tvio('g', '~/code/ibeis/ibeis/gui/newgui.py')
    ":call QUICKOPEN_leader_tvio('g', '~/code/ibeis/ibeis/gui/guiback.py')
    :call QUICKOPEN_leader_tvio('g', '~/code/ibeis/ibeis/gui/inspect_gui.py')
    :call QUICKOPEN_leader_tvio('G', '~/code/ibeis/ibeis/gui/newgui.py')
    """"""""""""""
    :call QUICKOPEN_leader_tvio('H', '~/code/ibeis/ibeis/model/hots/match_chips4.py')
    :call QUICKOPEN_leader_tvio('h', '~/code/ibeis/ibeis/model/hots/pipeline.py')
    """"""""""""""
    ":call QUICKOPEN_leader_tvio('i', '~/code/ibeis/ibeis/model/hots/smk/smk_index.py')
    :call QUICKOPEN_leader_tvio('i', '~/code/ibeis/ibeis/model/hots/qt_inc_automatch.py')
    :call QUICKOPEN_leader_tvio('I', '~/code/ibeis/ibeis/__init__.py')
    :call QUICKOPEN_leader_tvio('j', '~/code/ibeis/ibeis/dbio/ingest_database.py')
    :call QUICKOPEN_leader_tvio('k', '~/code/ibeis/ibeis/model/hots/smk/smk_core.py')
    ":call QUICKOPEN_leader_tvio('m', '~/code/ibeis/ibeis/model/hots/smk/smk_match.py')
    :call QUICKOPEN_leader_tvio('m', '~/code/ibeis/ibeis/model/hots/automated_matcher.py')
    :call QUICKOPEN_leader_tvio('M', '~/code/ibeis/ibeis/main_module.py')
    """"""""""""""
    :call QUICKOPEN_leader_tvio('n', '~/code/ibeis/ibeis/model/Config.py')
    :call QUICKOPEN_leader_tvio('N', '~/code/ibeis/ibeis/model/hots/score_normalization.py')
    """"""""""""""
    ":call QUICKOPEN_leader_tvio('o', '~/code/ibeis/ibeis/model/preproc/preproc_image.py')
    :call QUICKOPEN_leader_tvio('o', '~/code/ibeis/ibeis/model/preproc/preproc_annot.py')
    :call QUICKOPEN_leader_tvio('O', '~/code/ibeis/ibeis/model/preproc/preproc_chip.py')
    """"""""""""""
    :call QUICKOPEN_leader_tvio('p', '~/code/plottool/plottool/__init__.py')
    """"""""""""""
    :call QUICKOPEN_leader_tvio('q', '~/code/ibeis/ibeis/model/hots/query_request.py')
    :call QUICKOPEN_leader_tvio('Q', '~/code/ibeis/ibeis/model/hots/hots_query_result.py')
    """"""""""""""
    :call QUICKOPEN_leader_tvio('r', '~/code/ibeis/ibeis/model/detect/randomforest.py')
    :call QUICKOPEN_leader_tvio('R', '~/code/ibeis/README.md')
    ":call QUICKOPEN_leader_tvio('s', '~/code/ibeis/ibeis/control/SQLDatabaseControl.py')
    :call QUICKOPEN_leader_tvio('s', '~/code/ibeis/ibeis/model/hots/score_normalization.py')
    :call QUICKOPEN_leader_tvio('S', '~/code/ibeis/ibeis/control/SQLDatabaseControl.py')
    :call QUICKOPEN_leader_tvio('t', '~/code/ibeis/ibeis/control/template_generator.py')
    :call QUICKOPEN_leader_tvio('T', '~/code/ibeis/ibeis/tests')
    :call QUICKOPEN_leader_tvio('S', '~/code/ibeis/ibeis/control/DB_SCHEMA.py')
    ":call QUICKOPEN_leader_tvio('S', '~/code/ibeis/ibeis/control/DBCACHE_SCHEMA.py')
    :call QUICKOPEN_leader_tvio('u', '~/code/utool/utool/__init__.py')
    :call QUICKOPEN_leader_tvio('U', '~/code/utool/utool/util_dev.py')
    :call QUICKOPEN_leader_tvio('v', '~/code/vtool/vtool/__init__.py')
    :call QUICKOPEN_leader_tvio('V', '~/code/vtool/vtool/spatial_verification.py')
    :call QUICKOPEN_leader_tvio('V', '~/code/vtool/vtool/coverage_image.py')
    ":call QUICKOPEN_leader_tvio('w', '~/code/ibeis/ibeis/model/preproc/preproc_featweight.py')
    :call QUICKOPEN_leader_tvio('w', '~/code/ibeis/ibeis/model/hots/scoring.py')
    :call QUICKOPEN_leader_tvio('x', '~/code/ibeis/ibeis/viz/interact/interact_name.py')
    ":call QUICKOPEN_leader_tvio('x', '~/code/ibeis/ibeis/viz/interact/interact_query_decision.py')
    ":call QUICKOPEN_leader_tvio('x', '~/code/ibeis/ibeis/viz/interact/interact_matches.py')
    :call QUICKOPEN_leader_tvio('X', '~/code/ibeis/ibeis/model/hots/multi_index.py')
    ":call QUICKOPEN_leader_tvio('y', '~/code/ibeis/ibeis/model/hots/special_query.py')
    :call QUICKOPEN_leader_tvio('y', '~/code/ibeis/ibeis/model/hots/vsone_pipeline.py')
    :call QUICKOPEN_leader_tvio('Y', '~/code/cyth/cyth/cyth_script.py')
    :call QUICKOPEN_leader_tvio('z', '~/code/ibeis/ibeis/viz/viz_matches.py')
    :call QUICKOPEN_leader_tvio('Z', '~/code/ibeis/ibeis/model/hots/neighbor_index.py')

