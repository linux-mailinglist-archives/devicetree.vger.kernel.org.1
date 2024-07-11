Return-Path: <devicetree+bounces-85068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21BD392EC39
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 18:04:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 541A3B20CA6
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 16:04:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 340FB15DBD5;
	Thu, 11 Jul 2024 16:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HKWL11DX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1E3C15957E
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 16:04:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720713853; cv=none; b=jYou9Ck0fGLuMrD3Z6w9Od0AHPOqt+JKiD7gA74FKbXX3GzWOlSaeKPNdPGA0JgJZv+7ejiS7dg5O/G6xSWdZY7W4qGW5VsgypkBjGBCD//pAf6A6PCuGGiBkrshMU2qBqNh8KpK0HsQ0Ab8RgJR9G7O7IFXd2MOtY8PSi5j/dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720713853; c=relaxed/simple;
	bh=nRhmfOkOiMwMxuiEsZWAibaCH3kiMmeXotujBTYqwGA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kXKh3SpcVXj/AfBKHw00tAZf263T4KoBHO1SoDOEXPINSYwTz9mrBFsJnMWebBPbj4uUqYwrLyl0p0N3rNAQRNnxeYBZu0rgBFAGjHh2Dw7Ji2U0apUn2FbIO4L5QSSYq4Qe9RHmk4VlhJGJUQ5lkd5Cc23iuOewT2DXqsy8GAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HKWL11DX; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-e03a0faee1eso1046831276.1
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 09:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720713850; x=1721318650; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=AxN3s6nuZJqvq8DC28raU71Ooyh30+AAwSywlCQM0WQ=;
        b=HKWL11DX3Nx2KzlsbemQmw31wXy+Rp9uNAkRmGPB67AdWu2mimHrC5gU7t5ES7O6lu
         tljK4YbCgxDswDhFlU1/75CHvg6CYV7pRAwjfmGT1t1qRyfWRpPzVFHzJFPO/M7lWt82
         +Ps7DsIc299roMlsG1ead0Kc8DWaKcu/ASokzruy6dflwOZSX3VDud615qbF3eHJNIPO
         /vzbtcwbygG8zD3TL021TRazqI9iuhbbJZ05TPxp17eEcT58l89MUCITsRB5BadfPyDI
         HQrjJiSOINzSwVIhgiPPZFz6bSe77JTklBPpHVxMAkTM3qhk+uf9n0ubRE3W8xCCCdt7
         G8yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720713850; x=1721318650;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AxN3s6nuZJqvq8DC28raU71Ooyh30+AAwSywlCQM0WQ=;
        b=Va0iNTSc8O0wcERWy0JoNwvNmKK1ewkAIV3ZQj9XpSeiDpOfJQbkFx4qGmKSEuQFGB
         UL64c3W/WJi9gHfj2mMBbl3NwnVwP8HAA038aTSzhXoBJ9D/ZBwq6J7kad+zLd3zHvja
         t19gGA92zqTXtbnwD6lGilVtfB1PBfjL50suOY2CSIQT79eqoXCcjV5u9+u7OdaRf3FJ
         jC4ypGh8KZ1KAhNOstvjhIEA9mHFYK2eaIJqya053UG7/01Cy6p9VFBBAAEtC5FOxnOA
         GewqNsQHCgd0UHSfzdlPFytAZwuhYj8E1rO98YCT+++ik61VCBUsM+h2lSz9ioKEhHmL
         6S/g==
X-Forwarded-Encrypted: i=1; AJvYcCUxoeeGPJLoAgrajpNqqGQeGf0JNPGumdvKEDe2UN0D/b03ih+zMjJCWgVTAO4UV4g6WXJb4MNDnK6MxFVeHow4ADnATEv0bsu79Q==
X-Gm-Message-State: AOJu0Yw1nzxnZKqw2deW9ppRIAJuSIdmJfThqfCu0qGVWbu0SnTylIaa
	lzhn53wmsj6B33rZ8LEeeJqR4vksmPnlOI8hLBvssv+3hH2nZPPtZ4BzkXlTwiJCu+eEWt9kq9h
	0jmh3uxHXsLXLbKoVgiEldTJb2g/KRe2zZoPV1A==
X-Google-Smtp-Source: AGHT+IENa/OdBJvNNewkRFuQFJPGA/W8bG6u0eoKZ4lqUN11GYxJOj6CetYAgO2dIe+YRPD8wBqsE46J87830t84DcQ=
X-Received: by 2002:a25:c7ce:0:b0:e03:c414:a8a9 with SMTP id
 3f1490d57ef6-e041b054a16mr9882636276.23.1720713849532; Thu, 11 Jul 2024
 09:04:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <ZozY+tOkzK9yfjbo@standask-GA-A55M-S2HP>
