Return-Path: <devicetree+bounces-21170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA5C802A99
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 04:51:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 102FE1F20F53
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 03:51:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D07CB33CF;
	Mon,  4 Dec 2023 03:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="PcNYI5fx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4422CC4
	for <devicetree@vger.kernel.org>; Sun,  3 Dec 2023 19:51:06 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-50abb83866bso5276268e87.3
        for <devicetree@vger.kernel.org>; Sun, 03 Dec 2023 19:51:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701661864; x=1702266664; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0syhQ4FzCWigP5oJO4Kq1BAVvU372cUxnkG2YAyqM58=;
        b=PcNYI5fxCJPUC+t/YG1iv6LaStC1Y6VLe+CMzuh6QoVRJvqq5vMWZqxfMpaTTJDu7Q
         O8yDRO+76iWsSAkud3Q2QIMPYYr+MlUT8lOq62yFA0r6K5l1kDlMGzOq6YvSp2icYj0Z
         QUW78tD5e43LR61yxReuOcYCjN793t969Gwak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701661864; x=1702266664;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0syhQ4FzCWigP5oJO4Kq1BAVvU372cUxnkG2YAyqM58=;
        b=N9PTWkLzKYI59Uqo+K04zIMC1r54ROdwXaeZb9b9gqD3/p0VAttgNS23ERfCx1oWFS
         sH+i76/CuG9njtoXYJFwUgEW4vuYGpfeGtsqK7cw0G22b46Bgpjmvp/V5TU18WJ9IEmr
         cRAa1ANBpz3716Soyd3OYtmnhFa68B8wm3NZOImP35tqUUuev0Uw7JDKg2haCzfMC65A
         oLt+KN9c0Ki9AV3nQg5jKt6+4bPPsRtejRGc+yYIZE8Rlov+FYRqmtUiYkl3oFqQ6B1t
         Jql7Exu7qgnrDzaRGmLz6xmRRflp8F+tNlsAt7zSDNRgFsLCNtUK4sqQsui7KK8ikV7E
         GqMg==
X-Gm-Message-State: AOJu0Ywili8oiq7ppix3P8qdM24Debmjn2kwanEKm1VfeGlEMD3NxBWt
	gc+wCWbvT5lEcBlZu4AeP08bd/iWYq44K1d7YYE2Uw==
X-Google-Smtp-Source: AGHT+IFKsYDE6bCvMKPPAMA2dIf+GqREU669Z4KrunuaczAMtywnMiPr/oN9gXqxZlapAE/ft8JzDvA8aoYuNQ0xm+Y=
X-Received: by 2002:ac2:48ae:0:b0:50b:f8e6:3786 with SMTP id
 u14-20020ac248ae000000b0050bf8e63786mr174325lfg.103.1701661864266; Sun, 03
 Dec 2023 19:51:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231201070719.1229447-1-wenst@chromium.org> <20231201070719.1229447-7-wenst@chromium.org>
 <CAJMQK-iPT6p1izqQCHmJD2+E_RmnDKQfxsgMetnKtwNgLUmx1A@mail.gmail.com>
In-Reply-To: <CAJMQK-iPT6p1izqQCHmJD2+E_RmnDKQfxsgMetnKtwNgLUmx1A@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 4 Dec 2023 11:50:53 +0800
Message-ID: <CAGXv+5EpgGhBGWupsQ9oFSyMr-QTma1O38XOPYj2fZ5mpOYYhg@mail.gmail.com>
Subject: Re: [PATCH v2 6/9] arm64: dts: mediatek: Add MT8186 Krabby platform
 based Tentacruel / Tentacool
