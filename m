Return-Path: <devicetree+bounces-213564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18EACB45C2E
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 17:18:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E328158302A
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 15:13:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C54C631B823;
	Fri,  5 Sep 2025 15:13:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b="ZDEj1IOK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6081631B806
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 15:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757085196; cv=none; b=ev1CSjk+4yiKLMa5E4rP2PiC/5wXCTPoe8LNxwlBg72+Da7CEX/0/V9eE2in3Jjz3ZMu5kXPSbvlvH75HXTWThD53618PpdMaQedItM5bVJy2YKkqJ1pX69l27GQhUIro8MbNybk/aeZHKahLWY5EHzAK8s/1H8b18JcxjgO8X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757085196; c=relaxed/simple;
	bh=vcbzZr+E02WokGut7C2c77Afxd5rpoCYAkJoIkII9d8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Flg0VgBW8+HTYxrPUPVteOAnN6gWAQ3X2taH/aG45cLxPsimbURk1aysR+IhVM9tis/fL2lFQ7EtIYwl75HgPyrUEwWVrckEs3ch84fD63tMKaE64es8FpMyjmCyRTkJoLIslojQJRIOhr7hpiPKbqe3Vvj+tZqGu5Bes9HimSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org; spf=none smtp.mailfrom=nigauri.org; dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b=ZDEj1IOK; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nigauri.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-61cb4374d2fso3484642a12.2
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 08:13:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20230601.gappssmtp.com; s=20230601; t=1757085192; x=1757689992; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DHMIdxjHKuTqVD8SOr4IvDDg7ji1cX6ZfEw+vHDGWBo=;
        b=ZDEj1IOKepbUvHpZzM3m2lRtZAMUowMVafek24OUbq6KU2Yuk9ii+QaQXkAnYIQfxy
         dy9FuNETwTcYZFNdIWkYC+dGAS8toGAG6DIsn5cIHxHryC/+F7gMkkWtAapjeFtLx1VP
         I3wNPlt8z2s2OOaPvABV02Cs3iciXbstXd4dOVshdfCedPrgQmxytng1IeGb2LkZML1e
         kDiuTD+OlqBPqKOQY3qA4xVp1PzAb7YUVlT6Od9S3E9HjfP/GpRqljMBhTTtj+UX2yw9
         yFsMpTfLhX/gZ/IWde0k1nOXrsXESVYcG/g4vrVfQP0vZK/0pFrcK/raIhB9JFtF00d5
         efMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757085192; x=1757689992;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DHMIdxjHKuTqVD8SOr4IvDDg7ji1cX6ZfEw+vHDGWBo=;
        b=XUyv1wtmJro4Q6UvyzPwi9qQv2MokxENAJEXH1RDZV3PxmU4ZSXr1XYxiyZfvBJu47
         EBPBUEV1fuJzCdH91Yjt0LoK6SX1/CCepKS2RUNXY8VZ/KdSdo66YugxGzpjgoIo7kDV
         VLdZBkDd/n/BJK+9rZ1UrVZSOhEo/hE0IwGL44q8m0Rvaa3DKxgBdshxpMSXTvHkGdwc
         Ec7MfTvaaOHKljuB+joQuXnUcEz4jVy/tOHdJiYZ8uI2dRUvT651wKHcdwxjdtdro32Y
         I8RGlPl/emQURf4v6aH24ytYlx94p2qof3v7NmT3QsQRmx0bN35lB4IMyTvpPon3U/49
         BHCA==
X-Forwarded-Encrypted: i=1; AJvYcCVWWQwrgDcnC4425YFac/YIAsJcflJV6w82w0mCaAKj89fc/q4LNRSXde3Bai27KcAkVfeETc46aWEH@vger.kernel.org
X-Gm-Message-State: AOJu0YyV7dcf1FNpwD6FZ8yImsuuugrvxUqH0WKPOmGNvqMjd2QvavKh
	GA8ycmu/9Z5kw4wcdTj2cx9hy9xZPPk+SknMNQKldEPTbm9hFnf4YnQd159RiavHGdv/wSP8H7b
	c7lPNcVbx6BJJVAZborVGQ1uN1G4g3lBW8htQS9A=
