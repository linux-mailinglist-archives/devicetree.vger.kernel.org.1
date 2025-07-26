Return-Path: <devicetree+bounces-199897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 03162B12C5E
	for <lists+devicetree@lfdr.de>; Sat, 26 Jul 2025 22:46:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 10C9C7AB501
	for <lists+devicetree@lfdr.de>; Sat, 26 Jul 2025 20:44:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18D742185AC;
	Sat, 26 Jul 2025 20:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="eo8rusya"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5904C1B042E
	for <devicetree@vger.kernel.org>; Sat, 26 Jul 2025 20:46:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753562777; cv=none; b=CIhhGPMxUDRXrHebnJrC8d2mJDuEkWfO0oExnpTo+1RKFOrdqhnqQ5g0TugUuM73SynYF9EjCEi3S6QfCFXbGVcF974I4JOrUUFCAe9cKFtFl9aIKSAVKsL+vXYHW4OmHQofDWuOsjR8kG2G9d1iXrMlw03oEww6vrG28FGyOb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753562777; c=relaxed/simple;
	bh=AgFl8oYApeBrJhPG9hAm6A9ogSmb60gaE3IC/9S0mSM=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:References:
	 In-Reply-To:Content-Type; b=fbVVE3FxXXPFWPyj7q9kCkThXtWIq3r+AzTCLIpyIiIUtJ+ha1bi8m3epWnh44xB6mKmzCzO3/PEjEAhQlJYWWEbFXKlnCJ22DQMdxr3pLohMrxXdhL5LIuEFR3qjdHB2c3/sUyttl3YFXia3MV+++dnUtjWU1DuiB0wqdxegJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=eo8rusya; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-73e65c09828so1517931a34.3
        for <devicetree@vger.kernel.org>; Sat, 26 Jul 2025 13:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1753562774; x=1754167574; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:subject:from:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=adVyS8ykePUpCxVa6P/qJ+4OYY/RJo9Vkh0bwyU9BA4=;
        b=eo8rusyafloyFYiF3i/916Rlbwhgj0y1HsdrGHI4It2dHVim3gORD7FP+qz0cK/PFu
         UZ4GHeDmbvnZI5mPkJpl9MQRi+fwk3iJLbkIqo2d0xq4w/iTdowIpjSXSnmX66X/OtWN
         U0DCXfFS8EqhA8yV/n/L8sropIEMz+yOuo11r8NfbbnI3wRYa4Yfw+kKsgpCcg/YXVTZ
         2U+1KfMCzTjAxbigxbXwNWZjkZJK7SS0pG4uQ+PDk4/eHvmq8eZhTgQ2vD1DevLbM+4Q
         zxD5Xbi2ZuUVlEK0MUzBkNi7LwMvCMhVkC++xO94iAXh92mUbEK2XT3w0WnkwI/qXGNd
         OiZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753562774; x=1754167574;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=adVyS8ykePUpCxVa6P/qJ+4OYY/RJo9Vkh0bwyU9BA4=;
        b=Zwxi3HYGH32UROf985t9a9ijkVy4EllU1gckcrdV80XlF3jwbjVGZT04c4fP8UtfiP
         XVK+iA7wCROPA4TC92HUoGyWzzTCFTNjKZ8hc2NMN8DrsY4jHCXcB01sP3tJuR+hq18f
         iXfOGoBrEaVEhbJ2z5AJ7irIhrz8WJf8jaAlFknAnP2WEu1eOYM7bbVG6CR3/d5xO9R9
         3R9JR14wccIqmk8ji2QtnmLD9OgsuQEwoZY6BLXkZi/fu5ODjvoaGpXvbS0+j+PjnT6B
         tdJzEvTPXZvT+KPKoacIA/srsr6yxYJptR/W9Jxz0aKVJVVfMAuKg749K+Gav/1HzVTa
         tRVQ==
X-Forwarded-Encrypted: i=1; AJvYcCVB1UABi29m6UJW72HLolfVizbxoEZI+mSvAzXRaYGDRuQaaPwJWTNJtI7MCK3+Y5+fWgxtS+uTTD4P@vger.kernel.org
X-Gm-Message-State: AOJu0YwQALBQ2pVTb2aECJJPDCV7pXpYRHNwIvDA8mbh05C6S+phUvSN
	NstFqrS/q72ZaJqnW+H8BKYG/gNxV/prpyPFHM6LgKnos9Mr6toIMHGNbGJhlATlSsg=
