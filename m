Return-Path: <devicetree+bounces-11826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3857D6C28
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:41:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E761281B49
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:41:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D29D41D694;
	Wed, 25 Oct 2023 12:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wFhSHzMM"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E97EF1D55B
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 12:41:50 +0000 (UTC)
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF47EC1
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 05:41:48 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4083f613275so45389615e9.2
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 05:41:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698237707; x=1698842507; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=EzsMrmIrQl54mPIxxSDK4xAUtyiQUDKzTwD86BWWWjk=;
        b=wFhSHzMMhxP9VqrxfrFw1d+4YcRUIbM6TzBlHB/UqjubN6JXcJltHaobcymn2PUu2C
         YAZHFAndemskexyvVt5RX3ztOTRsuT3p1TgXyqAVtFvQ5OYc7lE7+snllGCZ05IKLpEh
         /Jl6HG09CaY4ytpIwVgkhwIozU7IuCkqL3XO4GSo76Wb/D//LqTfDX7kf2PQZgOKPlX3
         7vc53T80TkdZ7yCjy9GPoUklf/pyJwyr2u/SJzQ2E1OT6jX5N674Y/4YB7uR4B84VHfD
         51tUemR5LFmT09CJUhgmVKw1aZDB8950ZS+D9wNfOtnrrG6d8kG2CLZJuLAYITsbz0nn
         XDzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698237707; x=1698842507;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EzsMrmIrQl54mPIxxSDK4xAUtyiQUDKzTwD86BWWWjk=;
        b=asdcUmea7E1xx5kEYZiwJnroG5kF45kAofYltLXlPTdXu6uehdOZzZmqG2GOoSztHi
         oBjjmEkC12Bhzic7GdMqlSntxvwJy/8K8HZq0jaaGejzdWOsETuZF6QN0YkqIJ6QvFvX
         t9KXvmtGJzm+hHfzSk6IH5B1Ty8HdBPPHFnWy/nG7LIzK9Lgt8KWGfedSXWyEJPx6Bx+
         XJNRWWTjgDlEShXY9zl6ytj9e/RAnF9tPAGgv/n78VFLEguorMmFw8/YL5P8BFN24ZSq
         /1dMBOL5980NxwmtaIY08Duzv0EzvYIkmtnfKnmRcBUTKc9cmEgu8E8beiNR4UtwsF8b
         1WMQ==
X-Gm-Message-State: AOJu0YxDEqnewZRfMpHNoofeMx3AIkLKMIIMpHXYnGK+m9tKR/LPSWIb
	n+bTYEenezh3f0epBlJ6mskFUg==
X-Google-Smtp-Source: AGHT+IFysJxRUYDHnbZvS43poOb2ryo22u3BxMv7+LBcG9n9o8vrWlTssDXpNySZqq051kWA0G3xgA==
X-Received: by 2002:a05:600c:3b9a:b0:406:478e:9e2d with SMTP id n26-20020a05600c3b9a00b00406478e9e2dmr11001765wms.26.1698237707054;
        Wed, 25 Oct 2023 05:41:47 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id r5-20020a056000014500b0032db4825495sm11938013wrx.22.2023.10.25.05.41.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 05:41:45 -0700 (PDT)
Message-ID: <825edbd0-6c72-498a-b05d-473cd835bce9@linaro.org>
Date: Wed, 25 Oct 2023 14:41:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: hwmon: lm87: convert to YAML
To: Li peiyu <579lpy@gmail.com>, jdelvare@suse.com, linux@roeck-us.net,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231025110003.10769-1-579lpy@gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231025110003.10769-1-579lpy@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 25/10/2023 13:00, Li peiyu wrote:
> Convert the lm87 hwmon sensor bindings to DT schema
> 
> Signed-off-by: Li peiyu <579lpy@gmail.com>
> ---

Missing proper patch versioning (git format-patch -v2), missing
changelog, this is not a v1.


>  .../devicetree/bindings/hwmon/lm87.txt        | 30 ----------
>  .../devicetree/bindings/hwmon/lm87.yaml       | 59 +++++++++++++++++++

I don't see my comment addressed.

This is a friendly reminder during the review process.

It seems my previous comments were not fully addressed. Maybe my
feedback got lost between the quotes, maybe you just forgot to apply it.
Please go back to the previous discussion and either implement all
requested changes or keep discussing them.


>  2 files changed, 59 insertions(+), 30 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/hwmon/lm87.txt
>  create mode 100644 Documentation/devicetree/bindings/hwmon/lm87.yaml
> 
> diff --git a/Documentation/devicetree/bindings/hwmon/lm87.txt b/Documentation/devicetree/bindings/hwmon/lm87.txt
> deleted file mode 100644
> index 758ff398b67b..000000000000
> --- a/Documentation/devicetree/bindings/hwmon/lm87.txt
> +++ /dev/null
> @@ -1,30 +0,0 @@
> -*LM87 hwmon sensor.
> -
> -Required properties:
> -- compatible: Should be
> -	"ti,lm87"
> -
> -- reg: I2C address
> -
> -optional properties:
> -- has-temp3: This configures pins 18 and 19 to be used as a second
> -             remote temperature sensing channel. By default the pins
> -             are configured as voltage input pins in0 and in5.
> -
> -- has-in6: When set, pin 5 is configured to be used as voltage input
> -           in6. Otherwise the pin is set as FAN1 input.
> -
> -- has-in7: When set, pin 6 is configured to be used as voltage input
> -           in7. Otherwise the pin is set as FAN2 input.
> -
> -- vcc-supply: a Phandle for the regulator supplying power, can be
> -              configured to measure 5.0V power supply. Default is 3.3V.
> -
> -Example:
> -
> -lm87@2e {
> -	compatible = "ti,lm87";
> -	reg = <0x2e>;
> -	has-temp3;
> -	vcc-supply = <&reg_5v0>;
> -};
> diff --git a/Documentation/devicetree/bindings/hwmon/lm87.yaml b/Documentation/devicetree/bindings/hwmon/lm87.yaml
> new file mode 100644
> index 000000000000..54d6ef6700ef
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/hwmon/lm87.yaml
> @@ -0,0 +1,59 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/hwmon/lm87.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: LM87 hwmon sensor
> +
> +maintainers:
> +  - Jean Delvare <jdelvare@suse.com>
> +  - Guenter Roeck <linux@roeck-us.net>
> +
> +properties:
> +  compatible:
> +    const: ti,lm87
> +
> +  reg:
> +    maxItems: 1
> +
> +  has-temp3:

It does not look like you tested the bindings, at least after quick
look. Please run `make dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).
Maybe you need to update your dtschema and yamllint.

> +    description: |
> +      This configures pins 18 and 19 to be used as a second remote
> +      temperature sensing channel. By default the pins are configured
> +      as voltage input pins in0 and in5.
> +
> +  has-in6:
> +    description: |
> +      When set, pin 5 is configured to be used as voltage input in6.
> +      Otherwise the pin is set as FAN1 input.
> +
> +  has-in7:
> +    description: |
> +      When set, pin 6 is configured to be used as voltage input in7.
> +      Otherwise the pin is set as FAN2 input.
> +
> +  vcc-supply:
> +    description: |
> +      a Phandle for the regulator supplying power, can be configured to
> +      measure 5.0V power supply. Default is 3.3V.
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      lm87@2e {

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation


> +        compatible = "ti,lm87";
> +        reg = <0x2e>;
> +        has-temp3;
> +	vcc-supply = <&reg_5v0>;

Messed indentation. Use 4 spaces for example indentation.



Best regards,
Krzysztof


