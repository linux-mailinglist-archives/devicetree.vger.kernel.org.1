Return-Path: <devicetree+bounces-254221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A57DD161BF
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 02:10:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ECF4E3014ADC
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 01:10:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8049C2586C2;
	Tue, 13 Jan 2026 01:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="R1LRHamA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9818625393B
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768266651; cv=none; b=mBbMCsXVJ2Sgw0gvZTLFLreevHngAl6GE//Z2qZmUF0Y4mzineRgO9pPeS0nJjK/pN5t3NPR+49csXI9T2wYVH9/m7xqHa6TLJERZVJ2qVK/vC9ocj/5f7c4ZUX6fiX5xJG6s89Vcid6VV9ON9u8Ft6hCw3Rd8Ro+tfoQJpzSFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768266651; c=relaxed/simple;
	bh=lo1nxntIxfqm8rMyHBX7mD5JCbKSMRtt7ANkUvtDhWM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TttixytKBCQ7PgEqJnQrvN0747TML78N9P3LopIeG4AsypDBGFD43L5l5+CSiUYx/A9QxKsikUfij2qrYa4zeONP5VGipW7XX6NFW2MVbeqzF5R29/fjCAhjXv5bJowW3Eb4DAopwNJLExo+pXjZgZpYK5dkyCLwzKqW5EYPAz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=R1LRHamA; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-55b219b2242so3370104e0c.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 17:10:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768266648; x=1768871448; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SkjvMLrJnigKmMdCcK2k3H/cAhm9En6UKwdXIu8qM+Q=;
        b=R1LRHamAkf8xeWas0qjwcVGEJR+9OXTpd+UIdXcio8jMtuMIEA1URafAlvYiCcCrxs
         PnGzfyoBweKsBu3fuysoKBqJELzFTCc76/5EwHtnn+DwPVpRZG1qximJ5rppHzh5DlrD
         0Nk1WXAhCAIbtbEisa5cKTFQyP5/8Fp8aVyQTmiCL4Yu5CG7rvf2jZKkQWPJ3QJtS+uz
         6KGJkCuHhkLUiIEJO6g1hhpTvJZh4BH7SLXF2X47t0G481Tg+rXApLhSm/kULdXM/Gpe
         iIbXIJnSF4Vz9xT33uJNmc4nzLFjkpO0DWPbuyyEgbH5gmXnAl3CWkay37i0oZx+JOuY
         WKwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768266648; x=1768871448;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SkjvMLrJnigKmMdCcK2k3H/cAhm9En6UKwdXIu8qM+Q=;
        b=s5R8X4KrSqPFkHFz5QkEKd8keUDpZveMSE00HZflBpv6cxw2kdfbvkryHaanVX6vgb
         ce6bmJqykO4Yb8dFvl2ZV8tLeoIqKOCo01bZuPsEiF//tZCZpLb1bvAbXo9LcplhzKLO
         FV9DGyjE6XrTOJ681SO92oHApg724yck38H2cDcMIeghscrdeURC27Ihd4uecpb6OOCN
         v/2+813k8FrA/emrKcw5dKaS8uyQc0sspRVyhZpZL2r2unMiu+h3jJ8upVNrYlcObo9Y
         CIyi8YC+6tqGn9XqBbSQ9YlIqCjtZBDKl+5Li2yTiss395T68w0v2bK3enfpAGP2APri
         IwJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUyZo0ziIumk+8tlC91pODUFukjplfVpZGxJksFq8nFAkCRfpnjbWgRevklMwIOufLpRRXyDfoPVxE5@vger.kernel.org
X-Gm-Message-State: AOJu0YyVLFDK4Q2PLZ1VelTKw/ZoMxbo252g5cbTzIk0NqO+LFO7g0uo
	rLTY38B/KubuldHq/TOAPuqW3cRKKBSTvgphtCA5N9/AtiYfwjrSWb4KF0xZU1QhFntOnyUwSDW
	uP6EW4JHCCpNDtqb3Y3vCUs6XFTFlqdI=