X-Gm-Gg: ASbGncubzukVs+pAHw6iNX0DujFu7giyXgEerhcUcfXoagc5duDkY6H19RNtV41Hu1f
	gJvI0TWzCQRjptGweeeTpl0Otc0ZsQD2t4M4VIf6qn3w36JWJO6ooNu+OU+2D1HOhP3ae7zPckM
	sT1/mETYdxKY0NBMAADjLoWYL2HvEEB0ocQEm8v+SUwkKo+SHz0MkC4OYAZ0dW+CkykJOfw7Fos
	YJpLVYPh6K+JkbyjyTu+/mIgtkFqkGlsnU1p/tAIlCFKuwisvbvD0Ul0TcnOweZ/gXZjzGAB5ht
	7VOh804Iv5wjF0y3KelMA8MOGk0UB85UA3WHghGx52Pe3J7GKV4MntKvYp/yEYN/yL+BChecjqz
	kAZAgFcq8jJcYWvQ/QNKftNTtq2q/hheDDHiZm0Lptiw6Tq1OkFhmuEQoFMf7a9A9JBqs7TsP
X-Google-Smtp-Source: AGHT+IH9t28zTolDysbNhdXb23sMoRkURov5APnmp/JHYYlxIDPTMz/ZosJ9ofjYg1FWWz24zqLsng==
X-Received: by 2002:a05:6830:924:b0:73e:9857:9839 with SMTP id 46e09a7af769-7413d96e6a6mr3842789a34.0.1753562774403;
        Sat, 26 Jul 2025 13:46:14 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:63fb:769a:c359:cee? ([2600:8803:e7e4:1d00:63fb:769a:c359:cee])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-74148230156sm445250a34.49.2025.07.26.13.46.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Jul 2025 13:46:12 -0700 (PDT)
Message-ID: <b09d59ed-8bc8-4db4-b758-78e05af399df@baylibre.com>
Date: Sat, 26 Jul 2025 15:46:12 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: David Lechner <dlechner@baylibre.com>
Subject: Re: [PATCH v2 2/5] dt-bindings: iio: adc: add ade9000
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250721112455.23948-1-antoniu.miclaus@analog.com>
 <20250721112455.23948-2-antoniu.miclaus@analog.com>
Content-Language: en-US
In-Reply-To: <20250721112455.23948-2-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 7/21/25 6:24 AM, Antoniu Miclaus wrote:
> Add devicetree bindings support for ade9000.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
> changes in v2:
>  - move interrup-names near interrupts
>  - remove properties related to the waveform buffer and make them runtime attributes
>  - remove egy-time property and make it a runtime attribute.
>  - remove wf-src and use filter_type in the driver.
>  - add vref, vdd support.
>  - use adc standard channels instead of phase channels.

It seems that you ignored some of my v1 comments without saying why.

>  .../bindings/iio/adc/adi,ade9000.yaml         | 122 ++++++++++++++++++
>  1 file changed, 122 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ade9000.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ade9000.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ade9000.yaml
> new file mode 100644
> index 000000000000..0176252aae35
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ade9000.yaml
> @@ -0,0 +1,122 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2025 Analog Devices Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/bindings/iio/adc/adi,ade9000.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices ADE9000 High Performance, Polyphase Energy Metering driver
> +
> +maintainers:
> +  - Antoniu Miclaus <antoniu.miclaus@analog.com>
> +
> +description: |
> +  The ADE9000 s a highly accurate, fully integrated, multiphase energy and power
> +  quality monitoring device. Superior analog performance and a digital signal
> +  processing (DSP) core enable accurate energy monitoring over a wide dynamic
> +  range. An integrated high end reference ensures low drift over temperature
> +  with a combined drift of less than ±25 ppm/°C maximum for the entire channel
> +  including a programmable gain amplifier (PGA) and an analog-to- digital
> +  converter (ADC).
> +
> +  https://www.analog.com/media/en/technical-documentation/data-sheets/ADE9000.pdf
> +
> +$ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,ade9000
> +
> +  reg:
> +    maxItems: 1
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +
> +  spi-max-frequency:
> +    maximum: 20000000
> +
> +  interrupts:
> +    maxItems: 2
> +
> +  interrupt-names:
> +    items:
> +      - const: irq0
> +      - const: irq1

I still think that there should be 3 interrupts, the 3rd one being
the C4/EVENT/DREADY pin.

> +
> +  reset-gpios:
> +    description: |
> +      Must be the device tree identifier of the RESET pin. As the line is
> +      active low, it should be marked GPIO_ACTIVE_LOW.
> +    maxItems: 1
> +
> +  vdd-supply: true
> +
> +  vref-supply: true
> +

There is also a clock input and clock output that we can add
clocks and #clock-cells for.

> +patternProperties:
> +  "^channel@[0-2]$":
> +    $ref: /schemas/iio/adc/adc.yaml#
> +    type: object
> +
> +    properties:
> +      reg:
> +        description: The channel number (0-2 for phases A, B, C)
> +        minimum: 0
> +        maximum: 2
> +
> +    required:
> +      - reg

Why do we need channel properties? Do we expect in some cases to
only have 1 or 2 phases wired up? Otherwise, this provides no additional
information.

> +
> +    additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - reset-gpios
> +  - interrupts
> +  - interrupt-names
> +  - vdd-supply
> +

