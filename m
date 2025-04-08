Return-Path: <devicetree+bounces-164520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC2CA815E0
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 21:37:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D2331BA408F
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 19:37:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABEA0245017;
	Tue,  8 Apr 2025 19:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="x8Ih6hwp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA0A12451C3
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 19:37:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744141042; cv=none; b=bW8TxYLyAK4LWIeADs30v47PlGDs1hlpLDKR4F6qQAtAdKeEplByPl365BGRq2HyMUhIKaJ3xW5TYh28gGoND3TjIXtsroyh4+Wn2dG0F4nyzfbNErdkR9kxuUs+JMnDMUFBFIIYWxaOZqCo3DhzJ7uSpqwsI6qENVVC8G266Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744141042; c=relaxed/simple;
	bh=ha7lhQ34brS+u0nS8GzxnVJbYTW9+dIvDcVDatFnJqw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Hqroe77ZBU39gPTIt+039PgdxnMVSQR/8+botPKMbHmd1kVrd6VIOxQXw+K1/SZwHDNTw38H/jUZh4eV+TyzM5PLSFCMBggLTkdJ1l/kDEiXAVrfXTV434t19ZUwfeTkeA5bLO7PqdSAkGbDoP7rASIDCNT6RJwzd2F5XZBlpS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=x8Ih6hwp; arc=none smtp.client-ip=209.85.166.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f46.google.com with SMTP id ca18e2360f4ac-85b4170f1f5so169628639f.3
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 12:37:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744141039; x=1744745839; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YAocT/vq75+xif1y8rqoT/BoG6Geem5tDOet9RgchRM=;
        b=x8Ih6hwp02NLjUo0jCI+5AnECw/6G06vS2X50bJwH/Ux41LR6hXA6D0DpEH6qu1g1L
         AiGo6NOdiKZNI6hLVvEZR+HQs+0VQzLd4rV+8W2dcJg0kesBtF97eDG6s2lE7CdlG19e
         t2tTFkxoRRxHwbygLAtCeRZ/rMasH+7aw23rtz+mwZKTEf3AGgGT80yp2ZNgr115XPja
         XfohzSPEOWk0chg92xn0AHwA9Qsr5bVy3GQBE5VC9l/yA0vz1zhzeyvRZiXJycoJHAq+
         H/PFF312L0Uimf0C0UP+acQotIwhbQ5z+a+ATpK+1j9rd4wjF7DLxSsbSgMPeolnVTyv
         2aEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744141039; x=1744745839;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YAocT/vq75+xif1y8rqoT/BoG6Geem5tDOet9RgchRM=;
        b=NgL2GJyi6vdSHEP1gI68zoPqeBSTGjpFpSEF6Yzk3h5GznpPQ6WFp9A8qJtkcjiyvM
         VBqTgWA2WXiSEXoIDl/KeGJ+wIPmZU0GM3WVPEabxCZj560mvuLXxSL2yZ6SDJYC59lf
         yJ6WJJxXbmm6nlqvyuzsuMXNPzZNhdYzmljz8gBQrnu35LIseIlSKxtixEon/w/HdMlF
         gsncFGUBH3GKnhjM5+MhEnLp2+gGy2oTw9rdu72KkqfGCK6GZu8YAA5YAucLFv+VJ4wj
         614clcjz+SUMA3a4r1lnDG6i7GzeGxNPwLHrFXDDzIdOEZnPvszzgJby/Koy3HRJsrSJ
         txqQ==
X-Forwarded-Encrypted: i=1; AJvYcCVGnV09wlq4L0iAY1YaPQXCItXJpEHNsOS1fB8hcLECiW93rbwJIInQjee6efPi68XwEpv89MOgDxMj@vger.kernel.org
X-Gm-Message-State: AOJu0YwMm1cB7gi6IjCNebvO/BkXmFtm/oNZvUqkfaZgwo/+N50TDedx
	k8qdQeoVUkIjU3F0oUGQfSiZ7a+cn0rwFvBfmBo3QAHR9TYPr4G70bszFmoGnr8=
X-Gm-Gg: ASbGncv77yLdrGTREqRuqUrVJRK4m4+PrPYGEFR580evf4zbK6Mknp8P/Y352Rb3H0X
	bnREbyCj4PY+jJUM9MFirretPL0A6XYsZSE884V/cckG0gneoHwPK4qivfaCLB0eVGpTCNX6eQB
	HwzWFh4rs/lih5ik3l0ZYSH9iAXAHnEzLu/WF0fz1Gkt3O3Cijk1ZgoEW7f52X4GySnDauvB1Gl
	oqlln7ARzoKSrlpd2Xf56wq+MLfneI0QewiwKwjTE5Lb5BlHJabaVUZa8roGEebvavTJ35gL9ic
	KnhBZRpWrKxpSYfXZ91TZb1l3LBnT4+OWIWBOvA5Amc9iYV5E4VHRCpY8ln7NeMKWUP+HoTTbl0
	1Jtvi4mD+
X-Google-Smtp-Source: AGHT+IEFE1cCuIf+szHapfd8rWi0h/VWjoKhv+Wt9/LXpZ4mW4RvqE0CY5fav9qMNHn60ZS5uwh+NA==
X-Received: by 2002:a05:6602:3e89:b0:85d:a173:323c with SMTP id ca18e2360f4ac-861611e319emr51441139f.8.1744141039611;
        Tue, 08 Apr 2025 12:37:19 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f4f44e3aa0sm653506173.126.2025.04.08.12.37.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Apr 2025 12:37:19 -0700 (PDT)
