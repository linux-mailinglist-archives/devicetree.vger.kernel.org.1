Return-Path: <devicetree+bounces-246649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 09616CBE68F
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 15:52:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C15AD30221B0
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 14:49:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBEEB34A796;
	Mon, 15 Dec 2025 14:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aBfgKRJ/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 681C43B8D5E
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 14:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765810178; cv=none; b=l293IlSnIHliPXufJaKlCRaFZduGgl/jR+XvobsBTrJg0kdD/HZkFhwS1JVQJKHjlkMLD5Q3gocPcct1xnPDe3720/8UZivlGl/Eg/AK4RWwG3L6vhF19pdwoEYQWdLnQ7Bx8yYUvAJTGRNZzKAJFz8I+Ui7BGZShRln59AfMFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765810178; c=relaxed/simple;
	bh=/m+knTh0E1M2rZ0Z8fiBqCyqvapY0NF86oC76d3XA1s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UtFgMpbbaYhwL0cuy8ChASVzg8PeERFMN5N+Q1LkaMUuQPti2NZ8lQGFAqwF7i7q8erHr5rydpYzMn9N1H098hzlUgSG+z5jmVXjq3qfuJG70xPnFz5rUhk8ZBgSKSB1lmyZSmvJzu1LMzK3QWqK4wwtdC32KNVyKmL6za56njg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aBfgKRJ/; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-7bc0cd6a13aso1967830b3a.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 06:49:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765810175; x=1766414975; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5wMsSg+3EyGIctnEV/0UUxXYttTh9TK1dkuUNFrw/h0=;
        b=aBfgKRJ/nDzY+4Oh5cv6gGFBY6XvgpwLMwzSqG2Bgzz8ecyPts8nVbwcytfpc0IeSd
         0P5+dQW5Sgrbt9wKPrt4j4g5Wpfognhgkzy0Xlsa6iK+lmBwA7eKWo6MRs+qPUaYZy4f
         Fr6yf3KdaeeL5TDX51uHlePoYJyHzuhtcWtO1JcvaJEAtKPJWZO1Sng2qsdRlL7gnCZ7
         iEU29voX4FAxkuaSanF+3ZqsNB/t5ePa1nzwDkVUALcRmLuNL1pDUuZtf/eE/6cCtm6y
         d+ga1ZP8RmDvPWzt38Q1aYr0mdbWahZ9hZEGq2+ht+zVrHCrolZf2ScsBBwsPrZIRcxq
         049Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765810175; x=1766414975;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5wMsSg+3EyGIctnEV/0UUxXYttTh9TK1dkuUNFrw/h0=;
        b=j9U5WfdcoiUOl5YI2wQsHTiN3YnZ+oh3XzSaIDYdZkwSywUet8Vav93tL1qvE1ZOQ/
         /dbh/pFJKzw5AoRyzkoVkkkCtYUG0Da4BU3ORz9REKuKjwYXvw7at9ih7WmF47wWlrGz
         cT0qrC03p+MUOcBkHsGuLAydSh0WIXXICyFQCcpzCWs/Wgo7YZzH7Tevuj6SRfmSLxS2
         gU9ajpWf38Fw8Z1scii+HnQRqtzEGYES6tRgdTwgPt04WyB6c4YAqKg/zdF+tdlc4wT7
         6RoQjrdXl1vL2TPExR0yrG6b1g79ogjdSEfX7NBMTDVyFV1wbabZO3DnpIPFa7abnNW+
         T10Q==
X-Forwarded-Encrypted: i=1; AJvYcCW+F0AZDOcMI1/Fv30UiEqA50aXvMI11h0U/HyDUzaYIjwXhZIpXH9tkAa4XdNqIvLrWHjXcG3OVCqQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz73Kthm8Y7RxIuRGMUujr884WYvDw9JTm0qL7WOZcdcYYxZk73
	GWzWiGGQ8MnQ0wPxSbm6pSMqvOUm03vRTpCESj+jc4e6EmngKu339kmC
X-Gm-Gg: AY/fxX7LcQ3ImK8ELgNeQFqTUj6qTQOHEzE4XvCj4lARIFv+2rCqSZTa1AQ6W8yumpI
	zrMkF1qeV5Rq5g9H3tqT4E5MQyDvXbTkyklwDxiuajjQfejg5shLezvWaAO6n/OQ8FT56HZqQiL
	VIyT7CE+TObTS6k0tb8ZmWxM5VaYpRiuZg1dx/fev4FtC+dyjUu0yXeABGvm/6D9Ae16d1Om+1R
	epiLSoitXUm3eTQEVd3RsvPwcKxhgzeJVYY0CnDd/NcZY4eL2WMESn/v8FNXlJVfVN23JAFvQ3k
	oiyoHRR2A90Wewrcc2Xnw88FhHxdZ47LPZKNVSYPbaPj2Q0TNwE9G5WBTSfqFuZxAtJIJd7UDvR
	v6ZEqjlzmphpjRy2vs9mpjl5oxnZC8Dr3kChe2Iw8auecmQ3LQkGB2bjhYt0M5K07EAmPu1Tvpp
	hWyF/wAAYOmQLKkYD5rRjXn1lJHvp/mmW1GwQWmLBScF3vmhGpE8/oeSmR+lkV1hrqlBoD62o3q
	Q==
