%%
%% nfs_prot3_clnt was generated by erpcgen (do not edit)
%% date: Dec 2 23:48:18 2012
%%
-module(nfs_prot3_clnt).
-include("nfs_prot3.hrl").
-export([nfsproc3_null_3/1,nfsproc3_null_3/2]).
-export([nfsproc3_getattr_3/2,nfsproc3_getattr_3/3]).
-export([nfsproc3_setattr_3/2,nfsproc3_setattr_3/3]).
-export([nfsproc3_lookup_3/2,nfsproc3_lookup_3/3]).
-export([nfsproc3_access_3/2,nfsproc3_access_3/3]).
-export([nfsproc3_readlink_3/2,nfsproc3_readlink_3/3]).
-export([nfsproc3_read_3/2,nfsproc3_read_3/3]).
-export([nfsproc3_write_3/2,nfsproc3_write_3/3]).
-export([nfsproc3_create_3/2,nfsproc3_create_3/3]).
-export([nfsproc3_mkdir_3/2,nfsproc3_mkdir_3/3]).
-export([nfsproc3_symlink_3/2,nfsproc3_symlink_3/3]).
-export([nfsproc3_mknod_3/2,nfsproc3_mknod_3/3]).
-export([nfsproc3_remove_3/2,nfsproc3_remove_3/3]).
-export([nfsproc3_rmdir_3/2,nfsproc3_rmdir_3/3]).
-export([nfsproc3_rename_3/2,nfsproc3_rename_3/3]).
-export([nfsproc3_link_3/2,nfsproc3_link_3/3]).
-export([nfsproc3_readdir_3/2,nfsproc3_readdir_3/3]).
-export([nfsproc3_readdirplus_3/2,nfsproc3_readdirplus_3/3]).
-export([nfsproc3_fsstat_3/2,nfsproc3_fsstat_3/3]).
-export([nfsproc3_fsinfo_3/2,nfsproc3_fsinfo_3/3]).
-export([nfsproc3_pathconf_3/2,nfsproc3_pathconf_3/3]).
-export([nfsproc3_commit_3/2,nfsproc3_commit_3/3]).

nfsproc3_commit_3(Clnt, _1) ->
    nfsproc3_commit_3(Clnt, _1, infinity).

nfsproc3_commit_3(Clnt, _1, Timeout) ->
    _2 = [nfs_prot3_xdr:enc_commit3args(_1)],
    case rpc_client:call(Clnt, 21, _2, Timeout) of
        {ok,_3} ->
            {Reply,_} = nfs_prot3_xdr:dec_commit3res(_3, 0),
            {ok,Reply};
        Error ->
            Error
    end.

nfsproc3_pathconf_3(Clnt, _1) ->
    nfsproc3_pathconf_3(Clnt, _1, infinity).

nfsproc3_pathconf_3(Clnt, _1, Timeout) ->
    _2 = [nfs_prot3_xdr:enc_pathconf3args(_1)],
    case rpc_client:call(Clnt, 20, _2, Timeout) of
        {ok,_3} ->
            {Reply,_} = nfs_prot3_xdr:dec_pathconf3res(_3, 0),
            {ok,Reply};
        Error ->
            Error
    end.

nfsproc3_fsinfo_3(Clnt, _1) ->
    nfsproc3_fsinfo_3(Clnt, _1, infinity).

nfsproc3_fsinfo_3(Clnt, _1, Timeout) ->
    _2 = [nfs_prot3_xdr:enc_fsinfo3args(_1)],
    case rpc_client:call(Clnt, 19, _2, Timeout) of
        {ok,_3} ->
            {Reply,_} = nfs_prot3_xdr:dec_fsinfo3res(_3, 0),
            {ok,Reply};
        Error ->
            Error
    end.

nfsproc3_fsstat_3(Clnt, _1) ->
    nfsproc3_fsstat_3(Clnt, _1, infinity).

nfsproc3_fsstat_3(Clnt, _1, Timeout) ->
    _2 = [nfs_prot3_xdr:enc_fsstat3args(_1)],
    case rpc_client:call(Clnt, 18, _2, Timeout) of
        {ok,_3} ->
            {Reply,_} = nfs_prot3_xdr:dec_fsstat3res(_3, 0),
            {ok,Reply};
        Error ->
            Error
    end.

nfsproc3_readdirplus_3(Clnt, _1) ->
    nfsproc3_readdirplus_3(Clnt, _1, infinity).

