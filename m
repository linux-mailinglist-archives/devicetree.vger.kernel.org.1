Return-Path: <devicetree+bounces-122036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1ED9CD6C2
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 06:56:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 77EBC1F22556
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 05:56:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 442CF17C22A;
	Fri, 15 Nov 2024 05:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="GLj9by9D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44452169397
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 05:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731650195; cv=none; b=cFuPmj9YIV5jBbDYwETINmxk8OUCukbFxoWaPGmtvtF9XKvtTnMAMLRlKwnL+gi87zCFnO4hyxGvtpSsOpHhFgJZ6JBdsfMaGZ7Cz0RVsmAoR3zESytsyMlBKzrKOSlhEeyhnYFFT/SGnAXnVFIhTX09EE3cOEVeOH3XmV0elNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731650195; c=relaxed/simple;
	bh=Fkw42sX1pGeae2rGlxNCOQ+o7IU0fG8RvDItUqwJlsk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VpALJ1DF6U9J7uGkir8UaXoaPU+KH7614F18IwhNcxWkjcIbMlFos0/6A7JIpJUk5cAyj2FreF51DKvyJunPd3JEHEVHeg8h6sTJ3hXT/6RmheBMNufiZtkEADsWq3prLwWYaf0LFLdIhhIHFEqJHSPa2dKLNHrEc00X70FYvc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=GLj9by9D; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-288fec398f8so184496fac.3
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 21:56:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1731650192; x=1732254992; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EEon9YhSebcr8Ls+lkZ0E1cfq+bsm+y5LjyGUhL+MUg=;
        b=GLj9by9DZnOQnGt2+gIEH3MimMNQ19wLRtciEAIa2GqQVkPFQ507U+/k20uDY3EPWk
         X0cgH3eEvOFNIGrp/rduGyh4Mhs6ElJD2wpXemViwaEPX8GlSYmdc4bCeCBEeoJ1tcDa
         vYi5V0ZzKRfSzZqq/PkjVlnHqo6fBKYnFQRSLPn7KQ/orzOkCZFkL/QUW2cXRduCrAJJ
         QSjjxOOplWcn6+mFnB3yvRmjQD2dXneedRhGuIQCSHVesZASUjfzqtVNekVzsiBPOf7X
         HZG4pJVtz1jCS7o/YBDb1HNLy00sbhKFTqKTtaBvcjjHyjs0pstAeNj8V3G6EOMJcT74
         OZMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731650192; x=1732254992;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EEon9YhSebcr8Ls+lkZ0E1cfq+bsm+y5LjyGUhL+MUg=;
        b=uT3lTWwoLqP6uOwalkxolK8KqGpZ0giYxsP+J0iMOqW6y7ImPn/EmMD4Nwh5ug2cg/
         rMDPH7nX7XkWE9jhtTAS3vUfhid140Vq3Upf72fod/O61woxf2UIpvPeVhU+I1hE029c
         vlSQkEJzcBCIoqevMuVV9JDOLXsQ/kGfsVQ3RVzEy/M72gAE+eUOyR2BAtP8/eND0Wv0
         KzVr7OnNSjFjF8+1/9qwk6Ex4vbmWJQSlic+nUPiBNOKBXLAcaCQd6xvUd8VomDZvZg2
         Oph21CyK3n2U37hKqKNQ68fNs/fGmEfiLDdtVg/I0g2l2liZ9H4/Ro/drTw7WoNCLOMC
         +Xng==
X-Gm-Message-State: AOJu0YzS+xAeFmTOmWRA9NlfWpXVocA0nprQc4zDXna16ustEajeqqDy
	2rhF6UY+469QZLyPXpFU7gKkOKUMpM8f2oXptAG4osZRHEulvgusIIYjUfs7Vs8C5fvYsDBuwF7
	WYZCeFQv4kRsBqTOc588s86h3Roa2eeHQxVbr3A==
