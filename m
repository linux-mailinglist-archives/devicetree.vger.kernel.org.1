Return-Path: <devicetree+bounces-237312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 809B7C4F437
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 18:37:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D0BA3342B33
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 17:37:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5DB73A5E7E;
	Tue, 11 Nov 2025 17:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FKFf7who"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2523A5E69
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 17:36:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762882605; cv=none; b=p3hkRtDT0BE/K0/J8qMfDbN8I43ZCVOiUFWGBhbt3V/voq6OJGf+f8Melfx/GPXAE0vc+dU84MXTWU8GuBzNigwgLFKVnUCiiJabi9PhaTlBmCQzF+5XF9v6B42uGMdn7ebUJlLvY2JJ70OWvP8DfnwGL3GPUggwIMq6ayQxlhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762882605; c=relaxed/simple;
	bh=GfPwU3WVL/mqvs4GPLhG3djWjmY9v9NI1x29PMXFGyQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=F8/AOlMVGBWlUxS/x+5rkwPVpP8bCpCLINdfSCo/njxye4B2016Jf4iTF4S4Vi5FUKcgKUt87jKj7RDTozJd5OD72KaYjj6C25Sy8c+8GKAzkpzEhfF1xjpXh4KJjq7fpVq+3d+wB6O6E1UjJjG4p8O2H6m7ZZlTYQRi4NxNvPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FKFf7who; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-787da30c53dso28879607b3.0
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 09:36:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762882603; x=1763487403; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=E3Hk9DW5kL5J6uSFQvWJOZ9wCy+RP65Vlpdw339EGuY=;
        b=FKFf7who3A2tS3s034PJCS6QmKjFCt3T7OlYRJBLONfS4SHJMZ0tcVJklUm5mVf6p2
         s29rXhXTIFc3TpKyUIgUcSlqk/1LiE/+ZlYtqOLk5HWEN6nwUEBX00YvzpexLACBYbcy
         UImdVWF6crtp54frgH4gI9Rf8fjJCG8Ben2Vvy8WNO+Wi7NQZo3TChoPkz8p1MP2Naar
         XnfQpwobZN/r3wbTqUohfkew4ZcKL33amU4rbaW9frJG5asxct4mK3J+IUeePVOidW3y
         6YMzx4Zm+zzzZrRcfUfKxJgkszL0BTi52IpLIrW/AfhYOtnl4u5h2ic3zEhzBQaRvdCM
         rbcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762882603; x=1763487403;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E3Hk9DW5kL5J6uSFQvWJOZ9wCy+RP65Vlpdw339EGuY=;
        b=qKV1ERNS9xojBWN0nBpgf74eBLDjLugz/5QWLySWp9yNwOwD1BlKeJLW/m0Y7QFz/h
         Q0Wj6YDeWMvAFWlN1Mto0itJpif8eBpMNFsAMLC9CJNAgQxjEBup6r8bsZxZk9VXfL6Y
         /cCKCkHri30relUHUgGN5Mtl4ntH1bDc+7PKCfUS+iRl1EE0K1UardyCANYvp48LPgaY
         KwuhXY/YXY+yaVORKLgtP+ve3PokOlhiD/RLnROA+ojHtqlJOaMh6fmmsRD/1uLr6qnA
         FUdt2ZGqG2ixx4XmWXyWxRSVUHRS8jqvGBIqlX2B80AGDJpLNt3I/W/n3pzWGIHz8tNV
         52mQ==
X-Forwarded-Encrypted: i=1; AJvYcCWC6oF4VEAfW2HKHz+Yvy+PSirSGMoDZTsUIccuBM2rzoAjVzLBjhJZ8nkYakF5O4hpgehb3ZiFhVMH@vger.kernel.org
X-Gm-Message-State: AOJu0YwOvXq3297Bo9yPySC/s3KodwSMmB3as9l9b+10qVFsbt6YXscu
	CCkl+C20zf8bvEnRPoNCp4USd+3gcnEFaywyey06A7I1DuuV6pIPPK/RKcATLfuQrJsLHmfVHZG
	lOdu+fRDH6iCdOuHWZcDejYf0GIoQ0kvaHaE25n1ONw==
X-Gm-Gg: ASbGncvsx2c7HRPCHiOiQ4kggak/Ywg0uQd7nFPBJDnLGO+g/7xk5tVxS7RLgye24r+
	04RB7exw6C08EyDiOjacv7Pjo1WrLieHZfGOT+8UBo9fyvKDHEE8jS1ev1BqqMh7FRAV46Y1a26
	6yXWpg/XvC/MixTP+xNxy3Z+x0Np2yN0n31kEsb+tn/FTF6KUF5LLZCZrdzqKZ3qfdPnuCgHkKa
	GyvoKcA79drPiOjWn1F4+LMxyx6ORHiGwT6IOvY/VeKpzcliW8cyoYZComp9ihd+DEfHaA/OrX+
	k5imMv4=
X-Google-Smtp-Source: AGHT+IGbbBsvM979BCP7ZWmX0I8ipBBs21XHkx/ZeiB+cUiRLX1ImPDfEKdBhe4xqH2QU7hiVfRmvH9dCgXFqY4eMx4=
X-Received: by 2002:a05:690c:c349:b0:784:ad94:ac70 with SMTP id
 00721157ae682-787d5361c39mr85380607b3.9.1762882602935; Tue, 11 Nov 2025
 09:36:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027-milbeaut-v2-1-9e1954ff7708@gmail.com>
