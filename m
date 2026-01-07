Return-Path: <devicetree+bounces-252420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A2702CFE91A
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 16:27:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 94D7530FC48F
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 15:19:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 833A7393DF5;
	Wed,  7 Jan 2026 15:18:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DJRGttIf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0D0B3A1CE0
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 15:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767799138; cv=none; b=QsyxxjewSW1ZIdfRL1LkrCE6OxR6aGZq0ruB8+ojk6zgzl5uJTcBLCuTNIwe7YOxPifM/HYMZGEDPlc0ZuHtdpufptA/m7wZsGviabvzpK9uiyERrW1VT50g0zunx0wu0/w4eVNZ8B2rAIpQtUSPLtHGFffycKX+mvCVCO6wyTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767799138; c=relaxed/simple;
	bh=tNf3XDsjmbqCnuHq9LIYRFhLNf4mHQKLUrqjBbo6sxc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=toMf8OrDiutm9OOP03RiqSGF+5zJ8T+ShHvuuu+gP4uWZkE0awBwHH6oyXQY3QFfKCAOEit6a94TkCl4dCtrETziVhxmZ8Uz3mrdaR4zUx2HdJX0VNRVHRHmkFyyln1xgajUlkbM0XHqgWVjQ+gvFUpvXDbNVAVgXhx/1EHOKMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DJRGttIf; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-47d3ffa6720so22190995e9.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 07:18:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767799133; x=1768403933; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hs7UTF9OYygppRuc29mz8ACnbiOzTDxmVFUfRrLLvNQ=;
        b=DJRGttIfUTjuNqYAbCrcYn1s29wMz3hmuNIACO+L6w8JqNLE5Cf41zckEmhoh6pGfT
         PoWfGd7zN/RLVT4RIQ2AKaxgBwfnCebkCObY7RsI2EDWNfs1XjWAhgeyk1C0Q1heL0Xz
         X0TfbCuaTNomiDIG5Qakb48vEcd5cVFJJsl+q8MB0N96NRvpdaSENbH8w4doBBvtxZFt
         dkc1HO2oBf619ttAM7G0vWoVS98K5wh9Tf9Y8YPHvCebtZPIOMxDfm0EgjneM3B6fuli
         jU24/uhoR1qeYmLj7v0fMY93hZ3NQDihsbtH9t6YBdu4wyh9TAPHY21v1r8XuV0jhu8I
         Df9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767799133; x=1768403933;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hs7UTF9OYygppRuc29mz8ACnbiOzTDxmVFUfRrLLvNQ=;
        b=R1Pys9rJcaIkOmp8heHy4ln8p1L+LcjYSGHo5kee1FuA44bWCxkZiv3AY9kd+4MCdG
         Sx2zyzXdPee2JhmyDzW5Fh0UXIw0OcC2RVVMIujlJS+W2IYw5Jv0QR+D/rKIPtLE3wbh
         kz0GQoprC1gYZieqAMTvMAsWcXGMfvRQJZ/l7g5yqDFH8BEvav+qHJ26/odOh9KYXtCD
         ye9rhKGj+S5Nn4jlx3xG9K0im0JILxMDN//AmjahOM8XY7obL6KGlr5MGJfg48F2u1QX
         3Kq8yeWnb3bqqGlfLRBArl231sbJUNrn1x16k4TT5OtpPc8I/oJn4cQSKq1oTIznVMV1
         sLVg==
X-Forwarded-Encrypted: i=1; AJvYcCVIeiqQ+jpWdz3I7KuTrrQ2COxclQjqjqKTMkIvCnvFVcdk9r3KXTspcdPHPMQGU2pfqBPwwH5exPlz@vger.kernel.org
X-Gm-Message-State: AOJu0Yxo3xtV6fDVRzRmkpIpBlhVwAG88CaHg+07r5erqXn26n4Hb2DX
	O/7Ae3zXH29SS/rFfNInsHAzOJDGbGNt8TOLqMdHt86P1bo0Tj0R28anQsvWHOyg1hasFA==
X-Gm-Gg: AY/fxX5tlTOjG8k3O99FL6WojVqUmdMDjghkOWQvhhsnt1N2IyjohrYZtTNKXvXnkDY
	YMcdFvMecCXytzivhhGz17LF39Pjc4rgR/64YzfN5Oy7DMA6P9A5f8cRWJ3hHX72gZkQ1OyslV+
	lfqSZisfgPD/r2PTudfCmodOZs0W2Cxs3eApZ8uTl2ZXpmaNKFWnohD2XxMuOJmz9tyCzkKgOqI
	TDRj+HMD5SFZJ2mRH+ZsOGXmgJ78wDXZaM9E6hMFZ3nzo7ZUVNZW7QLvBZBz8qjZne/5Drqqid7
	1oJhaN7kiVg2EuuOYbxCBABtF1rgm7X/XvdOiKPEi4BO3Nk3GVfhO28fdSqgVMf72m24ACe00Dg
	9LQse7cXuLs971oO1zCEvj7/FSqF45kszlhcrBbwbKXJLM/3hDg/7WAs4JSZ1WJZ0be9EPTd7N5
	mf9KAPOAK7A1HFtQI=
X-Google-Smtp-Source: AGHT+IHTvz1Je3JayvbprZONkEuGoye7ddyIvvyBYEi4WT32a73ymDQLhohQBmrkRjpi5o5aSJm9iw==
X-Received: by 2002:a05:6000:2504:b0:432:aa5a:3916 with SMTP id ffacd0b85a97d-432c37950b7mr3983445f8f.40.1767799133334;
        Wed, 07 Jan 2026 07:18:53 -0800 (PST)
