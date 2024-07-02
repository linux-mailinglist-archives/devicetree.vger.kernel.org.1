Return-Path: <devicetree+bounces-82398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F356992427F
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 17:36:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA611282583
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 15:36:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E7ED1BBBF7;
	Tue,  2 Jul 2024 15:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="NXXE2flL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98EDA1BBBE6
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 15:36:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719934594; cv=none; b=GIWnqSvmjO9X2bkY1BgApr8iCMuPsikM7s4ILlfwHvYrtbNwsZjk0c7o0QrH25QK5tsg8O1C26PCX3KegWne5kb+tCWNyXmeW3JD2Gpp4Ib3BSA3IPmHdvqr6bTXkiVflewGEkwxpqQ07NnpSbFIq92jlV1sFruNBWfelffWtZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719934594; c=relaxed/simple;
	bh=Fp3x+Gzf/0uHBv6XR8uh15iec1h9n1SDOYsklJ3emuA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X7Qs26rP1+P17tht/G6lJAj2ghO7fpmMz9TJiWarYlpnzlCynS8xWzAbpb2gaW5lBfhiQFnwVwne85DOuUbCS6TiVgUzi9iT4ENofk5u02asz/+k+4y6GCsrJ0JnVXbNjilA3n0ZeN7+muLg/i0GPHu2bTf/tZogyzIUUMECQHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=NXXE2flL; arc=none smtp.client-ip=209.85.160.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-25d634c5907so2726517fac.2
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 08:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719934592; x=1720539392; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CbTCjOUMkDZIPmsuH+iEeMyNeIVhzfAOvL5XjW90R68=;
        b=NXXE2flLjyXXQkAq4Rr7DNTlkYZsK5VCWJlLzPePYPuIngbukXBJQqSzIlS+NM0lzM
         UuHkn+4hjv0lF453qevgTUqgX4esVwwKDLMLdXc4kQBgMBNDQav2AL1jNcP8iRkoi2CL
         kNZMTHk/wRzhY/G5jDUZbRGU/7hZwMk/OHufhZXHP5xhVcqR8DysoURcRvbbksA1dP+b
         71jvGNGXLmQYC1ap1lz63AkWEYMKblDk/ziZLYbYcYPvWp8Qf+P8xMhEN5loHwJdFvb1
         iiP7D+PkNgQkdmrQR044Qi269DTiTKskD+KGqCkxmAWPQtVMQojNYUkG/DQrlVkTkDpM
         uoLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719934592; x=1720539392;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CbTCjOUMkDZIPmsuH+iEeMyNeIVhzfAOvL5XjW90R68=;
        b=cxKUbJeu9jco+NUNsbVN1KCmLK4JZyWly6WRbiQzwDrob7SbKRr5ZTlGOToSVUFi5u
         mNW8UcpOfkYSVw+0PLr/ZUuvdo75MYBxThBjV8EzOzaAy+ytej0YclUkayutw8ykFckb
         2XfFnWfVtDn5vNmv/+Ii/JXYW7DdFcZp8i8bEeYtLQ38/cxNqWklFlJ/IyNwPy6ekqA0
         D2uy3HZ/pJIfQ4toi6bpTMhqppEc7X1Klndg0dtOFoTL1olqSyOkDaAjHl0Mzk280WY8
         lKp5KUGbXabe6kaxTT/9a+5zGEzLoP9vgmLPOFn3SOIRO2qyKtk+FnTjqYEy+aAIOkO3
         p1pA==
X-Forwarded-Encrypted: i=1; AJvYcCXZq2ZfF1OE9FingM55AMuPslRem53ffPcJzYWXf4z0cLDn3sJtoAjJxZNdCJ02X8QiVE+prXdhaz1bYYG91ILg85+y6HjTKbHlBg==
X-Gm-Message-State: AOJu0YwY5Xsc4Be0fJRNYRnLl1nGzMQD9ejbVUYcyMXS12VzyuTaNg9N
	UXP51MUzn5vnbgKirrIGQA3nq8KT94Kxc63rGRe+bz1k+wdO9TFFqxhxi0HIptQ=
X-Google-Smtp-Source: AGHT+IFP+4Qsz+EqJ6flGJt/Sal9Z9g3tdmP0nSmapG6Dq5fs42rjFxxPjALA3t+5y4sIsynpQJ4HA==
X-Received: by 2002:a05:6870:164c:b0:254:85c0:c70c with SMTP id 586e51a60fabf-25db35936bbmr7665818fac.40.1719934591605;
        Tue, 02 Jul 2024 08:36:31 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-25d8e388597sm2231963fac.56.2024.07.02.08.36.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jul 2024 08:36:31 -0700 (PDT)
