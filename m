Return-Path: <devicetree+bounces-125245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CD74D9DB4B5
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 10:22:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E4B92827A1
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 09:22:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95282156238;
	Thu, 28 Nov 2024 09:21:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nE87CEye"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC811154C0F
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 09:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732785717; cv=none; b=ugqXeLq0PBLBunKBOr6RwMNBViBqXLZlYTxGUNxVM4UTB1kkRvnyEOZHfAh0+bMoB4Hi+JU1rRFhYWko4jm7VQzCkEG6fjlIM43eVbTDcyF3cwhLY66hSqaWMeHGI1sMi39G+ijcKq4LwRQH6S0U0cwKsxptD/VoDxHYYHWs4FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732785717; c=relaxed/simple;
	bh=jVZtcysbs8kE04CQUPOu97ung0XQ8T6kq9OrRJg8ocs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QclFk2EKFwOR4svH8Rn1KnJ57dIZpan2sh1NvymreGVWrncQgKl4DrYJHgCnRfIs32Horols//89lC2LVa0W39uF7cQedi7NRo7GuttjoKCDvdv2Yn+AebASem2DXcfti1PBHoevPH8iFsQy+crK90aqymyEFy87luCpJI5YzIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=nE87CEye; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2ffe2700e91so1844731fa.2
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 01:21:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732785713; x=1733390513; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qKBe2f1d/nSE8/83S7fMxQ2H1MkATAfBQssY2mDkHqw=;
        b=nE87CEyeuuxB100MzyNhvB1N3dpCT6VFzsKoqBLSCnvDBEwgF/q2x5JBtv5rnz5nbq
         mEHU16JewWAoHchbXovkPiKUoLCk4U4DEpL/pR+KHWPXb1G/5bJTZq+pCfSrNexCJwgW
         Of/3cqwHoDZYpI9U8/x3H+9UkTNiv2HkTu0tc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732785713; x=1733390513;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qKBe2f1d/nSE8/83S7fMxQ2H1MkATAfBQssY2mDkHqw=;
        b=KiGTTU9OyXOc/dfukn3AZTi3pwVlMcE5yfWqR1QKb/lT8VnssNsfBLKDhHUhQTSE+o
         lVwCzC80p+i5o98obMaQHeSDrbkqSz2g00U7qSn9kBK5SlLaEjXs97/CmR8nSaiugDDB
         SFiMvXyti25yqlMlAN1zmozokrT4y8QFxjC2hi+fIShTzjKariVF9mpBu/DlYDroAsjc
         yABZKI+ZfotEgnungHT5k+3QhtNQWAE5E+Uc4Gyxvplw295X1CR1FVnh6c+XtP8v+8Kd
         0KvcSjbogLA7sq1Hc5Ryq4R1hEgb1CGg+Kf2paZ9u8wkfcMtI969i5Fx4x+vP5UrJp6Q
         bEbA==
X-Forwarded-Encrypted: i=1; AJvYcCXx4l6wHFDgXPL47L2CfFuY9pmW77fpdOvsKNUbFkFfw7bllg8m60SENkeP2LsRIPMMpYFgsS7MoZcf@vger.kernel.org
X-Gm-Message-State: AOJu0YzoqLe5DP7QrMHjIozhzxh35DTUbxycaMRjYQ0lblmOb5jsyDLZ
	dHY0VqAyil2lnCPIZjzrgp315aSUy9+sdW8o35CTAY3wRzOjxNmFB0U7sbKaDwViPLs4N1r/Hsc
	75nOOTX2bC3ePMiIYVGy+hWxM23bKKl8U/+yk
X-Gm-Gg: ASbGnctPJsOYcQ+ULV9xg5GT5shWBd6n+biClB1Ftx0kFm1d61ohfLl3YKNH74GOyPK
	7ARrUiwhboNgksMtclIvjrcDz+CoB1aPE1kCRXguokTQEtcXTYE7MyVMkmUg=
X-Google-Smtp-Source: AGHT+IGdj/tSc+Vg1n1HINo9pBj3OGBWaUozOoIytbHjWn8FVwKTt7H+aqMvtclp1yALw92qHHQSj6W/RYGN7E3g/EI=
X-Received: by 2002:a05:6512:3e08:b0:53d:dbec:9fca with SMTP id
 2adb3069b0e04-53df001abb1mr3751297e87.0.1732785712733; Thu, 28 Nov 2024
 01:21:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241124085739.290556-1-fshao@chromium.org> <20241124085739.290556-3-fshao@chromium.org>
In-Reply-To: <20241124085739.290556-3-fshao@chromium.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 28 Nov 2024 17:21:41 +0800
Message-ID: <CAGXv+5GeoDK92Zj1vdjwbj-kaTdtmOof9AJySxNYW3EA0960VQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: mediatek: Introduce MT8188 Geralt
 platform based Ciri
