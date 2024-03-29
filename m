Return-Path: <devicetree+bounces-54736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F1B892646
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 22:44:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B11AA2830CA
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 21:44:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C675B13BC16;
	Fri, 29 Mar 2024 21:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iGw/NTnI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5D785926
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 21:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711748648; cv=none; b=AHHGs38WfVHR8sv+FsWLziaQuarlP03zWIMtZAt12ax+QcQ2LbA6opfjW4QixHsjlqyLgtAnAUE8CozK6ojzYv1lV5vAEgXmlMXmf/tBjYuX4GZGguh7Lhl9kQpTyCeKBVmFnH6MQ8Fy4QTvQc3SOGgKCZ+xaTuYjLEtdYMJ//Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711748648; c=relaxed/simple;
	bh=+jBhIrvcXVyDq33tjtqEIp6zIzGJy+Qq5epT7vDVv70=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=t8N+RzaPVl2RK28aHk8vFGV9DM2rkpsc6x6np6truofwA8RrwLTkTeTfFKoeLOaJWlyN2w1+47Om8SJiDBFrqHcEs/fNZM2Ispsuf32qjgecWdUsa7a4FEqZ+KlczjrKgMhYoFoSSc134YACDyqAiR1ApdzIBkFaKqZ3u9p0E4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iGw/NTnI; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-513e89d0816so2644614e87.0
        for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 14:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711748645; x=1712353445; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+j4R62w7usMioWBNXcnFNjoIGgezgYc/HXlodfmczNY=;
        b=iGw/NTnIf3WkqiRnjE4XVgxPndDfpEQisXSxQgwiVd3tJl+vmnVfecQZBfk//FvQmk
         0RBOMedSpmRO6Y34hgbhzVFueeAE2Vw2Il1zz6NOBhcSuaWac5qw7/QK5jW8CfbUAXYq
         ij/S6JK3v1PGPn+luFs8P3M3tyyduqSZlZSFiNndZeIlje5GWOPAyrMz9/gxOH6zEhox
         15VQOXs6uXKcOe2pyWnEyMIeamdgmIZ/I7dS2mPfLuqbBBSlTkBCTvUF9Hqt4dewbIyn
         w/0iZZa2uLKKsz2Q+LIHnJkfDIftzkgsBwXvZHfR7hlbvaJz+9o3UnCPXZH6mmQcRvWt
         FDBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711748645; x=1712353445;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+j4R62w7usMioWBNXcnFNjoIGgezgYc/HXlodfmczNY=;
        b=DxYpineHaPqnB+OGzKHnUr2WGBV3VYAXNP52ujOTMmm1PQ+d68hkdFKDNBn9MbeC6G
         8XUe3QrRtDEpKtpSlFfeVr30usEcRcYxc+v30kWymWekBgSwLfWDsq31R2bEjzG9h0wX
         k4KYbpbxzFAxmqxtl5d0XlbnM1vs4cF69kNTNq03Ql+UAahdXq2rxNYvJggCfv2HXGE1
         3Xs5+2Lso13Yq1WkLXbWT9TuNJEva0uClLTnIp+Lgrxz6ZNFbE1rtAU1W+oZ+4Pa/jBO
         ZBRHoI8F12IPnEfqeVIMW45MV0ScCyWkEYaK+keJNpKuda/7OVOEqooGSO4Vkj+9YEBZ
         6xGw==
X-Gm-Message-State: AOJu0YymzMQv1/ZMIXgPQA5nAYzNZxYYhTbhR7KdrZn0drd15n/1P1DT
	Oh3y1NdgiA3ITn8XoJL/XZLJAJTw427sH8MHlc2pWxEkyEu9JQ3mtncbR7wQcrl4yjDTXWNf3Es
	l0qzSRR2N/Imp5FgNwp8yPY32dMo=
X-Google-Smtp-Source: AGHT+IEMkv0f7VY6qxqY6HZok7AeOOVlOfCa5B3zFUOTk1dxtaQmV5ORK1u77W2cQlpruHy+LjqPA5yWFRyWTEWsBXY=
X-Received: by 2002:ac2:528a:0:b0:515:e6bd:2f13 with SMTP id
 q10-20020ac2528a000000b00515e6bd2f13mr196626lfm.15.1711748644943; Fri, 29 Mar
 2024 14:44:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240328202320.187596-1-gilles.talis@gmail.com>
 <20240328202320.187596-4-gilles.talis@gmail.com> <a6728917-b756-430a-905c-f458fe41b998@linaro.org>
In-Reply-To: <a6728917-b756-430a-905c-f458fe41b998@linaro.org>
From: Gilles Talis <gilles.talis@gmail.com>
Date: Fri, 29 Mar 2024 17:43:53 -0400
Message-ID: <CAKcgs2zY6q95jWpdgxsjDpmKttB1b2Jc+euhn+jkaP1CKKhoVg@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: freescale: Add device tree for Emcraft
 Systems NavQ+ Kit
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, robh@kernel.org, shawnguo@kernel.org, 
	festevam@gmail.com, alex@voxelbotics.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,

Thank you for the review.

