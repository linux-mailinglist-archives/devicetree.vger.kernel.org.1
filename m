Return-Path: <devicetree+bounces-59293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 990CE8A49BA
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 10:04:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C9D881C235B8
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 08:04:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4707A2D054;
	Mon, 15 Apr 2024 08:04:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lbSLJUK2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6F3637719
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 08:04:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713168255; cv=none; b=kD4kbEZRfUThmEFv9po+EMlSMi6wb7MXBc0igtUZ4p64QAF6QjCIPDouAPBrQ+KN+7NlfZRRkhEkyITSR41+L+7Awe8DKmD115D6bKJX0c9Nve8GpCbV6wTqMssxZPNUv7K3S4zbyuRTwW/YCl1OwLQ/1j+Hl35/jLBAU96jSSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713168255; c=relaxed/simple;
	bh=UiNTy/XwQFjuHdHX/PXrqr/7gdd3eNWdYnpHroTPiKg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fq+z7pzXmZ2x3SLw0gsysFpao0feeecQqf2/xoPjNBB3c6aDxB7ltLhlV2aUMWcUb88ncXhWs0z+SXnE1q+aroSjqgr1w7S//25NUiGXzjVVEzLFWWbGFVqsOBkoaw7Xpb9mjoZwRuwB3Qm2qf8LI4Y73vAhiqSOmTtHW7PRZFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lbSLJUK2; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a51ddc783e3so342065966b.0
        for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 01:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713168250; x=1713773050; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Wo/Ov/gBkdZgWyMrIJS5//z4aGUdM8HoDmUePeCASCE=;
        b=lbSLJUK2g/tNvnWuxE00430IJWvnS6kQZnSUYYNqbEenxWSMpxqzXLH/fZoVhE7O4S
         mgMnR8Snn1kAAaenXjTo+NQhqtul8cbLdvC9YvCbp39vDojgW57BUh/tknLAe1GvSZgx
         tVKeli8rQ5/j6II1+7UBgQJMeMrdbLnyk0QyQeF0g3wIIHegnnujJ4UtsGAiIxUqlD3Y
         yE0I71d8gfqge849WKMKynYWnMPC0b7CS4DclSxikh9e20Ic+GbiWSLf+5XW3coh7EbF
         NruzHfCVbRnUxtlTZbDvHigxxNN5xjsigx0sPGPq00Hhs5aP266QiiOsv1KWskONOtKH
         Hn7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713168250; x=1713773050;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wo/Ov/gBkdZgWyMrIJS5//z4aGUdM8HoDmUePeCASCE=;
        b=FOsaJlyUANTXS98kn16OTPQURgLNy7Vig846xZ/F3FkbE+cMjFb+ozyyX75ihFoZAH
         TaMP8WObnZA5V6lNB/5mYVVHCeUZAXBN1pf6CoFe7OgRbOyUYC5iYUt+6ga2Jzlplvia
         X/0Smd7T5Vu2tFsVyt5ESlsRYfph1OMywWHuH0nKvKosu/Mos/UWG/PlkwNa9q5f1n68
         PobRMgp/0VCqj85yevHYbsvdh/vbi788JiNa4T6NLoEYahLeKcLgi3hgVB8DOgzt8rN6
         1SanK/U7AfAlq8iB0ddvZMM57/fYjbKfh/0zwab5ToWEtrCqoImTYvsxxRZZBYpxdKcN
         eyKw==
X-Forwarded-Encrypted: i=1; AJvYcCV2iea8ws99tc8gUt1BJl5jkObIG6va0mMhFZGVoTPb44L58OMTgvOFu6lFUomdL6kN7uss0SQ1etSAKblXtJzlLQg0anNJ3qjtzw==
X-Gm-Message-State: AOJu0YwcosOMCw5Cg9Ykj5V2zm10iItonyAnwamYbXbuYY/IJCua9QRI
	4SmpmGXvldP/MrFjTzd70tu0NXmuweemE4iyVJC1SFB70Ho905Zerqpk54zNbO8=
X-Google-Smtp-Source: AGHT+IHVldk4+xIRPwEmOh9J1yYwenVSk+L7iaf0VYldevR5MT01e7rR3HVWmGUNHTQFjpvT0HM6nw==
X-Received: by 2002:a17:906:1355:b0:a4e:4278:8a01 with SMTP id x21-20020a170906135500b00a4e42788a01mr5524245ejb.11.1713168250025;
        Mon, 15 Apr 2024 01:04:10 -0700 (PDT)
Received: from [10.230.170.72] (46-253-189-43.dynamic.monzoon.net. [46.253.189.43])
        by smtp.gmail.com with ESMTPSA id mm10-20020a170906cc4a00b00a524531a580sm3205855ejb.152.2024.04.15.01.04.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Apr 2024 01:04:09 -0700 (PDT)
Message-ID: <7396c6d4-878f-4b07-9b7f-bc793bebe4bd@linaro.org>
Date: Mon, 15 Apr 2024 10:04:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] dt-bindings: thermal: loongson,ls2k-thermal: Fix
 incorrect compatible definition
To: Binbin Zhou <zhoubinbin@loongson.cn>, Binbin Zhou
 <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Amit Kucheria
 <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Huacai Chen <chenhuacai@kernel.org>, loongson-kernel@lists.loongnix.cn,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 Yinbo Zhu <zhuyinbo@loongson.cn>, WANG Xuerui <git@xen0n.name>,
 loongarch@lists.linux.dev
References: <cover.1713147645.git.zhoubinbin@loongson.cn>
 <9d2132d4713321a83cdeef3cdc8887b7d39340e6.1713147645.git.zhoubinbin@loongson.cn>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <9d2132d4713321a83cdeef3cdc8887b7d39340e6.1713147645.git.zhoubinbin@loongson.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 15/04/2024 04:31, Binbin Zhou wrote:
> The temperature output register of the Loongson-2K2000 is defined in the
> chip configuration domain, which is different from the Loongson-2K1000,
> so it can't be fallbacked.
> 
> We need to use two groups of registers to describe it: the first group
> is the high and low temperature threshold setting register; the second
> group is the temperature output register.
> 
> It is true that this fix will cause ABI corruption, but it is necessary
> otherwise the Loongson-2K2000 temperature sensor will not work properly.
> 
> Fixes: 72684d99a854 ("thermal: dt-bindings: add loongson-2 thermal")
> Cc: Yinbo Zhu <zhuyinbo@loongson.cn>
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  .../thermal/loongson,ls2k-thermal.yaml        | 23 +++++++++++++++++--
>  1 file changed, 21 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/thermal/loongson,ls2k-thermal.yaml b/Documentation/devicetree/bindings/thermal/loongson,ls2k-thermal.yaml
> index 9748a479dcd4..fac6f64d6c67 100644
> --- a/Documentation/devicetree/bindings/thermal/loongson,ls2k-thermal.yaml
> +++ b/Documentation/devicetree/bindings/thermal/loongson,ls2k-thermal.yaml
> @@ -18,14 +18,15 @@ properties:
>      oneOf:
>        - enum:
>            - loongson,ls2k1000-thermal
> +          - loongson,ls2k2000-thermal
>        - items:
>            - enum:
>                - loongson,ls2k0500-thermal
> -              - loongson,ls2k2000-thermal
>            - const: loongson,ls2k1000-thermal
>  
>    reg:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2
>  
>    interrupts:
>      maxItems: 1
> @@ -41,6 +42,24 @@ required:
>  
>  unevaluatedProperties: false
>  
> +if:

This goes before unevaluatedProperties, just like in example schema.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Best regards,
Krzysztof


