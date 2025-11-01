Return-Path: <devicetree+bounces-234019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CCAC27D22
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 12:53:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD6323B6E92
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 11:53:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E564F2F617D;
	Sat,  1 Nov 2025 11:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jGKh0mny"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F81E2D29AA
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 11:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761997994; cv=none; b=CnUEBfMy9LPQpb9OtFyw0xf1Tlt4joq/7b36Q8lP73I6EAdPyhDFPgHbAkn5JP7pnaTLxlCn6BVyz5cli8xsnHnYbU9gmvpXF8g+fHQX5Bx88RHbvDxSwn3zcjcfQ24wDC7UYFQIwGqffT3IGxptGgKG1wWeBsyc1LCBVzBqZz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761997994; c=relaxed/simple;
	bh=oK4uPbJEHgdkkfoWapRa04Q8AETAcOvcyzklgbYEu+8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XfzxGLY64T/eDeaaPzRMzCio1vLlrh4r5rBuu5c1u4/qiMcbMHuHyUD7lWrDrdMxZL/ZqQh29J01flB9FpnVnAgx+RntPv07c+OGom0d7ehXL16ooV1s2KHKbnTCRaencFE6CEKiL7VgoUj0WKLesDn+TFg349e7hgi3cS8xijE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jGKh0mny; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2956d816c10so1182185ad.1
        for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 04:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761997990; x=1762602790; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pZcyG5Lpi31OFKPjHBo9IwkD5rxwA3cUQ7Lfix/dzXQ=;
        b=jGKh0mnyxXJxqbhcpapKzMtaTmnajDmgfosU7pg4IDBY2TTP/Wn97eEanhv1681o8g
         naVtnBjfLU86wltZRr+R2niIoHtbI+7HZUkGwmTBop0giuahZmJ/fI6qvkJK1P0/yQbB
         R8ojiH86h5bUILkH2QyoeXbKs3IGkzGnEK9iJNPB3O+WW7Z5efHqrjIrO06nQ0h2KBCj
         aDJyot/8Qz2l2Bnl4pRXuQPW5+hal9DaK5p9NaBMxVNjut13BHqIsLr+nn0us5m9GhLN
         ++UuX+ImCNuErG4QGZAPhCUBAerWEzS/4KK3dbxDOsM+Lj8iSIC0PW4T526j/xj6NWyD
         kDcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761997991; x=1762602791;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pZcyG5Lpi31OFKPjHBo9IwkD5rxwA3cUQ7Lfix/dzXQ=;
        b=hZXULpeWPBWH+vR8McJZMCCYCTM1YM6KH2Rrdbqa66xcAZDASwxvmp6XI0TcV5lsbc
         13x+SwTVgXF74I8gozRnnYvt6vhIGOK7qgF/QBwcjtBJSsbfi/HrwsV74hHXgQdLgkWl
         MTFbuk8MITLug26/H9+66Nxn3h8bkdGrBhZUWGKS20z0TZmns6rhoA+Jm+BfRz25Lea6
         7/iiCDSkq+ydtygNaeeVZFXVAOBTmZ/KlP6FARIxzx5QGSx3vz765G36XmV00Orf90db
         /kF4f7SO91DKOVftUz8IU9Ufo2mE+wbQgWgn5yxJTxWggZ7exemkQUN6YM4c944vkvrH
         2zpQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOB7h33WdCBJB1P/qqCvj8UEaFVJxToGjkIT9XmB6tEt4iR5oLxJ106/NDKxRbdxgdv87qBgZ4uvO4@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7i+J/XJMnDRP15cK8ZgQoVt9yFqwQFRYSRnb84GhkD5Rr45Ju
	vornIL4xBUmzXUR4OObUqMx9/EiW6DVp9UxMhoZdwcr+N4QbmnwVrCiH
X-Gm-Gg: ASbGnct6LhU+XZeO/Fvd6OffvM4lk1nsCdzagopzC8tk93p0ToWLzcMeHPP7o5VeM4M
	hWf5PfwHidGmIfZWrJXxenRK/32ahNMz6c+U2b+IIez/hNV5hOt4J/xnDJpV3/ewDmCRg4q8feQ
	yWLY8hPwaDiqlrD2LRUVJIwXwtLHnPet1L2BRSbZ/3ZW2dpH9SQezhIPwTz9t08CjE5Rhy43UbQ
	5lC5rNlrm2NWQbGxMx/twEOOY74OGeR8ABCin/4KX5W9u6zexBAiRSl18n/e/mjzRAulHCc/dNG
	JtRvTHDooLOjxShSEMxPsukPh4jcuycBUhf1ybjuUF5ALGqDo8SHWAUdUjlGeTW4BR2IcWYVI04
	L64QHio6osO2Cawk3BE8l417zf283r+88RzNruvIOYMzg6ji9f0tRKWCkZ9LBMUsfUYmEW159G0
	YgMCyoEEvY/oAZmjgFMlQkUuzv2JVTMRSSOYPTs8TfXhMOKLOraaLaTHqN3jS9Ue2IKm83WFAQp
	BOD+3Y70HRhimIBKz4XMSkCUvunPvV8lPdOvA1tUgOYtXSLex577RZUo7ui2x5/rb2K+XZgzBgT
	E9ui4LC9
