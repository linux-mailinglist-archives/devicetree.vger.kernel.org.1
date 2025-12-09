Return-Path: <devicetree+bounces-245389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C4CCB044C
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 15:25:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1EDE6300984C
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 14:25:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75B2F2D1F44;
	Tue,  9 Dec 2025 14:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YgNsD1Dc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3C7E2D0615
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 14:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765290309; cv=none; b=lhilsOaT3w9+OIVJ2uZqYG50gZhtmVLEQtPEfuBFfRm/L5Ay1L9xFYSAICximlWTY8xk1b9Zpm2FIetuZvs9ikkf55cuNgJYQv5U9OENJUMIhYqfaFCGVeS/MEqk32yPMU85sIIZl86Ee+bSNMCxQwMH9XwRgWXeXN/BJVf/klM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765290309; c=relaxed/simple;
	bh=+fLlbyXfOqYk1h1H5FtBoHeitaXwEAlG5EufMEcCJUY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KNWOo3IZgcJqjPrDGzvKUA6fZfzlmIXBSjn6cwvP0aLBhE8zyRJPtD3zF1LixQQpt+wczA1nbNGCOrfCIXtBma6/3nnc4Pyd7K0FFrp523itM/HJIyWu6hGZM5fzqrdv2I/CDG/esPRv9bKcQs5cGgr7C5JAN8kEmxdpDcvgg1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YgNsD1Dc; arc=none smtp.client-ip=209.85.221.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-559671d0bb6so187786e0c.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 06:25:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765290306; x=1765895106; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=veNgIWlFsyZxu4IQ8JLUxAxld7OCZdMOoPx0imCC/nM=;
        b=YgNsD1Dc6vjlbmX+EOzV8GGUtOCo0C+jORJOvHRxWwGTvpZSGYUcynJ1h8Ukbcq65L
         UVa+YRmHHwhh9scy8cg6/90X8eBdU8xaB3r+q664BQLIEIv2vIhVwQJLqKodYP33BwJ2
         26yZSq8JZO+vvj2mMte6PKkhFDDrtcysymeXM4biR1nUI4BDkqHQfEoJHDORnoc4yK+8
         Go+gvghoIQs6D3blrAayqqFYGMgqIl4RHx1UzIPKZfnAMZSNm8vk39fW0hjV7vunMVGk
         nZndp6RglwTDgxKc18Y+JdrBrbd/+XfSb9ykFHDQvqN4UQh42eanvSXVaVj77+j74qzN
         HtRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765290306; x=1765895106;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=veNgIWlFsyZxu4IQ8JLUxAxld7OCZdMOoPx0imCC/nM=;
        b=ukQf99iyZxImbgz3ywlHBxYa2XwFwZQOlY7e+tiPBppr4vInsQEM8X2u/IEGOZTM5q
         XeTInHMOeNu8yrHjrpCmOD99x064JEhNPc4vmxlbZiC/koXVbbXmPxIuZuOupBkbiURS
         mAa5qLhXhTR/0oXeBCM/1WN9yda3R/Uy0U7hpu+j6ImkA4sda4vn3xSpg2+uT905MHc2
         SlQ4l0Wch9rI+zkfIAepM34l9YRhUOO1sSTEti2Iw7r9ygTF0o8vI+sVkny59YP1NPPV
         o9HpYBclnif1TcF1+3oGqavGXOG6NSAW70C++NP6JxhX3DY5hnkXvVUL1gu5U8QjaTOY
         vNQw==
X-Forwarded-Encrypted: i=1; AJvYcCWh+IASdPNFnLtCRM2LpBjFAei9lD/k/nprhie79522SsdQdj/0w0ZVgylU4y15N0Gf1QCDaM+TovE8@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0q3qE0SXGv88PJVy2boKPcMDuBK2fLJ2mM9iYERQj6yxUz2OM
	GWuPOL8BVkhSdtHQwMDRYLZ6dy1gUTskUXF8xr/CpJVQv8Q386Pbpm5FgRyxE1H6HCa+tmzYSb0
	VJn2khl97xYofK8ENvGENAGBeYSU24rA=
X-Gm-Gg: ASbGncuZK7YJM7IKGOx/nVEYCafsD3U2FPIguicjSv6qLuCDALUDG3h676+2jQGBdRE
	wuZGWNBqocB0KXxN1l1UPb2U72imqPj2Zo7wVK7jadDghabNANQWIO0B8nsnRswmTs+dSoFyRzU
	rWThKh65VzDkE1vD96+nWxSCFDn/97gjir/n6lZx4GMC22EpNxgDz0gQYaMKxsV/IlfldzUrICF
	lkSek+N6y5Trri73jVgJAGc1B90Qe/OK0WB1pr+iqd8A2urAJUxk2lYX1hKVXTRgY1X7GWU4TYE
	OKD1MPbAfce4o9Q/mBssdt/GblT4r00RRk7ctg==
