Return-Path: <devicetree+bounces-112431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBE99A2168
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 13:50:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2042C289309
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 11:50:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E97B01D365B;
	Thu, 17 Oct 2024 11:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="kbMJIoH5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F0FF1925B2
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 11:50:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729165844; cv=none; b=VCqU+wR2AH7t8+uWSuz5w0GX7daxv8MhJ77tuljCmkhC+cC/Whx7IVQtwo0G+ND1wAIJGNedraKsFHQeDMdLqVRP4Of0Z0cdtceu2VxHQt3dubnj57/rce8iPyJRnMiT9t827WqEpNL4OYeuaRQvEPNBzknzCQp/aTtYoPjEXV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729165844; c=relaxed/simple;
	bh=l3pPXTiPfn6qSibXJTUy95AP6npOZJ5SPeEHwssssrQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qfVQRHwgCSErRJMOZEeqzbrqbuYqSt/HujQsoV1+EzXXw01Kknq23eOFYSCGRz4GF1FJrBJNHVugoymfzlmAJRI+vnTmGlh1t03u5e9bSK/9hZ4uTSgyCdYSECnHgKJeYNfWlK/Ilm3PfyADvPkpbFAy4A/8pzSo8mTSZWKKtME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=kbMJIoH5; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a99f1fd20c4so110793466b.0
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 04:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1729165840; x=1729770640; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7KSeSenXXxRf0y8Ua8LHU+FspnBUSz7DXw1pak8m+qo=;
        b=kbMJIoH5SzoKUI71ckxvrHBc7nzYeqSw7d/e4Q1hyu2W8u5S65Cxvh6RdBoUC5aAZc
         MMXqwyc6baYuCWmlSaB+V1kSYtUnByQ9I+wwOK9b5SUTbQDM2P2ESQPuWAF8k8WT39Pk
         z1A689gOlrRsq7YKCGWPoLgt9NnDtEhDHgApg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729165840; x=1729770640;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7KSeSenXXxRf0y8Ua8LHU+FspnBUSz7DXw1pak8m+qo=;
        b=bs/UDnZFwmhFSHn7imGnpePrjfYXDgXFeA0IIQAXIscjAN1kq9v5LQSZ1kyw3F3pgg
         W3i0FK8O72dSBFkpDrFy8lOs7g0H22RaaUlD59VtV9rdY0DkQQ3MQOQhhEdktg6q0fpt
         PHcz98HGcY0KZTUgURS9v2JRJRNPUX2gmz27Z8jv9wOzLR5oG1rUJuZz7npSeSHIHIpD
         GSJCAK+I8/vGcJbSbYJMgjPuz/5XbQSVeIKd221LuC/n5or5scyIv7TntpGDh77fFI8I
         3lO1k781YCv9/dsWzV7JzJBMFspEqHR3A+jUbNE5fNk2wKbv4sNmjRDDmR1f5BErnbjo
         QjTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWppf26TkXhMjZyKBlUrISwfkyoIVfdglbwJIKVdW3NmNbnybf/AbMSSOalYQwWdZiL19dqqLlGoLiB@vger.kernel.org
X-Gm-Message-State: AOJu0YxmW/EbCD/2K301mE91GSfY+9N3lyPf+5qxOCsljFK7N65bEn5F
	sL1apkJMeQu44GjBA2fv4v7TY9U/wKWBciXD8HVOKYj73cdIPGue1M7ztXvc9te4IGbHWsakMEm
	nwUDdaba5LiXiK9XYVoJVI7rG5KGyzQJhSnj9EA==
X-Google-Smtp-Source: AGHT+IGEOSUvCCl8ucHZVbeEia0cPit1VJy+ZGudcu/6ZbBGPUQmm9FZ89NdSqKhSb0MOhgEm/jA3ToHTk0xxagUFPc=
X-Received: by 2002:a17:907:96a3:b0:a99:fa97:8c2f with SMTP id
 a640c23a62f3a-a99fa978da4mr1662915866b.53.1729165839852; Thu, 17 Oct 2024
 04:50:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240821143420.2564869-1-festevam@gmail.com> <CAOf5uwnUPDPVzM7vNPn-tGrt2ENuuUzVfKh1q7AiORcAMZm0UA@mail.gmail.com>
 <CAOMZO5DVy7x62zfX5UbDZUi=c8nbSHfD=Q39faZTBz87bz3W=g@mail.gmail.com>
In-Reply-To: <CAOMZO5DVy7x62zfX5UbDZUi=c8nbSHfD=Q39faZTBz87bz3W=g@mail.gmail.com>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Thu, 17 Oct 2024 13:50:13 +0200
Message-ID: <CAOf5uwmg83-TVQvbNOCnzBh9JdQAC=5hpgbCeT-6qJ=+YBrssg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mn-bsh-smm-s2pro: Remove invalid audio
 codec clock
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, ariel.dalessandro@collabora.com, 
	Fabio Estevam <festevam@denx.de>, Dario Binacchi <dario.binacchi@amarulasolutions.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Fabio

On Thu, Oct 17, 2024 at 1:43=E2=80=AFPM Fabio Estevam <festevam@gmail.com> =
wrote:
>
> Hi Michael,
>
> On Tue, Aug 27, 2024 at 9:03=E2=80=AFAM Michael Nazzareno Trimarchi
> <michael@amarulasolutions.com> wrote:
> >
> > Hi Fabio
> >
> > On Wed, Aug 21, 2024 at 4:34=E2=80=AFPM Fabio Estevam <festevam@gmail.c=
om> wrote:
> > >
> > > From: Fabio Estevam <festevam@denx.de>
> > >
> > > According to ti,tlv320dac3100.yaml, 'clocks' is not a valid
> > > property.
> > >
> > > Remove it to fix the following dt-schema warning:
> > >
> > > Unevaluated properties are not allowed ('clocks' was unexpected)
> > >
> > > Signed-off-by: Fabio Estevam <festevam@denx.de>
> > > ---
> > >  arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2pro.dts | 1 -
> > >  1 file changed, 1 deletion(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2pro.dts b=
/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2pro.dts
> > > index c6ad65becc97..475cbf9e0d1e 100644
> > > --- a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2pro.dts
> > > +++ b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2pro.dts
> > > @@ -64,7 +64,6 @@ tlv320dac3101: audio-codec@18 {
> > >                 DVDD-supply =3D <&buck5_reg>;
> > >                 reset-gpios =3D <&gpio1 6 GPIO_ACTIVE_LOW>;
> > >                 ai31xx-micbias-vg =3D <MICBIAS_AVDDV>;
> > > -               clocks =3D <&clk IMX8MN_CLK_SAI3_ROOT>;
> > >         };
> > >  };
> >
> > Let's just give a test to the board
>
> Have you had a chance to test it?

I will test on monday ;). Is that ok?

Michael

--=20
Michael Nazzareno Trimarchi
Co-Founder & Chief Executive Officer
M. +39 347 913 2170
michael@amarulasolutions.com
__________________________________

Amarula Solutions BV
Joop Geesinkweg 125, 1114 AB, Amsterdam, NL
T. +31 (0)85 111 9172
info@amarulasolutions.com
www.amarulasolutions.com