In-Reply-To: <20251027-milbeaut-v2-1-9e1954ff7708@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 11 Nov 2025 18:36:07 +0100
X-Gm-Features: AWmQ_bmuX6vBN8aGtBR_ITBEbCmoqP3ikMVZofcmAm_bdFoSLSIpSUJ-RArnX18
Message-ID: <CAPDyKFpdeBgZKnK3KgNTQPWNw5R2rnSgB=uRjDUs8sBvbEDwJQ@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: mmc: socionext,milbeaut-m10v-sdhci-3.0:
 convert to DT schema
To: Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Taichi Sugaya <sugaya.taichi@socionext.com>, 
	Takao Orito <orito.takao@socionext.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 27 Oct 2025 at 17:49, Charan Pedumuru <charan.pedumuru@gmail.com> wrote:
>
> Convert SOCIONEXT Milbeaut SDHCI controller binding to YAML format.
> Add a new property "voltage-ranges" to resolve dt_check errors.
>
> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
> Changes in v2:
> - Change the description for the property "voltage-ranges".
> - Link to v1: https://lore.kernel.org/r/20251023-milbeaut-v1-1-3e4ff67110ad@gmail.com
> ---
>  .../devicetree/bindings/mmc/sdhci-milbeaut.txt     | 30 --------
>  .../mmc/socionext,milbeaut-m10v-sdhci-3.0.yaml     | 79 ++++++++++++++++++++++
>  2 files changed, 79 insertions(+), 30 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-milbeaut.txt b/Documentation/devicetree/bindings/mmc/sdhci-milbeaut.txt
> deleted file mode 100644
> index 627ee89c125b..000000000000
> --- a/Documentation/devicetree/bindings/mmc/sdhci-milbeaut.txt
> +++ /dev/null
> @@ -1,30 +0,0 @@
> -* SOCIONEXT Milbeaut SDHCI controller
> -
> -This file documents differences between the core properties in mmc.txt
> -and the properties used by the sdhci_milbeaut driver.
> -
> -Required properties:
> -- compatible: "socionext,milbeaut-m10v-sdhci-3.0"
> -- clocks: Must contain an entry for each entry in clock-names. It is a
> -  list of phandles and clock-specifier pairs.
> -  See ../clocks/clock-bindings.txt for details.
> -- clock-names: Should contain the following two entries:
> -       "iface" - clock used for sdhci interface
> -       "core"  - core clock for sdhci controller
> -
> -Optional properties:
> -- fujitsu,cmd-dat-delay-select: boolean property indicating that this host
> -  requires the CMD_DAT_DELAY control to be enabled.
> -
> -Example:
> -       sdhci3: mmc@1b010000 {
> -               compatible = "socionext,milbeaut-m10v-sdhci-3.0";
> -               reg = <0x1b010000 0x10000>;
> -               interrupts = <0 265 0x4>;
> -               voltage-ranges = <3300 3300>;
> -               bus-width = <4>;
> -               clocks = <&clk 7>, <&ahb_clk>;
> -               clock-names = "core", "iface";
> -               cap-sdio-irq;
> -               fujitsu,cmd-dat-delay-select;
> -       };
> diff --git a/Documentation/devicetree/bindings/mmc/socionext,milbeaut-m10v-sdhci-3.0.yaml b/Documentation/devicetree/bindings/mmc/socionext,milbeaut-m10v-sdhci-3.0.yaml
> new file mode 100644
> index 000000000000..2ba53626a959
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mmc/socionext,milbeaut-m10v-sdhci-3.0.yaml
> @@ -0,0 +1,79 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mmc/socionext,milbeaut-m10v-sdhci-3.0.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: SOCIONEXT Milbeaut SDHCI controller
> +
> +maintainers:
> +  - Taichi Sugaya <sugaya.taichi@socionext.com>
> +  - Takao Orito <orito.takao@socionext.com>
> +
> +description:
> +  The SOCIONEXT Milbeaut SDHCI controller is a specialized SD Host
> +  Controller found in some of Socionext's Milbeaut image processing SoCs.
> +  It features a dedicated "bridge controller." This bridge controller
> +  implements special functions like reset control, clock management for
> +  various SDR modes (SDR12, SDR25, SDR50) and physical pin property settings.
> +
> +allOf:
> +  - $ref: sdhci-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: socionext,milbeaut-m10v-sdhci-3.0
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: core
> +      - const: iface
> +
> +  fujitsu,cmd-dat-delay-select:
> +    description:
> +      Its presence indicates that the controller requires a specific command
> +      and data line delay selection mechanism for proper operation, particularly
> +      when dealing with high-speed SD/eMMC modes.
> +    type: boolean
> +
> +  voltage-ranges:
> +    $ref: /schemas/types.yaml#/definitions/uint32-matrix
> +    items:
> +      items:
> +        - description: minimum slot voltage (mV).
> +        - description: maximum slot voltage (mV).
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    mmc@1b010000 {
> +        compatible = "socionext,milbeaut-m10v-sdhci-3.0";
> +        reg = <0x1b010000 0x10000>;
> +        interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> +        voltage-ranges = <3300 3300>;
> +        bus-width = <4>;
> +        clocks = <&clk 7>, <&ahb_clk>;
> +        clock-names = "core", "iface";
> +        cap-sdio-irq;
> +        fujitsu,cmd-dat-delay-select;
> +    };
> +...
>
> ---
> base-commit: 7bac2c97af4078d7a627500c9bcdd5b033f97718
> change-id: 20250524-milbeaut-5c0267202e2c
>
> Best regards,
> --
> Charan Pedumuru <charan.pedumuru@gmail.com>
>

