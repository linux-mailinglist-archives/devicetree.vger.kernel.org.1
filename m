Return-Path: <devicetree+bounces-59707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C188A6BEE
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 15:12:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 75F8BB212C1
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 13:12:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D95C12C819;
	Tue, 16 Apr 2024 13:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="etn20wTh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2819612C46C
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 13:11:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713273096; cv=none; b=vE2tGRTAFshVgm6wTDuK4dl6aqoIiuF7511OiPdbdnAXsTdvN/cFtFWR7yy/5gcQyUXujVouCh0aLFBKgXmWlB2+9qhMifHCMvOYwK5VOtkSg6TXyU7bQDHAf0NhqTWuR2cjPH9MZJptZFU7j4EEnudOcsc063kTRvz1wG+zFuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713273096; c=relaxed/simple;
	bh=FMud9HK4Txi9Iloc/q5Mve8zMEYyQTCHPEZjygPTd+8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RaYqrtFAHD3O4KMCkiGepelCp01h/snGnSqYteeXjbokbPc+Pj+NTx2qmEhfwGUiur5AzvU+7yXtjYZpyvjBYyX1DnVdHwAM9LIsC4iMMG0dP26tTZjNeWi6B4ZqsGLR5kj2Th7GWSWB76MhFvawbnuhMEd2tl6foQWN27LMYSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=etn20wTh; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2a53a4a283eso3675594a91.0
        for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 06:11:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713273090; x=1713877890; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jZPeQ9YwB2tF4++h7n2kgZp1SSqfxUcQvkgkrBvzhQQ=;
        b=etn20wThQeu5+moeHxcQzwc58lqg46TfBktpQ6c3Dfgtm/OBQ1LuHDnVqAwonstk5I
         vUuMrzh3hzPRLtu5aZP2sm0277un9oOi01s6Vwd2hia2osg7kEirjxRNgGHbaR+WW8KN
         pFYlgxGEDOuqbU6VyM/7PqVVynEe0BdADG+9c6/wc4Eagg+3QYG6AGTa613liU+eblzi
         ibhuw9Ku7ed42+cPsPYTNG7zML5bPPFw+XMKcCm9w3laeGE6DYqxFKySSKG4Lg17HdJZ
         2wLdvREcSLHoZn5RNGkp39T8906OPSTZ2NjTFi9kP+DIRYeMkv6XdtFidJZItB0Lu6Mg
         olgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713273090; x=1713877890;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jZPeQ9YwB2tF4++h7n2kgZp1SSqfxUcQvkgkrBvzhQQ=;
        b=ghYzz95EOelQY89Vx4umZjB37FjBLRdQEtRO4X8XvhdLjcXbcUVL85zKcHt5U5v1ot
         81VTKDv2caImVwad0p+EAmAD3i4xkYj2cYDMWHgC8SCLMRq7DSk48QN60FJkcmp+3MQc
         hKyMINyTshKShvHoXQTrwR9sMWfypBsoc18DnsjK4E626oe7NI7D/NIw6fcjVFAmHtNW
         UjBHkmZd2RywTf8z3z9y3jNjYGJ7EtbYKv8R+MYR//oDokSfaKK7aDqnc6xGs/ygdSBC
         fSe3KtveHnC50TEudQHpdR3AxI9aM/uJ1LvCs281iqWi+VUAHal1kj24x0HKElE02XX1
         JhAQ==
X-Forwarded-Encrypted: i=1; AJvYcCUmwRNRmt7Vr5Oc2jVMycpMkwYs33ZdLXmfAulTdZ1wEdBab74lTO/4qBmsRfXLUlXByDGh1qnxstiTlnfTadB0ExAZ2RX2rUNvaw==
X-Gm-Message-State: AOJu0Yy/A5JV7cTuMJ+/Wf0nOeETIB6qy3dGwMlLSbiJWOYLMloeYuuW
	A8oauo/iwB7csaVvVw38VOTZmjgSCw/TbR1DwfqUDtwmZpNUog7mQbWyJhHrW27lNVR5VE1SCDH
	HeJXK8d4HMpbRdAcgk026bM7s97I=
X-Google-Smtp-Source: AGHT+IFzD1rh2qZ23AsZb3QVgRg8Tiuoux9ZgSgycHvDEg/8cqCQUPMy4CmD0O8wRUYekZwsbgGcvTdTzex4J9tnJv4=
X-Received: by 2002:a17:90b:3a8c:b0:2a6:ff2e:dce1 with SMTP id
 om12-20020a17090b3a8c00b002a6ff2edce1mr10060329pjb.10.1713273090238; Tue, 16
 Apr 2024 06:11:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240405202243.46278-1-marex@denx.de> <CAHCN7xKX7v4tmhjvoPLirEoUG91jpu-8R2DV9eE=mnWt=3FffA@mail.gmail.com>
 <8c1935d1-7f59-4742-9659-bf87ac4b736c@denx.de> <5771435.DvuYhMxLoT@steina-w>
In-Reply-To: <5771435.DvuYhMxLoT@steina-w>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 16 Apr 2024 08:11:18 -0500
Message-ID: <CAHCN7xLVhCWZZ5jaZTaxeA56dJkBEGY3cg_UYtWMZ=BGA-moOw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mp: Align both CSI2 pixel clock
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, linux-arm-kernel@lists.infradead.org, 
	Conor Dooley <conor+dt@kernel.org>, Fabio Estevam <festevam@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Paul Elder <paul.elder@ideasonboard.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, Marek Vasut <marex@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 8, 2024 at 5:14=E2=80=AFAM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
