*deck,usermatps    USERDISTRIB  parallel                                gal
      subroutine usermatps(
     &                   matId, noel,npt, layer, kspt,
     &                   jstep,kinc,keycut,
     &                   ndi,nshr,ntens,nstatv,nprop,
     &                   time,dTime,temp,dtemp,
     &                   stress,statev,ddsdde,sse,spd,epseq,
     &                   stran,dstran, epsPl, props, coords, 
     &                   var0, dfgrd0, dfgrd1,
     &                   tsstif, epsZZ,
     &                   var1, var2, var3, var4, var5,
     &                   var6, var7, var8)
!DEC$ ATTRIBUTES DLLEXPORT, ALIAS:"USERMATPS"::usermatps 
#include "impcom.inc"   
      EXTERNAL         GET_ELMDATA, PUT_ELMDATA
      
      INTEGER 
     &                 matId, noel,
     &                 npt, Layer, jstep, kspt,
     &                 kdstep,kinc,keycut,
     &                 nDi,nShr,ntens,nStatv,nProp
      DOUBLE PRECISION 
     &                 Time,    dTime,   Temp,    dTemp,
     &                 sse,   spd,   epseq,   epsZZ
      DOUBLE PRECISION 
     &                 stress  (ntens  ), statev (nstatv), 
     &                 ddsdde(ntens,ntens),
     &                 stran(ntens), dstran(ntens), 
     &                 epsPl   (ntens  ), props(nprop), 
     &                 coords  (3),       
     &                 dfgrd0 (3,3), dfgrd1 (3,3),
     &                 tsstif  (2), sigi(ntens)
c
     
      DOUBLE PRECISION var0, var1, var2, var3, var4, var5,
     &                 var6, var7, var8, s, t
      
      
      DOUBLE PRECISION 
     1 ddsddt(ntens),drplde(ntens),
     2 predef(1),dpred(1),drot(3,3)
    
      parameter newton=1000, toler=1.0d-8

      DOUBLE PRECISION xiden(3,3),dpstran(4),stra(3,3),
     1 destran(4),dstr(3,3),strains(3,3),
     2 eelas(4),dpstrn(3,3),eplas(4),strad(3,3),dstre(4),xjaci(2,2),
     3 dstra(3,3),dstrad(3,3),strain(3,3),eta(14),deriv(2,4),xjacm(2,2)
      
      DOUBLE PRECISION E, xnue, ebulk3, xk, eg2, eg, elam,
     1 syield, ele, sigmaf,sigmae,h, def, defi
      
      INTEGER k1, k2, i,kewton, k, kflag, j, prev
      
      DOUBLE PRECISION a1, a2, a3, a4, b1, b2, b3, b4, djacb, etat,
     1 rhs, dabs, deqpl, ep, q, r, ene,
     2 xm ,b,gnd, ssd,td
c     branch testps      
c     state variables array for all integration points
      DOUBLE PRECISION SVAR(4,nstatv), SVARtmp(nstatv)
      DOUBLE PRECISION tmp,lamme
c
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     obtain the gradient values from all integration points

      
      return
      end