Message-ID: <bba8a12a-9d1e-467b-a7c1-8a027d5c2f89@baylibre.com>
Date: Tue, 2 Jul 2024 10:36:29 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/6] dt-bindings: iio: dac: Add adi,ltc2664.yaml
To: Kim Seer Paller <kimseer.paller@analog.com>,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen
 <lars@metafoo.de>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Dimitri Fedrau <dima.fedrau@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Michael Hennerich <michael.hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>
References: <20240702030025.57078-1-kimseer.paller@analog.com>
 <20240702030025.57078-5-kimseer.paller@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20240702030025.57078-5-kimseer.paller@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 7/1/24 10:00 PM, Kim Seer Paller wrote:
> Add documentation for ltc2664.
> 

...

> +  adi,manual-span-operation-config:
> +    description:
> +      This property must mimic the MSPAN pin configurations. By tying the MSPAN
> +      pins (MSP2, MSP1 and MSP0) to GND and/or VCC, any output range can be
> +      hardware-configured with different mid-scale or zero-scale reset options.
> +      The hardware configuration is latched during power on reset for proper
> +      operation.
> +        0 - MPS2=GND, MPS1=GND, MSP0=GND (+-10V, reset to 0V)
> +        1 - MPS2=GND, MPS1=GND, MSP0=VCC (+-5V, reset to 0V)
> +        2 - MPS2=GND, MPS1=VCC, MSP0=GND (+-2.5V, reset to 0V)
> +        3 - MPS2=GND, MPS1=VCC, MSP0=VCC (0V to 10, reset to 0V)
> +        4 - MPS2=VCC, MPS1=GND, MSP0=GND (0V to 10V, reset to 5V)
> +        5 - MPS2=VCC, MPS1=GND, MSP0=VCC (0V to 5V, reset to 0V)
> +        6 - MPS2=VCC, MPS1=VCC, MSP0=GND (0V to 5V, reset to 2.5V)
> +        7 - MPS2=VCC, MPS1=VCC, MSP0=VCC (0V to 5V, reset to 0V, enables SoftSpan)
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 1, 2, 3, 4, 5, 6, 7]
> +    default: 7
> +
> +  io-channels:
> +    description:
> +      ADC channel to monitor voltages and temperature at the MUXOUT pin.
> +    maxItems: 1
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +
> +patternProperties:
> +  "^channel@[0-3]$":
> +    $ref: dac.yaml
> +    type: object
> +    additionalProperties: false
> +
> +    properties:
> +      reg:
> +        description: The channel number representing the DAC output channel.
> +        maximum: 3
> +
> +      adi,toggle-mode:
> +        description:
> +          Set the channel as a toggle enabled channel. Toggle operation enables
> +          fast switching of a DAC output between two different DAC codes without
> +          any SPI transaction.
> +        type: boolean
> +
> +      output-range-microvolt:

Could be helpful to add a description that says this property is only allowed when
SoftSpan is enabled rather than requiring people to reason through the logic.

> +        oneOf:
> +          - items:
> +              - const: 0
> +              - enum: [5000000, 10000000]
> +          - items:
> +              - const: -5000000
> +              - const: 5000000
> +          - items:
> +              - const: -10000000
> +              - const: 10000000
> +          - items:
> +              - const: -2500000
> +              - const: 2500000

           default: [0, 5000000]

> +
> +    required:
> +      - reg
> +
> +    allOf:
> +      - if:
> +          properties:
> +            adi,manual-span-operation-config:
> +              const: 7
> +        then:
> +          patternProperties:
> +            "^channel@[0-3]$":
> +              required: [output-range-microvolt]


This logic doesn't look right to me. If adi,manual-span-operation-config
is not 7, then SoftSpan is disabled, so we should have:

    output-range-microvolt: false

In that case since individual channels can't have a per-channel
configuration because SoftSpan is not enabled (unless I am misunderstanding
the datasheet?).

Also, output-range-microvolt should never be required, even when
adi,manual-span-operation-config is 7 because there is already a default
value range (0V to 5V) specified by the adi,manual-span-operation-config
property.

I think the correct logic would be:

    - if:
        not:
          properties:
            adi,manual-span-operation-config:
              const: 7
        then:
          patternProperties:
            "^channel@[0-3]$":
              properties:
                output-range-microvolt: false