In-Reply-To: <ZozY+tOkzK9yfjbo@standask-GA-A55M-S2HP>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 11 Jul 2024 18:03:31 +0200
Message-ID: <CAPDyKFqV2ubdTXZcG_=6YMCwRKdhgB2YbcVg_iA7i=mtvb7Uqg@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: mmc: sdhci-sprd: convert to YAML
To: Stanislav Jakubek <stano.jakubek@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Baolin Wang <baolin.wang7@gmail.com>, 
	Chunyan Zhang <zhang.lyra@gmail.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 9 Jul 2024 at 08:30, Stanislav Jakubek <stano.jakubek@gmail.com> wrote:
>
> Covert the Spreadtrum SDHCI controller bindings to DT schema.
> Rename the file to match compatible. Drop assigned-* properties as
> these should not be needed.
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Stanislav Jakubek <stano.jakubek@gmail.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
> Node name adjustments in DTS are being handled as part of:
> https://lore.kernel.org/lkml/cover.1720112081.git.stano.jakubek@gmail.com/
>
> Changes in V2:
>   - drop assigned-* properties, these shouldn't be needed (Krzysztof)
>   - reflect this change in the commit description
>
>  .../devicetree/bindings/mmc/sdhci-sprd.txt    |  67 -----------
>  .../bindings/mmc/sprd,sdhci-r11.yaml          | 112 ++++++++++++++++++
>  2 files changed, 112 insertions(+), 67 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
>  create mode 100644 Documentation/devicetree/bindings/mmc/sprd,sdhci-r11.yaml
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt b/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
> deleted file mode 100644
> index eb7eb1b529f0..000000000000
> --- a/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
> +++ /dev/null
> @@ -1,67 +0,0 @@
> -* Spreadtrum SDHCI controller (sdhci-sprd)
> -
> -The Secure Digital (SD) Host controller on Spreadtrum SoCs provides an interface
> -for MMC, SD and SDIO types of cards.
> -
> -This file documents differences between the core properties in mmc.txt
> -and the properties used by the sdhci-sprd driver.
> -
> -Required properties:
> -- compatible: Should contain "sprd,sdhci-r11".
> -- reg: physical base address of the controller and length.
> -- interrupts: Interrupts used by the SDHCI controller.
> -- clocks: Should contain phandle for the clock feeding the SDHCI controller
> -- clock-names: Should contain the following:
> -       "sdio" - SDIO source clock (required)
> -       "enable" - gate clock which used for enabling/disabling the device (required)
> -       "2x_enable" - gate clock controlling the device for some special platforms (optional)
> -
> -Optional properties:
> -- assigned-clocks: the same with "sdio" clock
> -- assigned-clock-parents: the default parent of "sdio" clock
> -- pinctrl-names: should be "default", "state_uhs"
> -- pinctrl-0: should contain default/high speed pin control
> -- pinctrl-1: should contain uhs mode pin control
> -
> -PHY DLL delays are used to delay the data valid window, and align the window
> -to sampling clock. PHY DLL delays can be configured by following properties,
> -and each property contains 4 cells which are used to configure the clock data
> -write line delay value, clock read command line delay value, clock read data
> -positive edge delay value and clock read data negative edge delay value.
> -Each cell's delay value unit is cycle of the PHY clock.
> -
> -- sprd,phy-delay-legacy: Delay value for legacy timing.
> -- sprd,phy-delay-sd-highspeed: Delay value for SD high-speed timing.
> -- sprd,phy-delay-sd-uhs-sdr50: Delay value for SD UHS SDR50 timing.
> -- sprd,phy-delay-sd-uhs-sdr104: Delay value for SD UHS SDR50 timing.
> -- sprd,phy-delay-mmc-highspeed: Delay value for MMC high-speed timing.
> -- sprd,phy-delay-mmc-ddr52: Delay value for MMC DDR52 timing.
> -- sprd,phy-delay-mmc-hs200: Delay value for MMC HS200 timing.
> -- sprd,phy-delay-mmc-hs400: Delay value for MMC HS400 timing.
> -- sprd,phy-delay-mmc-hs400es: Delay value for MMC HS400 enhanced strobe timing.
> -
> -Examples:
> -
> -sdio0: sdio@20600000 {
> -       compatible  = "sprd,sdhci-r11";
> -       reg = <0 0x20600000 0 0x1000>;
> -       interrupts = <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
> -
> -       clock-names = "sdio", "enable";
> -       clocks = <&ap_clk CLK_EMMC_2X>,
> -                <&apahb_gate CLK_EMMC_EB>;
> -       assigned-clocks = <&ap_clk CLK_EMMC_2X>;
> -       assigned-clock-parents = <&rpll CLK_RPLL_390M>;
> -
> -       pinctrl-names = "default", "state_uhs";
> -       pinctrl-0 = <&sd0_pins_default>;
> -       pinctrl-1 = <&sd0_pins_uhs>;
> -
> -       sprd,phy-delay-sd-uhs-sdr104 = <0x3f 0x7f 0x2e 0x2e>;
> -       bus-width = <8>;
> -       non-removable;
> -       no-sdio;
> -       no-sd;
> -       cap-mmc-hw-reset;
> -       status = "okay";
> -};
> diff --git a/Documentation/devicetree/bindings/mmc/sprd,sdhci-r11.yaml b/Documentation/devicetree/bindings/mmc/sprd,sdhci-r11.yaml
> new file mode 100644
> index 000000000000..b08081bc018b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mmc/sprd,sdhci-r11.yaml
> @@ -0,0 +1,112 @@
> +# SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mmc/sprd,sdhci-r11.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Spreadtrum SDHCI controller
> +
> +maintainers:
> +  - Orson Zhai <orsonzhai@gmail.com>
> +  - Baolin Wang <baolin.wang7@gmail.com>
> +  - Chunyan Zhang <zhang.lyra@gmail.com>
> +
> +properties:
> +  compatible:
> +    const: sprd,sdhci-r11
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 2
> +    items:
> +      - description: SDIO source clock
> +      - description: gate clock for enabling/disabling the device
> +      - description: gate clock controlling the device for some special platforms (optional)
> +
> +  clock-names:
> +    minItems: 2
> +    items:
> +      - const: sdio
> +      - const: enable
> +      - const: 2x_enable
> +
> +  pinctrl-0:
> +    description: default/high speed pin control
> +    maxItems: 1
> +
> +  pinctrl-1:
> +    description: UHS mode pin control
> +    maxItems: 1
> +
> +  pinctrl-names:
> +    minItems: 1
> +    items:
> +      - const: default
> +      - const: state_uhs
> +
> +patternProperties:
> +  "^sprd,phy-delay-(legacy|mmc-(ddr52|highspeed|hs[24]00|hs400es)|sd-(highspeed|uhs-sdr(50|104)))$":
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    items:
> +      - description: clock data write line delay value
> +      - description: clock read command line delay value
> +      - description: clock read data positive edge delay value
> +      - description: clock read data negative edge delay value
> +    description:
> +      PHY DLL delays are used to delay the data valid window, and align
> +      the window to the sampling clock. Each cell's delay value unit is
> +      cycle of the PHY clock.
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +allOf:
> +  - $ref: sdhci-common.yaml#
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/sprd,sc9860-clk.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    mmc@50430000 {
> +      compatible = "sprd,sdhci-r11";
> +      reg = <0x50430000 0x1000>;
> +      interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
> +
> +      clocks = <&aon_prediv CLK_EMMC_2X>,
> +               <&apahb_gate CLK_EMMC_EB>,
> +               <&aon_gate CLK_EMMC_2X_EN>;
> +      clock-names = "sdio", "enable", "2x_enable";
> +
> +      pinctrl-0 = <&sd0_pins_default>;
> +      pinctrl-1 = <&sd0_pins_uhs>;
> +      pinctrl-names = "default", "state_uhs";
> +
> +      bus-width = <8>;
> +      cap-mmc-hw-reset;
> +      mmc-hs400-enhanced-strobe;
> +      mmc-hs400-1_8v;
> +      mmc-hs200-1_8v;
> +      mmc-ddr-1_8v;
> +      non-removable;
> +      no-sdio;
> +      no-sd;
> +
> +      sprd,phy-delay-mmc-ddr52 = <0x3f 0x75 0x14 0x14>;
> +      sprd,phy-delay-mmc-hs200 = <0x0 0x8c 0x8c 0x8c>;
> +      sprd,phy-delay-mmc-hs400 = <0x44 0x7f 0x2e 0x2e>;
> +      sprd,phy-delay-mmc-hs400es = <0x3f 0x3f 0x2e 0x2e>;
> +    };
> +...
> --
> 2.34.1
>