Message-ID: <c7279fb7-2c43-42d2-bf89-5cdf644d6d6e@riscstar.com>
Date: Tue, 8 Apr 2025 14:37:18 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/6] dt-bindings: clock: spacemit: Add spacemit,k1-pll
To: Haylen Chu <heylenay@4d2.org>, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Haylen Chu <heylenay@outlook.com>,
 Yixun Lan <dlan@gentoo.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 spacemit@lists.linux.dev, Inochi Amaoto <inochiama@outlook.com>,
 Chen Wang <unicornxdotw@foxmail.com>, Jisheng Zhang <jszhang@kernel.org>,
 Meng Zhang <zhangmeng.kevin@linux.spacemit.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250401172434.6774-1-heylenay@4d2.org>
 <20250401172434.6774-3-heylenay@4d2.org>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250401172434.6774-3-heylenay@4d2.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/1/25 12:24 PM, Haylen Chu wrote:
> Add definition for the PLL found on SpacemiT K1 SoC, which takes the
> external 24MHz oscillator as input and generates clocks in various
> frequencies for the system.
> 
> Signed-off-by: Haylen Chu <heylenay@4d2.org>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Minor nit:  you used tabs again on this line:

 > +/*	APBS (PLL) clocks	*/

I really don't care what convention you use (I like the spaces
myself), but stick to it one way or the other.

Otherwise this looks good to me.

Reviewed-by: Alex Elder <elder@riscstar.com>

> ---
>   .../bindings/clock/spacemit,k1-pll.yaml       | 50 +++++++++++++++++++
>   .../dt-bindings/clock/spacemit,k1-syscon.h    | 37 ++++++++++++++
>   2 files changed, 87 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/clock/spacemit,k1-pll.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/spacemit,k1-pll.yaml b/Documentation/devicetree/bindings/clock/spacemit,k1-pll.yaml
> new file mode 100644
> index 000000000000..06bafd68c00a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/spacemit,k1-pll.yaml
> @@ -0,0 +1,50 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/spacemit,k1-pll.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: SpacemiT K1 PLL
> +
> +maintainers:
> +  - Haylen Chu <heylenay@4d2.org>
> +
> +properties:
> +  compatible:
> +    const: spacemit,k1-pll
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    description: External 24MHz oscillator
> +
> +  spacemit,mpmu:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the "Main PMU (MPMU)" syscon. It is used to check PLL
> +      lock status.
> +
> +  "#clock-cells":
> +    const: 1
> +    description:
> +      See <dt-bindings/clock/spacemit,k1-syscon.h> for valid indices.
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - spacemit,mpmu
> +  - "#clock-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    clock-controller@d4090000 {
> +        compatible = "spacemit,k1-pll";
> +        reg = <0xd4090000 0x1000>;
> +        clocks = <&vctcxo_24m>;
> +        spacemit,mpmu = <&sysctl_mpmu>;
> +        #clock-cells = <1>;
> +    };
> diff --git a/include/dt-bindings/clock/spacemit,k1-syscon.h b/include/dt-bindings/clock/spacemit,k1-syscon.h
> index 61c8d7360cf8..efe29c976a01 100644
> --- a/include/dt-bindings/clock/spacemit,k1-syscon.h
> +++ b/include/dt-bindings/clock/spacemit,k1-syscon.h
> @@ -6,6 +6,43 @@
>   #ifndef _DT_BINDINGS_SPACEMIT_CCU_H_
>   #define _DT_BINDINGS_SPACEMIT_CCU_H_
>   
> +/*	APBS (PLL) clocks	*/
> +#define CLK_PLL1		0
> +#define CLK_PLL2		1
> +#define CLK_PLL3		2
> +#define CLK_PLL1_D2		3
> +#define CLK_PLL1_D3		4
> +#define CLK_PLL1_D4		5
> +#define CLK_PLL1_D5		6
> +#define CLK_PLL1_D6		7
> +#define CLK_PLL1_D7		8
> +#define CLK_PLL1_D8		9
> +#define CLK_PLL1_D11		10
> +#define CLK_PLL1_D13		11
> +#define CLK_PLL1_D23		12
> +#define CLK_PLL1_D64		13
> +#define CLK_PLL1_D10_AUD	14
> +#define CLK_PLL1_D100_AUD	15
> +#define CLK_PLL2_D1		16
> +#define CLK_PLL2_D2		17
> +#define CLK_PLL2_D3		18
> +#define CLK_PLL2_D4		19
> +#define CLK_PLL2_D5		20
> +#define CLK_PLL2_D6		21
> +#define CLK_PLL2_D7		22
> +#define CLK_PLL2_D8		23
> +#define CLK_PLL3_D1		24
> +#define CLK_PLL3_D2		25
> +#define CLK_PLL3_D3		26
> +#define CLK_PLL3_D4		27
> +#define CLK_PLL3_D5		28
> +#define CLK_PLL3_D6		29
> +#define CLK_PLL3_D7		30
> +#define CLK_PLL3_D8		31
> +#define CLK_PLL3_80		32
> +#define CLK_PLL3_40		33
> +#define CLK_PLL3_20		34
> +
>   /* MPMU clocks */
>   #define CLK_PLL1_307P2		0
>   #define CLK_PLL1_76P8		1


