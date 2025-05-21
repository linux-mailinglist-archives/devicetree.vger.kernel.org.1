Return-Path: <devicetree+bounces-179266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3D3ABF5E1
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 15:20:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DBB253BF7BA
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 13:19:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2369A2686A0;
	Wed, 21 May 2025 13:20:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="ryYyLwfo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C85F279797
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 13:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747833603; cv=none; b=RjSVudAY0hB1eD+dlxPd2vU2sgOzbsj9TcM8UQhSskc1SI69YyPe232HMAPoJM8yFMiqSX8Dicf5G4wTKdKhq/ATGEGZLHD2m25nKaF75RdZvsRZCgZkIGdfWU+N3RCN5K17b9kvYUIzZw2BP2yl2OuS3pUyfvjHHUAkXlOaePo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747833603; c=relaxed/simple;
	bh=Mp5KvBUD4ru+9Ndh/QthP4GfWu7ALeMm0VnKwSS6DW0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RfpySvJeX/TSAeEpPfHvyNt6WZdbYd8vvazjnXahFPAVOFVkYPrPIi7KRjvKJlOapIgjKeagVgd0cW+JiPl96b4sVshCDWGHF1SD0ytxKIt3gyZmRFRFqdSiSV1BebMS/feAElsUs0f8P6J+7Cs4L3w69VFhytKf3YHA+uUuD/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=ryYyLwfo; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-70cc667a7ecso27707957b3.3
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 06:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1747833600; x=1748438400; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MdEgWSJxe9FJMYKcuUExk/aYWYfMksc/H/dM1vOfbdc=;
        b=ryYyLwfoNXPJaY2MvqnNyIXudBs4OG+v50J2Xe6wcqlenDchiZN/pzO0I2X80w1orF
         FcQqG0O3Rbs34fHiSmDC21K2f7XHGOvrDKEemgJBh5xL+5SrCyp4XX9LdwgkwJl0pTaG
         VduKyZMxLFKTQoWrNlyircZo84gxp8Og7seFA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747833600; x=1748438400;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MdEgWSJxe9FJMYKcuUExk/aYWYfMksc/H/dM1vOfbdc=;
        b=gFABIwPAkFQDYSaBD/6mYSlWXK6nqbIZa1QGvqlavk1srcD01CKeIaanyl5A0TvBX/
         85mMfrGAoYb1VoW0ZF2fMVg/DYBaeSuA3bP44jqCDduYmeKKgb5ljg+pr5Yys+aeYwma
         qk0IO5k2/7yPQR1v77JS/LVoHd6FP65AQg2ro5LiehpxdtZfI9A0+P8VoEz03PF7c5zc
         hxF4pjPi3bUxWnVLjoD1CVTqY3sDG4gnPalPkEnCWQtKVNKBpIjpT3CLS4gY5QCLNN5I
         n/FBwfyWwutH7r/FFbk/J0Ewb0j97pkjhAq8kTjjAfqOTRS02h5/Hv0B6OQKFe9p0FF5
         DTvA==
X-Forwarded-Encrypted: i=1; AJvYcCVH+Jm7U++WA0CeyZDTn85WWMV8Szp/Ip2FbT8yBf1S+YqonXUdspY2S8w7BivTVLgWnTdOIQY/ze24@vger.kernel.org
X-Gm-Message-State: AOJu0Ywsu0NdLDe/AsDp03L9N1/yNHZYKv55IrxfL5g79DqpeJibrJ2v
	s5fU4ddASgUKbn6Uiux/4fjal7AfJ0T2Mx6/CMjejfaYixJaxdAjRmuxN8FVvv5TzON/wVBXDlo
	eOzWK1NsopWKZj85OQBtGwlPNulIG3b7yRGlSjbsUvw==
X-Gm-Gg: ASbGncv53pTU/ZCLmQtuMIvwgGmfPdUvCkOeki8I96q7kjsH+KN/jjuiJjGffKL9j2M
	PB92BAq+jGY8W3P6AN+jn/M2g/GZokPj+zyvyA+TgMmO2VuuOLWyg0aegkfX5uPnPnEO+zNeE/X
	6AwNBpBIdLFYbgemDDQF4pteXS/aaEtUqJJy+/ieDRA7Ll/njZjT6c98sZ57stWqNAQw==
