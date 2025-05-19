Return-Path: <devicetree+bounces-178451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2A6ABBDDD
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 14:32:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 002C116C0C8
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 12:32:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C96A3278155;
	Mon, 19 May 2025 12:32:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TAUBTEVP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD0972741D8
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 12:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747657921; cv=none; b=UBKntr6PF8zVRH/fYOdB6OkV8vQEfmI8UvBQ1Pp63tnIfQx/1oGc50wll4d4keSUVk5xPnkxSRhrZiYjcbtGaHNPboD+uK8ysdc9H9TsMCWA1pnZlgUZAJJh32TieKh5/l79rYvRve1njI5ZKKNTeAKOtE6a4yPQj2TRQ8kbgos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747657921; c=relaxed/simple;
	bh=3r5j8ewUTdDD9cAVaQUvMIgt76uz3t6q02hyODKU56A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AadsLO82I1Fz2MByPEgYmpEPxUu+onIuLgeLFvLE64X5MA6mcFYDI58/bGptkI02HGeAcxoXeJVpfF7E3n2Q+UUqXp/+LOl0WqCzyWlutZb03iE51KfTYxYRdsXkfANaBnan8GuqKJ2YOXJzk7J6q++UhqfvC6DLTaFYzZQETjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TAUBTEVP; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-e7b98303087so945522276.1
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 05:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747657918; x=1748262718; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=K/Y4tapDB2lInfWCMbvdtqDDZUxcIGcJpTNFG1RgCRM=;
        b=TAUBTEVPNAtUTnSocO9UXH8p7zkbiPqhzN1PXMbkEhTMWkNAgythz+VL0CTXcJhmbU
         AlzJDSqWtzkgp3WQ9ge6OpyeaW+MChvEQ3mAbdH3wpFXqCbLlprcDtPNUaoUgCZHk2Oz
         SufzhHIhd0dC2BrNjcW8Qme3T0Qzk0fTl/duFp/i5y0c0y9oeGHyCqFP9WZYpTDa3P8n
         sn/vSAZ0kC3yOj6I4QA3Ns0tlOnbwlFcAfT7CfD32eqgbYu7Z9to8KVUdSIj5AACB5q/
         2eeU6VkXA7JNPibFcbl26xBjHl5qdmv4isC6q3R2le3NeDVK/jeheJxW1UgOWrACh9yY
         Dp9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747657918; x=1748262718;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K/Y4tapDB2lInfWCMbvdtqDDZUxcIGcJpTNFG1RgCRM=;
        b=WGH6KEHE7Pqgtt+BE4WeTu7PKrup8re/oIUfAGTxk4Sob9fanG2t/raoY84RNs3Ew5
         MBRwn0mtTE4G/ZOq5VUdEO3wIrCzFR+UjzDhfM/Z/awZaL5iMRtpqr9ctdEzNC0tB/6g
         T5SM6j54Cb6KrR+NxZQ2DaHZqz5ogtUV/uH/LqZtrmzJwvPqbDLCV7h9ERG2efIETitj
         AfHgThVNkqBMekp53RWAlxVVnTSYGVPbbVJfmX3uD/QzHOPtHkf56BnHX14ONz6s4ksf
         XoD/nitK2jol3NRaql3MyhdffbB2y/iAx6ofy867ZwBBL93eVWEgVuWdWMD5xpiFtdHm
         Xbdg==
X-Forwarded-Encrypted: i=1; AJvYcCWfLITKpOESmdzZESkZg3wWB/A45eAH8AC1Y11fT5gMeD2BC1/Qk4V7USNstosMQc5sy7jq99fTJsrE@vger.kernel.org
X-Gm-Message-State: AOJu0YwlMDRPIZdVRwwV2h4Vi2S3g4v0bTVAjGDshoEXUbP4WyhXZK42
	H/FhyvepcPipr9soWAxG6rUBYnEAeFbpyGEyWA4XQZd5HK5txLJqpZm4aTAE9zHnF5hFooVCSlA
	49NoyTlPR/cG0RjubDnF22AzwFK71Et6WbXRVKT0QNQ==
X-Gm-Gg: ASbGncvYp0fTRcCT9o3EaINDmvGyC4MukV2pwOMRwRuZFR2w6OYzI2rSI5h1dFvqfqf
	207JEpC3b5ESLDe9w5/M+jC/kcMBRyTlwhoWBcHaHGsfRPS75CYBsWHH35S71QF1+mNaNa5JJr7
	s6k837JUtG1ecXm5Ks5PKqvLfhT4ECygtJ0w==
X-Google-Smtp-Source: AGHT+IEmv/WGUjKBm+/A1/4GEydyk8TOzWy7/Tild6Q46xMQvO171ETGSmplGkezWXGMNntuDWyD2TLLNFfhysgWzEI=
X-Received: by 2002:a05:6902:1547:b0:e7b:9763:6676 with SMTP id
 3f1490d57ef6-e7b97636a60mr5784680276.17.1747657917592; Mon, 19 May 2025
 05:31:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250507-mchp-sdhci-v1-0-ed29de05295a@gmail.com> <20250507-mchp-sdhci-v1-2-ed29de05295a@gmail.com>
