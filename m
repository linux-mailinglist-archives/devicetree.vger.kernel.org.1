Return-Path: <devicetree+bounces-126297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F396B9E0EDB
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 23:21:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B6987165512
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 22:21:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 340C51DF97A;
	Mon,  2 Dec 2024 22:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="MNnX0H/w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 658E71D9A60
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 22:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733178099; cv=none; b=JwcIzgnG1Wr3jQRzds3DDGxN1FqdFb1hElprnpOWp+CE7KFezfAoOesYZCCOLT/dIeokzvDAGiGX7qFSuEFGT4StxTlXexUNgOV0T2uyyAIBW73NlcXl4hVX7PC6LILXofCWzV9Rf+fyFTPj8ZrcmIOe4+qKRJikZQ57AKsTpbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733178099; c=relaxed/simple;
	bh=K6qdGsv9rncddp1uJyfOLr9w0wJrOROqBbZo+QJHdBc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NuK8YE9JBWCEP3ATz+Y1As6AG4b5ikxD3sv6GcPxu/+NFDsdX8EGKVxpTBxAfFVKKWEI+RgLanmD8Bsz+jm/e9wXNAzNbn9npsYxSvLlvdpwRoBsOClVR+Bh6NUXKQrv0/mXvLEfFmGEOSAJ7/SsG36v7PF0Q6oTZusXhOJ6xn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=MNnX0H/w; arc=none smtp.client-ip=209.85.167.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3ea55e95d0fso2416018b6e.2
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 14:21:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733178094; x=1733782894; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L7JPQc1khf/GUJg+4Lfme601MXC/XRn+qWK7wBatyTg=;
        b=MNnX0H/wy2D+OzxY8Qy9q+psJasaF3+h7GNMgGOvUBk3ABQoZPnlZu/fwxRkgzRmjP
         yGmKs2+Bje/gB8smjlXl2T/4oO5MfZWH9xXanG2kw5B3upXOcQ8JiQwyAO2V2hRqhhts
         puHkmITOzgwJfJSwBfJw5/goDHSrWs1e5C6FUysW15w/Nxrcxy8cWvFqDXzToOO3jadW
         Nxw1KODpJJ8K4X/19eXekHFQT6D77b1n7725re1MDr5psJIGGSFU9OuSvAs83P1RdlC6
         Z0vzgrFTx4aG+biKHkhiBGJbKfykLEbu07L4RN0F4KDBgtXE2mW8SmgdQfxchgQ/UzNh
         ullw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733178094; x=1733782894;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L7JPQc1khf/GUJg+4Lfme601MXC/XRn+qWK7wBatyTg=;
        b=dA0CbZqszBNqwTd4T9l5vVH9Nza9JOi0F3XtQf6ZWaCNgTdQiZKq7cxyozC47Kp0NW
         UdgLFVFF+jIaNZPUBbjVa/s/38Ba6LlIsVXSsnxSJe+6oLKvGlDimm4zO4Re3APZnAV6
         qZCilCuy+2Aaj2flPsVg6rAjP9dZa4JRNtSe8KtmuFhv12Sjs8cBW89+s8sDHtaTRE1p
         8HJggn/Um64dylMgM3xl+9TBdLHOMTo5jfCRAUEvdCXrSC1L2m1WQXqrGFdz3F0MNNgW
         Mv5UV/H0Ts0AcOx5WDMn9ty+Kh6m7n2sQgRcKPUxZiIa5hrfPvaldPGsNf9T3hKGMDiV
         6gXw==
X-Forwarded-Encrypted: i=1; AJvYcCXmBgKeswKxZkCEfLmHwblSSD2PLZR4jxkUYF3VM/J5Ck6QTZrQ/97S7JAFKQbY2GPCGHZLtxfz/qXd@vger.kernel.org
X-Gm-Message-State: AOJu0YyB0GHUDNy/uFJx3nbIUH3iQXtt/3jWmKw4NKZUuE4+ye/ZiTsB
	yhBh8mVOZ5Dz+ERePrzkjw1aijD+73bbqbqWXxt+4ypRQIG5FBXYN8c9CqUph5Q=
X-Gm-Gg: ASbGnctHvaoQ3z92bgpYgnFLxeSZ1uiNCZ8ksRLrrWoPidaEAbIJ+/81XCuTjVbq1Wh
	XJ2Hpukek0+10aiCa3pcpduR7B/LhAjwsvQBbyVe8Xj6HIw5zcaki3W4T+UWCrA4teolKtCzx5J
	dmNy30mCkyi3avo/TBJGcZZwRWWFpwmrf0yiCZB4Xv2rjrAtLZgr/hE/YHzYp1G5es5rO0rF62Z
	1g3+ocDrreJ+sqaofAupg4/TGkuydvnFNzZmSBRMvKKNpe8ziswO15DchI1tTq4XEh5Slu0ho8L
	ApB6AJHrbEM=