To: Hsin-Yi Wang <hsinyi@chromium.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 2, 2023 at 9:45=E2=80=AFAM Hsin-Yi Wang <hsinyi@chromium.org> w=
rote:
>
> On Fri, Dec 1, 2023 at 5:39=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.org> =
wrote:
> >
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
> > ---
> > Changes since v1:
> > - Reorder SKU numbers in descending order.
> > - Fixed pinconfig node names
> > - Moved pinctrl-* properties after interrupts-*
> > - Switched to interrupts-extended for external components
> > - Marked ADSP as explicitly disabled, with a comment explaining that it
> >   stalls the system
> > - Renamed "touchpad" to "trackpad"
> > - Dropped bogus "no-laneswap" property from it6505 node
> > - Moved "realtek,jd-src" property to after all the regulator supplies
> > - Switched to macros for MT6366 regulator "regulator-allowed-modes"
> > - Renamed "vgpu" regulator name to allow coupling, with a comment
> >   containing the name used in the design
> > - Renamed "cr50" node name to "tpm"
> > - Moved trackpad_pins reference up to i2c2; workaround for second sourc=
e
> >   component resource sharing.
> > - Fix copyright year
> > - Fixed touchscreen supply name
> >
> >  arch/arm64/boot/dts/mediatek/Makefile         |    4 +
> >  .../dts/mediatek/mt8186-corsola-krabby.dtsi   |  129 ++
> >  .../mt8186-corsola-tentacool-sku327681.dts    |   57 +
> >  .../mt8186-corsola-tentacool-sku327683.dts    |   26 +
> >  .../mt8186-corsola-tentacruel-sku262144.dts   |   44 +
> >  .../mt8186-corsola-tentacruel-sku262148.dts   |   28 +
> >  .../boot/dts/mediatek/mt8186-corsola.dtsi     | 1719 +++++++++++++++++
> >  7 files changed, 2007 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-krabby.=
dtsi
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-tentaco=
ol-sku327681.dts
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-tentaco=
ol-sku327683.dts
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacr=
uel-sku262144.dts
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacr=
uel-sku262148.dts
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dt=
s/mediatek/Makefile
> > index e6e7592a3645..442af61b1305 100644
> > --- a/arch/arm64/boot/dts/mediatek/Makefile
>
> <snip>
>
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacool-sku3=
27683.dts b/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacool-sku327683=
.dts
> > new file mode 100644
> > index 000000000000..2e4d8df978c1
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacool-sku327683.d=
ts
> > @@ -0,0 +1,26 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +/*
> > + * Copyright 2023 Google LLC
> > + */
> > +
> > +#include "mt8186-corsola-tentacool-sku327681.dts"
> > +
> > +/ {
> > +       compatible =3D "google,tentacruel-sku327683", "google,tentacrue=
l", "mediatek,mt8186";
> > +};
> > +
> > +/* This variant replaces only the touchpad controller. */
> > +&i2c2 {
> > +       /delete-node/ touchpad@15;
>
> corsola.dtsi has this node named trackpad@15.

Thanks for spotting the error. Fixed in the next version.

> > +
> > +       touchpad@15 {
> > +               pinctrl-names =3D "default";
> > +               pinctrl-0 =3D <&trackpad_pin>;

Pinctrl also dropped in the next version.

Same for mt8186-corsola-tentacruel-sku262148.dts.


Thanks
ChenYu

> > +               compatible =3D "hid-over-i2c";
> > +               reg =3D <0x15>;
> > +               interrupts-extended =3D <&pio 11 IRQ_TYPE_LEVEL_LOW>;
> > +               hid-descr-addr =3D <0x0001>;
> > +               vdd-supply =3D <&pp3300_s3>;
> > +               wakeup-source;
> > +       };
> > +};
>
> <snip>
>
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacruel-sku=
262148.dts b/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacruel-sku2621=
48.dts
> > new file mode 100644
> > index 000000000000..7841046084dc
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacruel-sku262148.=
dts
> > @@ -0,0 +1,28 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +/*
> > + * Copyright 2023 Google LLC
> > + */
> > +
> > +#include "mt8186-corsola-tentacruel-sku262144.dts"
> > +
> > +/ {
> > +       compatible =3D "google,tentacruel-sku262151", "google,tentacrue=
l-sku262150",
> > +                    "google,tentacruel-sku262149", "google,tentacruel-=
sku262148",
> > +                    "google,tentacruel", "mediatek,mt8186";
> > +};
> > +
> > +/* This variant replaces only the touchpad controller. */
> > +&i2c2 {
> > +       /delete-node/ touchpad@15;
> > +
>
> ditto.
>
> > +       touchpad@15 {
> > +               pinctrl-names =3D "default";
> > +               pinctrl-0 =3D <&trackpad_pin>;
> > +               compatible =3D "hid-over-i2c";
> > +               reg =3D <0x15>;
> > +               interrupts-extended =3D <&pio 11 IRQ_TYPE_LEVEL_LOW>;
> > +               hid-descr-addr =3D <0x0001>;
> > +               vdd-supply =3D <&pp3300_s3>;
> > +               wakeup-source;
> > +       };
> > +};
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi b/arch/ar=
m64/boot/dts/mediatek/mt8186-corsola.dtsi
> > new file mode 100644
> > index 000000000000..c5446b18783d
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
> > @@ -0,0 +1,1719 @@
>
> <snip>
>
> > +
> > +&i2c2 {
> > +       pinctrl-names =3D "default";
> > +       /*
> > +        * Trackpad pin put here to work around second source component=
s
> > +        * sharing the pinmux
> > +        */
> > +       pinctrl-0 =3D <&i2c2_pins>, <&trackpad_pin>;
> > +       clock-frequency =3D <400000>;
> > +       i2c-scl-internal-delay-ns =3D <10000>;
> > +       status =3D "okay";
> > +
> > +       trackpad@15 {
> > +               compatible =3D "elan,ekth3000";
> > +               reg =3D <0x15>;
> > +               interrupts-extended =3D <&pio 11 IRQ_TYPE_LEVEL_LOW>;
> > +               vcc-supply =3D <&pp3300_s3>;
> > +               wakeup-source;
> > +       };
> > +};
> > +
>
> <snip>