X-Google-Smtp-Source: AGHT+IEDCi8gqOCQs+w/MG+ETP1PE9P2c39BEwvFmbY43FtQGyeeMUP5wlqywx5zBkhOysn841MY+p5Fcc0dPlD28wQ=
X-Received: by 2002:a05:6870:aa8e:b0:296:966:6f5c with SMTP id
 586e51a60fabf-2962e0a692dmr356818fac.12.1731650192184; Thu, 14 Nov 2024
 21:56:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241021072626.15102-1-xiazhengqiao@huaqin.corp-partner.google.com>
 <20241021072626.15102-3-xiazhengqiao@huaqin.corp-partner.google.com>
In-Reply-To: <20241021072626.15102-3-xiazhengqiao@huaqin.corp-partner.google.com>
From: Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
Date: Fri, 15 Nov 2024 13:56:21 +0800
Message-ID: <CADYyEwRt4mPeofe5FvO32HZ0ObzS4n5NgM3hfjnykDUSrJ8dyg@mail.gmail.com>
Subject: Re: [PATCH v3 RESEND 2/4] arm64: dts: mediatek: Add MT8186 Chinchou Chromebooks
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, 
	wenst@chromium.org, hsinyi@chromium.org, sean.wang@mediatek.com, 
	Doug Anderson <dianders@google.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

No one has responded to this patch for two weeks. Please help to review it.