nfsproc3_readdirplus_3(Clnt, _1, Timeout) ->
    _2 = [nfs_prot3_xdr:enc_readdirplus3args(_1)],
    case rpc_client:call(Clnt, 17, _2, Timeout) of
        {ok,_3} ->
            {Reply,_} = nfs_prot3_xdr:dec_readdirplus3res(_3, 0),
            {ok,Reply};
        Error ->
            Error
    end.

nfsproc3_readdir_3(Clnt, _1) ->
    nfsproc3_readdir_3(Clnt, _1, infinity).

nfsproc3_readdir_3(Clnt, _1, Timeout) ->
    _2 = [nfs_prot3_xdr:enc_readdir3args(_1)],
    case rpc_client:call(Clnt, 16, _2, Timeout) of
        {ok,_3} ->
            {Reply,_} = nfs_prot3_xdr:dec_readdir3res(_3, 0),
            {ok,Reply};
        Error ->
            Error
    end.

nfsproc3_link_3(Clnt, _1) ->
    nfsproc3_link_3(Clnt, _1, infinity).

nfsproc3_link_3(Clnt, _1, Timeout) ->
    _2 = [nfs_prot3_xdr:enc_link3args(_1)],
    case rpc_client:call(Clnt, 15, _2, Timeout) of
        {ok,_3} ->
            {Reply,_} = nfs_prot3_xdr:dec_link3res(_3, 0),
            {ok,Reply};
        Error ->
            Error
    end.

nfsproc3_rename_3(Clnt, _1) ->
    nfsproc3_rename_3(Clnt, _1, infinity).

nfsproc3_rename_3(Clnt, _1, Timeout) ->
    _2 = [nfs_prot3_xdr:enc_rename3args(_1)],
    case rpc_client:call(Clnt, 14, _2, Timeout) of
        {ok,_3} ->
            {Reply,_} = nfs_prot3_xdr:dec_rename3res(_3, 0),
            {ok,Reply};
        Error ->
            Error
    end.

nfsproc3_rmdir_3(Clnt, _1) ->
    nfsproc3_rmdir_3(Clnt, _1, infinity).

nfsproc3_rmdir_3(Clnt, _1, Timeout) ->
    _2 = [nfs_prot3_xdr:enc_rmdir3args(_1)],
    case rpc_client:call(Clnt, 13, _2, Timeout) of
        {ok,_3} ->
            {Reply,_} = nfs_prot3_xdr:dec_rmdir3res(_3, 0),
            {ok,Reply};
        Error ->
            Error
    end.

nfsproc3_remove_3(Clnt, _1) ->
    nfsproc3_remove_3(Clnt, _1, infinity).

nfsproc3_remove_3(Clnt, _1, Timeout) ->
    _2 = [nfs_prot3_xdr:enc_remove3args(_1)],
    case rpc_client:call(Clnt, 12, _2, Timeout) of
        {ok,_3} ->
            {Reply,_} = nfs_prot3_xdr:dec_remove3res(_3, 0),
            {ok,Reply};
        Error ->
            Error
    end.

nfsproc3_mknod_3(Clnt, _1) ->
    nfsproc3_mknod_3(Clnt, _1, infinity).

nfsproc3_mknod_3(Clnt, _1, Timeout) ->
    _2 = [nfs_prot3_xdr:enc_mknod3args(_1)],
    case rpc_client:call(Clnt, 11, _2, Timeout) of
        {ok,_3} ->
            {Reply,_} = nfs_prot3_xdr:dec_mknod3res(_3, 0),
            {ok,Reply};
        Error ->
            Error
    end.

nfsproc3_symlink_3(Clnt, _1) ->
    nfsproc3_symlink_3(Clnt, _1, infinity).

nfsproc3_symlink_3(Clnt, _1, Timeout) ->
    _2 = [nfs_prot3_xdr:enc_symlink3args(_1)],
    case rpc_client:call(Clnt, 10, _2, Timeout) of
        {ok,_3} ->
            {Reply,_} = nfs_prot3_xdr:dec_symlink3res(_3, 0),
            {ok,Reply};
        Error ->
            Error
    end.

nfsproc3_mkdir_3(Clnt, _1) ->
    nfsproc3_mkdir_3(Clnt, _1, infinity).

nfsproc3_mkdir_3(Clnt, _1, Timeout) ->
    _2 = [nfs_prot3_xdr:enc_mkdir3args(_1)],
    case rpc_client:call(Clnt, 9, _2, Timeout) of
        {ok,_3} ->
            {Reply,_} = nfs_prot3_xdr:dec_mkdir3res(_3, 0),
            {ok,Reply};
        Error ->
            Error
    end.