X-Google-Smtp-Source: AGHT+IFJuZAiihHxJLr6M/kE3uYbWzRfUS/uPkbXXA+1qG7+nEsPeLqVDoAYPRojiT4pNkEEDqIrXTdm4/tlPfieZDg=
X-Received: by 2002:a05:690c:750e:b0:70c:b90a:5c88 with SMTP id
 00721157ae682-70cb90a5f24mr213677417b3.31.1747833600229; Wed, 21 May 2025
 06:20:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250521092826.1035448-1-dario.binacchi@amarulasolutions.com>
 <20250521092826.1035448-4-dario.binacchi@amarulasolutions.com> <CAOMZO5D-d7bmBfXKe936W5QjmsukRRX3y0ge+xtizqFx0HPE8A@mail.gmail.com>
In-Reply-To: <CAOMZO5D-d7bmBfXKe936W5QjmsukRRX3y0ge+xtizqFx0HPE8A@mail.gmail.com>
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date: Wed, 21 May 2025 15:19:48 +0200
X-Gm-Features: AX0GCFtbBN2xKHFMu-Zp69Kj64qn-x6_0NKQbUd_en3T7Wa4I2aai6e9qO1zzuQ
Message-ID: <CABGWkvpPMry26DP4Wo8WEGhokdkf5GdLd=+O5SqRdh-8JBqt_w@mail.gmail.com>
Subject: Re: [PATCH 3/3] ARM: dts: mxs: support i.MX28 Amarula rmm board
To: Fabio Estevam <festevam@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, 
	michael@amarulasolutions.com, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Rob Herring <robh@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Fabio,

On Wed, May 21, 2025 at 1:40=E2=80=AFPM Fabio Estevam <festevam@gmail.com> =
wrote:
>
> Hi Dario,
>
> On Wed, May 21, 2025 at 6:28=E2=80=AFAM Dario Binacchi
> <dario.binacchi@amarulasolutions.com> wrote:
> >
> > The board includes the following resources:
> >  - 256 Mbytes NAND Flash
> >  - 256 Mbytes SRAM
>
> SRAM or DDR?

Sorry, DRAM DDR2

>
> >  - LCD-TFT controller
>
> The LCD support is not described in the dts.

Yes, you're right.
The board has been in use for a long time with a 4.19 kernel. We recently b=
umped
it to the LTS version 6.6.69. However, for now we've had to revert commit
f225f1393f034 ("video: fbdev: mxsfb: Remove driver") along with other
custom changes
to reproduce the correct display behavior in the field. That's why we
haven't described
the LCD panel yet.
We'd like to add it only after we get it working without needing to
apply non-mainline patches.

The same goes for the sound, which is neither mentioned in the commit
description nor in the DTS.

So if you're okay with it, I will remove all references to the LCD
display =E2=80=94 both from the commit
message and from the DTS, such as the reset pin, for example.

>
> > +/ {
> > +       model =3D "Amarula i.MX28 rmm";
> > +       compatible =3D "amarula,imx28-rmm", "fsl,imx28";
> > +
> > +       memory@40000000 {
> > +               device_type =3D "memory";
> > +               reg =3D <0x40000000 0x08000000>;
>
> In the commit log, you say 256 MB, but here we have 128 MB.

We have two models, one with 128MB and one with 256MB of RAM.
What's the recommended way to handle both cases?
Should I define a new DTS file named imx28-amarula-rmm-256mb.dts
that includes imx28-amarula-rmm.dts and override the reg property of
the memory node?

>
> > +&i2c0 {
> > +       pinctrl-names =3D "default";
> > +       pinctrl-0 =3D <&i2c0_pins_a>;
> > +       status =3D "okay";
> > +
> > +       polytouch: edt-ft5x06@38 {
>
> Node names should be generic: touchscreen@38

Ok

>
> > +
> > +&pinctrl {
> > +       pinctrl-names =3D "default";
> > +       pinctrl-0 =3D <&hog_pins_a>;
> > +
> > +       hog_pins_a: hog-0 {
> > +               reg =3D <0>;
> > +               fsl,pinmux-ids =3D <
> > +                       MX28_PAD_LCD_RESET__GPIO_3_30 /* LCD reset */
> > +                       MX28_PAD_SSP2_SS1__GPIO_2_20  /* External power=
 */
>
> Proper panel bindings should better describe these pins than hog pins.

I will drop the LCD reset pin.

Thanks and regards,
Dario

>
> Do you plan to add display support?



--=20

Dario Binacchi

Senior Embedded Linux Developer

dario.binacchi@amarulasolutions.com

__________________________________


Amarula Solutions SRL

Via Le Canevare 30, 31100 Treviso, Veneto, IT

T. +39 042 243 5310
info@amarulasolutions.com

www.amarulasolutions.com

