Return-Path: <devicetree+bounces-171127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E2CA9D5E8
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 00:51:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6F1143B61EF
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 22:50:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0684B296172;
	Fri, 25 Apr 2025 22:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ZwUpQbOx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DBB296145
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 22:51:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745621465; cv=none; b=WEGa2YAJESZXh5tDX7UzuVFEIGxoqIR4qb/S4P+NR3vnQblDF5t8UOYqFMZImW1HJd4o5V08Hk4uln+cQIa7aLTVsQgsbAOmG64hlyJDrqgCDM/4Pb58EqGYumSG/IifIlC8iS43lzJL/xsMurtkWLTSgw7X0bwih7B7fUbC1T0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745621465; c=relaxed/simple;
	bh=3Sasc5NlzHSJPJvPhpxiizeSf9Uujmi3R3Jl7ykq338=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Dbjmul2/yve3hWa/TxlCtMPEDuKzAs6FnMaUc2WuUuZRpPZ0GjTQmima8AN676Iyu8Ymc3DsbtKQMVFPZnJpz5aGBCTLOBFWPTRHoGTVMEAxkdv1Ru1YXP0/m0YwnpYjBM/owbKJ6JooB9c6Hlow0YyTz3UsuRndqK0YYlMKqh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ZwUpQbOx; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3feb3f54339so2760835b6e.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 15:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1745621461; x=1746226261; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uvQo2x2sdjed241L/Fl7xm8USCWMlw2PIjAk0qokWCI=;
        b=ZwUpQbOxY8cjSIvtNrZYYTuUUMIpvc7dNrzaHTnOFqtekMm47JMOX8XlPbIVFw8yC3
         3wAutpfu0p4A+Q3357F2+FzCMNPzu8GqwIbl49+OhzrW9EqaUaBw5NlbWfqJs5Lanxny
         IPMKXOKJvZJnGOShSkHX9M4PejPSAOK+rouZ8NpvmvKTp1G6k34CuKdVvY0Pj1gKC4qO
         Ln7fPCZ6s9ytk77T7boHbimno/IJZ7Eb7ATnVuJCLdTVkEYBvbAhxmn8j8VjMsqdFILa
         9XsLQx35G45YsBqWPwsCw/QK9H9oGUb+3vrp0ctivQSrt4K6BkzKnBd8vaS3n+KST73C
         tv0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745621461; x=1746226261;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uvQo2x2sdjed241L/Fl7xm8USCWMlw2PIjAk0qokWCI=;
        b=Yy6z5+KeOAfzMHr2EG48hPg5NNxms+om2npJWX7oF1WC+sQyZgEHdjC+4iGvBYdkLf
         KGPBCVh/N+qL80UoE/ZtdeaS/vsMNQjZDKLCDeauE4+swNg4mje8EexzkLrdabM8vq0R
         /gUgWLUJanwTxGTS52eS88j+MRrfDI7msoYu7IleHBT2+En4vzV9c7SR0XbSFzG5voMm
         T99RK+TkE1PEuzxILqmxc60XvcODKqFfuoi047Y2mBzl5O4AaYgmHAo5uFlehe+XgtjW
         dlx/0d6Ruumwl6Sn/oHkxRAy79pVjFvZl+CR7quH2ALNO5IlYPZv/J8rIgpQcdaI9Esm
         MsPA==
X-Forwarded-Encrypted: i=1; AJvYcCWQnKmGtTb2UXdHjjfKeYIOj5YcFsdc8ilJC70KaU540VI0Y3ir2Q+yL4QdM2ZRrZKs3+acMz6KOqbl@vger.kernel.org
X-Gm-Message-State: AOJu0YwhEw07OW/urURZmVlWNwHqPUAf9r7cEbLsTFYPNNJTZ2LHiYfH
	UUEVKv8hh8FPe0Zp9Nhy1dPl5Iu2cE7Ei/o59mUrch0lPlxxmPnbesg9EAU81ZI=
X-Gm-Gg: ASbGncvgG2yQymxL6jiINT2hW1k7jgx0wfPQylCWWOX1l7lnv2/n/MQW8MoPlMfi2Q8
	1y4ds7fkqTL/cAIY/h/5UzyysiQ08Egz6yd9jFHu9p2AumHWgitMSIAxlWmEykyX5eMtpCJCC1g
	DehZUJFWVbJjhSFsJ3hn+ACJ0szeVBiTpxRWTKdtD/oS96H6PVq1eWHpNCv6kDVijJo0gG6hODF
	vAOd7EvRl4uDDCz60xzniAYN4UYDDBHRuZDh5a495ylZaxhX9u2dTuc8nIh+1EsWlT1ppIkTI1S
	sumR18BORIGlytwngZUb04/EfEIZArikcyVUuXeTg2rxlyDjyPUj3zUfCD8AcSh8wQboTnP/flA
	mDIHvehqZ9cuC
