Return-Path: <devicetree+bounces-25421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBDE813350
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 15:37:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 517E21F2206B
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 14:37:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23A255A11D;
	Thu, 14 Dec 2023 14:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="aU9nTAfb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0ECCE126
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 06:37:37 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-50bfd8d5c77so9478424e87.1
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 06:37:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1702564655; x=1703169455; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Xhtx23mJ5N3LR2tRtKUn4mfUZsUb9U6VLaK4OmUmtE=;
        b=aU9nTAfbkoTPJR4nkDhVThSslDGs3I3Mw0oFnfvEWZYHsygnDaegihTnLckieN4AkD
         t119w9lGb+f34PBOH6tcW8rrHql1H2hirugdPbdJkN4wrh0525BRyV7cIyKye5x5dwwS
         TS0/9uGxOW7qtBEsAPHkp0yWrUEQ1DRgmX1BM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702564655; x=1703169455;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Xhtx23mJ5N3LR2tRtKUn4mfUZsUb9U6VLaK4OmUmtE=;
        b=UO9e/n1JMoqHW5c8BBdNfGQOQntktCahj12lL3E9AldMC+ko5oJb2TxFHc2EY7S5uT
         2NuCdmYvWpuZHsXWJJ6mvn8+dgBOFkAlIjVhkW3Xz1+pIWN5uaWkCOpeNXdYNC3GD49O
         v3ehSCOgG5hxSZuykHiL8ZM6PmcvanXjvod1P13GSwBjVKXxv5Hu45dliepWWe2RLWHz
         GBM/NSi6C+6F+aQYkKJ++I9IvwtVsyb24/n+QzsTOF9szTgzFpaMoWkccu9jXNYV4HLz
         0PRUs8p7tVzJm33/4ZdeFX90S6bjwBUxayB28ocahbSyLARmdMMx0RcWiStsgTmRBOa3
         yX0Q==
X-Gm-Message-State: AOJu0Yzn9eLgV/8UsZfJ57+tbt7UW9bQU7NwyALryJG4PJdhwdez51eY
	M6Xm/jUiydDKK55Tk8ix+X5/MY7erjzCB3OY3jUEjA==
X-Google-Smtp-Source: AGHT+IFXSSEus+BmIetfepbm7BLOicCRSLtaFbzuvuE/X4fB/O7LdlcqSkPxpdR3TTY9mP0lV6tpNGPrhpYwo39paxw=
X-Received: by 2002:a05:6512:3b84:b0:50d:1c59:632e with SMTP id
 g4-20020a0565123b8400b0050d1c59632emr2840456lfv.260.1702564654989; Thu, 14
 Dec 2023 06:37:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231213150435.4134390-1-wenst@chromium.org> <20231213150435.4134390-7-wenst@chromium.org>
 <13c8ccbc-0eef-43f5-ae37-29ec64d1606b@collabora.com>
