%%
%% rpc_xdr was generated by erpcgen (do not edit)
%% date: Dec 2 23:48:15 2012
%%
-module(rpc_xdr).
-export([enc_msg_type/1, dec_msg_type/2]).
-export([enc_reply_stat/1, dec_reply_stat/2]).
-export([enc_accept_stat/1, dec_accept_stat/2]).
-export([enc_reject_stat/1, dec_reject_stat/2]).
-export([enc_auth_stat/1, dec_auth_stat/2]).
-export([enc_auth_flavor/1, dec_auth_flavor/2]).
-export([enc_opaque_auth/1, dec_opaque_auth/2]).
-export([enc_authsys_parms/1, dec_authsys_parms/2]).
-export([enc_call_body/1, dec_call_body/2]).
-export([enc_accepted_reply/1, dec_accepted_reply/2]).
-export([enc_rejected_reply/1, dec_rejected_reply/2]).
-export([enc_reply_body/1, dec_reply_body/2]).
-export([enc_rpc_msg/1, dec_rpc_msg/2]).

enc_msg_type(_1) ->
    case _1 of
        'CALL' ->
            <<0:32>>;
        'REPLY' ->
            <<1:32>>
    end.

dec_msg_type(_1, _2) ->
    begin
        <<_:_2/binary,_3:32,_/binary>> = _1,
        case _3 of
            0 ->
                {'CALL',_2 + 4};
            1 ->
                {'REPLY',_2 + 4}
        end
    end.

dec_msg_type_i2a(_4) ->
    case _4 of
        0 ->
            'CALL';
        1 ->
            'REPLY'
    end.

enc_reply_stat(_1) ->
    case _1 of
        'MSG_ACCEPTED' ->
            <<0:32>>;
        'MSG_DENIED' ->
            <<1:32>>
    end.

dec_reply_stat(_1, _2) ->
    begin
        <<_:_2/binary,_3:32,_/binary>> = _1,
        case _3 of
            0 ->
                {'MSG_ACCEPTED',_2 + 4};
            1 ->
                {'MSG_DENIED',_2 + 4}
        end
    end.

dec_reply_stat_i2a(_4) ->
    case _4 of
        0 ->
            'MSG_ACCEPTED';
        1 ->
            'MSG_DENIED'
    end.

enc_accept_stat(_1) ->
    case _1 of
        'SUCCESS' ->
            <<0:32>>;
        'PROG_UNAVAIL' ->
            <<1:32>>;
        'PROG_MISMATCH' ->
            <<2:32>>;
        'PROC_UNAVAIL' ->
            <<3:32>>;
        'GARBAGE_ARGS' ->
            <<4:32>>;
        'SYSTEM_ERR' ->
            <<5:32>>
    end.

dec_accept_stat(_1, _2) ->
    begin
        <<_:_2/binary,_3:32,_/binary>> = _1,
        case _3 of
            0 ->
                {'SUCCESS',_2 + 4};
            1 ->
                {'PROG_UNAVAIL',_2 + 4};
            2 ->
                {'PROG_MISMATCH',_2 + 4};
            3 ->
                {'PROC_UNAVAIL',_2 + 4};
            4 ->
                {'GARBAGE_ARGS',_2 + 4};
            5 ->
                {'SYSTEM_ERR',_2 + 4}
        end
    end.

dec_accept_stat_i2a(_4) ->
    case _4 of
        0 ->
            'SUCCESS';
        1 ->
            'PROG_UNAVAIL';
        2 ->
            'PROG_MISMATCH';
        3 ->
            'PROC_UNAVAIL';
        4 ->
            'GARBAGE_ARGS';
        5 ->
            'SYSTEM_ERR'
    end.

enc_reject_stat(_1) ->
    case _1 of
        'RPC_MISMATCH' ->
            <<0:32>>;
        'AUTH_ERROR' ->
            <<1:32>>
    end.

dec_reject_stat(_1, _2) ->
    begin
        <<_:_2/binary,_3:32,_/binary>> = _1,
        case _3 of
            0 ->
                {'RPC_MISMATCH',_2 + 4};
            1 ->
                {'AUTH_ERROR',_2 + 4}
        end
    end.

