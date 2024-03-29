Return-Path: <devicetree+bounces-54550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C51098918A3
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 13:25:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F016E1C23EC4
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 12:25:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1ACD48792;
	Fri, 29 Mar 2024 12:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="oBg7LiAt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D053DBA8
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 12:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711715131; cv=none; b=VC/TZqQ32BXEb5A/Vb2YwbfUBLvX622h+zcL68g+V84VLm7tIG5bq+By2Rmd/ze56a3oRaIylbv2aOYXSfqxMFrjYzQPFro7uKmu2sd6qBup2Mf0tWrTJGllqNssTJdfHeevvw7iQKyxGywpngZ1kLFT4ietWrKUOdAjMCsmCuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711715131; c=relaxed/simple;
	bh=NelZGEKds+EBq023LctmwuPyl43/TaGPfUIHaFdsz5g=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=s7NPp9L9RXQ4xq9Objk6b5IVnzlW1gbTwGrifbW171abP9lGByan7Qy5Tp6RP64pK/DNPF4psi5C7h08It2DxaVn47S8XV8SHD0TqcWWUXJ2OoBwc5gxqntoUZVy/WjpmyEvg2FpO35+xk2uBrX5EuxwId3UyIKfCt14tgiZpko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=oBg7LiAt; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-41545616455so10180075e9.0
        for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 05:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1711715127; x=1712319927; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=v5qG/U9hsJ2/TO+XX2A43xcvKBIjoRnJJOB0t5+Ne5Y=;
        b=oBg7LiAtu6RzMiMuUa4ZsYdosNcWqz2cFPhga0A3558LRl6WDE2m08I5u/r8VciY0t
         vklt6zuEOk+chy4Ot580bwl2j9b1XopRICkMazdy2rUy3bJlT4m+Pw+Z/znLkZPzt7As
         6LGhH0VgIfz090Le9tEdO8F777H22qzNzRrAN8kBgtO+p7IVVbXuPYkR00p0e6ZYN4hL
         VtU8pR2YOxN5cDYKrES5KLcJdzqb00D9HYvPlIGpFT0Co6aenGUHBDW+RKKMMH+24U/6
         apPDZVxtw0rfOa6Bd97Q+In4jPS0ZhhAxhx1hWgTBoaJIPFjnr9fhLmHiu0AXfPnpJsZ
         qQcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711715127; x=1712319927;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v5qG/U9hsJ2/TO+XX2A43xcvKBIjoRnJJOB0t5+Ne5Y=;
        b=G42x3PHhu23/VfW3NTkRDAajapNfpPJUY59S9IfPLhNG3CpLMDX4Whv70zs5S4Bzta
         EpJ7T0/glg925kDGFb661cR+GWTZ4/vUeNyvzl86/5YPLWUOB9YTZUn3zI+SpLEegRg9
         T7y3E3YYS46pzM0TbdoJDOBwoX/M56ACST1qsiTamDClVJgWpX6zo5qiB7PRIhrzCpv+
         HSDhs2uqOIYPhgmyl3By2+ohu1HP2cBT32rzPYCtnNdqYyly5plj4h4f6idCFvXBhF1h
         9C0+649RTpZnbBuwjk5MKOFe5m3jYOmmSnvA+aXTVXahUzKnsN2vIZynaDVxZOG+0Mc3
         OHTQ==
X-Forwarded-Encrypted: i=1; AJvYcCU+sNYRMQTwBvVC00xEZh+gARgRBg4sSOccRhh/tH/i487iKYa1NrDEvvUW40+/KwFf15FdPNiWfcBDx7JyxBKtEO74thfVWbFcag==
X-Gm-Message-State: AOJu0YyYjzO61JFzdamPqOjkfhb1ua6LIlIXf6B++vjVc6O+bWoPPdhm
	54wHd4BVT8gPC3nS9G+bbLJCsV8RDhF+2OwCjRh8B02ED1NggfUi3jfM0sB6p50=
