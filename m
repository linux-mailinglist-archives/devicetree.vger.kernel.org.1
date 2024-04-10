Return-Path: <devicetree+bounces-58052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 868978A0086
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 21:23:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D8B9FB236A2
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 19:23:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B871D181313;
	Wed, 10 Apr 2024 19:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E92qv500"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D365181304
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 19:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712776992; cv=none; b=eS70j7ZO10inCdPUExoBTf4RCsrZQyTqnCJ82bCqwzEJdd6kbwgVu8RLxB5OHwTNJjDGxPLVFHN/tyPejIwelnYqubN415+qscXzOeAQBIbuQVyygZwHIAw4NZNfhxQMNWA8wR/L7Da34w/cv5MOa+rp7C/A+VFVa4HSgjNU4FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712776992; c=relaxed/simple;
	bh=KIKKA6Hcj7j4sB9R2gmnBeE9kkzXSDQYIfa9ZbHULD8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jyKNgjGN4lsQLvwVjrafKzy19wr6+W7RlkHxPskWymkmsssSUUUqq8LP8J7uCpXN7rSQ1eWCtK+xcfMAb79W4CiKdxVrMv5vdMoiQzR7iyO4lLxFG84yfHBQy0gf74g1KtVU75RKTkJ4lpNtWBnMvWm55soSYhhDGgg3q9l5VAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E92qv500; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3462178fbf9so1061750f8f.1
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 12:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712776989; x=1713381789; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=znrjsGL5C+KjaLJ4d7djZKSZEjO8u83UZVncMVhpCco=;
        b=E92qv500ORrW53IdGB8YMp+ijUmeY734VYgWIW1Ea0g2K+VqFnEZpO4d4BAWSuNfD0
         uQbDr+5bTwljIAP6MysLtR5BvfupFKNZ5W8vfNMCdl/gsAs17r+ekyQ/pjponTDOYwZl
         DAu8i+T2SquD+XSNYQwTaif+abaEdZMVliPUcn+HXcs8A/OeHTZMWt/NcGV61P1dfLph
         ZGm9YMP4SM8ZEP5FKxdH5d80biNEw67XmCXuIXJfMHi+jM8r7U7AVwF8ETf6coJS5FMo
         8kngQkgr0UqNCSiJNzHyOEJSOjaSY6x0/m8TsGBT7Uj4/hhJA5izk42x7p7CH8g5u76s
         ZESg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712776989; x=1713381789;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=znrjsGL5C+KjaLJ4d7djZKSZEjO8u83UZVncMVhpCco=;
        b=XlDemFVIcCQ54FfYF1SX/P0SPI1fSYGvgEBqBNsLWM7ZmzuttSQzoZRmq/BlGWdq7h
         DlAPHsN+9WGQM5M6vkJGv7BgwfKmwH6hpredvaIkcfcmXwrk+I15MhWnfjI+2lZD2woh
         21FrCTfEFwA4kRrLXqcX7wxF3ksgBqrBxZGMmslgQe6O2+5JK/kSPUWk940Bug2YVlrG
         CWH/41/ZzZtAAJqDff888TGXl6FCC/HHFSTq4O8NgSM2TkWkT/3fOYCG4OYFeIrnrhzd
         Jp3AHdCYrMKhQpiHrPdSQM9cK9vpJRmKpkmJUpRmkpr6dEeguksP1UpvlhD1q2ODGAws
         cHvA==
X-Gm-Message-State: AOJu0Yw1fOIYr5vAzlnyVolvB0dEOONkFUg2CcaLkpPZCiJaVAEZaOm7
	dqvDbVRx1bAZbDse3owpmddh01e1ySqMnkaN08MHvtmo5CcuMGkiEszyFFGUob0=
X-Google-Smtp-Source: AGHT+IEX7550cBHUcy/0/2zwmjA2HA5+ybi+x+c0lyy/72b2nYn5cD9QRdR+1lYfMfjPMgPARX8cbQ==
X-Received: by 2002:adf:f209:0:b0:343:420a:c70b with SMTP id p9-20020adff209000000b00343420ac70bmr3378939wro.62.1712776988905;
        Wed, 10 Apr 2024 12:23:08 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id e38-20020a5d5966000000b003437ad152f9sm14382647wri.105.2024.04.10.12.23.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Apr 2024 12:23:08 -0700 (PDT)
Message-ID: <27d755b5-dd26-4bef-9d92-1633409e14fb@linaro.org>
Date: Wed, 10 Apr 2024 21:23:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 1/1] dt-bindings: ptp: Add device tree binding
 for IDT FemtoClock
To: Min Li <lnimi@hotmail.com>, richardcochran@gmail.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, Min Li <min.li.xe@renesas.com>
References: <LV3P220MB1202BACF71E85F949FC09A29A0062@LV3P220MB1202.NAMP220.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <LV3P220MB1202BACF71E85F949FC09A29A0062@LV3P220MB1202.NAMP220.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/04/2024 20:41, Min Li wrote:
> From: Min Li <min.li.xe@renesas.com>
> 
> Add device tree binding doc for the IDT FemtoClock Frequency
> Clock Synthesizers.

A nit, subject: drop second/last, redundant "device tree binding for"
The "dt-bindings" prefix is already stating that these are bindings.
See also:
https://elixir.bootlin.com/linux/v6.7-rc8/source/Documentation/devicetree/bindings/submitting-patches.rst#L18

> 
> Signed-off-by: Min Li <min.li.xe@renesas.com>
> ---
>  .../devicetree/bindings/ptp/ptp-idtfc3.yaml   | 47 +++++++++++++++++++

Filename based on compatible, e.g. idt,rc38xxx.yaml

>  1 file changed, 47 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/ptp/ptp-idtfc3.yaml
> 
> diff --git a/Documentation/devicetree/bindings/ptp/ptp-idtfc3.yaml b/Documentation/devicetree/bindings/ptp/ptp-idtfc3.yaml
> new file mode 100644
> index 000000000000..3e1c3135df5a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ptp/ptp-idtfc3.yaml
> @@ -0,0 +1,47 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/ptp/ptp-idtfc3.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: RENESAS FemtoClock (TM) Frequency Clock Synthesizers
> +
> +maintainers:
> +  - Min Li <min.li.xe@renesas.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      # For System Synchronizer
> +      - idt,rc38xxx0
> +      - idt,rc38xxx1
> +      - idt,rc38xxx2
> +      - idt,rc38xxx3
> +      - idt,rc38xxx4
> +      - idt,rc38xxx5
> +      - idt,rc38xxx6
> +      - idt,rc38xxx7
> +      - idt,rc38xxx8
> +      - idt,rc38xxx9

What are the "xxx"? Wild-cards? Are these compatible? Please read
writing-bindings.

> +
> +  reg:
> +    maxItems: 1
> +    description:
> +      I2C slave address of the device.

Drop description, it is redundant.

This looks quite incomplete. Why it cannot be part of existing idt binding?

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
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +	phc@9 { /* FemtoClock3 */

You have totally messed indentation. What's more, this was not tested.

What is "FemtoClock3" doing here? What is it exactly?

> +		compatible = "idt,rc38xxx0";
> +		reg = <0x9>;

What's more, where is any user of it? What's the point of adding binding
without any users? Please read submitting patches in DT bindings directory.

Best regards,
Krzysztof