In-Reply-To: <13c8ccbc-0eef-43f5-ae37-29ec64d1606b@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 14 Dec 2023 23:37:23 +0900
Message-ID: <CAGXv+5HO+TW6H9kLv62Dp7cihHW7fs99gzUBMWvAEnzdrNY7mg@mail.gmail.com>
Subject: Re: [PATCH v4 6/9] arm64: dts: mediatek: Add MT8186 Krabby platform
 based Tentacruel / Tentacool
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Eugen Hristev <eugen.hristev@collabora.com>, Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 14, 2023 at 7:31=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 13/12/23 16:04, Chen-Yu Tsai ha scritto:
> > Tentacruel and Tentacool are MT8186 based Chromebooks based on the
> > Krabby design.
> >
> > Tentacruel, also known as the ASUS Chromebook CM14 Flip CM1402F, is a
> > convertible device with touchscreen and stylus.
> >
> > Tentacool, also known as the ASUS Chromebook CM14 CM1402C, is a laptop
> > device. It does not have a touchscreen or stylus.
> >
> > The two devices both have two variants. The difference is a second
> > source touchpad controller that shares the same address as the original=
,
> > but is incompatible.
> >
> > The extra SKU IDs for the Tentacruel devices map to different sensor
> > components attached to the Embedded Controller. These are not visible
> > to the main processor.
> >
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > ---
> > Changes since v3:
> > - Reorder some properties to conform better to the newly proposed DT
> >    style guidelines
> > - Drop unused labels
> > - Rename bt-sco node name to bt-sco-codec
> > - Drop i2s*-share properties from afe node
> > - Drop aud_gpio_tdm_{on,off} pinctrl nodes
> > - Replace interrupts with interrupts-extended in tpm node
> > - Enable adsp device
> >
> > Changes since v2:
> > - Picked up Conor's ack
> > - Rename touchpad to trackpad
> > - Drop pinctrl properties from trackpad in tentacruel/tentacool second
> >    source trackpad
> >
> > Changes since v1:
> > - Reorder SKU numbers in descending order.
> > - Fixed pinconfig node names
> > - Moved pinctrl-* properties after interrupts-*
> > - Switched to interrupts-extended for external components
> > - Marked ADSP as explicitly disabled, with a comment explaining that it
> >    stalls the system
> > - Renamed "touchpad" to "trackpad"
> > - Dropped bogus "no-laneswap" property from it6505 node
> > - Moved "realtek,jd-src" property to after all the regulator supplies
> > - Switched to macros for MT6366 regulator "regulator-allowed-modes"
> > - Renamed "vgpu" regulator name to allow coupling, with a comment
> >    containing the name used in the design
> > - Renamed "cr50" node name to "tpm"
> > - Moved trackpad_pins reference up to i2c2; workaround for second sourc=
e
> >    component resource sharing.
> > - Fix copyright year
> > - Fixed touchscreen supply name
> > ---
> >   arch/arm64/boot/dts/mediatek/Makefile         |    4 +
> >   .../dts/mediatek/mt8186-corsola-krabby.dtsi   |  129 ++
> >   .../mt8186-corsola-tentacool-sku327681.dts    |   57 +
> >   .../mt8186-corsola-tentacool-sku327683.dts    |   24 +
> >   .../mt8186-corsola-tentacruel-sku262144.dts   |   44 +
> >   .../mt8186-corsola-tentacruel-sku262148.dts   |   26 +
> >   .../boot/dts/mediatek/mt8186-corsola.dtsi     | 1707 ++++++++++++++++=
+
> >   7 files changed, 1991 insertions(+)
> >   create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-krabby=
.dtsi
> >   create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-tentac=
ool-sku327681.dts
> >   create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-tentac=
ool-sku327683.dts
> >   create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-tentac=
ruel-sku262144.dts
> >   create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-tentac=
ruel-sku262148.dts
> >   create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dt=
s/mediatek/Makefile
> > index e6e7592a3645..442af61b1305 100644
> > --- a/arch/arm64/boot/dts/mediatek/Makefile
> > +++ b/arch/arm64/boot/dts/mediatek/Makefile
> > @@ -43,6 +43,10 @@ dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8183-kukui-kodama=
-sku32.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8183-kukui-krane-sku0.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8183-kukui-krane-sku176.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8183-pumpkin.dtb
> > +dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8186-corsola-tentacool-sku327681.dt=
b
> > +dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8186-corsola-tentacool-sku327683.dt=
b
> > +dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8186-corsola-tentacruel-sku262144.d=
tb
> > +dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8186-corsola-tentacruel-sku262148.d=
tb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8186-evb.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8192-asurada-hayato-r1.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8192-asurada-hayato-r5-sku2.dtb
>
> ..snip..
>
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacruel-sku=
262148.dts b/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacruel-sku2621=
48.dts
> > new file mode 100644
> > index 000000000000..447b57b12b41
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacruel-sku262148.=
dts
> > @@ -0,0 +1,26 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +/*
> > + * Copyright 2023 Google LLC
> > + */
> > +
> > +#include "mt8186-corsola-tentacruel-sku262144.dts"
> > +
> > +/ {
> > +     compatible =3D "google,tentacruel-sku262151", "google,tentacruel-=
sku262150",
> > +                  "google,tentacruel-sku262149", "google,tentacruel-sk=
u262148",
> > +                  "google,tentacruel", "mediatek,mt8186";
> > +};
> > +
> > +/* This variant replaces only the trackpad controller. */
> > +&i2c2 {
> > +     /delete-node/ trackpad@15;
> > +
> > +     trackpad@15 {
> > +             compatible =3D "hid-over-i2c";
> > +             reg =3D <0x15>;
> > +             interrupts-extended =3D <&pio 11 IRQ_TYPE_LEVEL_LOW>;
> > +             hid-descr-addr =3D <0x0001>;
> > +             vdd-supply =3D <&pp3300_s3>;
> > +             wakeup-source;
> > +     };
> > +};
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi b/arch/ar=
m64/boot/dts/mediatek/mt8186-corsola.dtsi
> > new file mode 100644
> > index 000000000000..adbeb0c765d3
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
> > @@ -0,0 +1,1707 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +/*
> > + * Copyright (C) 2022 MediaTek Inc.
> > + */
> > +/dts-v1/;
> > +#include "mt8186.dtsi"
> > +#include <dt-bindings/pinctrl/mt8186-pinfunc.h>
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/input/input.h>
> > +#include <dt-bindings/input/gpio-keys.h>
> > +#include <dt-bindings/regulator/mediatek,mt6397-regulator.h>
> > +
>
> ..snip..
>
> > +
> > +&i2c2 {
> > +     pinctrl-names =3D "default";
> > +     /*
> > +      * Trackpad pin put here to work around second source components
> > +      * sharing the pinmux in steelix designs.
> > +      */
> > +     pinctrl-0 =3D <&i2c2_pins>, <&trackpad_pin>;
> > +     clock-frequency =3D <400000>;
> > +     i2c-scl-internal-delay-ns =3D <10000>;
> > +     status =3D "okay";
> > +
> > +     trackpad@15 {
> > +             compatible =3D "elan,ekth3000";
>
> You forgot to change this one.
>
> Remove compatible from this node and stop using /delete-node/ in device s=
pecific
> devicetrees.

I believe I already replied to the previous version why we can't and should=
n't
do that.

"elan,ekth3000" and "hid-over-i2c" have incompatible bindings, specifically
the former uses "vcc-supply" while the latter uses "vdd-supply".

One has to track down if a property is a "sharable" property or not,
then put it in the correct place, otherwise getting DT binding validation
errors.

To me it seems cleaner to just delete the node wholesale to not have any
remnants of the original node, i.e. start from a clean slate. Trying to
"share" common properties is asking for a headache.

This feels more like a preference thing. I also asked if deleting the node
through the label would be cleaner, but you didn't reply.

Also, "elan,ekth3000" is the one that was designed and tested on the Corsol=
a
reference design, so I think it rightfully belongs there. The Tentacruel
SKU replaced it with another part, so the original part should be disabled,
or in this case, deleted, because otherwise there would be a conflict.


Regards
ChenYu



> > +             reg =3D <0x15>;
> > +             interrupts-extended =3D <&pio 11 IRQ_TYPE_LEVEL_LOW>;
> > +             vcc-supply =3D <&pp3300_s3>;
> > +             wakeup-source;
> > +     };
> > +};
>
>
> corsola.dtsi (here):
>
> &i2c2 {
>         pinctrl-names =3D "default";
>         /*
>          * Trackpad pin put here to work around second source components
>          * sharing the pinmux in steelix designs.
>          */
>         pinctrl-0 =3D <&i2c2_pins>, <&trackpad_pin>;
>         clock-frequency =3D <400000>;
>         i2c-scl-internal-delay-ns =3D <10000>;
>         status =3D "okay";
>
>         trackpad_i2c2_15: trackpad@15 {
>                 /*
>                  * Those are common properties for i2c2 trackpad on Corso=
la boards.
>                  * The compatible string is declared in device specific d=
evicetrees
>                  */
>                 reg =3D <0x15>;
>                 interrupts-extended =3D <&pio 11 IRQ_TYPE_LEVEL_LOW>;
>                 vcc-supply =3D <&pp3300_s3>;
>                 wakeup-source;
>                 status =3D "disabled";
>         };
> };
>
> corsola-some-device.dts:
>
> &trackpad_i2c2_15 {
>         compatible =3D "hid-over-i2c";
>         hid-descr-addr =3D <0x0001>;
>         status =3D "okay";
> };
>
> corsola-some-other-device.dts:
>
> &trackpad_i2c2_15 {
>         compatible =3D "elan,ekth3000";
>         status =3D "okay";
> };
>
> ....everything else looks good.
>
> Cheers,
> Angelo