thanks

Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
=E4=BA=8E2024=E5=B9=B410=E6=9C=8821=E6=97=A5=E5=91=A8=E4=B8=80 15:27=E5=86=
=99=E9=81=93=EF=BC=9A
>
> MT8186 chinchou, known as ASUS Chromebook CZ12 Flip (CZ1204F)
> and CZ12(CZ1204C), is a MT8186 based laptop.
> It is based on the "corsola" design.It includes chinchou and chinchou360,
> including LTE, stylus, touchscreen combinations.
>
> Signed-off-by: Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com=
>
> ---
>  arch/arm64/boot/dts/mediatek/Makefile         |   3 +
>  .../mediatek/mt8186-corsola-chinchou-sku0.dts |  18 +
>  .../mediatek/mt8186-corsola-chinchou-sku1.dts |  35 ++
>  .../mt8186-corsola-chinchou-sku16.dts         |  29 ++
>  .../dts/mediatek/mt8186-corsola-chinchou.dtsi | 321 ++++++++++++++++++
>  5 files changed, 406 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou-=
sku0.dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou-=
sku1.dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou-=
sku16.dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou.=
dtsi
>
> diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/=
mediatek/Makefile
> index 8fd7b2bb7a15..0db7770e8907 100644
> --- a/arch/arm64/boot/dts/mediatek/Makefile
> +++ b/arch/arm64/boot/dts/mediatek/Makefile
> @@ -55,6 +55,9 @@ dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8183-kukui-kodama-sk=
u32.dtb
>  dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8183-kukui-krane-sku0.dtb
>  dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8183-kukui-krane-sku176.dtb
>  dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8183-pumpkin.dtb
> +dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8186-corsola-chinchou-sku0.dtb
> +dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8186-corsola-chinchou-sku1.dtb
> +dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8186-corsola-chinchou-sku16.dtb
>  dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8186-corsola-magneton-sku393216.dtb
>  dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8186-corsola-magneton-sku393217.dtb
>  dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8186-corsola-magneton-sku393218.dtb
> diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou-sku0.dt=
s b/arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou-sku0.dts
> new file mode 100644
> index 000000000000..5d012bc4ff0d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou-sku0.dts
> @@ -0,0 +1,18 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright 2024 Google LLC
> + */
> +
> +/dts-v1/;
> +#include "mt8186-corsola-chinchou.dtsi"
> +
> +/ {
> +       model =3D "Google chinchou CZ1104CM2A/CZ1204CM2A";
> +       compatible =3D "google,chinchou-sku0", "google,chinchou-sku2",
> +                       "google,chinchou-sku4", "google,chinchou-sku5",
> +                       "google,chinchou", "mediatek,mt8186";
> +};
> +
> +&gpio_keys {
> +       status =3D "disabled";
> +};
> diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou-sku1.dt=
s b/arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou-sku1.dts
> new file mode 100644
> index 000000000000..c18f473f6a0f
> --- /dev/null
> +++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou-sku1.dts
> @@ -0,0 +1,35 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright 2024 Google LLC
> + */
> +
> +/dts-v1/;
> +#include "mt8186-corsola-chinchou.dtsi"
> +
> +/ {
> +       model =3D "Google chinchou CZ1104FM2A/CZ1204FM2A/CZ1104CM2A/CZ120=
4CM2A";
> +       compatible =3D "google,chinchou-sku1", "google,chinchou-sku17",
> +                       "google,chinchou-sku3", "google,chinchou-sku6",
> +                       "google,chinchou-sku7", "google,chinchou-sku20",
> +                       "google,chinchou-sku22", "google,chinchou-sku23",
> +                       "google,chinchou", "mediatek,mt8186";
> +};
> +
> +&gpio_keys {
> +       status =3D "disabled";
> +};
> +
> +&i2c1 {
> +       i2c-scl-internal-delay-ns =3D <10000>;
> +
> +       touchscreen: touchscreen@41 {
> +               compatible =3D "ilitek,ili2901";
> +               reg =3D <0x41>;
> +               interrupts-extended =3D <&pio 12 IRQ_TYPE_LEVEL_LOW>;
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&touchscreen_pins>;
> +               reset-gpios =3D <&pio 60 GPIO_ACTIVE_LOW>;
> +               vccio-supply =3D <&pp1800_tchscr_report_disable>;
> +               vcc33-supply =3D <&pp3300_z2>;
> +       };
> +};
> diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou-sku16.d=
ts b/arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou-sku16.dts
> new file mode 100644
> index 000000000000..eb377de1fcde
> --- /dev/null
> +++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou-sku16.dts
> @@ -0,0 +1,29 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright 2024 Google LLC
> + */
> +
> +/dts-v1/;
> +#include "mt8186-corsola-chinchou.dtsi"
> +
> +/ {
> +       model =3D "Google chinchou CZ1104FM2A/CZ1204FM2A";
> +       compatible =3D "google,chinchou-sku16", "google,chinchou-sku18",
> +                       "google,chinchou-sku19", "google,chinchou-sku21",
> +                       "google,chinchou", "mediatek,mt8186";
> +};
> +
> +&i2c1 {
> +       i2c-scl-internal-delay-ns =3D <10000>;
> +
> +       touchscreen: touchscreen@41 {
> +               compatible =3D "ilitek,ili2901";
> +               reg =3D <0x41>;
> +               interrupts-extended =3D <&pio 12 IRQ_TYPE_LEVEL_LOW>;
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&touchscreen_pins>;
> +               reset-gpios =3D <&pio 60 GPIO_ACTIVE_LOW>;
> +               vccio-supply =3D <&pp1800_tchscr_report_disable>;
> +               vcc33-supply =3D <&pp3300_z2>;
> +       };
> +};
> diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou.dtsi b/=
arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou.dtsi
> new file mode 100644
> index 000000000000..389f8b66e968
> --- /dev/null
> +++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou.dtsi
> @@ -0,0 +1,321 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright 2024 Google LLC
> + */
> +
> +/dts-v1/;
> +#include "mt8186-corsola.dtsi"
> +
> +/ {
> +       /delete-node/ speaker-codec;
> +
> +       pp1000_edpbrdg: regulator-pp1000-edpbrdg {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "pp1000_edpbrdg";
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&en_pp1000_edpbrdg>;
> +               enable-active-high;
> +               regulator-boot-on;
> +               gpio =3D <&pio 29 GPIO_ACTIVE_HIGH>;
> +               vin-supply =3D <&pp3300_z2>;
> +       };
> +
> +       pp1800_edpbrdg_dx: regulator-pp1800-edpbrdg-dx {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "pp1800_edpbrdg_dx";
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&en_pp1800_edpbrdg>;
> +               enable-active-high;
> +               regulator-boot-on;
> +               gpio =3D <&pio 30 GPIO_ACTIVE_HIGH>;
> +               vin-supply =3D <&mt6366_vio18_reg>;
> +       };
> +
> +       pp3300_edp_dx: regulator-pp3300-edp-dx {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "pp3300_edp_dx";
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&en_pp3300_edpbrdg>;
> +               enable-active-high;
> +               regulator-boot-on;
> +               gpio =3D <&pio 31 GPIO_ACTIVE_HIGH>;
> +               vin-supply =3D <&pp3300_z2>;
> +       };
> +
> +       pp1800_tchscr_report_disable: regulator-pp1800-tchscr-report-disa=
ble {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "pp1800_tchscr_report_disable";
> +               pinctrl-names =3D "default";
> +               regulator-boot-on;
> +               pinctrl-0 =3D <&touch_pin_report>;
> +               gpio =3D <&pio 37 GPIO_ACTIVE_LOW>;
> +       };
> +};
> +
> +&dsi_out {
> +       remote-endpoint =3D <&anx7625_in>;
> +};
> +
> +&i2c0 {
> +       clock-frequency =3D <400000>;
> +
> +       anx_bridge: anx7625@58 {
> +               compatible =3D "analogix,anx7625";
> +               reg =3D <0x58>;
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&anx7625_pins>;
> +               enable-gpios =3D <&pio 96 GPIO_ACTIVE_HIGH>;
> +               reset-gpios =3D <&pio 98 GPIO_ACTIVE_HIGH>;
> +               vdd10-supply =3D <&pp1000_edpbrdg>;
> +               vdd18-supply =3D <&pp1800_edpbrdg_dx>;
> +               vdd33-supply =3D <&pp3300_edp_dx>;
> +               analogix,lane0-swing =3D /bits/ 8 <0x70 0x30>;
> +               analogix,lane1-swing =3D /bits/ 8 <0x70 0x30>;
> +
> +               ports {
> +                       #address-cells =3D <1>;
> +                       #size-cells =3D <0>;
> +
> +                       port@0 {
> +                               reg =3D <0>;
> +
> +                               anx7625_in: endpoint {
> +                                       remote-endpoint =3D <&dsi_out>;
> +                                       data-lanes =3D <0 1 2 3>;
> +                               };
> +                       };
> +
> +                       port@1 {
> +                               reg =3D <1>;
> +
> +                               anx7625_out: endpoint {
> +                                       remote-endpoint =3D <&panel_in>;
> +                               };
> +                       };
> +               };
> +
> +               aux-bus {
> +                       panel: panel {
> +                               compatible =3D "edp-panel";
> +                               power-supply =3D <&pp3300_disp_x>;
> +                               backlight =3D <&backlight_lcd0>;
> +
> +                               port {
> +                                       panel_in: endpoint {
> +                                               remote-endpoint =3D <&anx=
7625_out>;
> +                                       };
> +                               };
> +                       };
> +               };
> +       };
> +};
> +
> +&i2c2 {
> +       /delete-node/ trackpad@15;
> +
> +       touchpad@15 {
> +               compatible =3D "hid-over-i2c";
> +               reg =3D <0x15>;
> +               interrupts-extended =3D <&pio 11 IRQ_TYPE_LEVEL_LOW>;
> +               post-power-on-delay-ms =3D <10>;
> +               hid-descr-addr =3D <0x0001>;
> +               vdd-supply =3D <&pp3300_s3>;
> +               wakeup-source;
> +       };
> +};
> +
> +&i2c5 {
> +       clock-frequency =3D <400000>;
> +       /delete-node/ codec@1a;
> +
> +       rt5650: rt5650@1a {
> +               compatible =3D "realtek,rt5650";
> +               reg =3D <0x1a>;
> +               avdd-supply =3D <&mt6366_vio18_reg>;
> +               cpvdd-supply =3D <&mt6366_vio18_reg>;
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&rt1019p_pins_default>;
> +               cbj-sleeve-gpios =3D <&pio 150 GPIO_ACTIVE_HIGH>;
> +               interrupt-parent =3D <&pio>;
> +               interrupts =3D <17 IRQ_TYPE_EDGE_BOTH>;
> +               #sound-dai-cells =3D <0>;
> +               realtek,dmic1-data-pin =3D <2>;
> +               realtek,jd-mode =3D <2>;
> +       };
> +};
> +
> +&i2c_tunnel {
> +       /delete-node/ sbs-battery@b;
> +
> +       battery: sbs-battery@f {
> +               compatible =3D "sbs,sbs-battery";
> +               reg =3D <0xf>;
> +               sbs,i2c-retry-count =3D <2>;
> +               sbs,poll-retry-count =3D <1>;
> +       };
> +};
> +
> +&keyboard_controller {
> +       keypad,num-columns =3D <15>;
> +
> +       function-row-physmap =3D <
> +               MATRIX_KEY(0x00, 0x02, 0)        /* T1 */
> +               MATRIX_KEY(0x03, 0x02, 0)        /* T2 */
> +               MATRIX_KEY(0x02, 0x02, 0)        /* T3 */
> +               MATRIX_KEY(0x01, 0x02, 0)        /* T4 */
> +               MATRIX_KEY(0x03, 0x04, 0)        /* T5 */
> +               MATRIX_KEY(0x02, 0x04, 0)        /* T6 */
> +               MATRIX_KEY(0x01, 0x04, 0)        /* T7 */
> +               MATRIX_KEY(0x02, 0x09, 0)        /* T8 */
> +               MATRIX_KEY(0x01, 0x09, 0)        /* T9 */
> +               MATRIX_KEY(0x00, 0x04, 0)        /* T10 */
> +               MATRIX_KEY(0x00, 0x01, 0)        /* T11 */
> +               MATRIX_KEY(0x01, 0x05, 0)        /* T12 */
> +       >;
> +
> +       linux,keymap =3D <
> +               CROS_STD_MAIN_KEYMAP
> +               MATRIX_KEY(0x00, 0x02, KEY_BACK)           /* T1 */
> +               MATRIX_KEY(0x03, 0x02, KEY_REFRESH)        /* T2 */
> +               MATRIX_KEY(0x02, 0x02, KEY_ZOOM)           /* T3 */
> +               MATRIX_KEY(0x01, 0x02, KEY_SCALE)          /* T4 */
> +               MATRIX_KEY(0x03, 0x04, KEY_SYSRQ)          /* T5 */
> +               MATRIX_KEY(0x02, 0x04, KEY_BRIGHTNESSDOWN) /* T6 */
> +               MATRIX_KEY(0x01, 0x04, KEY_BRIGHTNESSUP)   /* T7 */
> +               MATRIX_KEY(0x02, 0x09, KEY_MUTE)           /* T8 */
> +               MATRIX_KEY(0x01, 0x09, KEY_VOLUMEDOWN)     /* T9 */
> +               MATRIX_KEY(0x00, 0x04, KEY_VOLUMEUP)       /* T10 */
> +               MATRIX_KEY(0x00, 0x01, KEY_MICMUTE)        /* T11 */
> +               MATRIX_KEY(0x01, 0x05, KEY_CONTROLPANEL)   /* T12 */
> +               MATRIX_KEY(0x03, 0x05, KEY_PREVIOUSSONG)   /* T13 */
> +               MATRIX_KEY(0x00, 0x09, KEY_PLAYPAUSE)      /* T14 */
> +               MATRIX_KEY(0x00, 0x0b, KEY_NEXTSONG)       /* T15 */
> +               MATRIX_KEY(0x03, 0x00, KEY_LEFTMETA)       /* Search*/
> +               MATRIX_KEY(0x01, 0x0e, KEY_LEFTCTRL)       /* Left Contro=
l*/
> +               MATRIX_KEY(0x06, 0x0d, KEY_LEFTALT)        /* Left ALT*/
> +               MATRIX_KEY(0x03, 0x0e, KEY_RIGHTCTRL)      /* Right Contr=
ol*/
> +               MATRIX_KEY(0x06, 0x0a, KEY_BACKSLASH)      /* BACKSLASH*/
> +       >;
> +};
> +
> +&mmc1_pins_default {
> +       pins-clk {
> +               drive-strength =3D <MTK_DRIVE_8mA>;
> +       };
> +
> +       pins-cmd-dat {
> +               drive-strength =3D <MTK_DRIVE_8mA>;
> +       };
> +};
> +
> +&mmc1_pins_uhs {
> +       pins-clk {
> +               drive-strength =3D <MTK_DRIVE_8mA>;
> +       };
> +
> +       pins-cmd-dat {
> +               drive-strength =3D <MTK_DRIVE_8mA>;
> +       };
> +};
> +
> +&pen_insert {
> +       wakeup-event-action =3D <EV_ACT_ANY>;
> +};
> +
> +&pio {
> +       anx7625_pins: anx7625-pins {
> +               pins-int {
> +                       pinmux =3D <PINMUX_GPIO9__FUNC_GPIO9>;
> +                       input-enable;
> +                       bias-disable;
> +               };
> +
> +               pins-reset {
> +                       pinmux =3D <PINMUX_GPIO98__FUNC_GPIO98>;
> +                       output-low;
> +               };
> +
> +               pins-power-en {
> +                       pinmux =3D <PINMUX_GPIO96__FUNC_GPIO96>;
> +                       output-low;
> +               };
> +       };
> +
> +       en_pp1000_edpbrdg: pp1000-edpbrdg-en-pins {
> +               pins-vreg-en {
> +                       pinmux =3D <PINMUX_GPIO29__FUNC_GPIO29>;
> +                       output-low;
> +               };
> +       };
> +
> +       en_pp1800_edpbrdg: pp1800-edpbrdg-en-pins {
> +               pins-vreg-en {
> +                       pinmux =3D <PINMUX_GPIO30__FUNC_GPIO30>;
> +                       output-low;
> +               };
> +       };
> +
> +       en_pp3300_edpbrdg: pp3300-edpbrdg-en-pins {
> +               pins-vreg-en {
> +                       pinmux =3D <PINMUX_GPIO31__FUNC_GPIO31>;
> +                       output-low;
> +               };
> +       };
> +
> +       touch_pin_report: pin-report-pins {
> +               pins-touch-en {
> +                       pinmux =3D <PINMUX_GPIO37__FUNC_GPIO37>;
> +                       output-low;
> +               };
> +       };
> +};
> +
> +&sound {
> +       compatible =3D "mediatek,mt8186-mt6366-rt5650-sound";
> +       model =3D "mt8186_rt5650";
> +       mediatek,adsp =3D <&adsp>;
> +
> +       audio-routing =3D
> +               "Headphone", "HPOL",
> +               "Headphone", "HPOR",
> +               "IN1P", "Headset Mic",
> +               "IN1N", "Headset Mic",
> +               "Speakers", "SPOL",
> +               "Speakers", "SPOR",
> +               "HDMI1", "TX";
> +
> +       hs-playback-dai-link {
> +               codec {
> +                       sound-dai =3D <&rt5650>;
> +               };
> +       };
> +
> +       hs-capture-dai-link {
> +               codec {
> +                       sound-dai =3D <&rt5650>;
> +               };
> +       };
> +
> +       spk-share-dai-link {
> +       };
> +
> +       spk-hdmi-playback-dai-link {
> +               codec {
> +                       sound-dai =3D <&it6505dptx>;
> +               };
> +       };
> +};
> +
> +&touchscreen_pins {
> +       /delete-node/ pins-report-sw;
> +};
> +
> +&wifi_enable_pin {
> +       pins-wifi-enable {
> +               pinmux =3D <PINMUX_GPIO51__FUNC_GPIO51>;
> +       };
> +};
> +
> +&wifi_pwrseq {
> +       reset-gpios =3D <&pio 51 GPIO_ACTIVE_LOW>;
> +};
> --
> 2.17.1
>

