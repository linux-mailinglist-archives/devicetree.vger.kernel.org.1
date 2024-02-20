Return-Path: <devicetree+bounces-43725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A481085B517
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 09:27:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3372E1F21BA9
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 08:27:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57EB15C91E;
	Tue, 20 Feb 2024 08:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nYcly3aB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43ADD5D74D
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 08:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708417631; cv=none; b=g5Yxt+DzBiGMvZt7fFml9RL7U20azGvj0IaSk6EC0WDigmRRTZt6N/quGKhAMug/FE03x0iLNPYmh8Lg/8NdcrHAlsH7z8FGL2DPDVJ0pvstlU+t3bE/UmaMJ9/eWCO95Kww33ZFzS+rsFvMJaOjZ3f/3/q0MSPZwAm7jvmjxwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708417631; c=relaxed/simple;
	bh=kwcWngYqyX5CbSpe4MupYrA/JAKRDuxWBT615swjwHM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=az8TKYL8SVJLgkcZhSMhLjiLHghv8FOKKWg4VpMMDcptM3obfgiOAzXZQc2cV6YkvzsKuGzTpP1RQbkPtxJUCo8LKwiAcAukou/EdvP9hnhj6U5HgwZWs4wb0I0Xe9HKL5pLctRuRW5GGEviaaABYuCYRfE8Ix4UU0hP9h0v1Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nYcly3aB; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4126ea3b812so2648385e9.2
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 00:27:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708417627; x=1709022427; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LCw/wGGBwxZAIXwywrBdVg7Trl9xRXaC7aK5zxfjDws=;
        b=nYcly3aBH0K/vrx7HF9O7lJfunCx9Bgn0Eawoo+V5HD7LphNlj3Z4owq8qxkU6Zbjd
         nlGmcuiUVjGVxWZKTDKH27c+puAlwVY91mZiircWCKXAkwMXUhveIAvPNjzplDjd59Rt
         6EfFk/tjlmblCR/ai9HUqbkaseNAgp4buavsV1NeaCs0WSBjdypLxbEP0ZnzKs8rn3yb
         09fF27R3xvJOs62Wf5VWirV8zSrGwWKZkub6WOKsft+Z7T1YNgsu8qZB4y+vgZIxA9b0
         ZBC5vTPD023jCN2uc5gaYEF6i2P+7juEXRI6w2t+HuT6xpjsvnxqV0TxPW6VzizwmOqn
         S/xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708417627; x=1709022427;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LCw/wGGBwxZAIXwywrBdVg7Trl9xRXaC7aK5zxfjDws=;
        b=gnYx9J+m2vfHzdcorW1R2hEl7A7EwOv9AAk23EmFNVW90HJ3cSKuMO/CmKH4C9Wa0e
         VU9YEN2+nTVPkT4wFpD5u+9m9N9BVjLyqMGBsBSKs3JBLURZ71DKsMBtizfXmDm3G+KO
         COeZu+qf6AUCiB5eP/rBUn8wiMlNOOrPABAZb3LJs6Gw2xcEu/ToJ1SqJbTzcplWeBcU
         pm41kPM+kYpscAR/KrEL8dUIRkE4WtRudQQfW26NfrAcnl6Nj13Gb1fZ4+XdMm2Sd5G0
         3rLGAOBE3X/vLaD5jpA5bOHAMj5Sd9na4tnn89EPD5IQhmK/rHKAkX6/WrCYLCIVH+hN
         vH4g==
X-Forwarded-Encrypted: i=1; AJvYcCX7cmeGO7tkpWKx4dMrfrBYigUPLblrK3dIwER3DtAd1hpQfl2YNKgIpbI1g1kGyYJVEvsJYCyKzK1e2do3z4eJi/3Hy29E17NE8A==
X-Gm-Message-State: AOJu0YzeKWXINmtPhqy90/FCBo65i+JGIzfC2z6Fg/J6lZaREbQFlfo5
	pwoA/VWanyfPJ3z+9Tf1VVvUvYFcWJk8lhNCtw5c2STx3dH/QXWAExAqu9YipWc=
X-Google-Smtp-Source: AGHT+IFLatSTu/8dGMzCnlY3MTdcpukk01QKrrwl3trfyFtOAOWoWPm/yG26D7CvwzgAsqlMNx2bDw==
X-Received: by 2002:a05:600c:5490:b0:412:1f3f:db39 with SMTP id iv16-20020a05600c549000b004121f3fdb39mr10357045wmb.32.1708417627567;
        Tue, 20 Feb 2024 00:27:07 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id ay23-20020a05600c1e1700b004125ff0b572sm8943595wmb.8.2024.02.20.00.27.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Feb 2024 00:27:07 -0800 (PST)
Message-ID: <0d1dd262-b6dd-4d71-9239-8b0aec8cceff@linaro.org>
Date: Tue, 20 Feb 2024 09:27:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: gpio: Convert Aspeed binding to YAML schema
Content-Language: en-US
To: Andrew Jeffery <andrew@codeconstruct.com.au>, linus.walleij@linaro.org,
 brgl@bgdev.pl
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, joel@jms.id.au, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
References: <20240220052918.742793-1-andrew@codeconstruct.com.au>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240220052918.742793-1-andrew@codeconstruct.com.au>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 20/02/2024 06:29, Andrew Jeffery wrote:
> Squash warnings such as:
> 

Missing subject prefix: aspeed,ast2400-gpio


> ```
> arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-galaxy100.dtb: /ahb/apb@1e600000/gpio@1e780000: failed to match any schema with compatible: ['aspeed,ast2400-gpio']
> ```
> 
> Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>

Thank you for your patch. There is something to discuss/improve.


> ---
>  .../bindings/gpio/aspeed,ast2400-gpio.yaml    | 64 +++++++++++++++++++
>  .../devicetree/bindings/gpio/gpio-aspeed.txt  | 39 -----------
>  2 files changed, 64 insertions(+), 39 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml
>  delete mode 100644 Documentation/devicetree/bindings/gpio/gpio-aspeed.txt
> 
> diff --git a/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml b/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml
> new file mode 100644
> index 000000000000..353c7620013f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/aspeed,ast2400-gpio.yaml
> @@ -0,0 +1,64 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpio/aspeed,ast2400-gpio.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Aspeed GPIO controller
> +
> +maintainers:
> +  - Andrew Jeffery <andrew@codeconstruct.com.au>
> +
> +allOf:
> +  - $ref: /schemas/gpio/gpio.yaml#

From where did you take it? None of the bindings have such code. Start
from recent bindings in given category when writing new ones.

Please drop it.

> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: aspeed,ast2600-gpio
> +    then:
> +      required:
> +        - ngpios

Please put entire allOf: after required: block. That's the convention
when it has something more than $ref, because we still want the most
important parts at the top of the file.

> +
> +properties:
> +  compatible:
> +    enum:
> +      - aspeed,ast2400-gpio
> +      - aspeed,ast2500-gpio
> +      - aspeed,ast2600-gpio
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +    description: The clock to use for debounce timings
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  interrupt-controller: true
> +
> +  "#interrupt-cells":
> +    const: 2
> +

ngpios with some constraints

> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - interrupt-controller
> +  - "#gpio-cells"
> +  - gpio-controller
> +
> +unevaluatedProperties: false

Instead additionalProperties: false.


Best regards,
Krzysztof


