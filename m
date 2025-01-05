Return-Path: <devicetree+bounces-135615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 927A0A018E9
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 10:47:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6B78916290E
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 09:47:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E843824A0;
	Sun,  5 Jan 2025 09:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G94fRsMv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7BF61F5F6
	for <devicetree@vger.kernel.org>; Sun,  5 Jan 2025 09:47:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736070436; cv=none; b=XkKRuHg3MJpEQDhKulqKj9TQrnI8rXOciSQPIUOpiEpgMY7Eh3G3C4YVS2Sb4QfBgHU0YhwJnhrLOSRSl8XFYLHATrPI6HUd+QRZ+Ka/yPIkMImGAupt8ZfyLjlZcBZ0bthjZMR7icIK9jS7tZ5+xWS46gtZ0JLy1enNz1/XyDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736070436; c=relaxed/simple;
	bh=1JWGEgzbhvhAOFmnwwCi0H8c6m1/N169MOJ7IDA1PKk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pw8VMgqCBoDlQTzxV95MJTA5/CPBPn/FiS2HjJsZ/+BljIAy/JwRdmNOUypa73rX9O/epELB0bJOclcCjsT0PBoR+fIp3LLfuUekz1DsMz4JICr1jXsAR2tCsUbu8u4PARIxTJGPzhiZJvbJw5fJx/7QIG3Jwh6Q+cRyp9JamsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=G94fRsMv; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5d3c1f68f1bso2425891a12.3
        for <devicetree@vger.kernel.org>; Sun, 05 Jan 2025 01:47:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736070433; x=1736675233; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=FwWFJk3E2hQKwW/U0+2xxWeFCfb/uwGs2aCzoqUQROA=;
        b=G94fRsMvwj3VAILeCTJLkUmS66qF3J8xsqxbMr8WztG/vkwun7tALdYbXQCJ4tcKeW
         DgB3+Ag+fqjLDRg+OOqANNg28F3gMSXaKVZxHZk6YZb6qSc2SooQ77yT94niEjHsYfkJ
         WEi9CF9Qsmqt66RUnVqWyc7G7iWZNw+S/jWXzKmTM5U/YI+Gw3DWJIr5ASmYL6lSwKOD
         7MnF4cPz0C2/junfezIyu/b3WayXDOqREPqleztkVuDpYyrE7bWvRDDdDnRm3ioblGIU
         CS5eigDcAxXcmRLdAsebIosUyuyziRo20fhf05EE97oXFoZ9FdQY3ANpwUW7wE+05+sS
         1BAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736070433; x=1736675233;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FwWFJk3E2hQKwW/U0+2xxWeFCfb/uwGs2aCzoqUQROA=;
        b=eshoc7oxyff+9sUsUzg+IHtLYsgrrpx/uqrdLXvlRt9aRgciHZST0J2JmMOTfnf4th
         4Kos14wCJbqT1o37DEN8NcRVLZxNa6CAAk1bKmcfVy5V9U3ZW/kiA7z5yZpt7DARspCU
         sn4dcJbtcEx6xJtKp7GSFkCdYXtxPJdb8+zQLzsoBMj9VzVHaNX90mGs2ABOBxYyu0i1
         8BDOXf6SR7uWg8SbtVEEJrYGX8G1UhosCSOCTIIi5YW16VwCSnC7BFSoF05alK9es3dk
         8UqD2T8/cdNJ6AHZpTQHAwoxkg2kCSTNHy3iGb6bRQy87uFLxv7h25DZrGm2x2WDITAZ
         2ZxQ==
X-Forwarded-Encrypted: i=1; AJvYcCV7vHp1OrHlirTh5J4NNDeFYy5qoPiEsV8Ljmd4r2Jmu2Cyr4DptHgQ7ugB5HZsqp2PFA/0vaSNZxgb@vger.kernel.org
X-Gm-Message-State: AOJu0YwJeCqdeYvjC47nbcChO+h3AdHnXRyfmtleBP3n7CuWYwSsG7Kh
	CBizBcGqB46FhFRpMrwOfVjXWgs3eQcszZ1n726gucsrlNr92aMgSlP/weVBn/g=
