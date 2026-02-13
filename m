Return-Path: <devicetree+bounces-265293-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UEk4AeHgjmluFgEAu9opvQ
	(envelope-from <devicetree+bounces-265293-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 09:29:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5091A134099
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 09:29:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4FFF5304C139
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 08:29:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 822C332AAD8;
	Fri, 13 Feb 2026 08:29:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LUH/sthl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B6E32C317
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 08:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770971351; cv=none; b=VuSb5QRGDcIvC842PtiUbtZhqKYm+i4paOTCWpI2rFIR6YcDyvPQRkawtslnr9Jv9NQ5sLrJPxGmuLx6z4nExNGkCWCiQTasZL8qVnMgBVHMPE3DSmZh3xaxBexGagLzrYogjXGha/wz7SXN6wMqyKNII+EVmNsBMpphjCSJgoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770971351; c=relaxed/simple;
	bh=zvgY37ZQjsQkz5/m86ybqaE+gQvu4wV1jaVZs1RK1Mg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AFYpI2NIeVkBzm8cVnwwUaWWJcNcFKe6eLJJ7Bi+HQjnBsxA15Ki/BF5nj0ZO8934bQV6Pu1ic6bvRhzVzLW1vvvtvS7hixy4c9xPVGBeHEE/LWBgZWfqcBwNPBQx/ZyNbUCDf3a1xhn3+ovwOpNr+7nsHW6zPkBLCZO6yR/dxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LUH/sthl; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-7946a1f2430so7251117b3.1
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 00:29:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770971348; x=1771576148; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eb9SMDXx3XqEdbaMIOBwU3P2hDpL6y884kxQ2eGE+V0=;
        b=LUH/sthltK7mdMPmTGL23mil49iTOSK39JeJJz0oPrCtjEfHzeuyC3SS2YicDeHoK/
         3lAN4qUDX0eHnWBOJnPbEmQvXn8FymgTb3nDSDqdvQvYBOgR3okiDmzdda4vXOvl00i9
         Q4Ko1cJRYXtANJX34C/HTDbP+t8PrzWnuJKWsSf9xyE0rHcDToOfv6jrQPjAVu3rcWW8
         vaPAQqJ6I/Utr6yTTRHqgg+qNU+D9YiuBgh5f/fO0+2wCJieSUFtrT8sKQLck3u2Xkke
         GI1JJaljMOWtal098eVwPi/e/mUiYZ0CL5w1+I0uNVAeVVK78bAfEuiTaVNoemnIA0x9
         uAqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770971348; x=1771576148;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eb9SMDXx3XqEdbaMIOBwU3P2hDpL6y884kxQ2eGE+V0=;
        b=VCLfSZzFqsnx0b34rFRK9nRiZnHaGmPzk6EScAMMRRYGlBKxOuF8n+dp5VJcIZSxMg
         41NFLHXKjfZB2uSa2j77wDDW+DzRTtmS9LS82InVewtXWBlSp2J0kW2WZ8l5+CYetrQZ
         weQ1iWrqREIdebT34YwRGcGaiIh/R5jrx2zuR49mShRKIZIaN1lxag3sI7ah5qEKSGck
         YhSn/tkrY3h2x+R+HItnLNb6qepvp2bNtyRqs6XbM7zkqOpTRueCiASyTM+SuHZ2nz50
         KThOU/pLSHiRMYNA+XN3wit5KaZUM751frkIBwAxDsb/HCOUtYg/5y21d608PO2I9vZH
         Nf/g==
X-Forwarded-Encrypted: i=1; AJvYcCVFyzqp7svzZL2x1uv9lCbuBwlcxeqn0qOIti5EYj2nfI0BitV8Qu7VWB+ZlqXPmA1X3ms4IaQocez7@vger.kernel.org
X-Gm-Message-State: AOJu0YwCxut+N2DqoiD+7oODB2gyuWvbgYK2yMp9QxQnXarPxVu+O8UX
	+lDYXkA0POzXbFR3kmJ6ZsYR4yQwJ7ff2z/jPF5HRzUe1QIILgCuVhrj
X-Gm-Gg: AZuq6aJj9XB2My3cJ0fcq9q3zZeWGRmZzLRSXMgaEpIsPVd1TzfdPiNnihIOU4YkF2h
	KQiHm/rV1H0ZTnRHU9MLCbFPbI8SGO1pTZrolXbUQhG6+tS4LEl0PzWs/BP2JHv/spoKGEfK17Z
	CL0v4SOp8NfU9IDaxE8ZB2wWtAh0SYw8DjoFymukVNiuY0u51jJAvDtFUxcN7fMDfuHXu2nmb9z
	l4ML4FEAXskw9ylcO+2Pz0iMiPvJWGvfjVxVjR9DBBa7Df0COsXNaER+8hzIMY4fpA5UiWG37QZ
	HlkdIxiHfnYkEmZ0jCncx0ToyOSrrF0Z45A6IEdICdlHi53Hkv+dj2MMkIXtqP0BuqUpyHbM+8/
	y3KXobh6BVjp6tE/REtvHq2uz8oZ349kkII6wwoIuJ+5sShlINZMMQDGZMxqqla5haU61i1ywEe
	HicPxIITfPTv9HCtJBRszWyQKVqg==
X-Received: by 2002:a05:690c:6306:b0:78a:859c:63b2 with SMTP id 00721157ae682-797a0c22868mr8571517b3.30.1770971348077;
        Fri, 13 Feb 2026 00:29:08 -0800 (PST)
Received: from [192.168.0.40] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7966c254d1esm64369077b3.41.2026.02.13.00.29.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Feb 2026 00:29:07 -0800 (PST)
Message-ID: <3a20c906-647c-458f-a118-c7927495e7ef@gmail.com>
Date: Fri, 13 Feb 2026 10:29:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: iio: light: vcnl4000: add Capella
 CM36686 and CM36672P
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner
 <dlechner@baylibre.com>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20260212-cm36686-v4-0-8f587d4a72bf@gmail.com>
 <20260212-cm36686-v4-1-8f587d4a72bf@gmail.com>
 <20260213-unyielding-pistachio-ape-deda74@quoll>
From: Erikas Bitovtas <xerikasxx@gmail.com>
Content-Language: en-US
In-Reply-To: <20260213-unyielding-pistachio-ape-deda74@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265293-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 5091A134099
X-Rspamd-Action: no action



On 2/13/26 9:54 AM, Krzysztof Kozlowski wrote:
> On Thu, Feb 12, 2026 at 04:42:47PM +0200, Erikas Bitovtas wrote:
>> Capella CM36686 is an ambient light and proximity sensor developed by
>> Capella Microsystems, now a subsidiary of Vishay Intertechnology Inc. It
>> has an I2C address of 0x60 and is fully compatible with an existing
>> driver for VCNL4040.
> 
> I wonder why and how...

VCNL4040 shares the same digital interface as CM36686. All the registers
and their fields are the same. It is most likely Vishay just reused the
CM36686 design for VCNL4040.
> 
>> Capella CM36672P is a proximity-only sensor that
>> is fully compatible with CM36686, and therefore with VCNL4040. Add
>> compatibles for cm36672p and cm36686, with a fallback for cm36686 of
>> vcnl4040.
>>
>> Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
>> ---
>>  .../devicetree/bindings/iio/light/vishay,vcnl4000.yaml  | 17 +++++++++++------
>>  1 file changed, 11 insertions(+), 6 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
>> index 4d1a225e8868..2ba4d5de4ec4 100644
>> --- a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
>> +++ b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
>> @@ -18,12 +18,17 @@ allOf:
>>  
>>  properties:
>>    compatible:
>> -    enum:
>> -      - vishay,vcnl4000
>> -      - vishay,vcnl4010
>> -      - vishay,vcnl4020
>> -      - vishay,vcnl4040
>> -      - vishay,vcnl4200
>> +    oneOf:
>> +      - enum:
>> +          - capella,cm36672p
> 
> CM36672P is compatible with CM36686, but this is not expressed.
> Confusing commit msg and code. 

For CM36672P we create a dedicated compatible because it is a
proximity-only sensor which has the same proximity sensor configuration,
but ambient light sensor registers are missing (reserved).
>> +          - vishay,vcnl4000
>> +          - vishay,vcnl4010
>> +          - vishay,vcnl4020
>> +          - vishay,vcnl4040
> 
> Best regards,
> Krzysztof
> 


