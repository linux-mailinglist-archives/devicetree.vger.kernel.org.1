Return-Path: <devicetree+bounces-223238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF57BB25F0
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 04:30:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 405BB3B7C98
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 02:30:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8B0E275AFA;
	Thu,  2 Oct 2025 02:30:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O3j4zu3Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 015DA2749C4
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 02:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759372250; cv=none; b=LDf08u9UilaXO27tmw/4+jcN1+rR915U/bATuaVbC+EjOioBi6Coi/HdLaZb25D8om0KBeBiS9nfuIY+FWKbQhgqDYhbnY3nhSoewML+1y+V0RXLFzdfhS5HmpZT5iuLwrF3oeF2/atIgU4NiJryqsFMeNoj5K2cEcBqVZbXY38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759372250; c=relaxed/simple;
	bh=Hum+PFvbFXkCQsJfkEq//482z3lj6GUir953LaNMY5Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=n6qvU4p1udmlRVg0PV2WpX+qZE2GJmHfRDy9zWVDT7XIpiWdIhbBuItWBVf8Ynjjh8zWppStms7Yq5SqM/Yqk+TfKeoTGwZP3pjEbtYffESwRxCjaptvImQDymvoNdXi1Ymwll1iWLjsF7I8W57mfAnxV7M7ye9VsmiyOQaTc0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O3j4zu3Q; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-267f0fe72a1so3668675ad.2
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 19:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759372247; x=1759977047; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=J+Hd4fVpuDmD1sqiXE0//EY5LjX6rjx9bI8hk6BegOw=;
        b=O3j4zu3QWEom660xeGLdVlHo9K8myp+L6AARzll8Jpd2fEUkmq3W4crPD512JnlkUD
         qrxLnSsXLLHyq+PJs+BI+EdJBgQpbkvFiGTxm75d/ZkTDsaSWSDW+KG89l8jVbDZEZ8c
         YpPwTo+PcXHh3ZekyaBZUAnqf+RtwoL3vpidsN/HPhn9cioO2qHGZAXiV6fBcOUIkICR
         t/ma+bFqJt+SW+A3hLxLwtjpgYyQdez6PxGYUNw1jL9QHodWJhIQzw+kWkX4R32OwnWA
         N/be/wxxHXZGPeKub6BdnuDRkx57A8uohC1St6UEbDHh6+kVmIWs37y7qYIF9PpodDOn
         TanQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759372247; x=1759977047;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J+Hd4fVpuDmD1sqiXE0//EY5LjX6rjx9bI8hk6BegOw=;
        b=cl4ePyqkXWOaWR3toWT9RqKeqc2FT5ZmYi9aL16wl5ONX4ZHrzwtUiWOikfwGzwPj4
         m2v+MgoA7tiPSvQrfs34K3YfmDSkGtcp+EjxSvxd+wJwM7M/W2esjDGsvMdO5mkwOLF5
         DCvNX9vISMLWbPV67HEbBVuzf5rR9mTGAyqtK78QNXXzrx5EzEMNu+GvsyI/g0HV0F4W
         fR4e/6zmb62KCt6oX5ehgwg3DUcjgS6rgW3yZvhlS5OmRCWWwy2zudB5buEe3eHRhu6T
         yUgVcYBrZegu13DcTuZmI8XN32p8T61es8GUaMZQe0tcLyP7rCM++uYdgLQnbMI7kVDM
         E0eA==
X-Forwarded-Encrypted: i=1; AJvYcCU0x5FsjLYu33xQL33+BS0h2bTMfgp//+d/YnkCg9VYTXCIlEkDLjJ54X6ps+e3Xgt6NRP/xo9+HfBH@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0bUtkz8msCM/AJKdGkK5zL8zju/sUv30bKLXlAYDIRbufuZPQ
	GpNGcrwN4fYaNuMvqQUrNYW7SSxIqwfDS0eopoWHU6hNBCox5XtP432FWTfLaelb
