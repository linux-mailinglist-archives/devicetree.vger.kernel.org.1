Return-Path: <devicetree+bounces-13915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6306A7E15D7
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 19:30:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA5FB281224
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 18:30:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CCDC171AE;
	Sun,  5 Nov 2023 18:30:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Bq1183+e"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB330179B3
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 18:30:14 +0000 (UTC)
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F8B3DE
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 10:30:12 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-543456dbd7bso9414846a12.1
        for <devicetree@vger.kernel.org>; Sun, 05 Nov 2023 10:30:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699209011; x=1699813811; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1JgzTXBbhRyisUO6sPY7HiShCzr7lEBz4B4CkSwt2k0=;
        b=Bq1183+eJP6JJKDUq0XJmnzL1PtRLN1MyuKMBHe1t2QIONm4xCZedEYg6BMQ7Oask6
         jqczEO9eR5NkGBxImM3PEUow1s76T4lm9IiWqkDuSmKiswYxREpRIIjEEjVtSxgDeknA
         kCETBQWPek2ZPcaNjhn0r58Ft32JpCWgDA5fOAUX86WAogoqxJZMvfbIlIXFDBHgTQPH
         g5gd6m6xEp+EkF93+NvdV3+1O2kOWyEE6HtKYZRPJh9fx9u81FqWvju39VpDaDfWwXM8
         dS1sZIOfvhwUWcOYXtyzLXAQHmy0ne8vmL10f8XCzttxuOZwhUXU9NKKa6vKEfgNDzP9
         HHew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699209011; x=1699813811;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1JgzTXBbhRyisUO6sPY7HiShCzr7lEBz4B4CkSwt2k0=;
        b=VtL0a8UikUnNpgAXWypXi3LAYMhRYdqA+R6+M2darS0xPPW14ZFffHuQsiTcL3AUup
         ubI6e95sAopH4bYmwa1qrIDjrg1hdckjbUG7x0LpdOzhjrPJsfVbHzF98Omw15wp6yqh
         1yo1mIqWgyi0lFMvbfVMNTQ+lGyEx0GEnXjt2VvzoJrTgIqv8N/eLa/BpTnbPLPuoqOu
         HsioPAU0xy5W50BE0tQ6SM5MkVhz0P/nyoDdaoKkF/fy5NqRc6IPjdhtcaDYqSuDZfp9
         H8kjT+dlF46K65di9MWiwZTJgn7d2GK1sceWqPsHPNfhtDSYxCT5PAaUlLVsgJfBED5h
         77SA==
X-Gm-Message-State: AOJu0Yx/TmykSs8uG4vr9kd6szy3BtPWJKdmUhZ5h4rga7Jzah/cgD60
	Kx3ijzLvsoVOHYLCdS+qJmcGpA==
X-Google-Smtp-Source: AGHT+IH4Mi6VdRFQSZCrtAado1C9bPxDJGo6dDICGD5mb7WYKphowKb3Z3RDANWw6ekwGhlIqknMqA==
X-Received: by 2002:a17:906:b84a:b0:9ad:cbc0:9f47 with SMTP id ga10-20020a170906b84a00b009adcbc09f47mr6362645ejb.12.1699209010855;
        Sun, 05 Nov 2023 10:30:10 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id fx2-20020a170906b74200b0099bd7b26639sm3291367ejb.6.2023.11.05.10.30.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Nov 2023 10:30:10 -0800 (PST)
Message-ID: <894de0ea-d532-4bf3-88ae-91c766e703c5@linaro.org>
Date: Sun, 5 Nov 2023 19:30:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: watchdog: nxp,pnx4008-wdt: convert txt to
 yaml
Content-Language: en-US
To: Nik Bune <n2h9z4@gmail.com>, wim@linux-watchdog.org, linux@roeck-us.net,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 skhan@linuxfoundation.org, stigge@antcom.de
Cc: linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231104182813.80055-1-n2h9z4@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231104182813.80055-1-n2h9z4@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 04/11/2023 19:28, Nik Bune wrote:
> Convert txt file to yaml. Add maintainers from git blame. 
> 
> Signed-off-by: Nik Bune <n2h9z4@gmail.com>

Thank you for your patch. There is something to discuss/improve - few nits.


> ---
>  .../bindings/watchdog/nxp,pnx4008-wdt.yaml    | 34 +++++++++++++++++++
>  .../bindings/watchdog/pnx4008-wdt.txt         | 17 ----------
>  2 files changed, 34 insertions(+), 17 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/nxp,pnx4008-wdt.yaml
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/pnx4008-wdt.txt
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/nxp,pnx4008-wdt.yaml b/Documentation/devicetree/bindings/watchdog/nxp,pnx4008-wdt.yaml
> new file mode 100644
> index 000000000000..86b691a339b5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/nxp,pnx4008-wdt.yaml
> @@ -0,0 +1,34 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/watchdog/nxp,pnx4008-wdt.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP PNX watchdog timer
> +
> +allOf:
> +  - $ref: watchdog.yaml#

Put allOf: after maintainers: block. I know that many files do not
follow this convention...

> +
> +maintainers:
> +  - Roland Stigge <stigge@antcom.de>
> +
> +properties:
> +  compatible:
> +    const: nxp,pnx4008-wdt
> +
> +  reg:
> +    maxItems: 1
> +
> +unevaluatedProperties: false

And this goes after required: block.

> +
> +required:
> +  - compatible
> +  - reg
> +
> +examples:
> +  - |
> +    watchdog@4003c000 {
> +        compatible = "nxp,pnx4008-wdt";
> +        reg = <0x4003C000 0x1000>;

Lower-case hex please.

> +        timeout-sec = <10>;
> +    };


Best regards,
Krzysztof