X-Google-Smtp-Source: AGHT+IEgCLpnEBM91litn3xLg9XE0cA1AC8ZTPG6wt4KklbQswbioFpnSNC6ORZQQuB7LHW5rqVu+A==
X-Received: by 2002:a05:600c:4f45:b0:415:4b1a:683b with SMTP id m5-20020a05600c4f4500b004154b1a683bmr1722200wmq.41.1711715127266;
        Fri, 29 Mar 2024 05:25:27 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:f8f5:63d4:de5b:e4de])
        by smtp.gmail.com with ESMTPSA id p18-20020a05600c359200b0041543b57ca2sm5290108wmq.21.2024.03.29.05.25.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Mar 2024 05:25:26 -0700 (PDT)
References: <20240328010831.884487-1-jan.dakinevich@salutedevices.com>
 <20240328010831.884487-4-jan.dakinevich@salutedevices.com>
User-agent: mu4e 1.10.8; emacs 29.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jan Dakinevich <jan.dakinevich@salutedevices.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jerome Brunet
 <jbrunet@baylibre.com>, Michael  Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob  Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [RFC PATCH v2 3/5] dt-bindings: clock: meson: document A1 SoC
 audio clock controller driver
Date: Fri, 29 Mar 2024 13:24:09 +0100
In-reply-to: <20240328010831.884487-4-jan.dakinevich@salutedevices.com>
Message-ID: <1j4jcp9qdl.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Thu 28 Mar 2024 at 04:08, Jan Dakinevich <jan.dakinevich@salutedevices.com> wrote:

> Add device tree bindings for A1 SoC audio clock and reset controllers.
>
> Signed-off-by: Jan Dakinevich <jan.dakinevich@salutedevices.com>
> ---
>  .../bindings/clock/amlogic,a1-audio-clkc.yaml | 141 ++++++++++++++++++
>  .../dt-bindings/clock/amlogic,a1-audio-clkc.h | 122 +++++++++++++++
>  .../reset/amlogic,meson-a1-audio-reset.h      |  29 ++++
>  3 files changed, 292 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/amlogic,a1-audio-clkc.yaml
>  create mode 100644 include/dt-bindings/clock/amlogic,a1-audio-clkc.h
>  create mode 100644 include/dt-bindings/reset/amlogic,meson-a1-audio-reset.h
>
> diff --git a/Documentation/devicetree/bindings/clock/amlogic,a1-audio-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,a1-audio-clkc.yaml
> new file mode 100644
> index 000000000000..1c9ef3292f3c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/amlogic,a1-audio-clkc.yaml
> @@ -0,0 +1,141 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/amlogic,a1-audio-clkc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Amlogic A1 Audio Clock Control Unit and Reset Controller
> +
> +maintainers:
> +  - Neil Armstrong <neil.armstrong@linaro.org>
> +  - Jerome Brunet <jbrunet@baylibre.com>
> +  - Jan Dakinevich <jan.dakinevich@salutedevices.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - amlogic,a1-audio-clkc
> +      - amlogic,a1-audio2-clkc
> +
> +  '#clock-cells':
> +    const: 1
> +
> +  '#reset-cells':
> +    const: 1
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 6
> +    maxItems: 7
> +
> +  clock-names:
> +    minItems: 6
> +    maxItems: 7
> +
> +required:
> +  - compatible
> +  - '#clock-cells'
> +  - reg
> +  - clocks
> +  - clock-names
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - amlogic,a1-audio-clkc
> +    then:
> +      properties:
> +        clocks:
> +          items:
> +            - description: input core clock
> +            - description: input main peripheral bus clock
> +            - description: input dds_in
> +            - description: input fixed pll div2
> +            - description: input fixed pll div3
> +            - description: input hifi_pll
> +            - description: input oscillator (usually at 24MHz)
> +        clocks-names:
> +          items:
> +            - const: core
> +            - const: pclk
> +            - const: dds_in
> +            - const: fclk_div2
> +            - const: fclk_div3
> +            - const: hifi_pll
> +            - const: xtal
> +      required:
> +        - '#reset-cells'
> +    else:
> +      properties:
> +        clocks:
> +          items:
> +            - description: input main peripheral bus clock
> +            - description: input dds_in
> +            - description: input fixed pll div2
> +            - description: input fixed pll div3
> +            - description: input hifi_pll
> +            - description: input oscillator (usually at 24MHz)
> +        clock-names:
> +          items:
> +            - const: pclk
> +            - const: dds_in
> +            - const: fclk_div2
> +            - const: fclk_div3
> +            - const: hifi_pll
> +            - const: xtal

