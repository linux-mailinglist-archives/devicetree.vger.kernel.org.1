Return-Path: <devicetree+bounces-28508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8AB81E8D3
	for <lists+devicetree@lfdr.de>; Tue, 26 Dec 2023 19:07:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE2A02829D2
	for <lists+devicetree@lfdr.de>; Tue, 26 Dec 2023 18:07:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3200F50258;
	Tue, 26 Dec 2023 18:07:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="R41ZkslO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE7DC50250
	for <devicetree@vger.kernel.org>; Tue, 26 Dec 2023 18:07:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f53.google.com with SMTP id ca18e2360f4ac-7b913830d8eso209289939f.1
        for <devicetree@vger.kernel.org>; Tue, 26 Dec 2023 10:07:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1703614044; x=1704218844; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xPNsMK/s4OTo7V67GiJCawbHwE3mn0OYhqS2bmZF3nY=;
        b=R41ZkslO/mQqVXbKZIXPZZxuRBN+ZcKbn3NCHWXVyNCLucv3hsQY0TAJodZHTLyLyX
         iSHsHkoJZCvFPqc91jEmcCgClxDzqN+z4JrQEbYFl39u4jndZFh25+Uqi5ISKL5BAZVU
         9ELzAs+Yh7FFmIlVEMFmmULFHqje0Iyl3A03JsB/AitlGgVegLkgJ/fCR/7HG0W7duK6
         hPGy0vmgNsZpHJtFdNWUb4/X2mor2pOHKhY9GAbvhyp6ru9j3XYrG7k321d8bO4BH5kk
         c/v8doVQFR7RptaVAsjTzGJlbRTKiUr4FCd1OQ+tW9f1h49rIfbrcbejcntaTl+k0lCk
         DGDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703614044; x=1704218844;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xPNsMK/s4OTo7V67GiJCawbHwE3mn0OYhqS2bmZF3nY=;
        b=FBXVkJYHxgUxP63fa8GB6xRy77R1RV2EjR/R4d9WOwfd0sIOFd2bsImMcQtoOkcVWB
         7c5pp4WhctuHGjpxT9oOyyI/Hbe1aNQMTpjgFPv8nPT/jYQsuFedGGebNO6wbW2fW/jB
         eNOj1EFSwlDDWHGz+tPSIboVzVSy46L8nd2GvErAXd8OeTTKnVhzy8jAltazX2xnIfxw
         jLM+3Pf98Xi457i7Q8aNl0naiAp4qovC8ceqW8eDSLqNB9fcrIB06y8kDP9YPRWQBfQ0
         +Uhc/BNMaKZIBBicrHS8WlxmDyjR5hdx43UPYZRtaHx7NNptQ77n0IQFwF7Ch7ahzUEg
         NFeQ==
X-Gm-Message-State: AOJu0Yzinnc7R4D6DhJKKsCuCoVB6W7fluSvUn+d72gFXr6A+Hu8b8lh
	3mhQfmI4gmpOe9PJNPa77O95huI79euCPw==
X-Google-Smtp-Source: AGHT+IHSPY+TRVUuGXVP3M/71dufTcnvlBRUKwSE8sQnUYVeLpYEgd3pY+qwbb9vi2q+AP3Bi2hzJw==
X-Received: by 2002:a5e:8a0c:0:b0:7ba:dbd9:51f3 with SMTP id d12-20020a5e8a0c000000b007badbd951f3mr3207772iok.3.1703614043898;
        Tue, 26 Dec 2023 10:07:23 -0800 (PST)
Received: from ?IPV6:2601:b051:12ac:a800:99cc:6547:8f68:3193? ([2601:b051:12ac:a800:99cc:6547:8f68:3193])
        by smtp.gmail.com with ESMTPSA id g9-20020a6b6b09000000b007ba84cb7860sm3159341ioc.4.2023.12.26.10.07.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Dec 2023 10:07:23 -0800 (PST)
Message-ID: <74649469-2b47-486e-b8d1-c89b705fe8c1@sifive.com>
Date: Tue, 26 Dec 2023 12:07:21 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC 07/16] dt-bindings: clock: Add StarFive JH8100 North-West
 clock and reset generator
Content-Language: en-US
To: Sia Jee Heng <jeeheng.sia@starfivetech.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 leyfoon.tan@starfivetech.com, kernel@esmil.dk, conor@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de,
 emil.renner.berthing@canonical.com, hal.feng@starfivetech.com,
 xingyu.wu@starfivetech.com
References: <20231226053848.25089-1-jeeheng.sia@starfivetech.com>
 <20231226053848.25089-8-jeeheng.sia@starfivetech.com>
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <20231226053848.25089-8-jeeheng.sia@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2023-12-25 11:38 PM, Sia Jee Heng wrote:
> Add bindings for the North-West clock and reset generator (NWCRG) on
> JH8100 SoC.
> 
> Signed-off-by: Sia Jee Heng <jeeheng.sia@starfivetech.com>
> Reviewed-by: Ley Foon Tan <leyfoon.tan@starfivetech.com>
> ---
>  .../bindings/clock/starfive,jh8100-nwcrg.yaml | 119 ++++++++++++++++++
>  .../dt-bindings/clock/starfive,jh8100-crg.h   |  43 +++++++
>  .../dt-bindings/reset/starfive,jh8100-crg.h   |  14 +++
>  3 files changed, 176 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/starfive,jh8100-nwcrg.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/starfive,jh8100-nwcrg.yaml b/Documentation/devicetree/bindings/clock/starfive,jh8100-nwcrg.yaml
> new file mode 100644
> index 000000000000..be0f94e64e6a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/starfive,jh8100-nwcrg.yaml
> @@ -0,0 +1,119 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/starfive,jh8100-nwcrg.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: StarFive JH8100 North-West Clock and Reset Generator
> +
> +maintainers:
> +  - Sia Jee Heng <jeeheng.sia@starfivetech.com>
> +
> +properties:
> +  compatible:
> +    const: starfive,jh8100-nwcrg
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Main Oscillator (24 MHz)
> +      - description: APB_BUS clock from SYSCRG
> +      - description: APB_BUS_PER4 clock from SYSCRG
> +      - description: SPI_CORE_100 clock from SYSCRG
> +      - description: ISP_2X clock from SYSCRG
> +      - description: ISP_AXI clock from SYSCRG
> +      - description: VOUT_ROOT0 clock from SYSCRG
> +      - description: VOUT_ROOT1 clock from SYSCRG
> +      - description: VOUT_SCAN_ATS clock from SYSCRG
> +      - description: VOUT_DC_CORE clock from SYSCRG
> +      - description: VOUT_AXI clock from SYSCRG
> +      - description: AXI_400 clock from SYSCRG
> +      - description: AHB0 clock from SYSCRG
> +      - description: PERH_ROOT_PREOSC from SYSCRG
> +      - description: External DVP clock
> +      - description: External ISP DPHY TAP TCK clock
> +      - description: External golbal clock

Typo: global

> +      - description: External VOUT MIPI DPHY TAP TCK
> +      - description: External VOUT eDP TAP TCK
> +      - description: External SPI In2 clock
> +      - description: PLL5
> [...]