X-Google-Smtp-Source: AGHT+IF5/xzgGt4fjL2jQHMKDDQexiAGt0OjQ4lRcB6rFA5ViZzmnNix4n7z80PGRUSLLeg7uyx5vJDxYweuncmTVRQ=
X-Received: by 2002:a05:6102:441b:b0:5db:e851:9385 with SMTP id
 ada2fe7eead31-5e52c961147mr2133911137.2.1765290306142; Tue, 09 Dec 2025
 06:25:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251204092346.1076836-1-kory.maincent@bootlin.com> <20251204103819.1681b954@kmaincent-XPS-13-7390>
In-Reply-To: <20251204103819.1681b954@kmaincent-XPS-13-7390>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Tue, 9 Dec 2025 15:24:54 +0100
X-Gm-Features: AQt7F2oOn_h5Jv8cWrxQR7ME_MI_ppXKb6rAFCEen5rHiB-0tXXMczS112S5tVs
Message-ID: <CAFqH_51xjGKYUa73Jdm4qdvL1oa6fmxJ=iB96iK20Y1gjrpe+w@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: Drop am335x-base0033 devicetree
To: Kory Maincent <kory.maincent@bootlin.com>
Cc: linux-omap@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, thomas.petazzoni@bootlin.com, 
	Tony Lindgren <tony@atomide.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Missatge de Kory Maincent <kory.maincent@bootlin.com> del dia dj., 4
de des. 2025 a les 10:38:
>
> On Thu,  4 Dec 2025 10:23:44 +0100
> Kory Maincent <kory.maincent@bootlin.com> wrote:
>
> > From: "Kory Maincent (TI.com)" <kory.maincent@bootlin.com>
> >
> > Remove the am335x-base0033 devicetree as it has been non-functional sin=
ce
> > 2017 (Linunx v4.14) when the ti,tilcdc,slave binding was removed. The H=
DMI
> > output on this board has been broken for over 8 years without any repor=
ted
> > issues or attempts to fix it, indicating this devicetree is no longer i=
n
> > active use.
>
> +Enric Balletbo i Serra <eballetbo@gmail.com>
> The original author of this devicetree.
>

I don't think this is maintained at all. I personally don't have
access to the hardware, so

Acked-by: Enric Balletbo i Serra <eballetbo@gmail.com>

> >
> > Signed-off-by: Kory Maincent (TI.com) <kory.maincent@bootlin.com>
> > ---
> >  arch/arm/boot/dts/ti/omap/Makefile            |  1 -
> >  arch/arm/boot/dts/ti/omap/am335x-base0033.dts | 92 -------------------
> >  2 files changed, 93 deletions(-)
> >  delete mode 100644 arch/arm/boot/dts/ti/omap/am335x-base0033.dts
> >
> > diff --git a/arch/arm/boot/dts/ti/omap/Makefile
> > b/arch/arm/boot/dts/ti/omap/Makefile index 04c820771eae3..b79256b09d31f=
 100644