X-Gm-Gg: AY/fxX6SwI5Y5uqP3YPJMOGzY9sKsG+vYUybZBAeV7rfgIu46w2htPb9xcsI3ULm9xJ
	Xkn8pvDyGrBvphZ56niVjoH8+mx3ii7gMhqhbZeknmW7UlxffoFodm4gvIaMn75CFDyBJbiBrlG
	JWkgQxZLKnT+0pfX+RfX+9iRbvY1KqqWbdhkC+8nkgDkFWX6kA17cIBKIiM2Wir/ktD3rnkDZ8F
	1qUxzoM4It2j5sBR5GzKbokOLnqoCoFV/GwJhLcSVR3IuWKBFLZr9f8DBmGvtEjCB6jRjPH
X-Received: by 2002:a05:6122:4896:b0:563:466c:2 with SMTP id
 71dfb90a1353d-56395c42437mr568534e0c.5.1768266648408; Mon, 12 Jan 2026
 17:10:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251224-ventura2_initial_dts-v2-0-f193ba5d4073@gmail.com>
 <20251224-ventura2_initial_dts-v2-2-f193ba5d4073@gmail.com> <baa2e4e86b0b6851a56ef97501f6cad67d7970e6.camel@codeconstruct.com.au>
In-Reply-To: <baa2e4e86b0b6851a56ef97501f6cad67d7970e6.camel@codeconstruct.com.au>
From: Kyle Hsieh <kylehsieh1995@gmail.com>
Date: Tue, 13 Jan 2026 09:10:37 +0800
X-Gm-Features: AZwV_QgqSsvNI6cCP4eKfzDR4jBHaqaLbqGDWOCo3Ee8aobMZGS6aolRUOmEwl4
Message-ID: <CAF7HswM1nch2Z1JCQiCowWK7UwrV4zvg_uVJUM6bfnFEWVx9Gw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] ARM: dts: aspeed: ventura2: Add Meta ventura2 BMC
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 8, 2026 at 12:38=E2=80=AFPM Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:
>
> On Wed, 2025-12-24 at 14:44 +0800, Kyle Hsieh wrote:
> > Add linux device tree entry related to the Meta(Facebook) rmc-node.
> > The system use an AT2600 BMC.
> > This node is named "ventura2".
> >
> > Signed-off-by: Kyle Hsieh <kylehsieh1995@gmail.com>
> > ---
> >  arch/arm/boot/dts/aspeed/Makefile                  |    1 +
> >  .../dts/aspeed/aspeed-bmc-facebook-ventura2.dts    | 2945 ++++++++++++=
++++++++
> >  2 files changed, 2946 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/aspeed/Makefile b/arch/arm/boot/dts/aspe=
ed/Makefile
> > index 9adf9278dc94..6b96997629d4 100644
> > --- a/arch/arm/boot/dts/aspeed/Makefile
> > +++ b/arch/arm/boot/dts/aspeed/Makefile
> > @@ -32,6 +32,7 @@ dtb-$(CONFIG_ARCH_ASPEED) +=3D \
> >       aspeed-bmc-facebook-minipack.dtb \
> >       aspeed-bmc-facebook-santabarbara.dtb \
> >       aspeed-bmc-facebook-tiogapass.dtb \
> > +     aspeed-bmc-facebook-ventura2.dtb \
> >       aspeed-bmc-facebook-wedge40.dtb \
> >       aspeed-bmc-facebook-wedge100.dtb \
> >       aspeed-bmc-facebook-wedge400-data64.dtb \
> > diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-ventura2.dts =
b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-ventura2.dts
> > new file mode 100644
> > index 000000000000..e22bbaf519ea
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-ventura2.dts
> > @@ -0,0 +1,2945 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +// Copyright (c) 2023 Facebook Inc.
> > +/dts-v1/;
> > +
> > +#include "aspeed-g6.dtsi"
> > +#include <dt-bindings/i2c/i2c.h>
> > +#include <dt-bindings/gpio/aspeed-gpio.h>
> > +
> > +/ {
> > +     model =3D "Facebook ventura2 RMC";
> > +     compatible =3D "facebook,ventura2-rmc", "aspeed,ast2600";
> > +     aliases {
> > +             serial4 =3D &uart5;
> > +
> > +
>
> *snip*
>
> > +     };
> > +
> > +     chosen {
> > +             stdout-path =3D "serial4:57600n8";
> > +     };
> > +
> > +     iio-hwmon {
> > +             compatible =3D "iio-hwmon";
> > +             io-channels =3D <&adc0 0>, <&adc0 1>, <&adc0 2>, <&adc0 3=
>,
> > +             <&adc0 4>, <&adc0 5>, <&adc0 6>, <&adc0 7>,
> > +             <&adc1 2>;
> > +     };
> > +
> > +     leds {
> > +             compatible =3D "gpio-leds";
> > +
> > +             led-0 {
> > +                     label =3D "bmc_heartbeat_amber";
> > +                     gpios =3D <&gpio0 ASPEED_GPIO(P, 7) GPIO_ACTIVE_L=
OW>;
> > +                     linux,default-trigger =3D "heartbeat";
> > +             };
> > +
> > +             led-1 {
> > +                     label =3D "fp_id_amber";
> > +                     default-state =3D "off";
> > +                     gpios =3D <&gpio0 ASPEED_GPIO(B, 5) GPIO_ACTIVE_H=
IGH>;
> > +             };
> > +
> > +             led-2 {
> > +                     label =3D "bmc_ready_noled";
> > +                     default-state =3D "on";
> > +                     gpios =3D <&gpio0 ASPEED_GPIO(B, 3) (GPIO_ACTIVE_=
HIGH|GPIO_TRANSITORY)>;
> > +             };
> > +
> > +             led-3 {
> > +                     label =3D "power_blue";
> > +                     default-state =3D "off";
> > +                     gpios =3D <&gpio0 ASPEED_GPIO(P, 4) GPIO_ACTIVE_H=
IGH>;
> > +             };
> > +     };
> > +
> > +     fan_leds {
>
> Can you please order these unit-address-less nodes (iio-hwmon, leds,
> fan_leds, etc) alphabetically?
Yes, I will modify in the v3 patch.
>
> > +             compatible =3D "gpio-leds";
> > +
> > +             led-0 {
> > +                     label =3D "fcb0fan0_ledd1_blue";
> > +                     default-state =3D "off";
> > +                     gpios =3D <&fan_io_expander0 0 GPIO_ACTIVE_LOW>;
> > +             };
> > +
> > +             led-1 {
> > +                     label =3D "fcb0fan1_ledd2_blue";
> > +                     default-state =3D "off";
> > +                     gpios =3D <&fan_io_expander0 1 GPIO_ACTIVE_LOW>;
> > +             };
> > +
> > +             led-2 {
> > +                     label =3D "fcb0fan2_ledd3_blue";
> > +                     default-state =3D "off";
> > +                     gpios =3D <&fan_io_expander1 0 GPIO_ACTIVE_LOW>;
> > +             };
> > +
> > +             led-3 {
> > +                     label =3D "fcb0fan3_ledd4_blue";
> > +                     default-state =3D "off";
> > +                     gpios =3D <&fan_io_expander1 1 GPIO_ACTIVE_LOW>;
> > +             };
> > +
> > +             led-4 {
> > +                     label =3D "fcb0fan0_ledd1_amber";
> > +                     default-state =3D "off";
> > +                     gpios =3D <&fan_io_expander0 4 GPIO_ACTIVE_LOW>;
> > +             };
> > +
> > +             led-5 {
> > +                     label =3D "fcb0fan1_ledd2_amber";
> > +                     default-state =3D "off";
> > +                     gpios =3D <&fan_io_expander0 5 GPIO_ACTIVE_LOW>;
> > +             };
> > +
> > +             led-6 {
> > +                     label =3D "fcb0fan2_ledd3_amber";
> > +                     default-state =3D "off";
> > +                     gpios =3D <&fan_io_expander1 4 GPIO_ACTIVE_LOW>;
> > +             };
> > +
> > +             led-7 {
> > +                     label =3D "fcb0fan3_ledd4_amber";
> > +                     default-state =3D "off";
> > +                     gpios =3D <&fan_io_expander1 5 GPIO_ACTIVE_LOW>;
> > +             };
> > +     };
> > +
> > +     memory@80000000 {
> > +             device_type =3D "memory";
> > +             reg =3D <0x80000000 0x80000000>;
> > +     };
> > +
> > +     p1v8_bmc_aux: regulator-p1v8-bmc-aux {
> > +             compatible =3D "regulator-fixed";
> > +             regulator-name =3D "p1v8_bmc_aux";
> > +             regulator-min-microvolt =3D <1800000>;
> > +             regulator-max-microvolt =3D <1800000>;
> > +             regulator-always-on;
> > +     };
> > +
> > +     p2v5_bmc_aux: regulator-p2v5-bmc-aux {
> > +             compatible =3D "regulator-fixed";
> > +             regulator-name =3D "p2v5_bmc_aux";
> > +             regulator-min-microvolt =3D <2500000>;
> > +             regulator-max-microvolt =3D <2500000>;
> > +             regulator-always-on;
> > +     };
> > +
> > +     p5v_dac_aux: regulator-p5v-bmc-aux {
> > +             compatible =3D "regulator-fixed";
> > +             regulator-name =3D "p5v_dac_aux";
> > +             regulator-min-microvolt =3D <5000000>;
> > +             regulator-max-microvolt =3D <5000000>;
> > +             regulator-always-on;
> > +     };
> > +
> > +     spi1_gpio: spi {
> > +             compatible =3D "spi-gpio";
> > +             #address-cells =3D <1>;
> > +             #size-cells =3D <0>;
> > +
> > +             sck-gpios =3D <&gpio0 ASPEED_GPIO(Z, 3) GPIO_ACTIVE_HIGH>=
;
> > +             mosi-gpios =3D <&gpio0 ASPEED_GPIO(Z, 4) GPIO_ACTIVE_HIGH=
>;
> > +             miso-gpios =3D <&gpio0 ASPEED_GPIO(Z, 5) GPIO_ACTIVE_HIGH=
>;
> > +             cs-gpios =3D <&gpio0 ASPEED_GPIO(Z, 0) GPIO_ACTIVE_LOW>;
> > +             num-chipselects =3D <1>;
> > +
> > +             tpm@0 {
> > +                     compatible =3D "infineon,slb9670", "tcg,tpm_tis-s=
pi";
> > +                     spi-max-frequency =3D <33000000>;
> > +                     reg =3D <0>;
> > +             };
> > +     };
> > +};
> > +
> > +&fmc {
> > +     status =3D "okay";
> > +     flash@0 {
> > +             status =3D "okay";
> > +             m25p,fast-read;
> > +             label =3D "bmc";
> > +             spi-max-frequency =3D <50000000>;
> > +             #include "openbmc-flash-layout-128.dtsi"
> > +     };
> > +     flash@1 {
> > +             status =3D "okay";
> > +             m25p,fast-read;
> > +             label =3D "alt-bmc";
> > +             spi-max-frequency =3D <50000000>;
> > +     };
> > +};
> > +
> > +&peci0 {
> > +     status =3D "okay";
> > +};
> > +
> > +&mac2 {
>
> Same for all the phandle-referenced nodes throughout: please order them
> alphabetically. Another possible ordering is in unit address order, but
> I prefer alphabetical in the dts because there's no unit address in
> sight (it's in the corresponding dtsi).
I will modify in v3 patch.
>
> > +     status =3D "okay";
> > +     phy-mode =3D "rmii";
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&pinctrl_rmii3_default>;
> > +     fixed-link {
> > +             speed =3D <100>;
> > +             full-duplex;
> > +     };
>
> Andrew Lunn asked for a comment justifying the fixed-link node in [1]
> and you said you'd add it in [2], but there's no comment? Can you
> please add it?
Last time, I pushed the v2 patch too early, so I have not yet added
the annotation.
I will add the annotation next version
>
> [1]: https://lore.kernel.org/all/32ff7ca8-9cb0-4889-adb0-a6dae735630b@lun=
n.ch/
> [2]: https://lore.kernel.org/all/CAF7HswMRrs9hwKo_uHCLMtx7+h46-DPEJRcEqu0=
-zEG4CVvvjg@mail.gmail.com/
>
> > +};
> > +
> > +&mac3 {
> > +     status =3D "okay";
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&pinctrl_rmii4_default>;
> > +     use-ncsi;
> > +};
> >
>
> *snip*
>
> > +
> > +&sgpiom0 {
> > +     status =3D "okay";
> > +     ngpios =3D <128>;
> > +     bus-frequency =3D <2000000>;
> > +     gpio-line-names =3D
> > +     /*"input pin","output pin"*/
> > +     /*A0 - A7*/
> > +     "power-chassis-good","FM_PLD_HEARTBEAT_LVC3_R",
> > +     "host0-ready","",
> > +     "CONTROL_VT2_SUPPLY1_CLOSE","FM_MDIO_SW_SEL_PLD",
> > +     "CONTROL_VT2_SUPPLY2_CLOSE","FM_88E6393X_BIN_UPDATE_EN_N",
> > +     "CONTROL_VT2_SUPPLY3_CLOSE","Sequence_TransFR_Alert",
> > +     "RETURN_CNTL1_FB","WATER_VALVE1_OPEN",
> > +     "RETURN_CNTL2_FB","WATER_VALVE2_OPEN",
> > +     "RETURN_CNTL3_FB","WATER_VALVE3_OPEN",
> > +     /*B0 - B7*/
> > +     "IT_STOP_PUMP_R_CPLD","WATER_VALVE1_CLOSE",
> > +     "IT_STOP_PUMP_SPARE_R_CPLD","WATER_VALVE2_CLOSE",
> > +     "IT_STOP_PUMP_2_R_CPLD","WATER_VALVE3_CLOSE",
> > +     "IT_STOP_PUMP_SPARE_2_R_CPLD","REPORT_VT2_SUPPLY1_CLOSE",
> > +     "RPU_2_READY_SPARE_PLD_R","REPORT_VT2_SUPPLY2_CLOSE",
> > +     "RPU_2_READY_PLD_R","REPORT_VT2_SUPPLY3_CLOSE",
> > +     "RPU_READY_SPARE_PLD_R","PCIE_SSD1_PRSNT_N",
> > +     "RPU_READY_PLD_R","",
> > +     /*C0 - C7*/
> > +     "IOEXP8_INT_N","",
> > +     "SUPPLY_CNTL1_FB","",
> > +     "SUPPLY_CNTL2_FB","",
> > +     "SUPPLY_CNTL3_FB","",
> > +     "PRSNT_TRAY1_TO_40_R_BUF_N","",
> > +     "PWRGD_TRAY1_TO_40_R_BUF","",
> > +     "SMALL_LEAK_TRAY1_TO_40_R_BUF_N","",
> > +     "LEAK_DETECT_TRAY1_TO_40_R_BUF_N","",
> > +     /*D0 - D7*/
> > +     "PRSNT_CANBUSP1_TRAY1_TO_32_N","",
> > +     "PWRGD_CANBUSP1_TRAY1_TO_32_PWROK","",
> > +     "SMALL_LEAK_CANBUSP1_TRAY1_TO_32_N","",
> > +     "LEAK_DETECT_CANBUSP1_TRAY1_TO_32_N","",
> > +     "PRSNT_CANBUSP2_TRAY1_TO_32_N","",
> > +     "PWRGD_CANBUSP2_TRAY1_TO_32_PWROK","",
> > +     "SMALL_LEAK_CANBUSP2_TRAY1_TO_32_N","",
> > +     "LEAK_DETECT_CANBUSP2_TRAY1_TO_32_N","",
> > +     /*E0 - E7*/
> > +     "PRSNT_CANBUSP3_TRAY1_TO_32_N","",
> > +     "PWRGD_CANBUSP3_TRAY1_TO_32_PWROK","",
> > +     "SMALL_LEAK_CANBUSP3_TRAY1_TO_32_N","",
> > +     "LEAK_DETECT_CANBUSP3_TRAY1_TO_32_N","",
> > +     "PRSNT_CANBUSP4_TRAY1_TO_32_N","",
> > +     "PWRGD_CANBUSP4_TRAY1_TO_32_PWROK","",
> > +     "SMALL_LEAK_CANBUSP4_TRAY1_TO_32_N","",
> > +     "LEAK_DETECT_CANBUSP4_TRAY1_TO_32_N","",
> > +     /*F0 - F7*/
> > +     "PRSNT_CANBUSP5_TRAY1_TO_32_N","",
> > +     "PWRGD_CANBUSP5_TRAY1_TO_32_PWROK","",
> > +     "SMALL_LEAK_CANBUSP5_TRAY1_TO_32_N","",
> > +     "LEAK_DETECT_CANBUSP5_TRAY1_TO_32_N","",
> > +     "PRSNT_CANBUSP6_TRAY1_TO_32_N","",
> > +     "PWRGD_CANBUSP6_TRAY1_TO_32_PWROK","",
> > +     "SMALL_LEAK_CANBUSP6_TRAY1_TO_32_N","",
> > +     "LEAK_DETECT_CANBUSP6_TRAY1_TO_32_N","",
> > +     /*G0 - G7*/
> > +     "PRSNT_CANBUSP7_TRAY1_TO_32_N","",
> > +     "PWRGD_CANBUSP7_TRAY1_TO_32_PWROK","",
> > +     "SMALL_LEAK_CANBUSP7_TRAY1_TO_32_N","",
> > +     "LEAK_DETECT_CANBUSP7_TRAY1_TO_32_N","",
> > +     "PRSNT_CANBUSP8_TRAY1_TO_32_N","",
> > +     "PWRGD_CANBUSP8_TRAY1_TO_32_PWROK","",
> > +     "SMALL_LEAK_CANBUSP8_TRAY1_TO_32_N","",
> > +     "LEAK_DETECT_CANBUSP8_TRAY1_TO_32_N","",
> > +     /*H0 - H7*/
> > +     "wCHASSIS0_LEAK_Q_N_R","",
> > +     "wCHASSIS1_LEAK_Q_N_R","",
> > +     "wCHASSIS2_LEAK_Q_N_R","",
> > +     "wCHASSIS3_LEAK_Q_N_R","",
> > +     "wCHASSIS4_LEAK_Q_N_R","",
> > +     "wCHASSIS5_LEAK_Q_N_R","",
> > +     "wCHASSIS6_LEAK_Q_N_R","",
> > +     "wCHASSIS7_LEAK_Q_N_R","",
> > +     /*I0 - I7*/
> > +     "wCHASSIS8_LEAK_Q_N_R","",
> > +     "wCHASSIS9_LEAK_Q_N_R","",
> > +     "wCHASSIS10_LEAK_Q_N_R","",
> > +     "wCHASSIS11_LEAK_Q_N_R","",
> > +     "wAALC_RPU_READY","",
>
> Out of curiosity, what's going on with the lower-case 'w' prefix here
> (and again below)?
The prefix 'w' is the sgpio name, after confirming it can remove this prefi=
x.
I will remove it in the next version.
>
> > +     "","",
> > +     "","",
> > +     "","",
> > +     /*J0 - J7*/
> > +     "","",
> > +     "","",
> > +     "","",
> > +     "","",
> > +     "","",
> > +     "","",
> > +     "","",
> > +     "","",
> > +     /*K0 - K7*/
> > +     "","",
> > +     "","",
> > +     "","",
> > +     "","",
> > +     "","",
> > +     "","",
> > +     "","",
> > +     "","",
> > +     /*L0 - L7*/
> > +     "wIT_GEAR_RPU_2_LINK_PRSNT_SPARE_N_R","",
> > +     "wIT_GEAR_RPU_2_LINK_PRSNT_N_R","",
> > +     "wIT_GEAR_RPU_LINK_PRSNT_SPARE_N_R","",
> > +     "wIT_GEAR_RPU_LINK_PRSNT_N_R","",
> > +     "","",
> > +     "","",
> > +     "","",
> > +     "","",
> > +     /*M0 - M7*/
> > +     "","",
> > +     "","",
> > +     "wPRSNT_SENSOR_N","",
> > +     "wPRSNT3_VT2_PLD_N","",
> > +     "wPRSNT2_VT2_PLD_N","",
> > +     "wPRSNT1_VT2_PLD_N","",
> > +     "wPRSNT3_RETURN_PLD_N","",
> > +     "wPRSNT2_RETURN_PLD_N","",
> > +     /*N0 - N7*/
> > +     "wPRSNT1_RETURN_PLD_N","",
> > +     "wPRSNT3_SUPPLY_PLD_N","",
> > +     "wPRSNT2_SUPPLY_PLD_N","",
> > +     "wPRSNT1_SUPPLY_PLD_N","",
> > +     "wPRSNT_LEAK11_SENSOR_R_PLD_N","",
> > +     "wPRSNT_LEAK10_SENSOR_R_PLD_N","",
> > +     "wPRSNT_LEAK9_SENSOR_R_PLD_N","",
> > +     "wPRSNT_LEAK8_SENSOR_R_PLD_N","",
> > +     /*O0 - O7*/
> > +     "wPRSNT_LEAK7_SENSOR_R_PLD_N","",
> > +     "wPRSNT_LEAK6_SENSOR_R_PLD_N","",
> > +     "wPRSNT_LEAK5_SENSOR_R_PLD_N","",
> > +     "wPRSNT_LEAK4_SENSOR_R_PLD_N","",
> > +     "wPRSNT_LEAK3_SENSOR_R_PLD_N","",
> > +     "wPRSNT_LEAK2_SENSOR_R_PLD_N","",
> > +     "wPRSNT_LEAK1_SENSOR_R_PLD_N","",
> > +     "wPRSNT_LEAK0_SENSOR_R_PLD_N","",
> > +     /*P0 - P7*/
> > +     "","",
> > +     "","",
> > +     "","",
> > +     "","",
> > +     "","",
> > +     "","",
> > +     "","",
> > +     "","";
> > +};
> >
> >
>
> *snip*
>
> > +
> > +&i2c6 {
> > +     status =3D "okay";
> > +
> > +     eeprom@50 {
> > +             compatible =3D "atmel,24c64";
> > +             reg =3D <0x50>;
> > +     };
> > +
> > +     io_expander0: gpio@20 {
> > +             compatible =3D "nxp,pca9555";
> > +             reg =3D <0x20>;
> > +             gpio-controller;
> > +             #gpio-cells =3D <2>;
> > +     };
> > +
> > +     io_expander1: gpio@21 {
> > +             compatible =3D "nxp,pca9555";
> > +             reg =3D <0x21>;
> > +             gpio-controller;
> > +             #gpio-cells =3D <2>;
> > +     };
> > +
> > +     io_expander2: gpio@22 {
> > +             compatible =3D "nxp,pca9555";
> > +             reg =3D <0x22>;
> > +             gpio-controller;
> > +             #gpio-cells =3D <2>;
> > +     };
> > +
> > +     io_expander7: gpio@23 {
> > +             compatible =3D "nxp,pca9555";
> > +             reg =3D <0x23>;
> > +             gpio-controller;
> > +             #gpio-cells =3D <2>;
> > +     };
> > +
> > +     rtc@51 {
> > +             compatible =3D "nxp,pcf8563";
> > +             reg =3D <0x51>;
> > +     };
> > +};
> > +
>
> *snip*
>
> > +
> > +&io_expander0 {
>
> io_expander0 is a label you've defined in this same dts, just above.
> Please just include the properties in the original node directly, don't
> separate them like this.
>
> Same applies to all other cases of the same pattern.
Thanks for review, I will put the properties to the same node.
>
> Andrew
>
> > +     gpio-line-names =3D
> > +     "RST_POE_BMC_N", "POE_DISABLE_BMC_N_R",
> > +     "RST_FT4232_1_BMC_N_R", "RST_FT4232_2_BMC_N_R",
> > +     "RST_FT4232_3_BMC_N_R", "PRSNT_FANBP_0_PWR_N",
> > +     "PRSNT_FANBP_0_SIG_N", "PRSNT_POE_PWR_N",
> > +     "PRSNT_POE_SIG_N", "IRQ_POE_BMC_N_R",
> > +     "PWRGD_P3V3_ISO_POE_BMC_R", "88E6393X_INT_N_R",
> > +     "P48V_HSC_ALERT_N", "SMB_TMC75_TEMP_ALERT_N_R",
> > +     "DEV_DIS_N", "PCI_DIS_N";
> > +};
> > +

