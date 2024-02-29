Return-Path: <devicetree+bounces-47308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A90186CC01
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 15:50:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CD1581F21308
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 14:50:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F672137747;
	Thu, 29 Feb 2024 14:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KL4iNqGu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B18913774E
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 14:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709218165; cv=none; b=fgrdCpsj+YMgUiSDyJxes7U2KqJ0DOQ7pE/vD2s5bdjhdMpN0NM0+T6CqdUyvUXdb4qKNEFfJClr3Gor74VRsnPc6uKc9DzCWKnz96NzIDZRgKsLEAYqDjzWETV7a7lLll5tWc2rwVL84b5H0dlQWXJw6H8FU6NLauabon0+0so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709218165; c=relaxed/simple;
	bh=GViMnL50GchptpANlTzi5YnZjVuIK8J7/2kEV7Nci5s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bSuHt60rW80PwW6v/C7QjFVMD+GFVCdsvMyF80kLnLBCrdKhu/8ywqJKNzNlTUKit1atnX5a1X+5zMSek7L95AyuElv8D+hTeaKNZl04iFNvDoFq230kOu3plLgyB02752Q01TdTpFf5We1pXetkdeUmRkE6SLBTdrsYor7jJ90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KL4iNqGu; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a3e7f7b3d95so151710966b.3
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 06:49:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709218162; x=1709822962; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AJ4Qksumo/xvPjCbp2pF2caHliNc3PEV2t+qzAnNalM=;
        b=KL4iNqGuhPLd5on3l0OxC6XCzZCmjTDGtKb3MkegT4OxwUtP7jae51Zdm5RQzaJKMX
         TV8GJFfYGZmvd8kKcx432pEdXUFhuKusorbKZ2yIIMnO3X4Kj1jZOEOj/sc7QXjsRUsV
         QY+edMAyUt8AkPFe+Yg5ECNFOPyRnXem732AbDQ8waOt9zpuJhLvNc2DOQkKZF7VQ1w2
         P7ca3Cp83eepa17puHSsMgnZxIAKIiMEhXHwuIqeQFaRBQmusPHpF3UZCEsKyvCOXCMa
         AuKU8GB3Wjxuy4x/KIoyAYL75Qe7ibzDqLLb0IsvH+4hJI51WNIQYxDA8iDAwzq39mCK
         HZ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709218162; x=1709822962;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AJ4Qksumo/xvPjCbp2pF2caHliNc3PEV2t+qzAnNalM=;
        b=jjAmYHgTC+01G68+Jouuu1UrpGW9q0CPGYGVA/xhAtxngbf1Ixz8mZychRZAQUG+Di
         oFA1NUqD7wmZXVixh4cC+heOp1xHSUyqL5/QSMxqIGDGc7Sp9hKO3XwYkmWl+7vjCjEP
         9z8jn9bBMioiSnFeHCq3RKae22LCnOLnzlJmjVeVFylrwuA/qttHIcb7X+2lqiRF/3Ng
         sUnz9qAy48nZEJMumGdKH6GIow/ZIwTt26DazGwdl9pvYgYKqBLxIOnDtrXGD27QWqfM
         VeS+sMhPK4dBiDoGtoDArz16WSvVuoWBWHt648V3KVC3wyavq6xHWZ8hZhyj3EOlIkQa
         yF8w==
X-Forwarded-Encrypted: i=1; AJvYcCUWo/k/qwve9dhsDwhvdVVsh3vCHpJvr9NzWNLkSSVNTzfRE8v7/F9pFLAS0E8OB2bPqaW5ET5WD/YiDNNN6RBxsb4AINn6bmcchA==
X-Gm-Message-State: AOJu0YwEAlmilw1QpS+sk39nxcee+UX2/ou2JJu7+BqPJtodLuxm9Q9j
	c79vvjWWQWUYwtq2XIr67cPdeQhtGRxX3XRbwSFxrnYiUltVC/lGZGmN5bZlkss=
X-Google-Smtp-Source: AGHT+IEnmd1krk6WuS3AgVul4BPmC1P7LoXon6Hp4B7iI8nBnXDQ+3DMGWoTAJC0cGvexnfWVHjQHA==
X-Received: by 2002:a17:906:4914:b0:a43:af0b:ec31 with SMTP id b20-20020a170906491400b00a43af0bec31mr1771533ejq.53.1709218161966;
        Thu, 29 Feb 2024 06:49:21 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id jg29-20020a170907971d00b00a4412406741sm749113ejc.131.2024.02.29.06.49.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Feb 2024 06:49:21 -0800 (PST)
