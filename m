Return-Path: <devicetree+bounces-223475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CF319BB5A67
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 02:02:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 88A334E0333
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 00:02:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 851B8186A;
	Fri,  3 Oct 2025 00:02:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cMMhaKNx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C152134BA36
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 00:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759449728; cv=none; b=GFqN9QoDXIV/Znz2P32prLRdG+llr91srhlKvCib1AyXMUEEGfe0UzB+3bx0KWYs16SoDRpSneSWuv7K831wJClyM/QaLojiLDbp9RvTWsKT+xpHzHAh+5icMWL8QIA1HlSothaliMbFVjIMySogwBKI70LUjHMBVclhUJvPOt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759449728; c=relaxed/simple;
	bh=Cf1ZNVeYMQrMjD74+zVHCbK32g47zHyuR7jQND2RLgE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZFgC7FORAn7NO1A7yb3wdWzPip04oKzE1FVEVu/0J8lu+2/L7brOY09luS5sEOwYHb4qCeEK0KLlt0fVAsFddEE+2MYaEuK6psXR7pbvBKh7VS4r23jPdozmfJhnAKMCm3hzsfpEQ9hYZ9ZaOTBKIeScmUpX7L28toCOPLIuB5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cMMhaKNx; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-46e42fa08e4so14191175e9.3
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 17:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759449725; x=1760054525; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=coXW5Vkb6CmpealAt1z5pb6dHocrXcBIL+HK5DdIDhI=;
        b=cMMhaKNxMnYJO7kw4hFgalUXfU6qSCLoIeKAQlTvUnNlXTGBzUYOI870FZpswtFlEA
         iG62c0ubGbZ1q7ncNSqphO+eIGbkhGjRS+nlb3ISk3NF1zrZ0xAXdlS6myevEEiwHnxi
         bzFSmdZPtJOTpTpjEzkJRs33LVSN1zqvXJ+vXZmJQkKoDMrh533WiaRDGuH/zdz+4F4+
         KVtlsIoJUla3sl9VRacszyGcLtIDEMcq3CLNaGImFuXZbULM80Gb207DBmiNYaVwgUkj
         5jB8KoyimEUqVSBMnO1+JHmMZRtZu/FY06+GeGGgr1vkLI0kSctlRUm5BlUog/jUBQZ8
         YlVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759449725; x=1760054525;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=coXW5Vkb6CmpealAt1z5pb6dHocrXcBIL+HK5DdIDhI=;
        b=YjV28oHFMVH76rb48juC0cwyKVAooKncz17mtkGHkpenrh/s9Ti2pHiFGx9ErFlM2U
         Bq4PA2PEUTRtOztk5yV9zV/v+GjGhKUV7aAZyO+FeSx92GnzAwgGjJVqHNyFD4E+Ajip
         dyIksRmg5bhbwYRvQ8MqUUoYUZC9dMdYnSZLWZ9opfTU1yywP0MHUCrFP4sKHtsHY92i
         Gse4gO5nKfcIfQanateVnCVYf7SiWmb/krGiSXXGqJ5BwLnauBiRg5CxfKgJtsvlteAh
         K9SF1Uv7SQ01GhM7J8SkXjqJewu5ofwGUYIczoo1YOJlaX0pEw0em5AuvR+60w5dwPjb
         C4JQ==
X-Gm-Message-State: AOJu0YymGrLmHTWOQx7OxU0vPQYRweJxZYicT02QWXSkqLtf6IBIguyH
	VLyy8v5CLNZHmCWyn6AvXVoZpgBOmsuL1etbfJD9rE7YD8nVNz+8vg92GUy9RRhdRbulZwLxEjL
	hndeUWf0HsrkOORwjZ8VtRbF5ZyEr7yQ=
X-Gm-Gg: ASbGncsuv9kJCyxofVwj8UNe/KnWpdQLnnDDKI0aI5iazXG+MWVpg97skyitw2fPazB
	5Qtmd1qz9il3+Zn5Cxg9mKSLnBaJttq3qKMSP8thH0NdBJi2gRRHPgDUuQedqf1WjAZCoiFCYCz
	qypYHLi7ic+VGbX3MKPm8pn9stIbl8YK1iDk7+2JLkvTNb2TTdxO1YxKihEDPaZSJzQdXiCxPnv
	2+w0rrQFCSGG255H7CJRJWp/TNjbYxKXvrOevQ8H0m85lmK4A6Uim5krY8riqE=