X-Google-Smtp-Source: AGHT+IGU7+DlaBTm5F6E4+pWRQT7EbXJbl3N21cibfZUUv++DUl8FVlOPBwjm7rse1lVhnN842pFsw==
X-Received: by 2002:a17:902:e850:b0:277:3488:787e with SMTP id d9443c01a7336-2951a39063fmr88909475ad.12.1761997990510;
        Sat, 01 Nov 2025 04:53:10 -0700 (PDT)
Received: from ?IPV6:2402:e280:21d3:2:61a9:cfa6:c139:b812? ([2402:e280:21d3:2:61a9:cfa6:c139:b812])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29526871063sm54834445ad.21.2025.11.01.04.53.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Nov 2025 04:53:10 -0700 (PDT)
Message-ID: <3becedb7-97c2-4b9e-b669-2bd4dd91c11d@gmail.com>
Date: Sat, 1 Nov 2025 17:23:06 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 1/3] dt-bindings: iio: adc: Add TI ADS1120 binding
To: Jonathan Cameron <jonathan.cameron@huawei.com>
Cc: linux-iio@vger.kernel.org, jic23@kernel.org, dlechner@baylibre.com,
 nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251030163411.236672-1-ajithanandhan0406@gmail.com>
 <20251030163411.236672-2-ajithanandhan0406@gmail.com>
 <20251030171212.00004069@huawei.com>
Content-Language: en-US
From: Ajith Anandhan <ajithanandhan0406@gmail.com>
In-Reply-To: <20251030171212.00004069@huawei.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/30/25 10:42 PM, Jonathan Cameron wrote:
> On Thu, 30 Oct 2025 22:04:09 +0530
> Ajith Anandhan <ajithanandhan0406@gmail.com> wrote:
>
>> Add device tree binding documentation for the Texas Instruments
>> ADS1120.
>>
>> The binding defines required properties like compatible, reg, and
>> SPI configuration parameters.
>>
>> Link: https://www.ti.com/lit/gpn/ads1120
> Datasheet: https://www.ti.com/lit/gpn/ads1120
>
> Is a somewhat official tag for these. Though better to put it in the dt-binding
> doc itself as well or instead of here.
>
>> Signed-off-by: Ajith Anandhan <ajithanandhan0406@gmail.com>
>> ---
>>   .../bindings/iio/adc/ti,ads1120.yaml          | 50 +++++++++++++++++++
>>   1 file changed, 50 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,ads1120.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/iio/adc/ti,ads1120.yaml b/Documentation/devicetree/bindings/iio/adc/ti,ads1120.yaml
>> new file mode 100644
>> index 000000000..09285c981
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/iio/adc/ti,ads1120.yaml
>> @@ -0,0 +1,50 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/iio/adc/ti,ads1120.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Texas Instruments ADS1120 4-channel, 16-bit, 2kSPS ADC
>> +
>> +maintainers:
>> +  - Ajith Anandhan <ajithanandhan0406@gmail.com>
>> +
>> +properties:
>> +  compatible:
>> +    const: ti,ads1120
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  spi-max-frequency:
>> +    maximum: 4000000
>> +
>> +  spi-cpha: true
>> +
>> +  "#io-channel-cells":
>> +    const: 1
> Power supplies should be here and required (even if real boards
> rely on stub regulators).
>
> Looks like there is an optional reference as well - so include that
> but not as required (use internal ref if not supplied).
>
> There is a data ready pin as well so I'd expect an interrupt.
>
> All these should be in the binding from the start as we want it
> to be as complete as possible.  The driver doesn't have to use everything
> the binding supplies.
>
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +
>> +allOf:
>> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    spi {
>> +        #address-cells = <1>;
>> +        #size-cells = <0>;
>> +
>> +        adc@0 {
>> +            compatible = "ti,ads1120";
>> +            reg = <0>;
>> +            spi-max-frequency = <4000000>;
>> +            spi-cpha;
>> +        };
>> +    };
>> +...
>> +

Hi Jonathan,

Thank you for the detailed review and helpful suggestions.

I'll update the binding to include the following:
- Add required power supply property (avdd-supply) and optional vref-supply.
- Add interrupt and interrupt-names for DRDY and DOUT.
- Move the datasheet link into the dt-binding description.

I'll incorporate these changes and resend as a V2 (non-RFC) patch series.

-- 
BR,
Ajith Anandhan.