X-Google-Smtp-Source: AGHT+IG3AMQarL4RhG3Os+XmQUKhY9ZiY4GhYh+yf5CUfkRn32xlYB8p450z/FZ5Ke74fWDPV/KDiQ==
X-Received: by 2002:a05:6808:38c9:b0:3ea:6708:51af with SMTP id 5614622812f47-3ea6dc27ff4mr24272753b6e.20.1733178094462;
        Mon, 02 Dec 2024 14:21:34 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3ea8634d733sm2482803b6e.50.2024.12.02.14.21.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2024 14:21:32 -0800 (PST)
Message-ID: <7eadbe02-4f81-42d6-b1c5-932e6bbedb19@baylibre.com>
Date: Mon, 2 Dec 2024 16:21:31 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/3] dt-bindings: iio: adc: ad7192: Add sync gpio
To: Alisa-Dariana Roman <alisadariana@gmail.com>,
 Alisa-Dariana Roman <alisa.roman@analog.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Michael Hennerich <michael.hennerich@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron
 <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
References: <20241128125811.11913-1-alisa.roman@analog.com>
 <20241128125811.11913-3-alisa.roman@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241128125811.11913-3-alisa.roman@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/28/24 6:55 AM, Alisa-Dariana Roman wrote:
> Add support for the SYNC pin GPIO specification in the devicetree
> bindings. This pin allows synchronization of digital filters and analog
> modulators when using multiple devices. Update the examples to
> demonstrate the usage of the new property.
> 
> Also update the interrupt type in the examples to use the proper
> IRQ_TYPE_EDGE_FALLING macro instead of the raw value.
> 
> Signed-off-by: Alisa-Dariana Roman <alisa.roman@analog.com>
> ---
>  .../bindings/iio/adc/adi,ad7192.yaml          | 19 +++++++++++++++++--
>  1 file changed, 17 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7192.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7192.yaml
> index f70caefdace7..1cd0fd13bc42 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7192.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7192.yaml
> @@ -59,6 +59,17 @@ properties:
>    interrupts:
>      maxItems: 1
>  
> +  sync-gpios:
> +    description: |
> +      Optional GPIO spec for the SYNC pin. The SYNC pin allows synchronization
> +      of the digital filters and analog modulators when using multiple AD7192
> +      devices. When SYNC is pulled low, it resets the digital filter nodes,
> +      filter control logic, calibration control logic, and holds the analog
> +      modulator in reset state. Only specify this property if you need to
> +      actively control SYNC for multi-device synchronization, otherwise it
> +      defaults to HIGH.

The datasheet says that the /SYNC pin can also be used to trigger a conversion.
But I'm not sure we really need all this explanation here. The important parts
are that this is a GPIO that is connected to the /SYNC pin and in the
synchronization use case, the same GPIO might be connected to multiple ADC
chips.

> +    maxItems: 1
> +
>    aincom-supply:
>      description: |
>        AINCOM voltage supply. Analog inputs AINx are referenced to this input
> @@ -182,6 +193,8 @@ unevaluatedProperties: false
>  
>  examples:
>    - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
>      spi {
>          #address-cells = <1>;
>          #size-cells = <0>;
> @@ -194,8 +207,9 @@ examples:
>              spi-cpha;
>              clocks = <&ad7192_mclk>;
>              clock-names = "mclk";
> -            interrupts = <25 0x2>;
> +            interrupts = <25 IRQ_TYPE_EDGE_FALLING>;
>              interrupt-parent = <&gpio>;
> +            sync-gpios = <&gpio0 26 GPIO_ACTIVE_HIGH>;

On the schematic, the SYNC pin is marked as active low, so I would
expect GPIO_ACTIVE_LOW here.

>              aincom-supply = <&aincom>;
>              dvdd-supply = <&dvdd>;
>              avdd-supply = <&avdd>;
> @@ -208,6 +222,7 @@ examples:
>          };
>      };
>    - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
>      spi {
>          #address-cells = <1>;
>          #size-cells = <0>;
> @@ -223,7 +238,7 @@ examples:
>              spi-cpol;
>              spi-cpha;
>              #clock-cells = <0>;
> -            interrupts = <25 0x2>;
> +            interrupts = <25 IRQ_TYPE_EDGE_FALLING>;
>              interrupt-parent = <&gpio>;
>              aincom-supply = <&aincom>;
>              dvdd-supply = <&dvdd>;


