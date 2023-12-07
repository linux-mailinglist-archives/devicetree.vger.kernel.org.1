Return-Path: <devicetree+bounces-22743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 919C9808993
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 14:55:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 49CB7282902
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 13:55:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D295940C0B;
	Thu,  7 Dec 2023 13:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sYozApNS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99AADD5E
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 05:54:59 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a1b75f59a12so116469766b.3
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 05:54:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701957298; x=1702562098; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VJ9hXHlrIBM/3jPxvXf6fAHASy5vMq82OUvhHyJRLCk=;
        b=sYozApNSuGX2V5P1lnsKdERkbvTG+4fbpvjriLflLFNluhlMbiLBUsuL8/M0wCilp7
         S0tkEqQ2Mnwp4OQT++CtpyeFE21Ix2qc3ULEpQN0DAwjzZx2ACBMtxihqym9SBeKirH2
         x/e7fSTgZmeXA5XwPBRwQuLESneOsZHCEyD4hX3k4/A4eJN3Cg3CiH/n9fmA9Fu4rgo4
         4WQKFyhGoYNmVvcICSigbCAyoMH2BWe87j2YOEgNbWY94ydIQ56F2/t4+QzfjC771a1+
         ITRPrAxrFzWdOvveyZEqGBV8ZUy06ULhYmwQcFolVB1DO03dMH2FNhC6B1/5+fn/e3jN
         8J4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701957298; x=1702562098;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VJ9hXHlrIBM/3jPxvXf6fAHASy5vMq82OUvhHyJRLCk=;
        b=jClKv7JbqyZf7tmVsQ1peR02PziRCGbv5bAMnUjI88p3BaBjD2RsBc4vF9pvK0/18J
         my95GgyICX7dXCXd8uaY/v1lsXJ7xZnSd3Xz+VTC2yVrDcdPM8upFASXpRFS1qqwiFH+
         0zrjQVu6bsZnLav9Rk7Nj83CI3kVlJlXIgjcgu9BBA484qy3uyaqZt2HyCpyQowOps1H
         AsuqSsbHkni5R5chQXQi1m3y62ejldn833hb7V9osM4G84wH6C64+/q4aGe1iKlIedyx
         +ioY+wxqhl4k1DqLBlGZl4wjVrlkpZyK4f10bgHYBoNqdwAabLKFsxpdWdTpwHVsDAbs
         3mqg==
X-Gm-Message-State: AOJu0Yy9VvGdj4k71SwLGGe+8E/gg+6A7FEP9dCROysiaMIFMIaaKYS+
	/Hy8zWDPK4EnKL2zlk14VAAtkg==
X-Google-Smtp-Source: AGHT+IE2LvaYsytYUpFN0WDUyMB9++h0rWbP9V5eOinvkhD/nT4mKOI0w9aJH5FBDfy6rf5+AQLWNw==
X-Received: by 2002:a17:906:104c:b0:a1d:b924:1044 with SMTP id j12-20020a170906104c00b00a1db9241044mr706249ejj.27.1701957298121;
        Thu, 07 Dec 2023 05:54:58 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id md21-20020a170906ae9500b00a1d18c142eesm860581ejb.59.2023.12.07.05.54.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Dec 2023 05:54:56 -0800 (PST)
Message-ID: <dd22f0fb-e07b-4bd4-bd6a-cf2d8a5687fc@linaro.org>
Date: Thu, 7 Dec 2023 14:54:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: gpio: realtek: Add realtek,rtd-gpio
Content-Language: en-US
To: TY Chang <tychang@realtek.com>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231207100723.15015-1-tychang@realtek.com>
 <20231207100723.15015-2-tychang@realtek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231207100723.15015-2-tychang@realtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 07/12/2023 11:07, TY Chang wrote:
> From: Tzuyi Chang <tychang@realtek.com>
> 
> Add the device tree bindings for the Realtek DHC(Digital Home Center)
> RTD SoCs GPIO controllers.
> 
> Signed-off-by: Tzuyi Chang <tychang@realtek.com>
> ---
> v2 to v3 change:
>     1. Remove generic compatible and use SoC-specific compatible instead.
> v1 to v2 change:
>     1. Add description for DHC RTD SoCs.
>     2. Revise the compatible names.
>     3. Add descriptions for reg and interrupts properties.
> ---
>  .../bindings/gpio/realtek,rtd-gpio.yaml       | 69 +++++++++++++++++++
>  1 file changed, 69 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpio/realtek,rtd-gpio.yaml
> 
> diff --git a/Documentation/devicetree/bindings/gpio/realtek,rtd-gpio.yaml b/Documentation/devicetree/bindings/gpio/realtek,rtd-gpio.yaml
> new file mode 100644
> index 000000000000..984e7dbd322e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/realtek,rtd-gpio.yaml
> @@ -0,0 +1,69 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2023 Realtek Semiconductor Corporation
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpio/realtek,rtd-gpio.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Realtek DHC GPIO controller
> +
> +maintainers:
> +  - Tzuyi Chang <tychang@realtek.com>
> +
> +description:
> +  The GPIO controller is designed for the Realtek DHC (Digital Home Center)
> +  RTD series SoC family, which are high-definition media processor SoCs.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - realtek,rtd1295-misc-gpio
> +      - realtek,rtd1295-iso-gpio
> +      - realtek,rtd1395-iso-gpio
> +      - realtek,rtd1619-iso-gpio
> +      - realtek,rtd1319-iso-gpio
> +      - realtek,rtd1619b-iso-gpio
> +      - realtek,rtd1319d-iso-gpio
> +      - realtek,rtd1315e-iso-gpio

If there is going to be resend, please order this list alphanumerically.

> +
> +  reg:
> +    items:
> +      - description: GPIO controller registers
> +      - description: GPIO interrupt registers
> +

...

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    gpio@100 {
> +      compatible = "realtek,rtd1319d-iso-gpio";
> +      reg = <0x100 0x100>,
> +            <0x000 0x0b0>;

That's odd. Why order is decreasing? Isn't 0x0 the address of the SoC
(soc@0)?

It is, btw, 0x0, not 0x000. The same for 0x0b0 -> 0xb0, unless you want
to pad to full word.

Best regards,
Krzysztof