>
> Hi everyone,
>
> Am Samstag, 6. April 2024, 04:58:39 CEST schrieb Marek Vasut:
> > On 4/5/24 11:04 PM, Adam Ford wrote:
> > > On Fri, Apr 5, 2024 at 3:43=E2=80=AFPM Laurent Pinchart
> > > <laurent.pinchart@ideasonboard.com> wrote:
> > >>
> > >> Hi Marek,
> > >>
> > >> (CC'ing Adam)
> > >>
> > >> Thank you for the patch.
> > >>
> > >> On Fri, Apr 05, 2024 at 10:22:26PM +0200, Marek Vasut wrote:
> > >>> Configure both CSI2 assigned-clock-rates the same way.
> > >>> There does not seem to be any reason for keeping the
> > >>> two CSI2 pixel clock set to different frequencies.
> > >>
> > >> There's an issue when using two cameras concurrently. This has been
> > >> discussed some time ago on the linux-media mailing list, see [1]. Ad=
am
> > >> knows more than I do on this topic.
> > >>
> > >> [1] https://lore.kernel.org/linux-media/CAHCN7x+kymRGO2kxvN2=3DzLiqR=
jfTc3hdf3VdNVkWjsW3La0bnA@mail.gmail.com/
> > >>
> > >>> Signed-off-by: Marek Vasut <marex@denx.de>
> > >>> ---
> > >>> Cc: Conor Dooley <conor+dt@kernel.org>
> > >>> Cc: Fabio Estevam <festevam@gmail.com>
> > >>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> > >>> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > >>> Cc: Paul Elder <paul.elder@ideasonboard.com>
> > >>> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> > >>> Cc: Rob Herring <robh@kernel.org>
> > >>> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> > >>> Cc: Shawn Guo <shawnguo@kernel.org>
> > >>> Cc: devicetree@vger.kernel.org
> > >>> Cc: imx@lists.linux.dev
> > >>> Cc: linux-arm-kernel@lists.infradead.org
> > >>> ---
> > >>>   arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 +-
> > >>>   1 file changed, 1 insertion(+), 1 deletion(-)
> > >>>
> > >>> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64=
/boot/dts/freescale/imx8mp.dtsi
> > >>> index 1bb96e96639f2..2e9ce0c3a9815 100644
> > >>> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > >>> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > >>> @@ -1703,7 +1703,7 @@ mipi_csi_1: csi@32e50000 {
> > >>>                                                  <&clk IMX8MP_CLK_M=
EDIA_MIPI_PHY1_REF>;
> > >>>                                assigned-clock-parents =3D <&clk IMX=
8MP_SYS_PLL2_1000M>,
> > >>>                                                         <&clk IMX8M=
P_CLK_24M>;
> > >>> -                             assigned-clock-rates =3D <266000000>;
> > >>> +                             assigned-clock-rates =3D <500000000>;
> > >
> > > I am traveling, so I don't have the technical documents in front of
> > > me, but I beleive this is an over-drive speed, and 400MHz would be th=
e
> > > single clock, standard rate.  I created an imx8mm-overdrive and
> > > imx8mn-overdrive dtsi file to let users who operate in overdrive mode
> > > to update their clocks in one place.
> > >
> > > I also think this goes down if the user is running two cameras instea=
d
> > > of one.  I re-read the old thread, and it's coming back to me, but
> > > until I can get settled into my hotel in Germany, I won't have time t=
o
> > > review.  I think the original idea was to use the lowest, conservativ=
e
> > > value with the idea that people can tweak their clock settings if
> > > they're only running one and if they are running in over-drive mode.
> >
> > MX8MPCEC does indeed read 400 MHz regular, 500 MHz overdrive.
> >
> > Shall we align both CSI2 ports to 400 MHz ? Currently they are one 500
> > MHz and the other 266 MHz .
>
> No, that won't do. The (industrial products) datasheet says (Table 1):
> * Single camera on CSI1: 400/500 MHz in normal/overdrive mode
> * Single camera on CSI2: 277 MHz
> * Dual camera on CSI1 & CSI2: 266 MHz
>
> Assuming you need CSI2 more likely in a dual camera setup only, defaultin=
g to
> 266MHz seems sensible to me.

I agree.  I think that at a minimum, the 500MHz clock should be
reduced to 400MHz since 500MHz requires overdrive mode, but the safest
clock rate would be to set both to 266MHz.  Would it be appropriate to
add a note to the device tree indicating that a single camera
operating mode could potentially increase this to 400/500 depending on
overdrive mode?

adam

>
> Best regards,
> Alexander
> --
> TQ-Systems GmbH | M=C3=BChlstra=C3=9Fe 2, Gut Delling | 82229 Seefeld, Ge=
rmany
> Amtsgericht M=C3=BCnchen, HRB 105018
> Gesch=C3=A4ftsf=C3=BChrer: Detlef Schneider, R=C3=BCdiger Stahl, Stefan S=
chneider
> http://www.tq-group.com/
>
>