X-Google-Smtp-Source: AGHT+IGf/m/V8+j34YqopUYkV4XXjKnadKwCWf89O5k3xQSZs+EFyVqb9zHH9xJhJfgtnULMGvX75g==
X-Received: by 2002:a05:6808:2745:b0:3fe:f41d:463a with SMTP id 5614622812f47-401f288d0e8mr2181349b6e.10.1745621461133;
        Fri, 25 Apr 2025 15:51:01 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:96a3:e28:3f6:dbac? ([2600:8803:e7e4:1d00:96a3:e28:3f6:dbac])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-401ec8cb1ebsm971268b6e.18.2025.04.25.15.50.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 15:51:00 -0700 (PDT)
Message-ID: <88a326e7-3910-4e02-b4ba-7afe06402871@baylibre.com>
Date: Fri, 25 Apr 2025 17:50:58 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] dt-bindings: iio: adc: Add adi,ad4052
To: Jorge Marques <jorge.marques@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?=
 <ukleinek@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-pwm@vger.kernel.org
References: <20250422-iio-driver-ad4052-v2-0-638af47e9eb3@analog.com>
 <20250422-iio-driver-ad4052-v2-3-638af47e9eb3@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <20250422-iio-driver-ad4052-v2-3-638af47e9eb3@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 4/22/25 6:34 AM, Jorge Marques wrote:
> Add dt-bindings for AD4052 family, devices AD4050/AD4052/AD4056/AD4058,
> low-power with monitor capabilities SAR ADCs.
> Each variant of the family differs in speed and resolution, resulting
> in different scan types and spi word sizes, that are matched by the
> compatible with the chip_info.
> The device contains one input (cnv) and two outputs (gp0, gp1).

Don't need line breaks after every period.

> 
> Signed-off-by: Jorge Marques <jorge.marques@analog.com>
> ---

...

> +  interrupts:
> +    items:
> +      - description: Signal coming from the GP0 pin (threshold).
> +      - description: Signal coming from the GP1 pin (data ready).
> +
> +  interrupt-names:
> +    items:
> +      - const: gp0
> +      - const: gp1
> +
> +  gpio-controller: true
> +
> +  "#gpio-cells":
> +    const: 2
> +    description: |
> +      The first cell is the GPn number: 0 to 1.
> +      The second cell takes standard GPIO flags.
> +
> +  cnv-gpios:
> +    description: The Convert Input (CNV). If omitted, CNV is tied to SPI CS.
> +    maxItems: 1
> +

Assuming the diagram at [1] is correct, for SPI offload use, we are missing:

  #trigger-source-cells:
    const: 2
    description: |
      Output pins used as trigger source.

      Cell 0 defines which pin:
      * 0 = GP0
      * 1 = GP1

      Cell 1 defines the event:
      * 0 = Data ready
      * 1 = Min threshold
      * 2 = Max threshold
      * 3 = Either threshold
      * 4 = Device ready
      * 5 = Device enable
      * 6 = Chop control

Bonus points for adding a header with macros for the arbitrary event values.

And we are missing:

  pwms:
    maxItems: 1
    description: PWM connected to the CNV pin.

[1]: https://analogdevicesinc.github.io/hdl/projects/ad4052_ardz/index.html

> +  spi-max-frequency:
> +    maximum: 62500000

Datasheet Table 5. SPI Timing—ADC Modes, VIO ≥ 3.0 V says period can be 12 ns.

So that would make max frequency 83333333.

...

> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    spi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        adc@0 {
> +            compatible = "adi,ad4052";
> +            reg = <0>;
> +            vdd-supply = <&adc_vdd>;
> +            vio-supply = <&adc_vio>;
> +            spi-max-frequency = <25000000>;
> +
> +            interrupt-parent = <&gpio>;
> +            interrupts = <0 0 IRQ_TYPE_EDGE_RISING>,
> +                         <0 1 IRQ_TYPE_EDGE_FALLING>;
> +            interrupt-names = "gp0", "gp1";
> +            cnv-gpios = <&gpio 2 GPIO_ACTIVE_HIGH>;
> +        };
> +    };

Could be nice to have a 2nd example showing SPI offload usage.