dec_reject_stat_i2a(_4) ->
    case _4 of
        0 ->
            'RPC_MISMATCH';
        1 ->
            'AUTH_ERROR'
    end.

enc_auth_stat(_1) ->
    case _1 of
        'AUTH_OK' ->
            <<0:32>>;
        'AUTH_BADCRED' ->
            <<1:32>>;
        'AUTH_REJECTEDCRED' ->
            <<2:32>>;
        'AUTH_BADVERF' ->
            <<3:32>>;
        'AUTH_REJECTEDVERF' ->
            <<4:32>>;
        'AUTH_TOOWEAK' ->
            <<5:32>>;
        'AUTH_INVALIDRESP' ->
            <<6:32>>;
        'AUTH_FAILED' ->
            <<7:32>>
    end.

dec_auth_stat(_1, _2) ->
    begin
        <<_:_2/binary,_3:32,_/binary>> = _1,
        case _3 of
            0 ->
                {'AUTH_OK',_2 + 4};
            1 ->
                {'AUTH_BADCRED',_2 + 4};
            2 ->
                {'AUTH_REJECTEDCRED',_2 + 4};
            3 ->
                {'AUTH_BADVERF',_2 + 4};
            4 ->
                {'AUTH_REJECTEDVERF',_2 + 4};
            5 ->
                {'AUTH_TOOWEAK',_2 + 4};
            6 ->
                {'AUTH_INVALIDRESP',_2 + 4};
            7 ->
                {'AUTH_FAILED',_2 + 4}
        end
    end.

dec_auth_stat_i2a(_4) ->
    case _4 of
        0 ->
            'AUTH_OK';
        1 ->
            'AUTH_BADCRED';
        2 ->
            'AUTH_REJECTEDCRED';
        3 ->
            'AUTH_BADVERF';
        4 ->
            'AUTH_REJECTEDVERF';
        5 ->
            'AUTH_TOOWEAK';
        6 ->
            'AUTH_INVALIDRESP';
        7 ->
            'AUTH_FAILED'
    end.

enc_auth_flavor(_1) ->
    case _1 of
        'AUTH_NONE' ->
            <<0:32>>;
        'AUTH_SYS' ->
            <<1:32>>;
        'AUTH_SHORT' ->
            <<2:32>>
    end.

dec_auth_flavor(_1, _2) ->
    begin
        <<_:_2/binary,_3:32,_/binary>> = _1,
        case _3 of
            0 ->
                {'AUTH_NONE',_2 + 4};
            1 ->
                {'AUTH_SYS',_2 + 4};
            2 ->
                {'AUTH_SHORT',_2 + 4}
        end
    end.

dec_auth_flavor_i2a(_4) ->
    case _4 of
        0 ->
            'AUTH_NONE';
        1 ->
            'AUTH_SYS';
        2 ->
            'AUTH_SHORT'
    end.

enc_opaque_auth(_1) ->
    case _1 of
        {_4,_2} ->
            [enc_auth_flavor(_4),
             begin
                 _3 = io_list_len(_2),
                 if
                     _3 =< 400 ->
                         [<<_3:32/unsigned>>,_2,enc_align(_3)];
                     true ->
                         exit({xdr,limit})
                 end
             end]
    end.

dec_opaque_auth(_1, _2) ->
    begin
        {_3,_4} = dec_auth_flavor(_1, _2),
        {_5,_6} =
            begin
                <<_:_4/binary,_7:32/unsigned,_/binary>> = _1,
                if
                    _7 > 400 ->
                        exit({xdr,limit});
                    true ->
                        _8 = _4 + 4,
                        <<_:_8/binary,_9:_7/binary,_/binary>> = _1,
                        {_9,_8 + align(_7)}
                end
            end,
        {{_3,_5},_6}
    end.

enc_authsys_parms(_1) ->
    case _1 of
        {_9,_7,_6,_5,_2} ->
            [<<_9:32>>,
             begin
                 _8 = io_list_len(_7),
                 if
                     _8 =< 255 ->
                         [<<_8:32/unsigned>>,_7,enc_align(_8)];
                     true ->
                         exit({xdr,limit})
                 end
             end,
             <<_6:32>>,
             <<_5:32>>,
             begin
                 _4 = length(_2),
                 if
                     _4 =< 16 ->
                         [<<_4:32/unsigned>>,
                          lists:map(fun(_3) ->
                                           <<_3:32>>
                                    end,
                                    _2)];
                     true ->
                         exit({xdr,limit})
                 end
             end]
    end.

