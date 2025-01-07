Return-Path: <devicetree+bounces-136337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C2285A04D99
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 00:35:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF12A1661F4
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 23:35:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92A691E9B0C;
	Tue,  7 Jan 2025 23:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="cjd0BLYw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AAA91E47CD
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 23:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736292913; cv=none; b=f3BHiUJoHqOpsZYGTy0sp3exrs8zZhaKO0Den0bBbxxc0919fgF0fnrCIHA49AC9ih1sHU7kQQz49kO5tuVEwcuU08rAgvufEEwfbrV8Xehy+9y1Jr300Bm5dQ5qn2aUHZNEMfsBDfHQ+bHDk+1V4g9ebbQnGrr0KQjJYqqsa14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736292913; c=relaxed/simple;
	bh=38u5AZwtgN7nNlI3NnVHXVWBZ15WteFQMmOJE7/zGkA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mbUKYFCaiYAnMK11zv0uSS0bx90YWHH54rqCCP6akDPRM/tkkcPqduIUqxXQSviXsDILw4Aj2GwPV9cQubKCcj3Ox3nU6JJikfOQERQw7LoRt6gsbcYBbWqGnmOrow7DvXVxNtnXmQeTQKCHWj7//rIx0jZzDuAM+lE3JE0xGkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=cjd0BLYw; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-71e10e6a1ceso3199811a34.0
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 15:35:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736292911; x=1736897711; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gyRVb3qwLePvkJYFvWifu9zIvV3WADLkuj3UA1XLNak=;
        b=cjd0BLYw66syZoL+liM6UoGcovNjjHZ5fxCDrcOLiJlE3uxkvuEK2/KYlXUCtEu6Jc
         7xI2dw8tMnY1316M+DWkvDi/7ZP2+b/W9775GpfhsJVvJje/gZxvWIzwQsvJXOwSnV0b
         QeQ6bG7tM5tqcePwIrscJBa4IWZ2XCF2naIUnVlDUGSpikvvqn7dsnkpFYnZ3x48y85N
         dADc/s0tha4aEt4MJ6iYldav2b3Nd2NTWE0q+zb3fBlUp78LVSqJsKJZtPvZPONAzXoe
         oPgaSGnAdYb03mYpA1vEsLyxwnmYU9cCq0SP7+BggqizFPAbThyWLrduke7OIrf6CuBz
         7wEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736292911; x=1736897711;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gyRVb3qwLePvkJYFvWifu9zIvV3WADLkuj3UA1XLNak=;
        b=RgYMQQ9rSltwWEOrNpVtGdIAfZXmMrcKY21vjue2dRRxHKlWtaEp9IoafTv1Wu/nbm
         eGYJMIqkyqivtrj5jnkCmYnzfDkDrSVAKLuer249oCqySAWCK9X99Vj1Xgs5ugsaDkWl
         mHwZWzWBNz/OYcqHP2bsttJ9nMbHPqQCwnniqnw+j/7ORdz8fjt90RRGIJifCMC3zskc
         kYlaaTbNMVwJ13NRikhv/OvvK2KIeiN/jcu+br0/wuRQgzFfa2GcmPh/heKMSa20/a6W
         CCDgbIcGJYCnlfdicXKl76hbgRB4YeGgw91BGJK5zUQKwd+8P9EPBfUikuAQFqEX3N/D
         q6jw==
X-Forwarded-Encrypted: i=1; AJvYcCW3OWhns8NgVSCX1/IU7Xg7TDhhqt1GXrtkssOV4bnnQw6wFXuW9KjUkJ9OpR+H//pVZj4zPyEpKy3d@vger.kernel.org
X-Gm-Message-State: AOJu0YxwTFDwj0zwzdlGHekXxuxDKViM8pHtoAt3TgB8Br+APucb9y7l
	IYE6qFnB0DDwoZtNPvdzOFafWqebWWftWJWQ083X9wptfU6x1HL8M0VNOrS9C+w=
X-Gm-Gg: ASbGnctEPUcLr0jNvgBEsax2RqMuIUOCTHrDLHRcKMmctRHLva5U0tkNpm5+xvyi4JY
	Dr49IsyBosrIKgAEXsQ2TkdJphmJ/NWF/F2bRgoOOhs/fKjFjB1HxAD17gPdhU58B2ERLLFxpt1
	tlJyc0wmGNhED8uwJEBrEi12pFgTGEO/vuZYnAjMoYf5wMSTHMEtRRupgbsZynYRa6z0KFbeRDb
	J1lFACOe0piEdu44ADxnIA7zxEACPtJegfRdomQMxGab3ZHWYNd/pHdzr0y2eb/jCrTgSUH2M+X
	wAe1EwT0m/wdupCFvA==
