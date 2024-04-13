Return-Path: <devicetree+bounces-58998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A69CE8A3EC1
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 23:34:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 33CD51F21825
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 21:34:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00B7E5676C;
	Sat, 13 Apr 2024 21:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GkkwqY/M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2788553E3B
	for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 21:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713044038; cv=none; b=EimSaGs2UTfRy248ySl4LV5phS0Jtxm0iZYa56OxQbXfijuhNq3M1s0e4Z0uEDV4Q/e/y7j60EYQFj2LbR9WIwad5+0RznjoIeD1Cv/1DVSFwJIV0HLfSRJgWjtXiFg0bUUOgUeJ6VQ+zJcTWF1qN24NF7m5CE/TxMsT/BNWWHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713044038; c=relaxed/simple;
	bh=a6PQIdOQ4wImVAohuFXLKfpdVt8mIedoNm81ADHCqqw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hDgC9aS+sQlFS9RaDyY5jQsqy3ZF+DUJ2xCo9WinL8ttbJJs2v1dNReXFPq9Z/QT65CvZNOMha3M7SieaThU3hgion/dSb1zoEYbheUB6Dnyq9qLysqKGQ6D87mUAiRlOLqeZpTRrAfpqSXpa8iGD/f5TCNWRHV/QvrgfHg4yBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GkkwqY/M; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2d8863d8a6eso24782181fa.3
        for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 14:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713044033; x=1713648833; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=lkBk/CzqEQa83bXA5cRGumM1/3HMjOQpgpakaBWuPRQ=;
        b=GkkwqY/MNCZd/0yJbPH7HDDl9t2SP7OyuKma2ahOqbekmRkkQCNyWWS7b/cVdcum0z
         wiQ6EDfJnCvn2GlaAm/zi4al5WcppBAIv7cHCI3M1tgU0vfkZAzxez6STIehpAjD2BLT
         V5hfIvL10HPaTjU7BSCDSKGC8HRKukcbbRiGOHv16L4XeiQEZNolEYSHsOzKrmJJbt8g
         /KpeJcj11oSo0AXCWYHfR5L4aTW0OVa+QcV56ejHwSHmwlOMUFG6e/eU6DWmjnNSxwVC
         KGqSGD/ee7RdQBw9+cHz1dxbsLqruYwEmcDYzrMGMV7qDo0q7w9xuR+8NrXGsArYRNXt
         /tLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713044033; x=1713648833;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lkBk/CzqEQa83bXA5cRGumM1/3HMjOQpgpakaBWuPRQ=;
        b=mSIU+k5Ay90P1SLHPBQGogMg6RLpBv6nOyjnrUC1ZjMXfLYSmTxp3IVke6/8IRk3Bj
         tNH541q5PbzriBWd+cHh9ZMCRCwWvQb+Po8bnzr/Diutnos3o4Q38wOwNZCRxuPRaKMH
         4Em82rwuVyqipIvy47fXYEF7L8XBImF/iItt3gkXcJzOeW+4xb6Hx03hiJhemLQrG2Bi
         D1zkuA2l4ZOnXtn5PimaRH5uS7RmNQWaHW8UMl/klF8o5/b7/n4lhrj7lTETU+Xsn2T6
         85lgswztSjyItkI4Z5hWFch65gYTZG4/3CmByuWgPoGr0FViQT44mWsSQ32/zYZom1HE
         CRCg==
X-Forwarded-Encrypted: i=1; AJvYcCXiQrijsmPbTsbaXuz/5NSmlZA/n8z5+NUEsRDMAaZlqCZlCW6VXHiExf/kI47nsau2naTME/umxE4aqIz0/Gx1UpVuLJ41SMiafQ==
X-Gm-Message-State: AOJu0Yz02bTveqy6NYEWa8kjLjd+S0o60RfAn261fjtjEPoBnPmnfUQn
	SPGWL25a7Cu9tTiTXrZs2Aq3FPbPFvkbdwu48AcjgaUafAGAFATu9QTPI2kLe1s=