In-Reply-To: <20250507-mchp-sdhci-v1-2-ed29de05295a@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 19 May 2025 14:31:21 +0200
X-Gm-Features: AX0GCFuWDdcxOPuDxhAtLQnUgrmqueC7zHJtPdPiN6hagUd_-Xv9el2wmRphFWc
Message-ID: <CAPDyKFqPhxOfzZOYuF_yG9TyUx0FQ7p=TE8krSdLkM7AjOmp_g@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-binding: mmc: microchip,sdhci-pic32: convert text
 based binding to json schema
To: Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	devicetree@vger.kernel.org, linux-mips@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 7 May 2025 at 08:32, Charan Pedumuru <charan.pedumuru@gmail.com> wrote:
>
> Update text binding to YAML.
> Changes during conversion:
> Add appropriate include statements for interrupts and clock-names
> to resolve errors identified by `dt_binding_check` and `dtbs_check`.
>
> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>

Applied for next, thanks!

Note that, I leave patch1 for SoC maintainers to pick up, thanks!

Kind regards
Uffe



> ---
>  .../bindings/mmc/microchip,sdhci-pic32.txt         | 29 ----------
>  .../bindings/mmc/microchip,sdhci-pic32.yaml        | 66 ++++++++++++++++++++++
>  2 files changed, 66 insertions(+), 29 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/microchip,sdhci-pic32.txt b/Documentation/devicetree/bindings/mmc/microchip,sdhci-pic32.txt
> deleted file mode 100644
> index f064528effed31f30d1d1c6e0b49c02e215d99af..0000000000000000000000000000000000000000
> --- a/Documentation/devicetree/bindings/mmc/microchip,sdhci-pic32.txt
> +++ /dev/null
> @@ -1,29 +0,0 @@
> -* Microchip PIC32 SDHCI Controller
> -
> -This file documents differences between the core properties in mmc.txt
> -and the properties used by the sdhci-pic32 driver.
> -
> -Required properties:
> -- compatible: Should be "microchip,pic32mzda-sdhci"
> -- interrupts: Should contain interrupt
> -- clock-names: Should be "base_clk", "sys_clk".
> -               See: Documentation/devicetree/bindings/resource-names.txt
> -- clocks: Phandle to the clock.
> -          See: Documentation/devicetree/bindings/clock/clock-bindings.txt
> -- pinctrl-names: A pinctrl state names "default" must be defined.
> -- pinctrl-0: Phandle referencing pin configuration of the SDHCI controller.
> -             See: Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt
> -
> -Example:
> -
> -       sdhci@1f8ec000 {
> -               compatible = "microchip,pic32mzda-sdhci";
> -               reg = <0x1f8ec000 0x100>;
> -               interrupts = <191 IRQ_TYPE_LEVEL_HIGH>;
> -               clocks = <&rootclk REF4CLK>, <&rootclk PB5CLK>;
> -               clock-names = "base_clk", "sys_clk";
> -               bus-width = <4>;
> -               cap-sd-highspeed;
> -               pinctrl-names = "default";
> -               pinctrl-0 = <&pinctrl_sdhc1>;
> -       };
> diff --git a/Documentation/devicetree/bindings/mmc/microchip,sdhci-pic32.yaml b/Documentation/devicetree/bindings/mmc/microchip,sdhci-pic32.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..ca0ca7df9ee991d8402bc4c62b1235ef5db2e85f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mmc/microchip,sdhci-pic32.yaml
> @@ -0,0 +1,66 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mmc/microchip,sdhci-pic32.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip PIC32 SDHI Controller
> +
> +description:
> +  The Microchip PIC32 family of microcontrollers (MCUs) includes models with
> +  Secure Digital Host Controller Interface (SDHCI) controllers, allowing them
> +  to interface with Secure Digital (SD) cards. This interface is used for reading,
> +  writing, and managing data on SD cards, enabling storage and data transfer
> +  capabilities in embedded systems.
> +
> +allOf:
> +  - $ref: mmc-controller.yaml
> +
> +maintainers:
> +  - Ulf Hansson <ulf.hansson@linaro.org>
> +
> +properties:
> +  compatible:
> +    const: microchip,pic32mzda-sdhci
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
> +      - const: base_clk
> +      - const: sys_clk
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - pinctrl-names
> +  - pinctrl-0
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/clock/microchip,pic32-clock.h>
> +    mmc@1f8ec000 {
> +        compatible = "microchip,pic32mzda-sdhci";
> +        reg = <0x1f8ec000 0x100>;
> +        interrupts = <191 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&rootclk REF4CLK>, <&rootclk PB5CLK>;
> +        clock-names = "base_clk", "sys_clk";
> +        bus-width = <4>;
> +        cap-sd-highspeed;
> +        pinctrl-names = "default";
> +        pinctrl-0 = <&pinctrl_sdhc1>;
> +    };
> +...
>
> --
> 2.43.0
>

