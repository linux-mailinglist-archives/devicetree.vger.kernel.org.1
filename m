Return-Path: <devicetree+bounces-14952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A84E7E7A10
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 09:22:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9D3271C20A92
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 08:22:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B78C79FF;
	Fri, 10 Nov 2023 08:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c6UY0Euu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC48ECA73
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 08:22:51 +0000 (UTC)
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAE2F93F8
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 00:22:48 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-32ddfb38c02so1024398f8f.3
        for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 00:22:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699604567; x=1700209367; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aTIVXLLK4q+pbouuuJtCigGeTWAA7e0+2f78H2x4G6Q=;
        b=c6UY0Euu8BVdPIZ0cV2PAfO7a3QrXKFSl6is5Zccu+x42EjR7kI/cLEYKQZtRPKwsS
         nmQKBqzwoQjyROYFffI/38PXFC/tMZHq8X5NwJa56b+uOP6dv4QpKcyBfPa5LzYw4NDY
         EvlNtmzyj37KsHVskbWcFPqHZQilgpYkLVlI0C/zrfou3aq6FnPnYntmLQRezi746TjH
         O2tBdzZObvPOMGpT7dB1qNRzEJRmBCzqX7vp2cjH/YHi8gFiEQfEETFxIfTPPBK8Twjr
         hQmyEUT0faPZ2eIxFwaOHh6AS/Xe4mfHi6Mze7P5INaK4p0UbVBWURfjjajS0I65ygx7
         yG5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699604567; x=1700209367;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aTIVXLLK4q+pbouuuJtCigGeTWAA7e0+2f78H2x4G6Q=;
        b=dM6SjQe9b9YZWq83JhB3t7RuQYh+y5AEXqUFWP5H0Kuifw1eUh7EZBltVIyKykNRo0
         Pq5niwcrgKuo/MuqPdw9Y1OM0zq+4APSSD22XDSPrJ6htNZJ+FzcPEVI9XAQVJ/cQoCv
         QcHUjaGByRqBgULuMUcQACmE3kSs61kBUK3JbN2c4PBWCwwIC8n4fheLpX99NRxdpmyy
         dLkj4UMWzpgDtG7wNC33D4Dy0QYbmPshAHjQXNkkn564Ia8fbcPTqVasmpkpL1Zhc+ZR
         wMCNjpHLizvopIYdDX0gasxUAJTY/3THsFD9qzu8OpyyQcsgInElniumqtW3xm+b1HAC
         5lhA==
X-Gm-Message-State: AOJu0YxykCle3FOssZFkOEyuvc6fd12HxyoEyX5qpmVJYF2C2mn+OggB
	zYtZvROdErgrNRTDUTpEizD5eQ==
X-Google-Smtp-Source: AGHT+IEJyqQ6B+o/tdaTdgQvnL6xgowMj5vmNkDs1Cwym+vefMYuKYGkJXo1eeyt8IRz8riAiA7/MQ==
X-Received: by 2002:a5d:598d:0:b0:32f:811f:5046 with SMTP id n13-20020a5d598d000000b0032f811f5046mr5336044wri.11.1699604567235;
        Fri, 10 Nov 2023 00:22:47 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id t12-20020a5d49cc000000b0032710f5584fsm1394240wrs.25.2023.11.10.00.22.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Nov 2023 00:22:46 -0800 (PST)
Message-ID: <eede2e04-45e5-46fb-ba00-fec0a7862711@linaro.org>
Date: Fri, 10 Nov 2023 09:22:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/3] dt-bindings: input: microchip,cap11xx: add
 advanced sensitivity settings
Content-Language: en-US
To: Jiri Valek - 2N <jiriv@axis.com>, krzysztof.kozlowski+dt@linaro.org,
 dmitry.torokhov@gmail.com
Cc: devicetree@vger.kernel.org, linux-input@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 u.kleine-koenig@pengutronix.de
References: <20231108155647.1812835-1-jiriv@axis.com>
 <20231108155647.1812835-2-jiriv@axis.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231108155647.1812835-2-jiriv@axis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 08/11/2023 16:56, Jiri Valek - 2N wrote:
> Add support for advanced sensitivity settings and signal guard feature.
> 
> Signed-off-by: Jiri Valek - 2N <jiriv@axis.com>
> ---
>  .../bindings/input/microchip,cap11xx.yaml     | 76 ++++++++++++++++++-
>  1 file changed, 73 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml b/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml
> index 5b5d4f7d3482..aa97702c43ef 100644
> --- a/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml
> +++ b/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml
> @@ -45,13 +45,13 @@ properties:
>        Enables the Linux input system's autorepeat feature on the input device.
>  
>    linux,keycodes:
> -    minItems: 6
> -    maxItems: 6
> +    minItems: 3
> +    maxItems: 8
>      description: |
>        Specifies an array of numeric keycode values to
>        be used for the channels. If this property is
>        omitted, KEY_A, KEY_B, etc are used as defaults.
> -      The array must have exactly six entries.
> +      The number of entries must correspond to the number of channels.
>  
>    microchip,sensor-gain:
>      $ref: /schemas/types.yaml#/definitions/uint32
> @@ -70,6 +70,55 @@ properties:
>        open drain. This property allows using the active
>        high push-pull output.
>  
> +  microchip,sensitivity-delta-sense:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    default: 32
> +    enum: [1, 2, 4, 8, 16, 32, 64, 128]
> +    description:
> +      Optional parameter. Controls the sensitivity multiplier of a touch detection.
> +      At the more sensitive settings, touches are detected for a smaller delta

Which values are more sensitive?

> +      capacitance corresponding to a “lighter” touch.

Looks like you use some non-ASCII characters for ".

> +
> +  microchip,signal-guard:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 3
> +    maxItems: 8
> +    items:
> +      minimum: 0
> +      maximum: 1
> +    description: |
> +      Optional parameter supported only for CAP129x.
> +      0 - off
> +      1 - on
> +      The signal guard isolates the signal from virtual grounds.
> +      If enabled then the behavior of the channel is changed to signal guard.
> +      The number of entries must correspond to the number of channels.
> +
> +  microchip,input-treshold:

typo: threshold

> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 3
> +    maxItems: 8
> +    items:
> +      minimum: 0
> +      maximum: 127
> +    description:
> +      Optional parameter. Specifies the delta threshold that is used to

Drop everywhere the "optional parameter". It's redundant. required:
block tells what is / is not optional.

> +      determine if a touch has been detected.

In what units are the values?

> +      The number of entries must correspond to the number of channels.
> +
> +  microchip,calib-sensitivity:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 3
> +    maxItems: 8
> +    items:
> +      minimum: 1
> +      maximum: 4
> +    description:
> +      Optional parameter supported only for CAP129x. Specifies an array of
> +      numeric values that controls the gain used by the calibration routine to
> +      enable sensor inputs to be more sensitive for proximity detection.

Gain is usually in dB, isn't it?

> +      The number of entries must correspond to the number of channels.
> +
>  patternProperties:
>    "^led@[0-7]$":


Best regards,
Krzysztof


