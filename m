Return-Path: <devicetree+bounces-22224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A089806D7E
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 12:10:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 17ACD1F211F2
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 11:10:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAB4C31598;
	Wed,  6 Dec 2023 11:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MQNY2Qrh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 249961A2
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 03:10:20 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-a1e116f2072so16448066b.0
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 03:10:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701861018; x=1702465818; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vLZuJpf6TZUfQI5IaI4gkbPlIAbKt/Dduks4Ejr5adY=;
        b=MQNY2QrhiJjtEYxM6HUoQggM5xQ8RNHOOM5EL+CULWCmL7F0q1RxLHkUe3q4xp6e9S
         /9H3pfPvUZv+Zgu76W1QSvY0unDpHF/yRcQujNpLEThiXDcND7EjEiGVaHy5eUcO4RRG
         ZLoQjb8lBwVuuMMaRV/NBqkyrL1+jQJjyt/w1ao2qmvg7hI+yGOV8tVJBjurqGI/ac3A
         mt0NFS7tmPRs70/r9PKDGQSuSSVrtjmVQTXU6Vcp2ztxDnr6mTG6ScLY71FqQg4QrosO
         AOUm0wuHJ/jqWDwAGFi9yKIjk4SiDRTR2Qj8jVbLW/Db6ZnI1rKPLmp4+WZ9zb/HZsdF
         7Rfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701861018; x=1702465818;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vLZuJpf6TZUfQI5IaI4gkbPlIAbKt/Dduks4Ejr5adY=;
        b=glfk2ecXeImcIy3C8l8EOcGJHeWpNDdoYyGO/P6vNFfIAho1W+7QApUYW8l4n5cMAv
         HBRojFygfJM0W0RuCUD6EOQpR2mpZk0e//ibBwp98P3EBasS7WRUYIkNCrY4NRNzGb3q
         NAZVSnzxFh3aHbxbCWUpr5RbgjKG54FXon1kpzBEFyV3dtxTCsTvlI9wqrxxKcpRUQJR
         HpLAF7JeoWo+23CLBwkGkyNjPkLNM2YiYT7BUgC15J5t2h6W9VlK60hA1TzXUBcSPl85
         LsCibPBHGVlQHaAINO6QpBXr0ppD1maPCtlEXvIoZVF4jmBplvnJH4AsiMaPVWZ3JoNC
         Fj7w==
X-Gm-Message-State: AOJu0YwqxBHJZRCmU7P5dvQKwQGY4Ub5BJU61Ua+OCxZpB2M+mgqOn4j
	7JgAqCGbATgNIH8p0HnFzxzrgOs4JEXxgUxbUOw=
X-Google-Smtp-Source: AGHT+IHsN5FkWcTNrv4m1t3Lihnd0GLHwx0X51FkuquXzQAq8+Qf8QVqD+63Bp+cfrW4cG9NuZoCAQ==
X-Received: by 2002:a17:906:2088:b0:a1e:4b3:2a6d with SMTP id 8-20020a170906208800b00a1e04b32a6dmr238180ejq.30.1701861018391;
        Wed, 06 Dec 2023 03:10:18 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id sa12-20020a1709076d0c00b00a0a5a794575sm8086693ejc.216.2023.12.06.03.10.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Dec 2023 03:10:18 -0800 (PST)
Message-ID: <e63906cf-9f76-4fed-91b0-1a9168b179bd@linaro.org>
Date: Wed, 6 Dec 2023 12:10:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] memory: brcmstb_dpfe: support DPFE API v4
Content-Language: en-US
To: Markus Mayer <mmayer@broadcom.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20231205184741.3092376-1-mmayer@broadcom.com>
 <20231205184741.3092376-4-mmayer@broadcom.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231205184741.3092376-4-mmayer@broadcom.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/12/2023 19:47, Markus Mayer wrote:
> Add support for version 4 of the DPFE API. This new version is largely
> identical to version 3. The main difference is that all commands now
> take the MHS version number as the first argument. Any other arguments
> have been pushed down by one (i.e. what used to be arg0 in v3 is arg1 in
> v4).
> 
> Signed-off-by: Markus Mayer <mmayer@broadcom.com>
> ---

...

> +
>  static const char *get_error_text(unsigned int i)
>  {
>  	static const char * const error_text[] = {
> @@ -929,8 +954,12 @@ static const struct of_device_id brcmstb_dpfe_of_match[] = {
>  	{ .compatible = "brcm,dpfe-cpu-v1", .data = &dpfe_api_old_v2 },
>  	{ .compatible = "brcm,dpfe-cpu-v2", .data = &dpfe_api_new_v2 },
>  	{ .compatible = "brcm,dpfe-cpu-v3", .data = &dpfe_api_v3 },
> +	{ .compatible = "brcm,dpfe-cpu-v4", .data = &dpfe_api_v4 },
>  

No, use SoC specific compatible.

Best regards,
Krzysztof