dec_authsys_parms(_1, _2) ->
    begin
        begin
            <<_:_2/binary,_3:32/unsigned,_/binary>> = _1,
            _4 = _2 + 4
        end,
        {_5,_6} =
            begin
                <<_:_4/binary,_7:32/unsigned,_/binary>> = _1,
                if
                    _7 > 255 ->
                        exit({xdr,limit});
                    true ->
                        _8 = _4 + 4,
                        <<_:_8/binary,_9:_7/binary,_/binary>> = _1,
                        {_9,_8 + align(_7)}
                end
            end,
        begin
            <<_:_6/binary,_10:32/unsigned,_/binary>> = _1,
            _11 = _6 + 4
        end,
        begin
            <<_:_11/binary,_12:32/unsigned,_/binary>> = _1,
            _13 = _11 + 4
        end,
        {_14,_15} =
            begin
                <<_:_13/binary,_16:32/unsigned,_/binary>> = _1,
                map_elem(fun(_17, _18) ->
                                begin
                                    <<_:_18/binary,
                                      _19:32/unsigned,
                                      _/binary>> =
                                        _17,
                                    {_19,_18 + 4}
                                end
                         end,
                         _1,
                         _13 + 4,
                         16,
                         _16)
            end,
        {{_3,_5,_10,_12,_14},_15}
    end.

enc_call_body(_1) ->
    case _1 of
        {_7,_6,_5,_4,_3,_2} ->
            [<<_7:32>>,
             <<_6:32>>,
             <<_5:32>>,
             <<_4:32>>,
             enc_opaque_auth(_3),
             enc_opaque_auth(_2)]
    end.

dec_call_body(_1, _2) ->
    begin
        begin
            <<_:_2/binary,_3:32/unsigned,_/binary>> = _1,
            _4 = _2 + 4
        end,
        begin
            <<_:_4/binary,_5:32/unsigned,_/binary>> = _1,
            _6 = _4 + 4
        end,
        begin
            <<_:_6/binary,_7:32/unsigned,_/binary>> = _1,
            _8 = _6 + 4
        end,
        begin
            <<_:_8/binary,_9:32/unsigned,_/binary>> = _1,
            _10 = _8 + 4
        end,
        {_11,_12} = dec_opaque_auth(_1, _10),
        {_13,_14} = dec_opaque_auth(_1, _12),
        {{_3,_5,_7,_9,_11,_13},_14}
    end.

enc_accepted_reply(_1) ->
    case _1 of
        {_7,_2} ->
            [enc_opaque_auth(_7),
             case _2 of
                 {_3,_4} ->
                     [enc_accept_stat(_3),
                      case _3 of
                          'SUCCESS' ->
                              case io_list_len(_4) of
                                  0 ->
                                      _4;
                                  _ ->
                                      exit({xdr,limit})
                              end;
                          'PROG_MISMATCH' ->
                              case _4 of
                                  {_6,_5} ->
                                      [<<_6:32>>,<<_5:32>>]
                              end;
                          _ ->
                              []
                      end]
             end]
    end.

dec_accepted_reply(_1, _2) ->
    begin
        {_3,_4} = dec_opaque_auth(_1, _2),
        {_5,_6} =
            begin
                <<_:_4/binary,_7:32/signed,_/binary>> = _1,
                _10 = _4 + 4,
                case _7 of
                    0 ->
                        begin
                            <<_:_10/binary,_8:0/binary,_/binary>> = _1,
                            _9 = _10 + 0
                        end,
                        {{'SUCCESS',_8},_9};
                    2 ->
                        {_8,_9} =
                            begin
                                begin
                                    <<_:_10/binary,
                                      _12:32/unsigned,
                                      _/binary>> =
                                        _1,
                                    _13 = _10 + 4
                                end,
                                begin
                                    <<_:_13/binary,
                                      _14:32/unsigned,
                                      _/binary>> =
                                        _1,
                                    _15 = _13 + 4
                                end,
                                {{_12,_14},_15}
                            end,
                        {{'PROG_MISMATCH',_8},_9};
                    _ ->
                        {_8,_9} = {void,_10},
                        _11 = dec_accept_stat_i2a(_7),
                        {{_11,_8},_9}
                end
            end,
        {{_3,_5},_6}
    end.

