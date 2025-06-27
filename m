Return-Path: <devicetree+bounces-190617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CD42AAEC356
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 01:52:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5CA273AB358
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 23:51:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F39EF2900BA;
	Fri, 27 Jun 2025 23:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gateworks.com header.i=@gateworks.com header.b="Dys1RGIP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F93F39855
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 23:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751068316; cv=none; b=I72HLi01YPaHFT2akWI20b4ADbdD1othHmDGe6K5ACvzZXEIFJ2vF2JnKM55buAm9LDg5Q/F9JcQ0JY+duOA5d+2q8TJE4i4JlbEr6pmtQFNnONFvUUWWupYOvwuLv97dIo3deqSgdsvc9jymKLnvznPtmb6iQSjnmhe5mb/H0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751068316; c=relaxed/simple;
	bh=kyrV6L+meAj02dvvdma6O77Vtcf1w8s3JJQjUVYj4uw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dP1kIWIQpj/QQ7VtPfXsTxp7J7x08G9ZX0i67u2+bjqhWBCfgCXKQJzLOv1O4G/phMX0xyy3uA/rlDpJcAaq+ZD+X+d1yTEH0njTZ1RPeP5YFAYdWce0mQOpdLdjB9dHoIKHhdP7fQUIIbwMR9bbWl2PuYQJF1sUY0W+9RhpZJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gateworks.com; spf=pass smtp.mailfrom=gateworks.com; dkim=pass (2048-bit key) header.d=gateworks.com header.i=@gateworks.com header.b=Dys1RGIP; arc=none smtp.client-ip=209.85.161.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gateworks.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gateworks.com
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-60f0a92391bso213770eaf.0
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 16:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks.com; s=google; t=1751068314; x=1751673114; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BzzFxvtsJDUS1GN+Rp5blvMdsxvFtXnK7MAb3nkjiUk=;
        b=Dys1RGIPVSHRcyuObRgkVvQ67a3I5WYd/K7/Z1YRbWXL1CTzveSL6RgLfAosN7joDd
         dnmGDhGgDMjUiR3ACd/7nw11i7J/yNH7P4U6/wFd093li+PjedN8xj4An+R//ZBhGsY8
         zJ+ZYqXqygMuStuwDEZN3KA8cToyB9AgtOFoeXEnym+se0yRAhNPALCIm9yPFl3127nX
         QNIE4lnPSHjG4c3hdKfBFLGL8CtltaEzPxMaBWMAhOhW/GYp/BHeLdJwHyooAeAmeIkt
         w9lmzSXCT0cI10vlhpS96lycYhPdVUFHlIIfnO41mk0+dkcW1Nx/i28YMQZP3K6yVNXx
         r3pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751068314; x=1751673114;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BzzFxvtsJDUS1GN+Rp5blvMdsxvFtXnK7MAb3nkjiUk=;
        b=Wc3PW2vZSdY1i/gz/t+w01MeT0/JP67LvZJQMPHSpm4Ibz7fGHVBWFYEdC0ofm27Gp
         uNfCB3aO/+FG8PTqjQ3YjCay2oG0MwNs7W676YGJqhVFJPtooFyw2vqMEDfOdxwylOdZ
         bR53AYMICb1tI89tDXaBlvkn42hWeJNhAXs429xbDITHMfSI4JjuFA80SN3aJsEDpxtx
         Q05BbLN/+EUaTIp3neD4QJQDb0T/hEMbs+wt/HVGKIHUw49dA1CDVK2unEKfaeMVC0Vg
         IgyLyY1KPKYFoTA5uIK/Spvodncc+jtlMk8jwuTxbMbr/hn2KxjzuF38QxJX9xv/BXC1
         LpYg==
X-Forwarded-Encrypted: i=1; AJvYcCUVzBEq6K17UjuTIKuDWb+QssstpJOan1uTsi6SSkQ8VWJaEnrZ5Fy4Fe1tBU6Vl4c7or3emhggVkGk@vger.kernel.org
X-Gm-Message-State: AOJu0YxmiW6x58juxzhbSwH/Ep+bOoWOQy6QilIeb5cjecvVHczAQQqI
	sEEj+vUQylo4W4+AS6TVsk7/MakroJWkocSPPM4R0yMqxLHeUJ/xYO4MKuZK8aA3HDA/A9O/ILA
	BILwPOmoAS8Ay5EKy0S1qo246pgJXMYD9Uj2/Ud1opA==
X-Gm-Gg: ASbGncsSyAz7St/qCJbb8wmSh0Qv5gFvyXr5zgPKgAhza8JezlbdS2VLAdb9kdEEvlg
	jjfzrWGP0XXCXpWLFe6jSw5H70/OltxxPDNJsYyZMUERBT0tZIKXqzjUYXUfRTKkBXED8fgJbC/
	qLdLkWHmuPC8p2KiWtgrTkMXc0TNh07URkkz/nQTO2pkM=