X-Google-Smtp-Source: AGHT+IEJT4ECJzo9jekn94WFKIqo1KkgSgB9re0+9FTjVFDUPDJQfjA5xNSwGxTTnNfgqcr0Ev7KzQ==
X-Received: by 2002:a2e:9e93:0:b0:2d8:b8c8:1311 with SMTP id f19-20020a2e9e93000000b002d8b8c81311mr4890367ljk.4.1713044033137;
        Sat, 13 Apr 2024 14:33:53 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id j25-20020aa7c359000000b0056ff4faa0b9sm2329817edr.6.2024.04.13.14.33.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Apr 2024 14:33:52 -0700 (PDT)
Message-ID: <b5eeaf10-e011-452b-840a-176c4f62cac4@linaro.org>
Date: Sat, 13 Apr 2024 23:33:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v2 2/6] dt-bindings: mfd: bd96801 PMIC core
To: Matti Vaittinen <mazziesaccount@gmail.com>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
 Fabio Aiuto <fabio.aiuto@engicam.com>
References: <cover.1712920132.git.mazziesaccount@gmail.com>
 <ea49494429528cf8e60fa984ae1f523ddacd850c.1712920132.git.mazziesaccount@gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <ea49494429528cf8e60fa984ae1f523ddacd850c.1712920132.git.mazziesaccount@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/04/2024 13:21, Matti Vaittinen wrote:
> ROHM BD96801 is a highly configurable automotive grade PMIC. Introduce
> DT bindings for the BD96801 core.
> 
> Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>
> 
> ---
> Revision history:
> RFCv1 => RFCv2:
>   - Document rohm,hw-timeout-ms
>   - Document rohm,wdg-action
> ---
>  .../bindings/mfd/rohm,bd96801-pmic.yaml       | 171 ++++++++++++++++++
>  1 file changed, 171 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/rohm,bd96801-pmic.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mfd/rohm,bd96801-pmic.yaml b/Documentation/devicetree/bindings/mfd/rohm,bd96801-pmic.yaml
> new file mode 100644
> index 000000000000..31ef787d6a8a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/rohm,bd96801-pmic.yaml
> @@ -0,0 +1,171 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/rohm,bd96801-pmic.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ROHM BD96801 Scalable Power Management Integrated Circuit
> +
> +maintainers:
> +  - Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> +
> +description: |

Do not need '|' unless you need to preserve formatting.

> +  BD96801 is an automotive grade single-chip power management IC.
> +  It integrates 4 buck converters and 3 LDOs with safety features like
> +  over-/under voltage and over current detection and a watchdog.
> +
> +properties:
> +  compatible:
> +    const: rohm,bd96801
> +
> +  reg:
> +    description:
> +      I2C slave address.

Drop description, obvious.

> +    maxItems: 1
> +
> +  interrupts:
> +    description:
> +      The PMIC provides intb and errb IRQ lines. The errb IRQ line is used
> +      for fatal IRQs which will cause the PMIC to shut down power outputs.
> +      In many systems this will shut down the SoC contolling the PMIC and
> +      connecting/handling the errb can be omitted. However, there are cases
> +      where the SoC is not powered by the PMIC. In that case it may be
> +      useful to connect the errb and handle errb events.
> +    minItems: 1
> +    maxItems: 2
> +
> +  interrupt-names:
> +    minItems: 1
> +    items:
> +      - enum: [intb, errb]
> +      - const: errb
> +
> +  rohm,hw-timeout-ms:
> +    description:
> +      Watchdog timeout value(s). First walue is timeout limit. Second value is
> +      optional value for 'too early' watchdog ping if window timeout mode is
> +      to be used.

Standard property timeout-sec does not work for you? It should allow two
items as well.

> +    minItems: 1
> +    maxItems: 2
> +
> +  rohm,wdg-action:
> +    description:
> +      Whether the watchdog failure must turn off the regulator power outputs or
> +      just toggle the INTB line.
> +    enum:
> +      - prstb
> +      - intb-only

This is second property controlling bite behavior. The other being:
https://lore.kernel.org/all/e86812b3-a3aa-4bdb-9b32-a0339f0f76b5@kernel.org/

Probably we need common property in watchdog.yaml.

> +
> +  regulators:
> +    $ref: ../regulator/rohm,bd96801-regulator.yaml

Full path, so /schemas/regulator/....

> +    description:
> +      List of child nodes that specify the regulators.
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - interrupt-names
> +  - regulators
> +

Missing allOf and $ref to watchdog.yaml

> +additionalProperties: false
> +
> +examples:


Best regards,
Krzysztof


