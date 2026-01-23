Return-Path: <devicetree+bounces-259005-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YGrHEzaQc2l0xAAAu9opvQ
	(envelope-from <devicetree+bounces-259005-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 16:13:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E744F7795A
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 16:13:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4CD3B30848AF
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 15:06:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 324E228727B;
	Fri, 23 Jan 2026 15:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TrztauW+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f171.google.com (mail-dy1-f171.google.com [74.125.82.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE0526E708
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 15:05:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769180748; cv=none; b=J+9I9N0jLTXls+RI5YBeDj1DyJk4spSACClXSnZnZHxTXHAf4R2p96+RFw9/fq0nIK5/NgXQcBHJwWemvKIFCBH/1ZjQJKmXmKTMVyhNDWVFaT87GQPVaEya5eTHzxDCV/Ur7rm1A+humquX7M0BlKXe1VzLr9DKwYyRBEYwEzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769180748; c=relaxed/simple;
	bh=MJWOrsqu1ozIpS9Hn0QM4c2g6j7Zunz0RRgLifdsaXo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r0zvT+C+CeTansAsmbFnI5bPnMjdlT63KoMzegvoq0fbr4ki2R2CsA0BjqIZGUCElHsLpeK3ov3AnGtx3UQS/zl2OxGk2zBrtztWSlv9Vk3YLeUXbo3LoXzDwgXCSl03U4RwCUhPMcUcb6U1nFc43iZGisX3mvl9UTHtDc6nTtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TrztauW+; arc=none smtp.client-ip=74.125.82.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f171.google.com with SMTP id 5a478bee46e88-2b71557299dso3236604eec.1
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:05:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769180744; x=1769785544; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=ipp9qmjRkxMvUuONG/HSeKJSYeaTzHE3nlSbsD5unT8=;
        b=TrztauW+QJAdiAZP19chiwRX279rP/GklO6ktDMs2273npop3BTGu8YVFl3bqmQCC4
         6IEUU1lR2fSt75BfxK6MhRkVwoJ5UcjfRCYRJWv3nKde7+WG5tbM072i7BvyavZxucnR
         JCLQE8rN1S9BOb0OGtEnofdUlIbvL0Xj6+gWutV242d93VOs46yarvuM6RC8uFkMQyTe
         ctEN2a8LPNLXjAbJ0l4JATNlwbnHyKDL8cKVUVf85jR3THCkWCcrKIe8SXz8NUNgrEI+
         9S4xumoYmJXHWhewRhpztKYY/I2gS5WaRTjQNgfYwVn8ol8Ho7pj0NCf+kd1qc/FXPkR
         Aujw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769180744; x=1769785544;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ipp9qmjRkxMvUuONG/HSeKJSYeaTzHE3nlSbsD5unT8=;
        b=R65XPFJhlPyhYShNX864nWE9+YppGH1ZsL0jRmecPo72CSTDgSjvvt/jWrLLtbVnc/
         WiTNr86Z4m+bFNPN8CJfF0ciDeG2+hNszh4s1xalDgzaTpPZLqezmKISyqf2JFRp093/
         iQmX6bFIfDnWyOoZ7upCkN2389f+M25jz5GhKBvsnKvVompHexUcLSW/lO+0pkYCjm+W
         OM5mQtm1jMuD9yAkja7rXWP2WfezYgTOl0mSzlDje50RbtMec/ucWiVE8DSuqSZAzohN
         d7xasdFOCGkgD7usCDyouDeCWYqZlYzmOypSGQPViAyqveQ7kIUBue96FOGDpLZmqlL9
         dxow==
X-Forwarded-Encrypted: i=1; AJvYcCUpsHiRF4vOMDR399cMpWcZgqMkZ4GidwFb9YuV71j6u2KGRaKV+J6IZgdCBZtu0BgVWvYGT8YmQkJS@vger.kernel.org
X-Gm-Message-State: AOJu0YzR52HdIbv6p+01hCKgQutV+R67IkMhm2OTIZMo3R0VD/+SqcEQ
	QVqUmqBMroo0RQJuJivXFtzXBfnE9VLtbWROLNrfIE0iBJykn5185jZ2
X-Gm-Gg: AZuq6aI5KLibxHQy8J9Nd6UEm57BvMKDLL0zRGQjdOCVOPuXqRZ84iRzHFxjxr1Z2IZ
	f8YQYcO6kRqee43XpUPRfi2265ai3uZMjehDdTgNwxBrb5SijrWAh4E9yuUsGVnjHF7C3/N84zP
	XMox6hxLNr8ONjDnkCLHVlwmW2HcBTopq33gj2tj5NlvrksGqXX6PaVMo+cWQG8H1Zs0RTRoNnF
	qbzzoxOPcMKvt9ed7X53xGmx3cI6mCtnyF+Ip2TuOsAcwlV81TX1tEwjbFthRwoNE59YB05JbY6
	41X4YB+TRUH0CWlRckNDkWOOCzOTpY7gCaOTYGlediPnwGLIO2+OTjxmaz4SmZ8CxcWNh9OHOwL
	PA2OnWBApunOxpFOcmMtj4POSWIxyn+heySuejXF7ngRVCeV1KIVF69SnQz6VjOFqzy6K39K2KK
	0LA8GFza3+YzPsDonWaSdJM553GAU8bayEvavkiRzMehr1Ng3XPhraBOqUi8n1
X-Received: by 2002:a05:7300:a49a:b0:2b0:4c5f:c05c with SMTP id 5a478bee46e88-2b7399b0eeamr1435896eec.4.1769180743450;
        Fri, 23 Jan 2026 07:05:43 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b73a6c31basm3228902eec.9.2026.01.23.07.05.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 07:05:42 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <176c91e9-aba6-4b4b-893f-99e5ef9e4b8b@roeck-us.net>
Date: Fri, 23 Jan 2026 07:05:40 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: hwmon: tmp102: Add TMP110 and TMP113
 devices
To: Flaviu Nistor <flaviu.nistor@gmail.com>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Jean Delvare <jdelvare@suse.com>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, linux-hwmon@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250929170730.8285-1-flaviu.nistor@gmail.com>
 <20260123125747.4270-1-flaviu.nistor@gmail.com>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <20260123125747.4270-1-flaviu.nistor@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-259005-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,roeck-us.net:mid]
X-Rspamd-Queue-Id: E744F7795A
X-Rspamd-Action: no action

On 1/23/26 04:57, Flaviu Nistor wrote:
> On Mon, Sep 29, 2025 at 08:07:43PM +0300, Flaviu Nistor wrote:
>> On Mon, Sep 24, 2025 at 19:12:26 +0100, Conor Dooley wrote:
>>> On Wed, Sep 24, 2025 at 08:55:39AM -0700, Guenter Roeck wrote:
>>>> On 9/15/25 10:18, Conor Dooley wrote:
>>>>> On Mon, Sep 15, 2025 at 08:08:18PM +0300, Flaviu Nistor wrote:
>>>>>> Add a compatible string for TMP110 and TMP113 devices.
>>>>>>
>>>>>> Signed-off-by: Flaviu Nistor <flaviu.nistor@gmail.com>
>>>>>> ---
>>>>>>    Documentation/devicetree/bindings/hwmon/ti,tmp102.yaml | 2 ++
>>>>>>    1 file changed, 2 insertions(+)
>>>>>>
>>>>>> diff --git a/Documentation/devicetree/bindings/hwmon/ti,tmp102.yaml b/Documentation/devicetree/bindings/hwmon/ti,tmp102.yaml
>>>>>> index 96b2e4969f78..840b5306a8cf 100644
>>>>>> --- a/Documentation/devicetree/bindings/hwmon/ti,tmp102.yaml
>>>>>> +++ b/Documentation/devicetree/bindings/hwmon/ti,tmp102.yaml
>>>>>> @@ -13,6 +13,8 @@ properties:
>>>>>>      compatible:
>>>>>>        enum:
>>>>>>          - ti,tmp102
>>>>>> +      - ti,tmp110
>>>>>> +      - ti,tmp113
>>>>>
>>>>> The driver has no match data and no compatible based decisions added in
>>>>> your patch. Why is a fallback to tmp102 not suitable?
>>>>>
>>>>
>>>> That should work for tmp110. However, tmp113 does have additional registers, and it
>>>> might be desirable to report the content of those using debugfs. Fallback for that chip
>>>> would work for now, but that might have to change later if support for the additional
>>>> registers is added to the driver.
>>>
>>> In that case, only the driver would need to change not the binding.
>>> That's fine though, of course.
>>>
>>
>> I am a little confused and I would appreciate some advice if I should leave
>> the series as it is or send a v2 only for documentation and Kconfig updates,
>> droping the binding update?
>>
>>>>
>>>> Guenter
>>>>
>>>>>>      interrupts:
>>>>>>        maxItems: 1
>>>>>> -- 
>>>>>> 2.43.0
>>>>>>
>>>>
> 
> After some time (probably to much) I went through the patch again and
> based on Rob Herring response:
> https://lore.kernel.org/all/20250922162004.GA199858-robh@kernel.org/
> and a similar example for sensirion sh20, sh21 and sh25 sensors,
> where individual compatible string were added in the binding and the
> driver even if there is no match data:
> https://lore.kernel.org/all/20250908-sht2x-v4-3-bc15f68af7de@gmail.com/
> https://lore.kernel.org/all/20250908-sht2x-v4-4-bc15f68af7de@gmail.com/
> I think that the patch can stay as it is for the binding, so different
> compatible string can be use in the device tree in order for the real
> hardware to be describe.
> 

We'll need an Ack for the devicetree changes from a devicetree maintainer.

Guenter


