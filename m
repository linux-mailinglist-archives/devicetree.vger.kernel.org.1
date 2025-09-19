Return-Path: <devicetree+bounces-219115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA83B87DCC
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 06:30:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 998651C840F3
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 04:30:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DE3F277023;
	Fri, 19 Sep 2025 04:30:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1FFF27145F
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 04:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758256214; cv=none; b=KCxHV8dyYMPdy8zSTOg0Vxyi8R2duVGcXdLrxcdKQpmEMZh6WUJFVn6+5pOuJtRfghFZZKDoDeYqaEGZxLmVeuVcQ5dSjXbw6Za50epXS99aiYB3h7RwizZL+Zez+McwCj7nmdLW+NMZa2clU+QC2286nDyEVApvrVDjOwM7L7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758256214; c=relaxed/simple;
	bh=npOTcSqiw+hF0UGUQpx1GK19Rw+VNOfBn6L/aVX0tb0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FhddsiiUApwo/S0BOTNVzB+oiX/8Q538XHToFk8jY81wdp5sgGc2+/YP/d86heCXrQ2goxwao6fj4TdbnvtblGXorZrk1hDht4b8Wc3XW9WetK4+wDp26JBQf+Rryhub4em6aer6/0JvDZpqD2wf5/XYgRsotXjy3fKQYmpP8iA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-3608d271942so17393221fa.1
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 21:30:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758256207; x=1758861007;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=73UL61+9pLCpRMWx7q6mvFEg7F186Qu7dLluxWn/Eb0=;
        b=vtxPwRtGhAftiuSVm4928JJWc6qbtATyjLMjxSHv3UO2P93tFW1aVq150T5KzwA1Pi
         uLKhQeunOO2fZeiXKwwnxDalKF9jCvXyYccVWoxzwowOB1xb1tLIfjRG7N4AvjNH7xvo
         Z/5AxTYd2fIre6GlI0Ez69rm5LxOHS6k/lYmRVN16xEhVE1dgb3fUL5WradxZ+HC04ZB
         t743TXoVzYigvqFHIRNrlwoj2ENBntGNTGgzZSEhEr/HmomS39uH07cY29M2Qr/HhNgV
         mnxsgSXvLkRNx/7XxtTOqkbMcJ17LmWRvCEoFftMfNMRaKDLYjyAtxdE/Hs63qqu8KMK
         GJew==
X-Forwarded-Encrypted: i=1; AJvYcCVT510w9j1/qz2B/lHXJE9uFtieoU4P4YnGXzQw7/US99PPy4B6eJiDZsTU15KvZ1uMhOChDGBAYqFM@vger.kernel.org
X-Gm-Message-State: AOJu0YwmUgnBBkS8COxs9XiNj/Khzq+Cyz/qQUmhY6nAN7FnOha27Ugq
	kQ3hJIU4PF/jWSOyZ1JFbwPT+MjEteJlKKRtyv13eXoCcsCZFG3N9dQM9pYfuglh
X-Gm-Gg: ASbGncuPihXGwbz6s4Q1Ft3mYhKZxM28SyPEXMbSoLCEKURClFltIR8yJoB4qYuIm1g
	dFzvNKjds92IOvS2q46tUHregUbVUv9w+EIQ+ght1oZisqGyzMemddG/bXmNthiP9iNYE61Pxny
	xCcYKCCkirUSMRrPVfcR5gH23/Ojqapc9iJj2weOmH2oPQ38om8l7aSaDczgDDq7hveLKcDkirA
	4P1E2G+l2W/bmSz3hl3B6Mx5NG15Dv4CaN+6KRduhYTVfv1isfu+es2R9foSUBIoKUS+jJ1O9Ds
	ZCb2s1Pszhh9ybDJ2x1V9WUTstQCBN+hM9nkkVIlpG8HRrquvUc1RsZ6HTS/LjhUQT223aQRdPg
	Plw4TdbmI/dJsPzlj9w+fLh7wIrk1b0QkaEypKm6EvAVOo75Jhes=
X-Google-Smtp-Source: AGHT+IGmHBF+/sVA87XSzOXsxy/4vO0LqREF+8dP0UYoZU5/el19UbjjCiFP+uKlZnKkMF3QzIb5Kw==
X-Received: by 2002:a05:651c:3257:10b0:360:5e8d:c85f with SMTP id 38308e7fff4ca-3640eae2646mr4140631fa.0.1758256206530;
        Thu, 18 Sep 2025 21:30:06 -0700 (PDT)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com. [209.85.167.51])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-361aa480bd5sm10143521fa.65.2025.09.18.21.30.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Sep 2025 21:30:05 -0700 (PDT)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-578ecc56235so1128291e87.0
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 21:30:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUUSL1leekgHOWfh5QZMa0m8vgtP3+Ffw9gt/qSAChvHAXup2NGaCNaEay3v2TIqTylErEtK5jvM/F7@vger.kernel.org
X-Received: by 2002:a05:651c:3257:10b0:337:e238:8bd6 with SMTP id
 38308e7fff4ca-3641c633c1dmr4999071fa.40.1758256204053; Thu, 18 Sep 2025
 21:30:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250918-x96q-v2-0-51bd39928806@posteo.net> <20250918-x96q-v2-2-51bd39928806@posteo.net>
 <20250918221424.638a5367@minigeek.lan>