Message-ID: <9f3e461a-0b79-470f-b599-bba45cda006a@linaro.org>
Date: Thu, 29 Feb 2024 15:49:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: adc: ad7173: add support for
 additional models
Content-Language: en-US
To: Dumitru Ceclan <mitrutzceclan@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, David Lechner <dlechner@baylibre.com>,
 Ceclan Dumitru <dumitru.ceclan@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240228135532.30761-1-mitrutzceclan@gmail.com>
 <20240228135532.30761-2-mitrutzceclan@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240228135532.30761-2-mitrutzceclan@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/02/2024 14:54, Dumitru Ceclan wrote:
> Add support for: AD7172-2, AD7175-8, AD7177-2.
> AD7172-4 does not feature an internal reference, check for external
>  reference presence.
> 
> Signed-off-by: Dumitru Ceclan <mitrutzceclan@gmail.com>
> ---
>  .../bindings/iio/adc/adi,ad7173.yaml          | 39 +++++++++++++++++--
>  1 file changed, 36 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml
> index 36f16a325bc5..7b5bb839fc3e 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml

There is no such file in next-20240229.

> @@ -21,17 +21,23 @@ description: |
>  
>    Datasheets for supported chips:
>      https://www.analog.com/media/en/technical-documentation/data-sheets/AD7172-2.pdf
> +    https://www.analog.com/media/en/technical-documentation/data-sheets/AD7172-4.pdf
>      https://www.analog.com/media/en/technical-documentation/data-sheets/AD7173-8.pdf
>      https://www.analog.com/media/en/technical-documentation/data-sheets/AD7175-2.pdf
> +    https://www.analog.com/media/en/technical-documentation/data-sheets/AD7175-8.pdf
>      https://www.analog.com/media/en/technical-documentation/data-sheets/AD7176-2.pdf
> +    https://www.analog.com/media/en/technical-documentation/data-sheets/AD7177-2.pdf
>  
>  properties:
>    compatible:
>      enum:
>        - adi,ad7172-2
> +      - adi,ad7172-4
>        - adi,ad7173-8
>        - adi,ad7175-2
> +      - adi,ad7175-8
>        - adi,ad7176-2
> +      - adi,ad7177-2
>  
>    reg:
>      maxItems: 1
> @@ -136,8 +142,10 @@ patternProperties:
>            refout-avss: REFOUT/AVSS (Internal reference)
>            avdd       : AVDD  /AVSS
>  
> -          External reference ref2 only available on ad7173-8.
> -          If not specified, internal reference used.
> +          External reference ref2 only available on ad7173-8 and ad7172-4.
> +          Internal reference refout-avss not available on ad7172-4.
> +
> +          If not specified, internal reference used (if available).
>          $ref: /schemas/types.yaml#/definitions/string
>          enum:
>            - vref
> @@ -157,12 +165,15 @@ required:
>  allOf:
>    - $ref: /schemas/spi/spi-peripheral-props.yaml#
>  
> +  # Only ad7172-4 and ad7173-8 support vref2
>    - if:
>        properties:
>          compatible:
>            not:
>              contains:
> -              const: adi,ad7173-8
> +              anyOf:

That's enum... or you want to make something more complicated because I
see there not:...

> +                - const: adi,ad7172-4
> +                - const: adi,ad7173-8
>      then:
>        properties:
>          vref2-supply: false
> @@ -177,6 +188,28 @@ allOf:
>              reg:
>                maximum: 3
>  
> +  # Model ad7172-4 does not support internal reference
> +  #  mandatory to have an external reference
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: adi,ad7172-4
> +    then:
> +      patternProperties:
> +        "^channel@[0-9a-f]$":
> +          properties:
> +            adi,reference-select:
> +              enum:
> +                - vref
> +                - vref2
> +                - avdd
> +          required:
> +            - adi,reference-select

Are you defining properties here? I cannot verify because this file does
not exist in next.

> +      oneOf:
> +        - required: [vref2-supply]
> +        - required: [vref-supply]


Best regards,
Krzysztof