nfsproc3_create_3(Clnt, _1) ->
    nfsproc3_create_3(Clnt, _1, infinity).

nfsproc3_create_3(Clnt, _1, Timeout) ->
    _2 = [nfs_prot3_xdr:enc_create3args(_1)],
    case rpc_client:call(Clnt, 8, _2, Timeout) of
        {ok,_3} ->
            {Reply,_} = nfs_prot3_xdr:dec_create3res(_3, 0),
            {ok,Reply};
        Error ->
            Error
    end.

nfsproc3_write_3(Clnt, _1) ->
    nfsproc3_write_3(Clnt, _1, infinity).

nfsproc3_write_3(Clnt, _1, Timeout) ->
    _2 = [nfs_prot3_xdr:enc_write3args(_1)],
    case rpc_client:call(Clnt, 7, _2, Timeout) of
        {ok,_3} ->
            {Reply,_} = nfs_prot3_xdr:dec_write3res(_3, 0),
            {ok,Reply};
        Error ->
            Error
    end.

nfsproc3_read_3(Clnt, _1) ->
    nfsproc3_read_3(Clnt, _1, infinity).

nfsproc3_read_3(Clnt, _1, Timeout) ->
    _2 = [nfs_prot3_xdr:enc_read3args(_1)],
    case rpc_client:call(Clnt, 6, _2, Timeout) of
        {ok,_3} ->
            {Reply,_} = nfs_prot3_xdr:dec_read3res(_3, 0),
            {ok,Reply};
        Error ->
            Error
    end.

nfsproc3_readlink_3(Clnt, _1) ->
    nfsproc3_readlink_3(Clnt, _1, infinity).

nfsproc3_readlink_3(Clnt, _1, Timeout) ->
    _2 = [nfs_prot3_xdr:enc_readlink3args(_1)],
    case rpc_client:call(Clnt, 5, _2, Timeout) of
        {ok,_3} ->
            {Reply,_} = nfs_prot3_xdr:dec_readlink3res(_3, 0),
            {ok,Reply};
        Error ->
            Error
    end.

nfsproc3_access_3(Clnt, _1) ->
    nfsproc3_access_3(Clnt, _1, infinity).

nfsproc3_access_3(Clnt, _1, Timeout) ->
    _2 = [nfs_prot3_xdr:enc_access3args(_1)],
    case rpc_client:call(Clnt, 4, _2, Timeout) of
        {ok,_3} ->
            {Reply,_} = nfs_prot3_xdr:dec_access3res(_3, 0),
            {ok,Reply};
        Error ->
            Error
    end.

nfsproc3_lookup_3(Clnt, _1) ->
    nfsproc3_lookup_3(Clnt, _1, infinity).

nfsproc3_lookup_3(Clnt, _1, Timeout) ->
    _2 = [nfs_prot3_xdr:enc_lookup3args(_1)],
    case rpc_client:call(Clnt, 3, _2, Timeout) of
        {ok,_3} ->
            {Reply,_} = nfs_prot3_xdr:dec_lookup3res(_3, 0),
            {ok,Reply};
        Error ->
            Error
    end.

nfsproc3_setattr_3(Clnt, _1) ->
    nfsproc3_setattr_3(Clnt, _1, infinity).

nfsproc3_setattr_3(Clnt, _1, Timeout) ->
    _2 = [nfs_prot3_xdr:enc_setattr3args(_1)],
    case rpc_client:call(Clnt, 2, _2, Timeout) of
        {ok,_3} ->
            {Reply,_} = nfs_prot3_xdr:dec_setattr3res(_3, 0),
            {ok,Reply};
        Error ->
            Error
    end.

nfsproc3_getattr_3(Clnt, _1) ->
    nfsproc3_getattr_3(Clnt, _1, infinity).

nfsproc3_getattr_3(Clnt, _1, Timeout) ->
    _2 = [nfs_prot3_xdr:enc_getattr3args(_1)],
    case rpc_client:call(Clnt, 1, _2, Timeout) of
        {ok,_3} ->
            {Reply,_} = nfs_prot3_xdr:dec_getattr3res(_3, 0),
            {ok,Reply};
        Error ->
            Error
    end.

nfsproc3_null_3(Clnt) ->
    nfsproc3_null_3(Clnt, infinity).

nfsproc3_null_3(Clnt, Timeout) ->
    _1 = [],
    case rpc_client:call(Clnt, 0, _1, Timeout) of
        {ok,_2} ->
            {Reply,_} = {void,0},
            {ok,Reply};
        Error ->
            Error
    end.