> > --- a/arch/arm/boot/dts/ti/omap/Makefile
> > +++ b/arch/arm/boot/dts/ti/omap/Makefile
> > @@ -86,7 +86,6 @@ dtb-$(CONFIG_SOC_AM33XX) +=3D \
> >       am335x-baltos-ir2110.dtb \
> >       am335x-baltos-ir3220.dtb \
> >       am335x-baltos-ir5221.dtb \
> > -     am335x-base0033.dtb \
> >       am335x-bone.dtb \
> >       am335x-boneblack.dtb \
> >       am335x-boneblack-wireless.dtb \
> > diff --git a/arch/arm/boot/dts/ti/omap/am335x-base0033.dts
> > b/arch/arm/boot/dts/ti/omap/am335x-base0033.dts deleted file mode 10064=
4
> > index 46078af4b7a35..0000000000000
> > --- a/arch/arm/boot/dts/ti/omap/am335x-base0033.dts
> > +++ /dev/null
> > @@ -1,92 +0,0 @@
> > -// SPDX-License-Identifier: GPL-2.0-only
> > -/*
> > - * am335x-base0033.dts - Device Tree file for IGEP AQUILA EXPANSION
> > - *
> > - * Copyright (C) 2013 ISEE 2007 SL - https://www.isee.biz
> > - */
> > -
> > -#include "am335x-igep0033.dtsi"
> > -
> > -/ {
> > -     model =3D "IGEP COM AM335x on AQUILA Expansion";
> > -     compatible =3D "isee,am335x-base0033", "isee,am335x-igep0033",
> > "ti,am33xx"; -
> > -     hdmi {
> > -             compatible =3D "ti,tilcdc,slave";
> > -             i2c =3D <&i2c0>;
> > -             pinctrl-names =3D "default", "off";
> > -             pinctrl-0 =3D <&nxp_hdmi_pins>;
> > -             pinctrl-1 =3D <&nxp_hdmi_off_pins>;
> > -             status =3D "okay";
> > -     };
> > -
> > -     leds_base {
> > -             pinctrl-names =3D "default";
> > -             pinctrl-0 =3D <&leds_base_pins>;
> > -
> > -             compatible =3D "gpio-leds";
> > -
> > -             led0 {
> > -                     label =3D "base:red:user";
> > -                     gpios =3D <&gpio1 21 GPIO_ACTIVE_HIGH>;   /*
> > gpio1_21 */
> > -                     default-state =3D "off";
> > -             };
> > -
> > -             led1 {
> > -                     label =3D "base:green:user";
> > -                     gpios =3D <&gpio2 0 GPIO_ACTIVE_HIGH>;    /*
> > gpio2_0 */
> > -                     default-state =3D "off";
> > -             };
> > -     };
> > -};
> > -
> > -&am33xx_pinmux {
> > -     nxp_hdmi_pins: nxp-hdmi-pins {
> > -             pinctrl-single,pins =3D <
> > -                     AM33XX_PADCONF(AM335X_PIN_XDMA_EVENT_INTR0,
> > PIN_OUTPUT, MUX_MODE3)        /* xdma_event_intr0.clkout1 */
> > -                     AM33XX_PADCONF(AM335X_PIN_LCD_DATA0, PIN_OUTPUT,
> > MUX_MODE0)
> > -                     AM33XX_PADCONF(AM335X_PIN_LCD_DATA1, PIN_OUTPUT,
> > MUX_MODE0)
> > -                     AM33XX_PADCONF(AM335X_PIN_LCD_DATA2, PIN_OUTPUT,
> > MUX_MODE0)
> > -                     AM33XX_PADCONF(AM335X_PIN_LCD_DATA3, PIN_OUTPUT,
> > MUX_MODE0)
> > -                     AM33XX_PADCONF(AM335X_PIN_LCD_DATA4, PIN_OUTPUT,
> > MUX_MODE0)
> > -                     AM33XX_PADCONF(AM335X_PIN_LCD_DATA5, PIN_OUTPUT,
> > MUX_MODE0)
> > -                     AM33XX_PADCONF(AM335X_PIN_LCD_DATA6, PIN_OUTPUT,
> > MUX_MODE0)
> > -                     AM33XX_PADCONF(AM335X_PIN_LCD_DATA7, PIN_OUTPUT,
> > MUX_MODE0)
> > -                     AM33XX_PADCONF(AM335X_PIN_LCD_DATA8, PIN_OUTPUT,
> > MUX_MODE0)
> > -                     AM33XX_PADCONF(AM335X_PIN_LCD_DATA9, PIN_OUTPUT,
> > MUX_MODE0)
> > -                     AM33XX_PADCONF(AM335X_PIN_LCD_DATA10, PIN_OUTPUT,
> > MUX_MODE0)
> > -                     AM33XX_PADCONF(AM335X_PIN_LCD_DATA11, PIN_OUTPUT,
> > MUX_MODE0)
> > -                     AM33XX_PADCONF(AM335X_PIN_LCD_DATA12, PIN_OUTPUT,
> > MUX_MODE0)
> > -                     AM33XX_PADCONF(AM335X_PIN_LCD_DATA13, PIN_OUTPUT,
> > MUX_MODE0)
> > -                     AM33XX_PADCONF(AM335X_PIN_LCD_DATA14, PIN_OUTPUT,
> > MUX_MODE0)
> > -                     AM33XX_PADCONF(AM335X_PIN_LCD_DATA15, PIN_OUTPUT,
> > MUX_MODE0)
> > -                     AM33XX_PADCONF(AM335X_PIN_LCD_VSYNC, PIN_OUTPUT,
> > MUX_MODE0)
> > -                     AM33XX_PADCONF(AM335X_PIN_LCD_HSYNC, PIN_OUTPUT,
> > MUX_MODE0)
> > -                     AM33XX_PADCONF(AM335X_PIN_LCD_PCLK, PIN_OUTPUT,
> > MUX_MODE0)
> > -                     AM33XX_PADCONF(AM335X_PIN_LCD_AC_BIAS_EN,
> > PIN_OUTPUT, MUX_MODE0)
> > -             >;
> > -     };
> > -     nxp_hdmi_off_pins: nxp-hdmi-off-pins {
> > -             pinctrl-single,pins =3D <
> > -                     AM33XX_PADCONF(AM335X_PIN_XDMA_EVENT_INTR0,
> > PIN_OUTPUT, MUX_MODE3)        /* xdma_event_intr0.clkout1 */
> > -             >;
> > -     };
> > -
> > -     leds_base_pins: leds-base-pins {
> > -             pinctrl-single,pins =3D <
> > -                     AM33XX_PADCONF(AM335X_PIN_GPMC_A5,
> > PIN_OUTPUT_PULLDOWN, MUX_MODE7)       /* gpmc_a5.gpio1_21 */
> > -                     AM33XX_PADCONF(AM335X_PIN_GPMC_CSN3,
> > PIN_OUTPUT_PULLDOWN, MUX_MODE7)       /* gpmc_csn3.gpio2_0 */
> > -             >;
> > -     };
> > -};
> > -
> > -&lcdc {
> > -     status =3D "okay";
> > -};
> > -
> > -&i2c0 {
> > -     eeprom: eeprom@50 {
> > -             compatible =3D "atmel,24c256";
> > -             reg =3D <0x50>;
> > -     };
> > -};
>
>
>
> --
> K=C3=B6ry Maincent, Bootlin
> Embedded Linux and kernel engineering
> https://bootlin.com