X-Google-Smtp-Source: AGHT+IGW1vL32/koMdZGp73rOzt+sAsrioh2S+qAIg+6TbUn3VCos+ZSPJ+Ot3qZlswrzqKctOrZHg==
X-Received: by 2002:a05:6a20:12c2:b0:35f:5fc4:d892 with SMTP id adf61e73a8af0-369aa15fb58mr10832984637.19.1765810174507;
        Mon, 15 Dec 2025 06:49:34 -0800 (PST)
Received: from ?IPV6:2402:e280:21d3:2:50bc:8636:2ee8:5158? ([2402:e280:21d3:2:50bc:8636:2ee8:5158])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c0c2ad5663dsm13293460a12.17.2025.12.15.06.49.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 06:49:34 -0800 (PST)
Message-ID: <d25b91b2-20c2-492a-b056-bf3bdaf4494a@gmail.com>
Date: Mon, 15 Dec 2025 20:19:27 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: adc: Add TI ADS1120 binding
To: David Lechner <dlechner@baylibre.com>, Jonathan Cameron <jic23@kernel.org>
Cc: nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251109141119.561756-1-ajithanandhan0406@gmail.com>
 <20251109141119.561756-2-ajithanandhan0406@gmail.com>
 <20251115183144.15b3e236@jic23-huawei>
 <5cb6243e-f47b-48dc-9f43-299cde632e08@baylibre.com>
Content-Language: en-US
From: Ajith Anandhan <ajithanandhan0406@gmail.com>
In-Reply-To: <5cb6243e-f47b-48dc-9f43-299cde632e08@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 11/18/25 5:49 AM, David Lechner wrote:
> On 11/15/25 12:31 PM, Jonathan Cameron wrote:
>> On Sun,  9 Nov 2025 19:41:18 +0530
>> Ajith Anandhan <ajithanandhan0406@gmail.com> wrote:
>>
>>> Add device tree binding documentation for the Texas Instruments
>>> ADS1120.
>>>
>>> The binding defines required properties like compatible, reg, and
>>> SPI configuration parameters.
>>>
>>> Signed-off-by: Ajith Anandhan <ajithanandhan0406@gmail.com>
>>> ---
>>>   .../bindings/iio/adc/ti,ads1120.yaml          | 109 ++++++++++++++++++
>>>   1 file changed, 109 insertions(+)
>>>   create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,ads1120.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/iio/adc/ti,ads1120.yaml b/Documentation/devicetree/bindings/iio/adc/ti,ads1120.yaml
>>> new file mode 100644
>>> index 000000000..2449094af
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/iio/adc/ti,ads1120.yaml
>>>
>>> +
>>> +  vref-supply:
>>> +    description: |
>>> +      Optional external voltage reference. Can be connected to either
>>> +      REFP0/REFN0 or REFP1/REFN1 pins. If not supplied, the internal
>>> +      2.048V reference is used.
>> How do you know which set of inputs is used?  Looks like a register
>> needs to be programmed to pick between them.
> I would just make two supply properties for this, ref0-supply and ref1-supply


Hi Jonathan and David Thanks for the review,

That makes sense! I'll change the binding to use two separate properties:

        - ref0-supply: for REFP0/REFN0 pins

        - ref1-supply: for REFP1/REFN1 pins


>>> +
>>> +  ti,avdd-is-ref:
>>> +    type: boolean
>>> +    description: |
>>> +      If present, indicates that the AVDD supply voltage is of sufficient
>>> +      quality and stability to be used as the voltage reference instead of
>>> +      the internal reference. This allows the driver to select AVDD as the
>>> +      reference source for potentially better performance.
>> This one is interesting as I don't recall anyone arguing this made
>> sense before.  In what way better performance?  Are their boards out
>> there where this definitely makes sense to do?
>>
> Seems harmless to have the property even if no one ever uses it. But I would
> be curious to know the answers to those questions too.


I included this property based on the datasheet mentioning AVDD as a 
possible reference source, butit doesn't claim this provides better 
performance, and I don't currently have a specific use case or hardware 
design that requires it.

How to proceed ? Need your valuable suggestions.


BR,

Ajith.

>