X-Gm-Gg: ASbGnctR6y0z0nIrNGiX53aS1Sh7iEW8i+bkCZ0ICDpx02hZ36dtY9EVYwD6YKBrp8N
	+SX5lRiPtcegAGRmjun2DttEgTD0PKk4Czrz6xffRgSocKBCND7yK+aq6WXrPNfTNNE9NNjMDSA
	v8iNe/MGmKExdI/NPYqmr8IaDUwcVaSKNsVvPKvHB4FOasAc+k7tj66XJWq/Gp5NMrpw6dD1j5
X-Google-Smtp-Source: AGHT+IE5RR3xHpHhW22PdOxC27cxpSABsoBUyfebHCL+SzRaex/Yg5PA4kv6ZoooBZkF06NN2M4yziw9mmi8ooK96Xw=
X-Received: by 2002:a05:6402:35d6:b0:61e:d34c:d1d3 with SMTP id
 4fb4d7f45d1cf-61ed34cd400mr10877470a12.19.1757085191500; Fri, 05 Sep 2025
 08:13:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241121071325.2148854-1-iwamatsu@nigauri.org> <CABMQnVJVTmnsx3RNYK01ikZ-jnn_y4pbrNAeZaKPzz0N_YFz5g@mail.gmail.com>
In-Reply-To: <CABMQnVJVTmnsx3RNYK01ikZ-jnn_y4pbrNAeZaKPzz0N_YFz5g@mail.gmail.com>
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Date: Sat, 6 Sep 2025 00:12:44 +0900
X-Gm-Features: Ac12FXzTX4H5emedmc2ovwKAlGVEjYg6lVwTcyicNPf8FtCjYiYPI4wGLhju7oc
Message-ID: <CABMQnVJsK3wNRQfGjomggKcwL5zaqBchoAKajbVb+ZXmrwn2iQ@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: dts: socfpga: sodia: Fix mdio bus probe and PHY address
To: dinguyen@kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org
Cc: Andrew Lunn <andrew@lunn.ch>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

ping?

2025=E5=B9=B41=E6=9C=8814=E6=97=A5(=E7=81=AB) 22:50 Nobuhiro Iwamatsu <iwam=
atsu@nigauri.org>:
>
> Hi Dinh,
>
> Could you check and apply this patch?
>
> Thanks,
>   Nobuhiro
>
> 2024=E5=B9=B411=E6=9C=8821=E6=97=A5(=E6=9C=A8) 16:13 Nobuhiro Iwamatsu <i=
wamatsu@nigauri.org>:
> >
> > On SoCFPGA/Sodia board, mdio bus cannot be probed, so the PHY cannot be
> > found and the network device does not work.
> >
> > ```
> > stmmaceth ff702000.ethernet eth0: __stmmac_open: Cannot attach to PHY (=
error: -19)
> > ```
> >
> > To probe the mdio bus, add "snps,dwmac-mdio" as compatible string of th=
e
> > mdio bus. Also the PHY address connected to this board is 4. Therefore,
> > change to 4.
> >
> > Cc: stable@vger.kernel.org # 6.3+
> > Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
> > ---
> >  v2: Update commit message from 'ID' to 'address'.
> >      Drop Fixes tag, because that commit is not the cause.
> >
> >  arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dts | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dts=
 b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dts
> > index ce0d6514eeb571..e4794ccb8e413f 100644
> > --- a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dts
> > +++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dts
> > @@ -66,8 +66,10 @@ &gmac1 {
> >         mdio0 {
> >                 #address-cells =3D <1>;
> >                 #size-cells =3D <0>;
> > -               phy0: ethernet-phy@0 {
> > -                       reg =3D <0>;
> > +               compatible =3D "snps,dwmac-mdio";
> > +
> > +               phy0: ethernet-phy@4 {
> > +                       reg =3D <4>;
> >                         rxd0-skew-ps =3D <0>;
> >                         rxd1-skew-ps =3D <0>;
> >                         rxd2-skew-ps =3D <0>;
> > --
> > 2.45.2
> >
>
>
> --
> Nobuhiro Iwamatsu
>    iwamatsu at {nigauri.org / debian.org / kernel.org}
>    GPG ID: 32247FBB40AD1FA6



--=20
Nobuhiro Iwamatsu
   iwamatsu at {nigauri.org / debian.org / kernel.org}
   GPG ID: 32247FBB40AD1FA6