X-Google-Smtp-Source: AGHT+IGjHkwDEl+hw0YAKs4E01VXgqq6J1vxtL3PC5R8TuiwUehNX5loL0s78UBW9fwMkukB/ysZGQ==
X-Received: by 2002:a05:6830:390a:b0:71e:4ce2:4342 with SMTP id 46e09a7af769-721e2eb1026mr524228a34.19.1736292910702;
        Tue, 07 Jan 2025 15:35:10 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71fc998fc92sm10658656a34.47.2025.01.07.15.35.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2025 15:35:09 -0800 (PST)
Message-ID: <dc7f6461-6fce-4dbd-9be4-f7814053e7dc@baylibre.com>
Date: Tue, 7 Jan 2025 17:35:08 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 01/15] dt-bindings: iio: adc: ad7768-1: add
 synchronization over SPI property
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 marcelo.schmitt1@gmail.com
References: <cover.1736201898.git.Jonathan.Santos@analog.com>
 <bde43579b41199f0c17f07dfacefcb137028e66e.1736201898.git.Jonathan.Santos@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <bde43579b41199f0c17f07dfacefcb137028e66e.1736201898.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/7/25 9:24 AM, Jonathan Santos wrote:
> Add adi,sync-in-spi property to enable synchronization over SPI.
> This should be used in the case when the GPIO cannot provide a
> pulse synchronous with the base MCLK signal.
> 
> User can choose between SPI, GPIO synchronization or neither of them,
> but only if a external pulse can be provided, for example, by another
> device in a multidevice setup.
> 

While we are fixing up these bindings, we could add some more trivial things,
like power supplies.

Also, the interrupt property could use a description since the chip has multiple
output pins. I assume it means the /DRDY pin?

> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---
>  .../bindings/iio/adc/adi,ad7768-1.yaml        | 24 ++++++++++++++++++-
>  1 file changed, 23 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7768-1.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7768-1.yaml
> index 3ce59d4d065f..55cec27bfe60 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7768-1.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7768-1.yaml
> @@ -47,6 +47,15 @@ properties:
>        in any way, for example if the filter decimation rate changes.
>        As the line is active low, it should be marked GPIO_ACTIVE_LOW.
>  
> +  adi,sync-in-spi:

If this is saying that SYNC_OUT is connected to SYNC_IN, then I think the name
should be something like adi,sync-in-sync-out. SPI seems irrelevant here since
we should just be describing how things are wired up, not how it is being used.

But if we also need to consider the case where SYNC_OUT of one chip is connected
to SYNC_IN of another chip, we might want to consider using trigger-source
bindings instead (recently standardized in dtschema).

> +    description:
> +      Enables synchronization of multiple devices over SPI. This property is
> +      used when a signal synchronous to the base MCLK signal cannot be provided
> +      via GPIO. It requires the SYNC_OUT pin to be connected to the SYNC_IN pin
> +      on the ADC. In the case of multiple devices, the SYNC_OUT pin of one device
> +      should be routed to the SYNC_IN pins of the other devices.
> +    type: boolean
> +
>    reset-gpios:
>      maxItems: 1
>  
> @@ -65,7 +74,6 @@ required:
>    - vref-supply
>    - spi-cpol
>    - spi-cpha
> -  - adi,sync-in-gpios
>  
>  patternProperties:
>    "^channel@([0-9]|1[0-5])$":
> @@ -89,6 +97,20 @@ patternProperties:
>  allOf:
>    - $ref: /schemas/spi/spi-peripheral-props.yaml#
>  
> +  # adi,sync-in-gpios and adi,sync-in-spi are mutually exclusive (neither is also valid)
> +  - if:
> +      required:
> +        - adi,sync-in-gpios
> +    then:
> +      properties:
> +        adi,sync-in-spi: false
> +  - if:
> +      required:
> +        - adi,sync-in-spi
> +    then:
> +      properties:
> +        adi,sync-in-gpios: false

I think this can be simplified to using oneOf: to provide XOR validation

> +
>  unevaluatedProperties: false
>  
>  examples:


