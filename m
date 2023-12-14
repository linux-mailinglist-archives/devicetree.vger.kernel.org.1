Return-Path: <devicetree+bounces-25425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C7C8133AB
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 15:54:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9CA041C2166A
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 14:54:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69DDB5B5A5;
	Thu, 14 Dec 2023 14:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="eZeTL2Uz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86FEE18B
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 06:54:10 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2c9e9c2989dso110859521fa.0
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 06:54:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1702565649; x=1703170449; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j12poGNDMVPCiuizwZZDvadcKFA8ZUt/cvz0rwzMQOM=;
        b=eZeTL2UzPXSKvkFM7uefSYpMK9hdyMywhMt21vmacW8DVHsy/jkxyVG8/sl3UU38A6
         1s86+4z4SmaT6pAjmAToBPSpGF+Q9UzIO3jk3eERaLOc42o/X7L6s1vhqa+ntX9fU7+d
         7qah9pPwumRLHdgzB63jXvdg8Rhqx4OstW6UA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702565649; x=1703170449;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j12poGNDMVPCiuizwZZDvadcKFA8ZUt/cvz0rwzMQOM=;
        b=fon9Q8jjmnhLIVhBsM4m/9bwFbBFcc0JyvrhzP1LAtkJJ8hcNF3YFdz+kcOlTOmtxi
         GmNB0VDfpv8j254R0CRznBp62EVebvGqfP2VpmcdR/atwk8rdD78DwT+HEZg6hPSl/eD
         YgmQd+KoX6aONbGvGLe/sVgGmyzvgVIZuuEiP143EndoN7/mnC2qhOmS8800d3omlIaE
         mAaD39BdKo2H39HgL8oKZ7t/m77pepA25rBD9j4wcetF0nWSxLj0dGjjgHTvbog5VaOP
         QWG/ts0EBcOxkYQ9qAfVpM1TKf1Kb0Y/hIRgfUt57a6ijpr2QcHSifGW+RYd3YpUQ5+t
         84gA==
X-Gm-Message-State: AOJu0YwksxdxPVTOBrOsfsnz/9aZQDHWM6UQybcSrjIALH0moaLnrU8+
	6UO205SdWi75dflPGrCRI0sjKCdNoSyEKnr2JVoaWo99hGQXJkxhwAo=
X-Google-Smtp-Source: AGHT+IED4t5ae8nY4HkOQWlRIXE+8L9IsVE130yoorSi0lxc/LUFMqhbgM571oVEzj//HHDD9tXSzEr5sS7OVkMgkCk=
X-Received: by 2002:ac2:5201:0:b0:50b:f9b2:cf2 with SMTP id
 a1-20020ac25201000000b0050bf9b20cf2mr4389768lfl.40.1702565648530; Thu, 14 Dec
 2023 06:54:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231213150435.4134390-1-wenst@chromium.org> <20231213150435.4134390-8-wenst@chromium.org>
 <8d855e5e-4938-4d4f-a79f-bbf89e30f6ca@collabora.com>