Received: from [172.24.138.145] ([137.71.226.102])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0e199bsm10937637f8f.16.2026.01.07.07.18.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 07:18:52 -0800 (PST)
Message-ID: <2b675aed-eef0-462c-b412-5cc8cd91e864@gmail.com>
Date: Wed, 7 Jan 2026 16:18:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: iio: dac: Add max22007
To: Jonathan Cameron <jonathan.cameron@huawei.com>,
 Janani Sunil <janani.sunil@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Alexandru Ardelean <alexandru.ardelean@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 jan.sun97@gmail.com, gastmaier@gmail.com
References: <20251219-max22007-dev-v1-0-242da2c2b868@analog.com>
 <20251219-max22007-dev-v1-1-242da2c2b868@analog.com>
 <20251219164002.00004c74@huawei.com>
Content-Language: en-US
From: Janani Sunil <jan.sun97@gmail.com>
In-Reply-To: <20251219164002.00004c74@huawei.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Johnathan,

Thank you for your reviewing the patch.

On 12/19/25 17:40, Jonathan Cameron wrote:
> On Fri, 19 Dec 2025 16:31:15 +0100
> Janani Sunil <janani.sunil@analog.com> wrote:
>
> Hi Janani and welcome to IIO.
>
>
>> Devicetree bindings for MAX22007 4-channel
>> 12-bit DAC that drives a voltage or current
>> output on each channel
> This is a very short wrap. Aim for 75 characters in patch description lines
> (so slightly shorter than 80 chars standard for everything else).

Noted your point. Will update the message.

>> Signed-off-by: Janani Sunil <janani.sunil@analog.com>
>> ---
>>   .../devicetree/bindings/iio/dac/adi,max22007.yaml  | 116 +++++++++++++++++++++
>>   MAINTAINERS                                        |   7 ++
>>   2 files changed, 123 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/iio/dac/adi,max22007.yaml b/Documentation/devicetree/bindings/iio/dac/adi,max22007.yaml
>> new file mode 100644
>> index 000000000000..c2f65d9e42d4
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/iio/dac/adi,max22007.yaml
> ...
>
>> +  vdd-supply:
>> +    description: Low-Voltage Power Supply from +2.7V to +5.5V.
>> +
>> +  hvdd-supply:
>> +    description:
>> +      Positive High-Voltage Power Supply from +8V to (HVSS +24V) for
>> +      the Output Channels.
>> +
>> +  hvss-supply:
>> +    description:
>> +      Negative High-Voltage Power Supply from -2V to 0V for the Output Channels.
>> +
>> +  reset-gpios:
>> +    maxItems: 1
>> +    description:
>> +      GPIO used for hardware reset of the device.
>> +
>> +patternProperties:
>> +  "^channel@[0-3]$":
>> +    allOf:
>> +      - $ref: /schemas/iio/dac/dac.yaml#
>> +      - type: object
>> +        description:
>> +          Represents the external channels which are connected to the DAC.
>> +          Channels not specified in the device tree will be powered off.
>> +
>> +        properties:
>> +          reg:
>> +            description: Channel number
>> +            maxItems: 1
> min / max?

Shall add the values.

>
>> +
>> +          adi,type:
>> +            description: Channel output type.
>> +            $ref: /schemas/types.yaml#/definitions/string
>> +            enum: [voltage, current]
> This is much more constrained (as only two types of channel) but we do have
> precedence for adi,ch-func in adi,ad74115.yaml and adi,ad74413r.yaml
>
> That's not a particularly pretty binding but we should probably stick to
> it anyway.
>
> adi,type is too vague a name for this property anyway.

Agreed. adi,ch-func seems to be a best fit here. Shall reuse it.

>
>> +
>> +        required:
>> +          - reg
>> +          - adi,type
>> +
>> +        unevaluatedProperties: false
>> +
>> +required:
>> +  - compatible
> For supplies we document as required any that are needed for the device
> to function, whether or not we happen to need to specify them on
> a given board (given fallbacks that apply on assumption that fixes
> always on supplies are in use).  So I'd expect to see at least some
> of the supplies listed here.

Noted. I shall update the required power supplies.

>> +  - reg
>> +
>> +anyOf:
>> +  - required: [channel@0]
>> +  - required: [channel@1]
>> +  - required: [channel@2]
>> +  - required: [channel@3]
> Interesting. I'm not sure we have never bothered to document this before and there
> are other devices for which some sort of channel config is pretty much needed.
> What is the justification to have this explicitly listed here?

There is no need for the channels to be explicitly mentioned here. I Shall drop them.

>
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/gpio/gpio.h>
>> +    spi {
>> +        #address-cells = <1>;
>> +        #size-cells = <0>;
>> +
>> +        dac@0 {
>> +            compatible = "adi,max22007";
>> +            reg = <0>;
>> +            spi-max-frequency = <500000>;
>> +            reset-gpios = <&gpio 19 GPIO_ACTIVE_LOW>;
>> +            #address-cells = <1>;
>> +            #size-cells = <0>;
>> +
>> +            channel@0 {
>> +                reg = <0>;
>> +                adi,type = "voltage";
>> +            };
>> +
>> +            channel@1 {
>> +                reg = <1>;
>> +                adi,type = "current";
>> +            };
>> +        };
>> +    };
>> +...

Thank you,
Janani Sunil