X-Gm-Gg: ASbGnctlWeWhwez5FKk1hHIIUHt9b2O8aSRAv+6GnuusSp4bmrkjNzQKfIuUni82FC+
	83aVO4k9x+ioWBnmoJwLalqm8d2mDgyymlDeauLD8HJt9NzBNrJ8FM193VgfwAMcX3ZbkMgtXNc
	z/H/I0qNSdLn7eke2BYTmdhW+IMC89syOaN7ZgYavu1Wxrp+c0CoUUL5XidiayQ7oCYXzOpAWYv
	Uh0RhewAIschHcbqaIVWGxvhu0FIWPW2sz10uZP/6VuRg25Xf0PCj1rnH8pAdrwBgtuoVng5l83
X-Google-Smtp-Source: AGHT+IFBAgxEYhPQ8HTOUlchzxxlKiWSC2Pj7X7DaXwcKXltm+3dNqCxGlJWXie/QUbDh3tB7xbT1Q==
X-Received: by 2002:a17:906:3099:b0:aae:83c7:fd4e with SMTP id a640c23a62f3a-aae83c80390mr1497141566b.13.1736070432783;
        Sun, 05 Jan 2025 01:47:12 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0eae71desm2097610566b.89.2025.01.05.01.47.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Jan 2025 01:47:12 -0800 (PST)
Message-ID: <f089027b-6417-4d02-8f8a-24a3ecff74a9@linaro.org>
Date: Sun, 5 Jan 2025 10:47:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/2] arm64: dts: rockchip: Add BigTreeTech CB2 and Pi2
To: Ivan Sergeev <ivan8215145640@gmail.com>, robh@kernel.org
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <D6U1B36JH3HU.WQ8GEL7M3HRW@gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <D6U1B36JH3HU.WQ8GEL7M3HRW@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/01/2025 10:33, Ivan Sergeev wrote:
> Preparing a v5, fixed the phy-supply for usb nodes, but I have questions
> for the other warnings.
> 
>> arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dtb: /i2c@fe5c0000/ns2009@48: failed to match any schema with compatible: ['ti,tsc2007']
>> arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2-manta.dtb: /i2c@fe5c0000/ns2009@48: failed to match any schema with compatible: ['ti,tsc2007']
> 
> Using `grep -r 'ti,tsc2007' Documentation` I can find a schema file for
> that `compatible` value: Documentation/devicetree/bindings/input/touchscreen/tsc2007.txt
> Is it an invalid value or not a proper schema?

It's just not a schema. Warning can be ignored but you can also convert
TXT to schema in separate patch.

> 
>> arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dtb: wireless-bluetooth: uart1-gpios: {'rockchip,pins': [[2, 13, 0, 187]]} is not of type 'array'
>> 	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#
>> arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dtb: touch: touch-gpio: {'rockchip,pins': [[0, 13, 0, 189], [0, 14, 0, 187]]} is not of type 'array'
>> 	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#
>> arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2-manta.dtb: wireless-bluetooth: uart1-gpios: {'rockchip,pins': [[2, 13, 0, 187]]} is not of type 'array'
>> 	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#
>> arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2-manta.dtb: touch: touch-gpio: {'rockchip,pins': [[0, 13, 0, 189], [0, 14, 0, 187]]} is not of type 'array'
>> 	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#
> 
> I don't understand how these nodes differ in structure dcompared to
> other pinctrl nodes. Am I missing somethign taht is causing this
> warning?

Wrong naming. gpio and gpios are only GPIOs, not pinctrl. That's why
your SoC pinctrl schema is supposed to have strict suffix or prefix
naming for such pincfg nodes :/


Best regards,
Krzysztof

