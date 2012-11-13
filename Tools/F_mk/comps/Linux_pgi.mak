    CC  := pgcc
    FC  := pgf95
    F90 := pgf95
    FFLAGS   += -module $(mdir) -I$(mdir) 
    F90FLAGS += -module $(mdir) -I$(mdir)

    ifdef OMP
      F90FLAGS += -mp=nonuma -Minfo=mp
      FFLAGS += -mp=nonuma -Minfo=mp
      CFLAGS += -mp=nonuma -Minfo=mp
    endif

    ifdef NDEBUG
      FFLAGS   += -fast -Minline -Mfpmisalign -fastsse -Mipa=fast
      F90FLAGS += -fast -Minline -Mfpmisalign -fastsse -Mipa=fast
      CFLAGS   += -fast -Minline -Mfpmisalign -fastsse -Mipa=fast
    else
      FFLAGS   += -g
      F90FLAGS += -g
    endif