X-Gm-Gg: ASbGncsCEwU1KjTa4b1EfJj6uQsL7fxhTzrDyYH1GxIolizqk8itIP2kPHXTcvZBRjA
	PMMaaO4UV1G1lur+ra3CSlrtEfvwFGjQOlpANl/5ez0MEr/GiD9FP94qyF5+zX7em5h76NdPv/D
	18tjQZW5v1TySleSYarfAfvOPmDK/zHcBYxBTJmLKjz7N5p1D7d/Fsn3LrsUgfaDnqW1at3grf4
	/ZSrcP+eERewEIR704nfBoYrhLNQKPC2C+cKIDQW23aRVi6MXZPAMGSRoQzxD9FRToNMXAJSySG
	fUPO11ukwCnAA+YfNnZv7BxjMtWU+Rx0zDYohfYLkXUuvPMl+LOVuX9zSqnAgmiFgUG8pcib9h+
	sYiGiygjRPEER8K6qgZ5yoE7AnI3dhXKTjCGRkJdcg0Ji1pghR9k+a5wFTgqhcxNb7C9DbN3Dnz
	YSPvJPcPmNCA3jfEGL2dFst9BwCJb+YA==
X-Google-Smtp-Source: AGHT+IGHT84Qf+UoUWA6jb3IxZPRfUWoD+BvLkJI7FuBwHyF9sbUKgBzPyG6ExfUioS9C785mbuvAg==
X-Received: by 2002:a17:903:2392:b0:246:4077:4563 with SMTP id d9443c01a7336-28e7f310ee5mr70964875ad.34.1759372247040;
        Wed, 01 Oct 2025 19:30:47 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d038e4asm10398425ad.0.2025.10.01.19.30.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 19:30:46 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <b28fd34d-d38f-48c2-8a4b-105897da3fb1@roeck-us.net>
Date: Wed, 1 Oct 2025 19:30:45 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] dt-bindings: watchdog: factor out RZ/N1 watchdog
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-renesas-soc@vger.kernel.org
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, linux-watchdog@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250926112218.28723-1-wsa+renesas@sang-engineering.com>
 <20250926112218.28723-3-wsa+renesas@sang-engineering.com>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <20250926112218.28723-3-wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/26/25 04:22, Wolfram Sang wrote:
> Renesas created different watchdog IPs but they are all handled in the
> same binding documentation. This leads to a lot of conditional handling
> which makes it unnecessarily hard to add new items. Factor out the RZ/N1
> watchdog to make handling easier.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>   .../bindings/watchdog/renesas,rzn1-wdt.yaml   | 49 +++++++++++++++++++
>   .../bindings/watchdog/renesas,wdt.yaml        |  6 ---
>   2 files changed, 49 insertions(+), 6 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/watchdog/renesas,rzn1-wdt.yaml
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/renesas,rzn1-wdt.yaml b/Documentation/devicetree/bindings/watchdog/renesas,rzn1-wdt.yaml
> new file mode 100644
> index 000000000000..01eab6cc1110
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/renesas,rzn1-wdt.yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/watchdog/renesas,rzn1-wdt.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas RZ/N1 Watchdog Timer (WDT) Controller
> +
> +maintainers:
> +  - Wolfram Sang <wsa+renesas@sang-engineering.com>
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - renesas,r9a06g032-wdt    # RZ/N1D
> +      - const: renesas,rzn1-wdt      # RZ/N1
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +
> +allOf:
> +  - $ref: watchdog.yaml#
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/r9a06g032-sysctrl.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    wdt0: watchdog@40008000 {
> +            compatible = "renesas,r9a06g032-wdt", "renesas,rzn1-wdt";
> +            reg = <0x40008000 0x1000>;
> +            interrupts = <GIC_SPI 73 IRQ_TYPE_EDGE_RISING>;
> +            clocks = <&sysctrl R9A06G032_CLK_WATCHDOG>;
> +    };
> diff --git a/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml b/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
> index 8a25e0c6271f..12ba07781763 100644
> --- a/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
> @@ -13,11 +13,6 @@ maintainers:
>   properties:
>     compatible:
>       oneOf:
> -      - items:
> -          - enum:
> -              - renesas,r9a06g032-wdt    # RZ/N1D
> -          - const: renesas,rzn1-wdt      # RZ/N1
> -
>         - items:
>             - enum:
>                 - renesas,r9a07g043-wdt    # RZ/G2UL and RZ/Five
> @@ -134,7 +129,6 @@ allOf:
>               contains:
>                 enum:
>                   - renesas,r9a09g077-wdt
> -                - renesas,rzn1-wdt
>       then:
>         required:
>           - power-domains


