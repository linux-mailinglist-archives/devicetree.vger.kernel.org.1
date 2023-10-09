Return-Path: <devicetree+bounces-6877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8837BD5F8
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 10:59:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D4BA2281512
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 08:59:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CEF92F35;
	Mon,  9 Oct 2023 08:59:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RYDbWxfc"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A81DC2569
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 08:59:31 +0000 (UTC)
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 128BFD8
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 01:59:29 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-3296a998234so2429404f8f.2
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 01:59:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696841967; x=1697446767; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4ShYikb9cSe8u3igb5BJ1QIbt5aUV5TPk6yNfqKle5Q=;
        b=RYDbWxfc8eF+fR77fM2IzLzR4uylQvF7s+dJqAogsDJLE1cqzfrk58HZz7RVFwPJe5
         naic847j5DR/864wPbskOjZF7a0CHh0MDqjAiQegSDSqL2P9eP/NTswijlFarBSVOWPy
         aOLve4eGVf3y8UomeUKSudcyMvPEMPq9d7nyzJUbTd4NoQTCeTID8QIbsetAGFQg4uiA
         MPRjWLHnc9JvJUTsk6pH+r9l34GXSCD48dcYKBSk8NXmc+ZgFJmkNhOAwhq2MZj7QiEE
         UzDwsZli4bkgBM3FaW84MffxuHYpJJcUAKiXJGzzT4XCUtpAV1fFDHrlC53u4hw6KGK/
         ZtLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696841967; x=1697446767;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4ShYikb9cSe8u3igb5BJ1QIbt5aUV5TPk6yNfqKle5Q=;
        b=MYMWFq562aCK6xoediVmW6ognPrHG/oLWPdWItSHxMVUAWqLUWoudnrskFlq9rwbxC
         TYIfA76zXfx0U36LlfBs65s0Ujz4o/RSO+SrjGS5isD2ZDRaSHaR09T1RTqvWWScPEZw
         pUFThOxGOyWlVfFvL3u99HfoUxgrJQP3fraWCTDTdevUEO1jl5bSSYVIQrAovDLiXgmo
         o0sCcyCUICwnoHYlQJ87AjCbLq/N1ZH9zMc3/IwlBtLQx6wptTIJxYt8w+4oFdY2KVG6
         GyVQ1G6Hv1aNouiDBQMv/5CK6P/CE8+8lpoxU4Ly4zF+B85z3GgyqWpH6p6ljNjOiM7X
         W7tQ==
X-Gm-Message-State: AOJu0Yz6TcDdJ0p3ag+H0ZBAYuXyuuDfChjeVW7OBlk4XSkdFZHkx/lZ
	cji94181zL6tVjKVzG31hxJX8VghQt1FwaZfPqQ=
X-Google-Smtp-Source: AGHT+IFQWMber2vVYCdoBKcy9gb9kS82LDgOz1h5z4rWRSyxHWvKiOJKDS9fe7zCxAkx2bFBRMPh1g==
X-Received: by 2002:a5d:4486:0:b0:321:6bae:f764 with SMTP id j6-20020a5d4486000000b003216baef764mr12765494wrq.23.1696841967452;
        Mon, 09 Oct 2023 01:59:27 -0700 (PDT)
Received: from [192.168.1.197] (5-157-101-10.dyn.eolo.it. [5.157.101.10])
        by smtp.gmail.com with ESMTPSA id q9-20020adfcd89000000b00317f70240afsm8893294wrj.27.2023.10.09.01.59.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Oct 2023 01:59:26 -0700 (PDT)
Message-ID: <2064318a-ffbb-4268-b6f3-2a8546984925@linaro.org>
Date: Mon, 9 Oct 2023 10:59:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: watchdog: da9062-wdt: convert txt to yaml
Content-Language: en-US
To: Nik Bune <n2h9z4@gmail.com>, wim@linux-watchdog.org, linux@roeck-us.net,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 skhan@linuxfoundation.org, stwiss.opensource@diasemi.com
Cc: linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231006111104.11105-1-n2h9z4@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231006111104.11105-1-n2h9z4@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 06/10/2023 13:11, Nik Bune wrote:
> Convert txt file to yaml.

Please mention changes done during conversion with justification (e.g.
adding reg already used by something).

> 

...

> diff --git a/Documentation/devicetree/bindings/watchdog/da9062-wdt.yaml b/Documentation/devicetree/bindings/watchdog/da9062-wdt.yaml
> new file mode 100644
> index 000000000000..9911cc3068cf
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/da9062-wdt.yaml

Filename based on compatible, so:
dlg,da9062-watchdog.yaml


> @@ -0,0 +1,52 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/watchdog/da9062-wdt.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Dialog Semiconductor DA9062/61 Watchdog Timer
> +
> +maintainers:
> +  - Steve Twiss <stwiss.opensource@diasemi.com>
> +
> +allOf:
> +  - $ref: watchdog.yaml#
> +
> +properties:
> +  compatible:
> +    enum: 
> +      - dlg,da9061-watchdog
> +      - dlg,da9062-watchdog
> +
> +  reg:
> +    maxItems: 1
> +
> +  dlg,use-sw-pm:
> +    type: boolean
> +    description: >

No need for >

> +      Add this property to disable the watchdog during suspend.
> +      Only use this option if you can't use the watchdog automatic suspend
> +      function during a suspend (see register CONTROL_B).
> +  
> +  dlg,wdt-sd:
> +    type: boolean
> +    description: >

No need for >

> +      Set what happens on watchdog timeout. If this bit is set the
> +      watchdog timeout triggers SHUTDOWN, if cleared the watchdog triggers
> +      POWERDOWN. Can be 0 or 1. Only use this option if you want to change the
> +      default chip's OTP setting for WATCHDOG_SD bit. If this property is NOT
> +      set the WATCHDOG_SD bit and on timeout watchdog behavior will match the
> +      chip's OTP settings.
> +
> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    watchdog@fffffd00 {
> +      compatible = "dlg,da9062-watchdog";
> +      reg = <0xfffffd00 0x10>;

It's nice to add here some properties to make example complete.

> +    };

Best regards,
Krzysztof