X-Google-Smtp-Source: AGHT+IGgc47EYY0K8HdBdfElHz/fGDss2oWTxTnf5NF11fTfAkKrJuQZMypuhZquvGUVIV3cfJTO7ety3y21wfQ3YXo=
X-Received: by 2002:a4a:ec42:0:b0:611:befc:38e5 with SMTP id
 006d021491bc7-611befc396emr2467182eaf.4.1751068314368; Fri, 27 Jun 2025
 16:51:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250620213447.56392-1-aford173@gmail.com> <CAJ+vNU0caeeC6in5dO_jkkbYNAnTL7drBZcmNBsstbrPWqUkHw@mail.gmail.com>
 <CAHCN7x++XGXu6DsPaOc2EpAbxzy+RZbDq5A5-j5a4roGDhv4fQ@mail.gmail.com>
In-Reply-To: <CAHCN7x++XGXu6DsPaOc2EpAbxzy+RZbDq5A5-j5a4roGDhv4fQ@mail.gmail.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Fri, 27 Jun 2025 16:51:43 -0700
X-Gm-Features: Ac12FXwXGulBL0jbVqQnJxN_WDCz81yMYRpGFHs9RhAW_Av5urg3MXFIWan08mk
Message-ID: <CAJ+vNU2iY4V3yp_58NTSht2XbS_YiWU+T5jn7fcbrkBMGygzJA@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: imx8mm-beacon: Fix HS400 USDHC clock speed
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, aford@beaconembedded.com, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 27, 2025 at 11:40=E2=80=AFAM Adam Ford <aford173@gmail.com> wro=
te:
>
> On Fri, Jun 27, 2025 at 12:56=E2=80=AFPM Tim Harvey <tharvey@gateworks.co=
m> wrote:
> >
> > On Fri, Jun 20, 2025 at 2:52=E2=80=AFPM Adam Ford <aford173@gmail.com> =
wrote:
> > >
> > > The reference manual for the i.MX8MM states the clock rate in
> > > MMC mode is 1/2 of the input clock, therefore to properly run
> > > at HS400 rates, the input clock must be 400MHz to operate at
> > > 200MHz.  Currently the clock is set to 200MHz which is half the
> > > rate it should be, so the throughput is half of what it should be
> > > for HS400 operation.
> > >
> > > Fixes: 593816fa2f35 ("arm64: dts: imx: Add Beacon i.MX8m-Mini develop=
ment kit")
> > > Signed-off-by: Adam Ford <aford173@gmail.com>
> > >
> > > diff --git a/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi b/a=
rch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi
> > > index 21bcd82fd092..8287a7f66ed3 100644
> > > --- a/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi
> > > +++ b/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi
> > > @@ -294,6 +294,8 @@ &usdhc3 {
> > >         pinctrl-0 =3D <&pinctrl_usdhc3>;
> > >         pinctrl-1 =3D <&pinctrl_usdhc3_100mhz>;
> > >         pinctrl-2 =3D <&pinctrl_usdhc3_200mhz>;
> > > +       assigned-clocks =3D <&clk IMX8MM_CLK_USDHC3>;
> > > +       assigned-clock-rates =3D <400000000>;
> > >         bus-width =3D <8>;
> > >         non-removable;
> > >         status =3D "okay";
> > > --
> > > 2.48.1
> > >
> > >
> >
> > Hi Adam,
> >
> > This caught my interest. Where in the IMX8MMRM do you see this and
> > would it also apply to the IMX8MP? (You've patched your IMX8MM and
> > IMX8MN boards).
>
> My 8MP board already appears to be running at 400MHz, but I did check.
> The reference I found was in the 8MM TRM, under 10.3.3.5 Clock
> generator, there is a note:
>
> CLK is different for the SDR and DDR modes.
> - In the SDR mode, CLK is equal to the internal working clock (card_clk).
> - In the DDR mode, CLK is equal to card_clk/2.
>
> >
> > Have you encountered any issues when running eMMC at HS400 due to this
> > or is it just something you noticed in the RM more recently like with
>
> One of my colleagues reported that the eMMC was running slower than he
> expected, and I looked at the reference clock and noticed the 200MHz.
> He asked if it needed to run 2x that since HS400 clocks on both edges.
> I looked it up and found the note from above.  When I increased the
> rate to 400MHz from 200MHz, the throughput doubled. I also noticed
> some other boards, including the reference from NXP had the clock rate
> set to 400MHz, so I don't think anything unreasonable.
>

Hi Adam,

The verbiage in the 'clock generator' section is not really easy to
understand but you're right, setting it to 400MHz also bumped the
performance on my boards. It looks like there are a lot of imx8m
boards that could likely benefit from this that are not already doing
so.

Check your imx8mp again, in my case (imx8mp-venice) sdhc3 was not
running at 400Mhz without the appropriate change - maybe yours is
running higher due to some other clock configuration you have.

I'll be patching my boards with this as well - thanks!

Best Regards,

Tim