In-Reply-To: <20250918221424.638a5367@minigeek.lan>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 19 Sep 2025 12:29:49 +0800
X-Gmail-Original-Message-ID: <CAGb2v67qa6YoZQMoGHhawKHZxsBOiS6ThQrsaCwaGS+oRn58xQ@mail.gmail.com>
X-Gm-Features: AS18NWBfBPM-6yBxX4UPX9zTJX4DDBDlwTc17hVW51BvbFP6qSbAx0_vOFVNPZI
Message-ID: <CAGb2v67qa6YoZQMoGHhawKHZxsBOiS6ThQrsaCwaGS+oRn58xQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: allwinner: h313: Add Amediatech X96Q
To: Andre Przywara <andre.przywara@arm.com>
Cc: =?UTF-8?Q?J=2E_Neusch=C3=A4fer_via_B4_Relay?= <devnull+j.ne.posteo.net@kernel.org>, 
	j.ne@posteo.net, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 19, 2025 at 5:15=E2=80=AFAM Andre Przywara <andre.przywara@arm.=
com> wrote:
>
> On Thu, 18 Sep 2025 12:58:44 +0200
> J. Neusch=C3=A4fer via B4 Relay <devnull+j.ne.posteo.net@kernel.org> wrot=
e:
>
> Hi,
>
> > From: "J. Neusch=C3=A4fer" <j.ne@posteo.net>
> >
> > The X96Q is a set-top box with an H313 SoC, AXP305 PMIC, 1 or 2 GiB RAM=
,
> > 8 or 16 GiB eMMC flash, 2x USB A, Micro-SD, HDMI, Ethernet, audio/video
> > output, and infrared input.
> >
> >   https://x96mini.com/products/x96q-tv-box-android-10-set-top-box
> >
> > Tested, works:
> > - debug UART
> > - status LED
> > - USB ports in host mode
> > - MicroSD
> > - eMMC
> > - recovery button hidden behind audio/video port
> > - analog audio (line out)
> >
> > Does not work:
> > - Ethernet (requires AC200 MFD/EPHY driver)
> > - WLAN (requires out-of-tree XRadio driver)
> > - analog video output (requires AC200 driver)
> > - HDMI audio/video output
> >
> > Untested:
> > - "OTG" USB port in device mode
> > - built-in IR receiver
> > - external IR receiver
> >
> > Table of regulators on the downstream kernel, for reference:
> >
> >  vcc-5v      1   15      0 unknown  5000mV     0mA  5000mV  5000mV
> >     dcdca    0    0      0 unknown   900mV     0mA     0mV     0mV
> >     dcdcb    0    0      0 unknown  1350mV     0mA     0mV     0mV
> >     dcdcc    0    0      0 unknown   900mV     0mA     0mV     0mV
> >     dcdcd    0    0      0 unknown  1500mV     0mA     0mV     0mV
> >     dcdce    0    0      0 unknown  3300mV     0mA     0mV     0mV
> >     aldo1    0    0      0 unknown  3300mV     0mA     0mV     0mV
> >     aldo2    0    0      0 unknown   700mV     0mA     0mV     0mV
> >     aldo3    0    0      0 unknown   700mV     0mA     0mV     0mV
> >     bldo1    0    0      0 unknown  1800mV     0mA     0mV     0mV
> >     bldo2    0    0      0 unknown  1800mV     0mA     0mV     0mV
> >     bldo3    0    0      0 unknown   700mV     0mA     0mV     0mV
> >     bldo4    0    0      0 unknown   700mV     0mA     0mV     0mV
> >     cldo1    0    0      0 unknown  2500mV     0mA     0mV     0mV
> >     cldo2    0    0      0 unknown   700mV     0mA     0mV     0mV
> >     cldo3    0    0      0 unknown   700mV     0mA     0mV     0mV
> >
> > Signed-off-by: J. Neusch=C3=A4fer <j.ne@posteo.net>
>
> Looks good now, thanks for the changes!
>
> Reviewed-by: Andre Przywara <andre.przywara@arm.com>
>
> Chen-Yu: any chance you can still push that, if you agree? U-Boot
> depends on DTs in tagged releases to get this imported.