enc_rejected_reply(_1) ->
    case _1 of
        {_2,_3} ->
            [enc_reject_stat(_2),
             case _2 of
                 'RPC_MISMATCH' ->
                     case _3 of
                         {_5,_4} ->
                             [<<_5:32>>,<<_4:32>>]
                     end;
                 'AUTH_ERROR' ->
                     enc_auth_stat(_3)
             end]
    end.

dec_rejected_reply(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4,_5} =
                    begin
                        begin
                            <<_:_6/binary,_7:32/unsigned,_/binary>> = _1,
                            _8 = _6 + 4
                        end,
                        begin
                            <<_:_8/binary,_9:32/unsigned,_/binary>> = _1,
                            _10 = _8 + 4
                        end,
                        {{_7,_9},_10}
                    end,
                {{'RPC_MISMATCH',_4},_5};
            1 ->
                {_4,_5} = dec_auth_stat(_1, _6),
                {{'AUTH_ERROR',_4},_5}
        end
    end.

enc_reply_body(_1) ->
    case _1 of
        {_2,_3} ->
            [enc_reply_stat(_2),
             case _2 of
                 'MSG_ACCEPTED' ->
                     enc_accepted_reply(_3);
                 'MSG_DENIED' ->
                     enc_rejected_reply(_3)
             end]
    end.

dec_reply_body(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4,_5} = dec_accepted_reply(_1, _6),
                {{'MSG_ACCEPTED',_4},_5};
            1 ->
                {_4,_5} = dec_rejected_reply(_1, _6),
                {{'MSG_DENIED',_4},_5}
        end
    end.

enc_rpc_msg(_1) ->
    case _1 of
        {_5,_2} ->
            [<<_5:32>>,
             case _2 of
                 {_3,_4} ->
                     [enc_msg_type(_3),
                      case _3 of
                          'CALL' ->
                              enc_call_body(_4);
                          'REPLY' ->
                              enc_reply_body(_4)
                      end]
             end]
    end.

dec_rpc_msg(_1, _2) ->
    begin
        begin
            <<_:_2/binary,_3:32/unsigned,_/binary>> = _1,
            _4 = _2 + 4
        end,
        {_5,_6} =
            begin
                <<_:_4/binary,_7:32/signed,_/binary>> = _1,
                _10 = _4 + 4,
                case _7 of
                    0 ->
                        {_8,_9} = dec_call_body(_1, _10),
                        {{'CALL',_8},_9};
                    1 ->
                        {_8,_9} = dec_reply_body(_1, _10),
                        {{'REPLY',_8},_9}
                end
            end,
        {{_3,_5},_6}
    end.

map_elem(Fun, Bin, Off, infinity, N) ->
  map_elem0(Fun, Bin, Off, N, []);
map_elem(Fun, Bin, Off, Max, N) when N =< Max ->
  map_elem0(Fun, Bin, Off, N, []).

map_elem0(Fun, Bin, Off, 0, L) ->
  {lists:reverse(L,[]), Off};
map_elem0(Fun, Bin, Off, N, L) ->
  {E,Off1} = Fun(Bin, Off),
map_elem0(Fun, Bin, Off1, N-1, [E|L]).

io_list_len(L) -> io_list_len(L, 0).
io_list_len([H|T], N) ->
  if
    H >= 0, H =< 255 -> io_list_len(T, N+1);
    is_list(H) -> io_list_len(T, io_list_len(H,N));
    is_binary(H) -> io_list_len(T, size(H) + N);
    true -> exit({xdr, opaque})
  end;
io_list_len(H, N) when is_binary(H) ->
  size(H) + N;
io_list_len([], N) ->
N.

enc_align(Len) ->
  case Len rem 4 of
    0 -> <<>>;
    1 -> <<0,0,0>>;
    2 -> <<0,0>>;
    3 -> <<0>>
  end.

align(Len) ->
  case Len rem 4 of
    0 -> Len;
    1 -> Len+3;
    2 -> Len+2;
    3 -> Len+1
  end.