To: Fei Shao <fshao@chromium.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 24, 2024 at 5:01=E2=80=AFPM Fei Shao <fshao@chromium.org> wrote=
:
>
> Introduce MT8188-based Chromebook Ciri, also known commercially as
> Lenovo Chromebook Duet (11", 9).
>
> Ciri is a detachable device based on the Geralt design, where Geralt is
> the codename for the MT8188 platform. Ciri offers 8 SKUs to accommodate
> different combinations of second-source components, including:
> - audio codecs (RT5682S and ES8326)
> - speaker amps (TAS2563 and MAX98390)
> - MIPI-DSI panels (BOE nv110wum-l60 and IVO t109nw41)

Of note, a couple things are not working:

- Touchscreen: missing driver for HiMax SPI HID
- Trackpad on detachable base: missing driver support in CBAS and
    associated device tree node

A couple things below.

> Signed-off-by: Fei Shao <fshao@chromium.org>
> ---
>
> Changes in v3:
> - drop scp_mem, scp_pins and SCP declaration per discussion in v2
> - drop unused (for now) dual-SCP reserved memory range
> - drop unused touchscreen pinctrl
> - drop unused HID-I2C touchscreen node in I2C-2
> - drop unused AP-SAR sensor node in I2C-3
> - drop trackpad node in I2C-4 (only work with downstream CBAS)
> - drop mmc1 (unused in public product)
> - drop eDP panel path (unused in public product)
> - declare DSI panel compatibles in individual board .dts files
> - declare CPU TDP target in -geralt.dtsi instead
> - move spi1 default and sleep pinctrl to -geralt.dtsi
> - leave memory@40000000 size empty (filled by bootloader)
> - consolidate audio codec/amplifier, DAI link declaration and
>   audio-routing property
> - stop sourcing `arm/cros-ec-sbs.dtsi` in -geralt.dtsi, because all that
>   does is to declare sbs-battery at address 0xb, which doesn't align
>   with the final design at 0xf. This saves us a /delete-node/.
> - minor format fix
>
> Changes in v2:
> - remove invalid or undocumented properties
>     e.g. mediatek,dai-link, maxim,dsm_param_name etc.
> - remove touchscreen as the driver is not yet accepted in upstream
> - update sound DAI link node name to match the binding
> - add missing pinctrls in audio codec nodes
>
>  arch/arm64/boot/dts/mediatek/Makefile         |    8 +
>  .../dts/mediatek/mt8188-geralt-ciri-sku0.dts  |   32 +
>  .../dts/mediatek/mt8188-geralt-ciri-sku1.dts  |   59 +
>  .../dts/mediatek/mt8188-geralt-ciri-sku2.dts  |   59 +
>  .../dts/mediatek/mt8188-geralt-ciri-sku3.dts  |   32 +
>  .../dts/mediatek/mt8188-geralt-ciri-sku4.dts  |   48 +
>  .../dts/mediatek/mt8188-geralt-ciri-sku5.dts  |   72 +
>  .../dts/mediatek/mt8188-geralt-ciri-sku6.dts  |   72 +
>  .../dts/mediatek/mt8188-geralt-ciri-sku7.dts  |   48 +
>  .../boot/dts/mediatek/mt8188-geralt-ciri.dtsi |  316 +++++
>  .../boot/dts/mediatek/mt8188-geralt.dtsi      | 1156 +++++++++++++++++
>  11 files changed, 1902 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku0.=
dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku1.=
dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku2.=
dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku3.=
dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku4.=
dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku5.=
dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku6.=
dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku7.=
dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri.dtsi
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi

[...]

> diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi b/arch/arm64=
/boot/dts/mediatek/mt8188-geralt.dtsi
> new file mode 100644
> index 000000000000..b6abecbcfa81
> --- /dev/null
> +++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
> @@ -0,0 +1,1156 @@

[...]

Looking at the schematic, the following two are actually a TPS65132S
on i2c3. It should be modeled as such. <&pio 3> is the enable GPIO
for both positive and negative regulators, while <&pio 4> goes to
the SYNC pin, which enables higher load on the negative side when
driven high. The latter is not supported by the driver or binding.

The TPS65132S has a different power sequence requirement compared
to the other TPS65132 variants.

> +       ppvar_mipi_disp_avdd: regulator-ppvar-mipi-disp-avdd {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "ppvar_mipi_disp_avdd";
> +               enable-active-high;
> +               gpio =3D <&pio 3 GPIO_ACTIVE_HIGH>;
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&mipi_disp_avdd_en>;
> +               vin-supply =3D <&pp5000_z1>;
> +       };
> +
> +       ppvar_mipi_disp_avee: regulator-ppvar-mipi-disp-avee {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "ppvar_mipi_disp_avee";
> +               regulator-enable-ramp-delay =3D <10000>;
> +               enable-active-high;
> +               gpio =3D <&pio 4 GPIO_ACTIVE_HIGH>;
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&mipi_disp_avee_en>;
> +               vin-supply =3D <&pp5000_z1>;
> +       };
> +

[...]

> +&i2c2 {
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&i2c2_pins>;
> +       clock-frequency =3D <400000>;
> +       status =3D "okay";
> +};

&i2c2 on Ciri is completely unused. Please re-disable it there.


ChenYu