I can try, but it's also up to Arnd and whether he wants to take a
really late PR or not.

ChenYu

> Cheers,
> Andre
>
> > ---
> >
> > v2:
> > - remove mmc aliases, &mmc0/max-frequency property (Andre Przywara)
> > - document reason for &mmc2/max-frequency property
> > - clean up mmc-releated comments (Andre Przywara)
> > - rename dcdcd regulator to vdd-dram, because it's the only source of
> >   1.5V (needed by the Micron MT41J256M4 DDR3 RAM), and the system halts
> >   when it's turned off.
> > ---
> >  arch/arm64/boot/dts/allwinner/Makefile             |   1 +
> >  arch/arm64/boot/dts/allwinner/sun50i-h313-x96q.dts | 230 +++++++++++++=
++++++++
> >  2 files changed, 231 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/d=
ts/allwinner/Makefile
> > index 780aeba0f3a4e14d69c9602e37b8d299165507b9..2edfa7bf4ab31c4aa934da9=
8e5e042edc9aaf600 100644
> > --- a/arch/arm64/boot/dts/allwinner/Makefile
> > +++ b/arch/arm64/boot/dts/allwinner/Makefile
> > @@ -41,6 +41,7 @@ dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h6-pine-h64-mode=
l-b.dtb
> >  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h6-tanix-tx6.dtb
> >  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h6-tanix-tx6-mini.dtb
> >  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h313-tanix-tx1.dtb
> > +dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h313-x96q.dtb
> >  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h616-bigtreetech-cb1-manta.dtb
> >  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h616-bigtreetech-pi.dtb
> >  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h616-orangepi-zero2.dtb
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h313-x96q.dts b/arch/=
arm64/boot/dts/allwinner/sun50i-h313-x96q.dts
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..b2275eb3d55b9dacbd9006b=
93795a8011e06bf2f
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h313-x96q.dts
> > @@ -0,0 +1,230 @@
> > +// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
> > +/*
> > + * Copyright (C) 2025 J. Neusch=C3=A4fer <j.ne@posteo.net>
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "sun50i-h616.dtsi"
> > +#include "sun50i-h616-cpu-opp.dtsi"
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/interrupt-controller/arm-gic.h>
> > +#include <dt-bindings/input/linux-event-codes.h>
> > +#include <dt-bindings/leds/common.h>
> > +
> > +/ {
> > +     model =3D "X96Q";
> > +     compatible =3D "amediatech,x96q", "allwinner,sun50i-h616";
> > +
> > +     aliases {
> > +             serial0 =3D &uart0;
> > +     };
> > +
> > +     chosen {
> > +             stdout-path =3D "serial0:115200n8";
> > +     };
> > +
> > +     reg_vcc5v: vcc5v {
> > +             /* board wide 5V supply directly from the DC input */
> > +             compatible =3D "regulator-fixed";
> > +             regulator-name =3D "vcc-5v";
> > +             regulator-min-microvolt =3D <5000000>;
> > +             regulator-max-microvolt =3D <5000000>;
> > +             regulator-always-on;
> > +     };
> > +
> > +     gpio-keys {
> > +             compatible =3D "gpio-keys";
> > +
> > +             key-recovery {
> > +                     label =3D "Recovery";
> > +                     linux,code =3D <KEY_VENDOR>;
> > +                     gpios =3D <&pio 7 9 GPIO_ACTIVE_LOW>;
> > +             };
> > +     };
> > +
> > +     leds {
> > +             compatible =3D "gpio-leds";
> > +
> > +             led-0 {
> > +                     color =3D <LED_COLOR_ID_BLUE>;
> > +                     gpios =3D <&pio 7 6 GPIO_ACTIVE_LOW>;
> > +                     default-state =3D "on";
> > +             };
> > +     };
> > +};
> > +
> > +&codec {
> > +     allwinner,audio-routing =3D "Line Out", "LINEOUT";
> > +     status =3D "okay";
> > +};
> > +
> > +&cpu0 {
> > +     cpu-supply =3D <&reg_dcdca>;
> > +};
> > +
> > +&ehci0 {
> > +     status =3D "okay";
> > +};
> > +
> > +&ehci3 {
> > +     status =3D "okay";
> > +};
> > +
> > +/* TODO: EMAC1 connected to AC200 PHY */
> > +
> > +&gpu {
> > +     mali-supply =3D <&reg_dcdcc>;
> > +     status =3D "okay";
> > +};
> > +
> > +&ir {
> > +     status =3D "okay";
> > +};
> > +
> > +&mmc0 {
> > +     /* microSD */
> > +     vmmc-supply =3D <&reg_aldo1>;
> > +     cd-gpios =3D <&pio 5 6 GPIO_ACTIVE_LOW>;  /* PF6 */
> > +     disable-wp;
> > +     bus-width =3D <4>;
> > +     status =3D "okay";
> > +};
> > +
> > +/* TODO: XRadio XR819 WLAN @ mmc1 */
> > +
> > +&mmc2 {
> > +     /* eMMC */
> > +     vmmc-supply =3D <&reg_aldo1>;
> > +     vqmmc-supply =3D <&reg_bldo1>;
> > +     non-removable;
> > +     cap-mmc-hw-reset;
> > +     mmc-ddr-1_8v;
> > +     mmc-hs200-1_8v;
> > +     max-frequency =3D <100000000>; /* required for stable operation *=
/
> > +     bus-width =3D <8>;
> > +     status =3D "okay";
> > +};
> > +
> > +&ohci0 {
> > +     status =3D "okay";
> > +};
> > +
> > +&ohci3 {
> > +     status =3D "okay";
> > +};
> > +
> > +&r_i2c {
> > +     status =3D "okay";
> > +
> > +     axp305: pmic@36 {
> > +             compatible =3D "x-powers,axp305", "x-powers,axp805",
> > +                          "x-powers,axp806";
> > +             interrupt-controller;
> > +             #interrupt-cells =3D <1>;
> > +             reg =3D <0x36>;
> > +
> > +             x-powers,self-working-mode;
> > +             vina-supply =3D <&reg_vcc5v>;
> > +             vinb-supply =3D <&reg_vcc5v>;
> > +             vinc-supply =3D <&reg_vcc5v>;
> > +             vind-supply =3D <&reg_vcc5v>;
> > +             vine-supply =3D <&reg_vcc5v>;
> > +             aldoin-supply =3D <&reg_vcc5v>;
> > +             bldoin-supply =3D <&reg_vcc5v>;
> > +             cldoin-supply =3D <&reg_vcc5v>;
> > +
> > +             regulators {
> > +                     reg_dcdca: dcdca {
> > +                             regulator-always-on;
> > +                             regulator-min-microvolt =3D <810000>;
> > +                             regulator-max-microvolt =3D <1100000>;
> > +                             regulator-name =3D "vdd-cpu";
> > +                     };
> > +
> > +                     dcdcb {
> > +                             /* unused */
> > +                     };
> > +
> > +                     reg_dcdcc: dcdcc {
> > +                             regulator-always-on;
> > +                             regulator-min-microvolt =3D <810000>;
> > +                             regulator-max-microvolt =3D <990000>;
> > +                             regulator-name =3D "vdd-gpu-sys";
> > +                     };
> > +
> > +                     dcdcd {
> > +                             regulator-always-on;
> > +                             regulator-min-microvolt =3D <1500000>;
> > +                             regulator-max-microvolt =3D <1500000>;
> > +                             regulator-name =3D "vdd-dram";
> > +                     };
> > +
> > +                     dcdce {
> > +                             /* unused */
> > +                     };
> > +
> > +                     reg_aldo1: aldo1 {
> > +                             regulator-always-on;
> > +                             regulator-min-microvolt =3D <3300000>;
> > +                             regulator-max-microvolt =3D <3300000>;
> > +                             regulator-name =3D "vcc3v3";
> > +                     };
> > +
> > +                     aldo2 {
> > +                             /* unused */
> > +                     };
> > +
> > +                     aldo3 {
> > +                             /* unused */
> > +                     };
> > +
> > +                     reg_bldo1: bldo1 {
> > +                             regulator-always-on;
> > +                             regulator-min-microvolt =3D <1800000>;
> > +                             regulator-max-microvolt =3D <1800000>;
> > +                             regulator-name =3D "vcc1v8";
> > +                     };
> > +
> > +                     bldo2 {
> > +                             /* unused */
> > +                     };
> > +
> > +                     bldo3 {
> > +                             /* unused */
> > +                     };
> > +
> > +                     bldo4 {
> > +                             /* unused */
> > +                     };
> > +
> > +                     cldo1 {
> > +                             /* unused */
> > +                     };
> > +
> > +                     cldo2 {
> > +                             /* unused */
> > +                     };
> > +
> > +                     cldo3 {
> > +                             /* unused */
> > +                     };
> > +             };
> > +     };
> > +};
> > +
> > +&uart0 {
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&uart0_ph_pins>;
> > +     status =3D "okay";
> > +};
> > +
> > +&usbotg {
> > +     dr_mode =3D "host";       /* USB A type receptacle */
> > +     status =3D "okay";
> > +};
> > +
> > +&usbphy {
> > +     status =3D "okay";
> > +};
> >
>
>