In-Reply-To: <8d855e5e-4938-4d4f-a79f-bbf89e30f6ca@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 14 Dec 2023 23:53:57 +0900
Message-ID: <CAGXv+5EmVQBNOL6GWaXu_i89WAUeUVtMBSbG8onGh3KHz5rnbA@mail.gmail.com>
Subject: Re: [PATCH v4 7/9] arm64: dts: mediatek: Introduce MT8186 Steelix
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Eugen Hristev <eugen.hristev@collabora.com>, Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 14, 2023 at 7:34=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 13/12/23 16:04, Chen-Yu Tsai ha scritto:
> > The MT8186 Steelix, also known as the Lenovo 300e Yoga Chromebook Gen 4=
,
> > is a convertible device based on a common design of the same name. The
> > device comes in different variants. Of them, whether a world facing
> > camera is integrated is the only differentiating factor between the
> > two device trees added. The different SKU IDs describe this alone.
> >
> > The other device difference is the touchpad component used. This is
> > simply handled by having both possible components described in the
> > device tree, and letting the implementation figure out which one is
> > actually available. The system bootloader / firmware does not
> > differentiate this in that they share the same SKU IDs.
> >
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > ---
> > Changes since v2:
> > - Picked up Conor's ack
> >
> > Changes since v1:
> > - Removed trackpad_pins reference (moved to i2c2 in corsola dtsi)
> > - Fixed copyright year
> > - Renamed touchpad to trackpad
> > ---
> >   arch/arm64/boot/dts/mediatek/Makefile         |   2 +
> >   .../mt8186-corsola-steelix-sku131072.dts      |  18 ++
> >   .../mt8186-corsola-steelix-sku131073.dts      |  18 ++
> >   .../dts/mediatek/mt8186-corsola-steelix.dtsi  | 195 +++++++++++++++++=
+
> >   4 files changed, 233 insertions(+)
> >   create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-steeli=
x-sku131072.dts
> >   create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-steeli=
x-sku131073.dts
> >   create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-steeli=
x.dtsi
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dt=
s/mediatek/Makefile
> > index 442af61b1305..7bd9471b89f9 100644
> > --- a/arch/arm64/boot/dts/mediatek/Makefile
> > +++ b/arch/arm64/boot/dts/mediatek/Makefile
> > @@ -43,6 +43,8 @@ dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8183-kukui-kodama-=
sku32.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8183-kukui-krane-sku0.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8183-kukui-krane-sku176.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8183-pumpkin.dtb
> > +dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8186-corsola-steelix-sku131072.dtb
> > +dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8186-corsola-steelix-sku131073.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8186-corsola-tentacool-sku327681.d=
tb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8186-corsola-tentacool-sku327683.d=
tb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8186-corsola-tentacruel-sku262144.=
dtb
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-steelix-sku131=
072.dts b/arch/arm64/boot/dts/mediatek/mt8186-corsola-steelix-sku131072.dts
> > new file mode 100644
> > index 000000000000..eae17bca8585
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-steelix-sku131072.dts
> > @@ -0,0 +1,18 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +/*
> > + * Copyright 2022 Google LLC
> > + */
> > +
> > +/dts-v1/;
> > +#include "mt8186-corsola-steelix.dtsi"
> > +
> > +/ {
> > +     model =3D "Google Steelix board";
> > +     compatible =3D "google,steelix-sku131072", "google,steelix",
> > +                  "mediatek,mt8186";
> > +     chassis-type =3D "convertible";
> > +};
> > +
> > +&mt6366codec {
> > +     mediatek,dmic-mode =3D <0>; /* two-wire */
> > +};
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-steelix-sku131=
073.dts b/arch/arm64/boot/dts/mediatek/mt8186-corsola-steelix-sku131073.dts
> > new file mode 100644
> > index 000000000000..a55375b95d0d
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-steelix-sku131073.dts
> > @@ -0,0 +1,18 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +/*
> > + * Copyright 2022 Google LLC
> > + */
> > +
> > +/dts-v1/;
> > +#include "mt8186-corsola-steelix.dtsi"
> > +
> > +/ {
> > +     model =3D "Google Steelix board";
> > +     compatible =3D "google,steelix-sku131073", "google,steelix",
> > +                  "mediatek,mt8186";
> > +     chassis-type =3D "convertible";
> > +};
> > +
> > +&mt6366codec {
> > +     mediatek,dmic-mode =3D <1>; /* one-wire */
> > +};
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-steelix.dtsi b=
/arch/arm64/boot/dts/mediatek/mt8186-corsola-steelix.dtsi
> > new file mode 100644
> > index 000000000000..47262bc499ad
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-steelix.dtsi
> > @@ -0,0 +1,195 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +/*
> > + * Copyright 2022 Google LLC
> > + */
> > +
> > +/dts-v1/;
> > +#include "mt8186-corsola.dtsi"
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/input/input.h>
> > +
> > +/{
> > +     pp1000_edpbrdg: regulator-pp1000-edpbrdg {
> > +             compatible =3D "regulator-fixed";
> > +             regulator-name =3D "pp1000_edpbrdg";
> > +             pinctrl-names =3D "default";
> > +             pinctrl-0 =3D <&en_pp1000_edpbrdg>;
> > +             enable-active-high;
> > +             regulator-boot-on;
> > +             gpio =3D <&pio 29 GPIO_ACTIVE_HIGH>;
> > +             vin-supply =3D <&pp3300_z2>;
> > +     };
> > +
> > +     pp1800_edpbrdg_dx: regulator-pp1800-edpbrdg-dx {
> > +             compatible =3D "regulator-fixed";
> > +             regulator-name =3D "pp1800_edpbrdg_dx";
> > +             pinctrl-names =3D "default";
> > +             pinctrl-0 =3D <&en_pp1800_edpbrdg>;
> > +             enable-active-high;
> > +             regulator-boot-on;
> > +             gpio =3D <&pio 30 GPIO_ACTIVE_HIGH>;
> > +             vin-supply =3D <&mt6366_vio18_reg>;
> > +     };
> > +
> > +     pp3300_edp_dx: regulator-pp3300-edp-dx {
> > +             compatible =3D "regulator-fixed";
> > +             regulator-name =3D "pp3300_edp_dx";
> > +             pinctrl-names =3D "default";
> > +             pinctrl-0 =3D <&en_pp3300_edpbrdg>;
> > +             enable-active-high;
> > +             regulator-boot-on;
> > +             gpio =3D <&pio 31 GPIO_ACTIVE_HIGH>;
> > +             vin-supply =3D <&pp3300_z2>;
> > +     };
> > +};
> > +
> > +&dsi_out {
> > +     remote-endpoint =3D <&anx7625_in>;
> > +};
> > +
> > +&i2c0 {
> > +     clock-frequency =3D <400000>;
> > +
> > +     anx_bridge: anx7625@58 {
> > +             compatible =3D "analogix,anx7625";
> > +             reg =3D <0x58>;
> > +             pinctrl-names =3D "default";
> > +             pinctrl-0 =3D <&anx7625_pins>;
> > +             enable-gpios =3D <&pio 96 GPIO_ACTIVE_HIGH>;
> > +             reset-gpios =3D <&pio 98 GPIO_ACTIVE_HIGH>;

BTW, do you think there is anything we can do about this backwards
active level setting?

> > +             vdd10-supply =3D <&pp1000_edpbrdg>;
> > +             vdd18-supply =3D <&pp1800_edpbrdg_dx>;
> > +             vdd33-supply =3D <&pp3300_edp_dx>;
> > +             analogix,lane0-swing =3D /bits/ 8 <0x70 0x30>;
> > +             analogix,lane1-swing =3D /bits/ 8 <0x70 0x30>;
> > +
> > +             ports {
> > +                     #address-cells =3D <1>;
> > +                     #size-cells =3D <0>;
> > +
> > +                     port@0 {
> > +                             reg =3D <0>;
> > +
> > +                             anx7625_in: endpoint {
> > +                                     remote-endpoint =3D <&dsi_out>;
> > +                                     data-lanes =3D <0 1 2 3>;
> > +                             };
> > +                     };
> > +
> > +                     port@1 {
> > +                             reg =3D <1>;
> > +
> > +                             anx7625_out: endpoint {
> > +                                     remote-endpoint =3D <&panel_in>;
> > +                             };
> > +                     };
> > +             };
> > +
> > +             aux-bus {
> > +                     panel: panel {
> > +                             compatible =3D "edp-panel";
> > +                             power-supply =3D <&pp3300_disp_x>;
> > +                             backlight =3D <&backlight_lcd0>;
> > +
> > +                             port {
> > +                                     panel_in: endpoint {
> > +                                             remote-endpoint =3D <&anx=
7625_out>;
> > +                                     };
> > +                             };
> > +                     };
> > +             };
> > +     };
> > +};
> > +
> > +&i2c1 {
> > +     touchscreen: touchscreen@5d {
> > +             compatible =3D "goodix,gt7375p";
> > +             reg =3D <0x5d>;
> > +             interrupts-extended =3D <&pio 12 IRQ_TYPE_EDGE_FALLING>;
> > +             pinctrl-names =3D "default";
> > +             pinctrl-0 =3D <&touchscreen_pins>;
> > +             reset-gpios =3D <&pio 60 GPIO_ACTIVE_LOW>;
> > +             vdd-supply =3D <&pp3300_s3>;
> > +             goodix,no-reset-during-suspend;
> > +     };
> > +};
> > +
> > +&i2c2 {
> > +     i2c-scl-internal-delay-ns =3D <22000>;
> > +
> > +     /* second source component */
> > +     trackpad@2c {
> > +             compatible =3D "hid-over-i2c";
> > +             reg =3D <0x2c>;
> > +             hid-descr-addr =3D <0x20>;
> > +             interrupts-extended =3D <&pio 11 IRQ_TYPE_LEVEL_LOW>;
> > +             vdd-supply =3D <&pp3300_s3>;
> > +             wakeup-source;
> > +     };
> > +};
> > +
> > +&keyboard_controller {
> > +     function-row-physmap =3D <
> > +             MATRIX_KEY(0x00, 0x02, 0)       /* T1 */
> > +             MATRIX_KEY(0x03, 0x02, 0)       /* T2 */
> > +             MATRIX_KEY(0x02, 0x02, 0)       /* T3 */
> > +             MATRIX_KEY(0x01, 0x02, 0)       /* T4 */
> > +             MATRIX_KEY(0x03, 0x04, 0)       /* T5 */
> > +             MATRIX_KEY(0x02, 0x04, 0)       /* T6 */
> > +             MATRIX_KEY(0x01, 0x04, 0)       /* T7 */
> > +             MATRIX_KEY(0x02, 0x09, 0)       /* T8 */
> > +             MATRIX_KEY(0x01, 0x09, 0)       /* T9 */
> > +             MATRIX_KEY(0x00, 0x04, 0)       /* T10 */
> > +     >;
> > +
> > +     linux,keymap =3D <
> > +             MATRIX_KEY(0x00, 0x02, KEY_BACK)
> > +             MATRIX_KEY(0x03, 0x02, KEY_REFRESH)
> > +             MATRIX_KEY(0x02, 0x02, KEY_ZOOM)
> > +             MATRIX_KEY(0x01, 0x02, KEY_SCALE)
> > +             MATRIX_KEY(0x03, 0x04, KEY_BRIGHTNESSDOWN)
> > +             MATRIX_KEY(0x02, 0x04, KEY_BRIGHTNESSUP)
> > +             MATRIX_KEY(0x01, 0x04, KEY_MICMUTE)
> > +             MATRIX_KEY(0x02, 0x09, KEY_MUTE)
> > +             MATRIX_KEY(0x01, 0x09, KEY_VOLUMEDOWN)
> > +             MATRIX_KEY(0x00, 0x04, KEY_VOLUMEUP)
> > +             CROS_STD_MAIN_KEYMAP
> > +     >;
> > +};
> > +
> > +&pio {
> > +     anx7625_pins: anx7625-pins {
> > +             pins1 {
>
> pins-en-rst

Ack. Also I think we can split them so they each get proper names.

> > +                     pinmux =3D <PINMUX_GPIO96__FUNC_GPIO96>,
> > +                              <PINMUX_GPIO98__FUNC_GPIO98>;
> > +                     output-low;
> > +             };
> > +
> > +             pins2 {
>
> pins-is-this-an-interrupt? :-)

Yes. Will use pins-int.

> > +                     pinmux =3D <PINMUX_GPIO9__FUNC_GPIO9>;
> > +                     input-enable;
> > +                     bias-disable;
> > +             };
> > +     };
> > +
> > +     en_pp1000_edpbrdg: pp1000-edpbrdg-en-pins {
> > +             pins {
>
> pins-vreg-en like in corsola.dtsi

Ack.

> > +                     pinmux =3D <PINMUX_GPIO29__FUNC_GPIO29>;
> > +                     output-low;
> > +             };
> > +     };
> > +
> > +     en_pp1800_edpbrdg: pp1800-edpbrdg-en-pins {
> > +             pins {
>
> same

Ack.

> > +                     pinmux =3D <PINMUX_GPIO30__FUNC_GPIO30>;
> > +                     output-low;
> > +             };
> > +     };
> > +
> > +     en_pp3300_edpbrdg: pp3300-edpbrdg-en-pins {
> > +             pins {

Ack.

ChenYu

