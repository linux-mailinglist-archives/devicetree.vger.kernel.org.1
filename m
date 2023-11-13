Return-Path: <devicetree+bounces-15415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 373547E9FB8
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 16:15:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 044431C2030D
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 15:15:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3507B2111C;
	Mon, 13 Nov 2023 15:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="AMoWBGLh"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CB620326
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 15:15:49 +0000 (UTC)
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99C2DF5
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 07:15:46 -0800 (PST)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-5a7c08b7744so52455147b3.3
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 07:15:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1699888546; x=1700493346; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qFzJreDRT31H+y0jyIEDRuhNT8QoPX317nTi9EqfR10=;
        b=AMoWBGLhoO9F9Mife0W8M/y3WxxbnezaQgVLg7aBUEGD5s6KwZTz0TR8dsdYcjJTTD
         607DPgWOt9rmsbZNXsW7KZzwjPXTndMBqcWdj1w9lU2go62Pg61JICoojdRBG9gnOpf1
         hLR0KrfatBcTyuRZlOwfiWxts7YZwMRhXPminUU8GthQn//Wza3eHZwbFKq2ISuyL6iI
         e66eD0SalpPrwYGfRMnaFR4tKY9ONsTq6BY4R8/T4M2Q8fIQv1eIWIz5Lq5s3KI+CNu2
         s4cnIV0DXMKblAomzh10qNbte915k4sFnbuJggDnSA1s1Inzx732lC+rG7XZmv1x4Msj
         Fdow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699888546; x=1700493346;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qFzJreDRT31H+y0jyIEDRuhNT8QoPX317nTi9EqfR10=;
        b=JW5bUjSB6TLB0CdoAy1zN+b1o1w1mRSAUewV8oiD2UqW1+2wb65+NFaQ0gEzBtu9lm
         RWBzQZZTSw9RrtPMFA2kbdGl+p4jXOa/PpzwRpSaR/y18kEKTaspwCPp8W9WF59aBtv/
         1rkBazwahTYBBvFRoFjfXOuGSuywThTK7dMg1WpGAuNVM4WbhOVJVfqWynOfI38CJb3U
         Z6i4EXq67yIfeh/9Hm1EANUB+cz3MqpW67dkoGx6Gs3sxYWBYa6l3WSf7MDFHtv3azVA
         u1+Am7NP5InjiCNnfH2FfHWswG7ihiUSU/VXoCsvCGB1dfrzyUW/QNrnkak3xUr3eKrP
         VEEA==
X-Gm-Message-State: AOJu0YxF0NajqhF/5ob/RuRfFakTlkHxJXgm2aP/DMKsTVkL/U9xeiZZ
	oWUfwU+6sEu8CgVIIV4kjbzQBvSeb7rsFxGi9aWPvQ==
X-Google-Smtp-Source: AGHT+IEViwim7q06I5kBXIicGi7+h5Bbd828ZjCk3ZnnNbwwCq55VYOMAx8eG7+erphkjxQv0TNwdBOLhF7UOHjUeX8=
X-Received: by 2002:a81:8901:0:b0:583:b186:d817 with SMTP id
 z1-20020a818901000000b00583b186d817mr5582807ywf.27.1699888545614; Mon, 13 Nov
 2023 07:15:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230731200559.635629-1-jagan@edgeble.ai> <2194166.1BCLMh4Saa@diego>
In-Reply-To: <2194166.1BCLMh4Saa@diego>
From: Jagan Teki <jagan@edgeble.ai>
Date: Mon, 13 Nov 2023 10:15:34 -0500
Message-ID: <CA+VMnFwGe6c4e2wucEUNmr8RDjv=DSnZ1UrDHiLdnNq5a9-3XQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Add Radxa ROCK 4C+ DSI DT-overlay
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 5 Oct 2023 at 06:07, Heiko St=C3=BCbner <heiko@sntech.de> wrote:
>
> Am Montag, 31. Juli 2023, 22:05:57 CEST schrieb Jagan Teki:
> > Add DSI pipeline for Radxa ROCK 4C+ board via DT-overlay.
> >
> > The DSI connector in Radxa ROCK 4C+ board support different
> > resolution panels and those compatible is added in another
> > DT-overlay.
> >
> > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile         |  1 +
> >  .../rk3399-rock-4c-plus-mipi-dsi.dtso         | 69 +++++++++++++++++++
> >  2 files changed, 70 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus-mi=
pi-dsi.dtso
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dt=
s/rockchip/Makefile
> > index 1ebbb3e9c2f9..3a4c4cd769eb 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -58,6 +58,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-roc-pc.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-roc-pc-mezzanine.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-roc-pc-plus.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rock-4c-plus.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rock-4c-plus-mipi-dsi.dtbo
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rock-4se.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rock-pi-4a.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rock-pi-4a-plus.dtb
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus-mipi-dsi.=
dtso b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus-mipi-dsi.dtso
> > new file mode 100644
> > index 000000000000..271717040b6c
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus-mipi-dsi.dtso
> > @@ -0,0 +1,69 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright (c) 2023 Radxa Computer Co., Ltd.
> > + * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
> > + *
> > + * DT-overlay for Radxa ROCK 4C+ DSI Connector.
> > + */
> > +
> > +/dts-v1/;
> > +/plugin/;
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +
> > +&{/} {
> > +     backlight: backlight {
> > +             compatible =3D "pwm-backlight";
> > +             pwms =3D <&pwm2 0 25000 0>;
> > +     };
> > +};
> > +
> > +&mipi_dsi {
> > +     clock-master;
> > +     #address-cells =3D <1>;
> > +     #size-cells =3D <0>;
> > +     status =3D "okay";
> > +
> > +     ports {
> > +             #address-cells =3D <1>;
> > +             #size-cells =3D <0>;
> > +
> > +             mipi_out: port@1 {
> > +                     reg =3D <1>;
> > +
> > +                     mipi_out_panel: endpoint {
> > +                             remote-endpoint =3D <&mipi_in_panel>;
> > +                     };
> > +             };
> > +     };
> > +
> > +     panel: panel@0 {
> > +             /* different resolution panels are used, compatibles are =
in DTO */
>
> then I guess, the panel node should get a disabled here (and the mipi_dsi
> should stay disabled at this point) and both should get enabled in the fi=
nal
> dtbo where the compatible lives?

Do you mean dsi also needs to be disabled here and enabled in dtbo? if
so why? if panel disabled then dsi won't probe even if it enabled.

Jagan