All the optional slave clock inputs are missing from this dcoumentation..
They need to be documentated as well

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/amlogic,a1-pll-clkc.h>
> +    #include <dt-bindings/clock/amlogic,a1-peripherals-clkc.h>
> +    #include <dt-bindings/clock/amlogic,a1-audio-clkc.h>
> +    audio {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        clkc_audio: audio-clock-controller@fe050000 {
> +                compatible = "amlogic,a1-audio-clkc";
> +                reg = <0x0 0xfe050000 0x0 0xb0>;
> +                #clock-cells = <1>;
> +                #reset-cells = <1>;
> +                clocks = <&clkc_audio2 AUD2_CLKID_AUDIOTOP>,
> +                         <&clkc_periphs CLKID_AUDIO>,
> +                         <&clkc_periphs CLKID_DDS_IN>,
> +                         <&clkc_pll CLKID_FCLK_DIV2>,
> +                         <&clkc_pll CLKID_FCLK_DIV3>,
> +                         <&clkc_pll CLKID_HIFI_PLL>,
> +                         <&xtal>;
> +                clock-names = "core",
> +                              "pclk",
> +                              "dds_in",
> +                              "fclk_div2",
> +                              "fclk_div3",
> +                              "hifi_pll",
> +                              "xtal";
> +        };
> +
> +        clkc_audio2: audio-clock-controller@fe054800 {
> +                compatible = "amlogic,a1-audio2-clkc";
> +                reg = <0x0 0xfe054800 0x0 0x20>;
> +                #clock-cells = <1>;
> +                clocks = <&clkc_periphs CLKID_AUDIO>,
> +                         <&clkc_periphs CLKID_DDS_IN>,
> +                         <&clkc_pll CLKID_FCLK_DIV2>,
> +                         <&clkc_pll CLKID_FCLK_DIV3>,
> +                         <&clkc_pll CLKID_HIFI_PLL>,
> +                         <&xtal>;
> +                clock-names = "pclk",
> +                              "dds_in",
> +                              "fclk_div2",
> +                              "fclk_div3",
> +                              "hifi_pll",
> +                              "xtal";
> +        };
> +    };
> diff --git a/include/dt-bindings/clock/amlogic,a1-audio-clkc.h b/include/dt-bindings/clock/amlogic,a1-audio-clkc.h
> new file mode 100644
> index 000000000000..b30df3b1ae08
> --- /dev/null
> +++ b/include/dt-bindings/clock/amlogic,a1-audio-clkc.h
> @@ -0,0 +1,122 @@
> +/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
> +/*
> + * Copyright (c) 2024, SaluteDevices. All Rights Reserved.
> + *
> + * Author: Jan Dakinevich <jan.dakinevich@salutedevices.com>
> + */
> +
> +#ifndef __A1_AUDIO_CLKC_BINDINGS_H
> +#define __A1_AUDIO_CLKC_BINDINGS_H
> +
> +#define AUD_CLKID_DDR_ARB		1
> +#define AUD_CLKID_TDMIN_A		2
> +#define AUD_CLKID_TDMIN_B		3
> +#define AUD_CLKID_TDMIN_LB		4
> +#define AUD_CLKID_LOOPBACK		5
> +#define AUD_CLKID_TDMOUT_A		6
> +#define AUD_CLKID_TDMOUT_B		7
> +#define AUD_CLKID_FRDDR_A		8
> +#define AUD_CLKID_FRDDR_B		9
> +#define AUD_CLKID_TODDR_A		10
> +#define AUD_CLKID_TODDR_B		11
> +#define AUD_CLKID_SPDIFIN		12
> +#define AUD_CLKID_RESAMPLE		13
> +#define AUD_CLKID_EQDRC			14
> +#define AUD_CLKID_LOCKER		15
> +#define AUD_CLKID_MST_A_MCLK_SEL	16
> +#define AUD_CLKID_MST_A_MCLK_DIV	17
> +#define AUD_CLKID_MST_A_MCLK		18
> +#define AUD_CLKID_MST_B_MCLK_SEL	19
> +#define AUD_CLKID_MST_B_MCLK_DIV	20
> +#define AUD_CLKID_MST_B_MCLK		21
> +#define AUD_CLKID_MST_C_MCLK_SEL	22
> +#define AUD_CLKID_MST_C_MCLK_DIV	23
> +#define AUD_CLKID_MST_C_MCLK		24
> +#define AUD_CLKID_MST_D_MCLK_SEL	25
> +#define AUD_CLKID_MST_D_MCLK_DIV	26
> +#define AUD_CLKID_MST_D_MCLK		27
> +#define AUD_CLKID_SPDIFIN_CLK_SEL	28
> +#define AUD_CLKID_SPDIFIN_CLK_DIV	29
> +#define AUD_CLKID_SPDIFIN_CLK		30
> +#define AUD_CLKID_RESAMPLE_CLK_SEL	31
> +#define AUD_CLKID_RESAMPLE_CLK_DIV	32
> +#define AUD_CLKID_RESAMPLE_CLK		33
> +#define AUD_CLKID_LOCKER_IN_CLK_SEL	34
> +#define AUD_CLKID_LOCKER_IN_CLK_DIV	35
> +#define AUD_CLKID_LOCKER_IN_CLK		36
> +#define AUD_CLKID_LOCKER_OUT_CLK_SEL	37
> +#define AUD_CLKID_LOCKER_OUT_CLK_DIV	38
> +#define AUD_CLKID_LOCKER_OUT_CLK	39
> +#define AUD_CLKID_EQDRC_CLK_SEL		40
> +#define AUD_CLKID_EQDRC_CLK_DIV		41
> +#define AUD_CLKID_EQDRC_CLK		42
> +#define AUD_CLKID_MST_A_SCLK_PRE_EN	43
> +#define AUD_CLKID_MST_A_SCLK_DIV	44
> +#define AUD_CLKID_MST_A_SCLK_POST_EN	45
> +#define AUD_CLKID_MST_A_SCLK		46
> +#define AUD_CLKID_MST_B_SCLK_PRE_EN	47
> +#define AUD_CLKID_MST_B_SCLK_DIV	48
> +#define AUD_CLKID_MST_B_SCLK_POST_EN	49
> +#define AUD_CLKID_MST_B_SCLK		50
> +#define AUD_CLKID_MST_C_SCLK_PRE_EN	51
> +#define AUD_CLKID_MST_C_SCLK_DIV	52
> +#define AUD_CLKID_MST_C_SCLK_POST_EN	53
> +#define AUD_CLKID_MST_C_SCLK		54
> +#define AUD_CLKID_MST_D_SCLK_PRE_EN	55
> +#define AUD_CLKID_MST_D_SCLK_DIV	56
> +#define AUD_CLKID_MST_D_SCLK_POST_EN	57
> +#define AUD_CLKID_MST_D_SCLK		58
> +#define AUD_CLKID_MST_A_LRCLK_DIV	59
> +#define AUD_CLKID_MST_A_LRCLK		60
> +#define AUD_CLKID_MST_B_LRCLK_DIV	61
> +#define AUD_CLKID_MST_B_LRCLK		62
> +#define AUD_CLKID_MST_C_LRCLK_DIV	63
> +#define AUD_CLKID_MST_C_LRCLK		64
> +#define AUD_CLKID_MST_D_LRCLK_DIV	65
> +#define AUD_CLKID_MST_D_LRCLK		66
> +#define AUD_CLKID_TDMIN_A_SCLK_SEL	67
> +#define AUD_CLKID_TDMIN_A_SCLK_PRE_EN	68
> +#define AUD_CLKID_TDMIN_A_SCLK_POST_EN	69
> +#define AUD_CLKID_TDMIN_A_SCLK		70
> +#define AUD_CLKID_TDMIN_A_LRCLK		71
> +#define AUD_CLKID_TDMIN_B_SCLK_SEL	72
> +#define AUD_CLKID_TDMIN_B_SCLK_PRE_EN	73
> +#define AUD_CLKID_TDMIN_B_SCLK_POST_EN	74
> +#define AUD_CLKID_TDMIN_B_SCLK		75
> +#define AUD_CLKID_TDMIN_B_LRCLK		76
> +#define AUD_CLKID_TDMIN_LB_SCLK_SEL	77
> +#define AUD_CLKID_TDMIN_LB_SCLK_PRE_EN	78
> +#define AUD_CLKID_TDMIN_LB_SCLK_POST_EN	79
> +#define AUD_CLKID_TDMIN_LB_SCLK		80
> +#define AUD_CLKID_TDMIN_LB_LRCLK	81
> +#define AUD_CLKID_TDMOUT_A_SCLK_SEL	82
> +#define AUD_CLKID_TDMOUT_A_SCLK_PRE_EN	83
> +#define AUD_CLKID_TDMOUT_A_SCLK_POST_EN	84
> +#define AUD_CLKID_TDMOUT_A_SCLK		85
> +#define AUD_CLKID_TDMOUT_A_LRCLK	86
> +#define AUD_CLKID_TDMOUT_B_SCLK_SEL	87
> +#define AUD_CLKID_TDMOUT_B_SCLK_PRE_EN	88
> +#define AUD_CLKID_TDMOUT_B_SCLK_POST_EN	89
> +#define AUD_CLKID_TDMOUT_B_SCLK		90
> +#define AUD_CLKID_TDMOUT_B_LRCLK	91
> +
> +#define AUD2_CLKID_DDR_ARB		1
> +#define AUD2_CLKID_PDM			2
> +#define AUD2_CLKID_TDMIN_VAD		3
> +#define AUD2_CLKID_TODDR_VAD		4
> +#define AUD2_CLKID_VAD			5
> +#define AUD2_CLKID_AUDIOTOP		6
> +#define AUD2_CLKID_VAD_MCLK_SEL		7
> +#define AUD2_CLKID_VAD_MCLK_DIV		8
> +#define AUD2_CLKID_VAD_MCLK		9
> +#define AUD2_CLKID_VAD_CLK_SEL		10
> +#define AUD2_CLKID_VAD_CLK_DIV		11
> +#define AUD2_CLKID_VAD_CLK		12
> +#define AUD2_CLKID_PDM_DCLK_SEL		13
> +#define AUD2_CLKID_PDM_DCLK_DIV		14
> +#define AUD2_CLKID_PDM_DCLK		15
> +#define AUD2_CLKID_PDM_SYSCLK_SEL	16
> +#define AUD2_CLKID_PDM_SYSCLK_DIV	17
> +#define AUD2_CLKID_PDM_SYSCLK		18
> +
> +#endif /* __A1_AUDIO_CLKC_BINDINGS_H */
> diff --git a/include/dt-bindings/reset/amlogic,meson-a1-audio-reset.h b/include/dt-bindings/reset/amlogic,meson-a1-audio-reset.h
> new file mode 100644
> index 000000000000..653fddba1d8f
> --- /dev/null
> +++ b/include/dt-bindings/reset/amlogic,meson-a1-audio-reset.h
> @@ -0,0 +1,29 @@
> +/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
> +/*
> + * Copyright (c) 2024, SaluteDevices. All Rights Reserved.
> + *
> + * Author: Jan Dakinevich <jan.dakinevich@salutedevices.com>
> + */
> +
> +#ifndef _DT_BINDINGS_AMLOGIC_MESON_A1_AUDIO_RESET_H
> +#define _DT_BINDINGS_AMLOGIC_MESON_A1_AUDIO_RESET_H
> +
> +#define AUD_RESET_DDRARB	0
> +#define AUD_RESET_TDMIN_A	1
> +#define AUD_RESET_TDMIN_B	2
> +#define AUD_RESET_TDMIN_LB	3
> +#define AUD_RESET_LOOPBACK	4
> +#define AUD_RESET_TDMOUT_A	5
> +#define AUD_RESET_TDMOUT_B	6
> +#define AUD_RESET_FRDDR_A	7
> +#define AUD_RESET_FRDDR_B	8
> +#define AUD_RESET_TODDR_A	9
> +#define AUD_RESET_TODDR_B	10
> +#define AUD_RESET_SPDIFIN	11
> +#define AUD_RESET_RESAMPLE	12
> +#define AUD_RESET_EQDRC		13
> +#define AUD_RESET_LOCKER	14
> +#define AUD_RESET_TOACODEC	30
> +#define AUD_RESET_CLKTREE	31
> +
> +#endif /* _DT_BINDINGS_AMLOGIC_MESON_A1_AUDIO_RESET_H */


-- 
Jerome