Le jeu. 28 mars 2024 =C3=A0 18:04, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> a =C3=A9crit :
>
> On 28/03/2024 21:23, Gilles Talis wrote:
> > The Emcraft Systems NavQ+ kit is a mobile robotics platform
> > based on NXP i.MX8 MPlus SoC.
> >
> > The following interfaces and devices are enabled:
> > - eMMC
> > - Gigabit Ethernet
> > - RTC
> > - SD-Card
> > - UART console
> >
> > Signed-off-by: Gilles Talis <gilles.talis@gmail.com>
> > ---
> >  arch/arm64/boot/dts/freescale/Makefile        |   1 +
> >  .../arm64/boot/dts/freescale/imx8mp-navqp.dts | 435 ++++++++++++++++++
> >  2 files changed, 436 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-navqp.dts
> >
> > diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/d=
ts/freescale/Makefile
> > index 045250d0a040..bf99864c0bc4 100644
> > --- a/arch/arm64/boot/dts/freescale/Makefile
> > +++ b/arch/arm64/boot/dts/freescale/Makefile
> > @@ -166,6 +166,7 @@ dtb-$(CONFIG_ARCH_MXC) +=3D imx8mp-dhcom-pdk3.dtb
> >  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mp-evk.dtb
> >  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mp-icore-mx8mp-edimm2.2.dtb
> >  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mp-msc-sm2s-ep1.dtb
> > +dtb-$(CONFIG_ARCH_MXC) +=3D imx8mp-navqp.dtb
> >  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mp-phyboard-pollux-rdk.dtb
> >  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mp-skov-revb-hdmi.dtb
> >  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mp-skov-revb-lt6.dtb
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-navqp.dts b/arch/arm6=
4/boot/dts/freescale/imx8mp-navqp.dts
> > new file mode 100644
> > index 000000000000..8182e71008f8
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp-navqp.dts
> > @@ -0,0 +1,435 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright 2021 Emcraft Systems
> > + * Copyright 2024 Gilles Talis <gilles.talis@gmail.com>
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include "imx8mp.dtsi"
> > +
> > +/ {
> > +     model =3D "Emcraft Systems i.MX8MPlus NavQ+ Kit";
> > +     compatible =3D "emcraft,imx8mp-navqp", "fsl,imx8mp";
> > +
> > +     chosen {
> > +             stdout-path =3D &uart2;
> > +     };
> > +
> > +     leds {
> > +             compatible =3D "gpio-leds";
> > +             pinctrl-names =3D "default";
> > +             pinctrl-0 =3D <&pinctrl_gpio_led>;
> > +
> > +             status {
>
> It does not look like you tested the DTS against bindings. Please run
> `make dtbs_check W=3D1` (see
> Documentation/devicetree/bindings/writing-schema.rst or
> https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sou=
rces-with-the-devicetree-schema/
> for instructions).
>
> > +                     label =3D "status";
>
> Please provide color and function properties, if reasonable, and then
> remove label property.
>
> > +                     gpios =3D <&gpio3 16 GPIO_ACTIVE_HIGH>;
> > +                     default-state =3D "on";
> > +             };
> > +     };
> > +
>
> ...
>
> > +     pinctrl_i2c6: i2c6grp {
> > +             fsl,pins =3D <
> > +                     MX8MP_IOMUXC_UART4_RXD__I2C6_SCL                 =
               0x400001c3
> > +                     MX8MP_IOMUXC_UART4_TXD__I2C6_SDA                 =
               0x400001c3
> > +             >;
> > +     };
> > +
> > +     pinctrl_pmic: pmicirq {
> > +             fsl,pins =3D <
> > +                     MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03              =
               0x41
> > +             >;
> > +     };
> > +
> > +     pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
> > +             fsl,pins =3D <
> > +                     MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19             =
               0x41
> > +             >;
> > +     };
> > +
> > +     pinctrl_uart2: uart2grp {
> > +             fsl,pins =3D <
> > +                     MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX             =
               0x49
> > +                     MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX             =
               0x49
> > +             >;
> > +     };
> > +
> > +     pinctrl_usdhc2: usdhc2grp {
> > +             fsl,pins =3D <
> > +                     MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK                 =
               0x190
> > +                     MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD                 =
               0x1d0
> > +                     MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0             =
               0x1d0
> > +                     MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1             =
               0x1d0
> > +                     MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2             =
               0x1d0
> > +                     MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3             =
               0x1d0
> > +                     MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT          =
               0xc1
> > +             >;
> > +     };
> > +
> > +     pinctrl_usdhc2_100mhz: usdhc2grp-100mhz {
>
> Hm, you upstreamed something based on downstream source. Please avoid
> that. Instead take upstream, clean DTS and customize it to your needs.
> Otherwise you send patch with the same issues we fixed.
OK. Got it. Will avoid that in the future.

>
> Standard form letter:
> It does not look like you tested the DTS against bindings. Please run
> `make dtbs_check W=3D1` (see
> Documentation/devicetree/bindings/writing-schema.rst or
> https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sou=
rces-with-the-devicetree-schema/
> for instructions).
>
> Nodes end on 'grp' I believe.
I did run it, but I might have messed up something, as I did not get
the results your automatic check reported. Let me run it again and fix
the issues.

>
>
> Best regards,
> Krzysztof
>
regards
Gilles.