X-Google-Smtp-Source: AGHT+IH8H5F4Rz+w2GRajaiqGwkVljBWP+xyTsDvXZ4pEnPtSor4uaMKN91VsYpn2mPiM9ga89tuX8JFeLCJpJ65RTI=
X-Received: by 2002:a5d:584c:0:b0:3ec:e152:e31c with SMTP id
 ffacd0b85a97d-4256713ad7fmr600729f8f.1.1759449724680; Thu, 02 Oct 2025
 17:02:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251002034708.19248-1-laurent.pinchart@ideasonboard.com> <20251002034708.19248-4-laurent.pinchart@ideasonboard.com>
In-Reply-To: <20251002034708.19248-4-laurent.pinchart@ideasonboard.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Thu, 2 Oct 2025 19:01:53 -0500
X-Gm-Features: AS18NWDlylDf3oN5sbP_UNB28JThANAGdlYlt-3ts0m7FoUFxTbSDWexI2F-454
Message-ID: <CALWfF7Lhz2brif4xepWZ71mRqMmXKzxqd=0_hO_b6aF6_GkffQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add rk3588s-orangepi-cm5-base
 device tree
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Algea Cao <algea.cao@rock-chips.com>, 
	Andy Yan <andy.yan@rock-chips.com>, Cenk Uluisik <cenk.uluisik@googlemail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
	Heiko Stuebner <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>, 
	Muhammed Efe Cetin <efectn@6tel.net>, Ondrej Jirman <megi@xff.cz>, Rob Herring <robh@kernel.org>, 
	Sandy Huang <hjc@rock-chips.com>
Content-Type: text/plain; charset="UTF-8"

A few nitpicks below

[ snip ]
> +
> +#include "rk3588s-orangepi-cm5.dtsi"
> +
> +/ {
> +       model = "Xunlong Orange Pi CM5 Base";
> +       compatible = "xunlong,orangepi-cm5-base", "xunlong,orangepi-cm5", "rockchip,rk3588s";
> +
> +       aliases {
> +               ethernet0 = &gmac1;
> +               mmc0 = &sdhci;
Since sdhci is enabled in the SoM.dtsi, this alias should probably go
there instead.

> +               mmc1 = &sdmmc;
> +       };
> +

[ snip ]

> +
> +       vbus_5v0: vbus-5v0 {
> +               compatible = "regulator-fixed";
> +               regulator-name = "vbus_5v0";
> +               regulator-min-microvolt = <5000000>;
> +               regulator-max-microvolt = <5000000>;
> +               enable-active-high;
> +               gpio = <&gpio0 RK_PD3 GPIO_ACTIVE_HIGH>;
> +               vin-supply = <&vcc5v0_sys>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&vbus_5v0_en_pin>;
The property names in these regulators are not as organized as the
regulators for the CPU/NPU.

> +       };
> +
> +       vcc_3v3: regulator-vcc-3v3 {
> +               compatible = "regulator-fixed";
> +               regulator-name = "vcc_3v3";
> +               regulator-min-microvolt = <3300000>;
> +               regulator-max-microvolt = <3300000>;
> +               startup-delay-us = <50000>;
> +               enable-active-high;
> +               gpio = <&gpio4 RK_PA3 GPIO_ACTIVE_HIGH>;
> +               vin-supply = <&vcc5v0_sys>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&vcc_3v3_en_pin>;
> +       };
> +
> +       vcc5v0_sys: regulator-vcc-5v0 {
> +               compatible = "regulator-fixed";
> +               regulator-name = "vcc5v0_sys";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt = <5000000>;
> +               regulator-max-microvolt = <5000000>;
> +       };
> +};

[ snip ]

> +
> +&gmac1 {
> +       clock_in_out = "output";
> +       phy-handle = <&rgmii_phy>;
> +       phy-mode = "rgmii-id";
> +       phy-supply = <&vcc_3v3>;
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&gmac1_miim
> +                    &gmac1_rx_bus2
> +                    &gmac1_tx_bus2
> +                    &gmac1_rgmii_clk
> +                    &gmac1_rgmii_bus>;
> +       tx_delay = <0x42>;
When using "rgmii-id", tx_delay will be ignored. Does the ethernet
work without this property?

See the comment by Jonas in another review.
https://lore.kernel.org/linux-rockchip/da752790-da17-4d26-b9b2-8240b38b3276@kwiboo.se/

> +       status = "okay";
> +};
> +
> +&gpu {
> +       mali-supply = <&vdd_gpu_s0>;
> +       status = "okay";
> +};
This is a feature in the SoC itself, so it's not board specific and
can be put into the SoM.dtsi.

[ snip ]

> +
> +&pd_gpu {
> +       domain-supply = <&vdd_gpu_s0>;
> +};
Same comment regarding moving to the SoM.dtsi

> --
> Regards,
>
> Laurent Pinchart
>
Jimmy Hon

