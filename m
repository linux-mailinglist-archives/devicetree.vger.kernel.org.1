Return-Path: <devicetree+bounces-318014-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xce6OkcORGodnwoAu9opvQ
	(envelope-from <devicetree+bounces-318014-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 20:43:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2226E7435
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 20:43:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=cqee+qsZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318014-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318014-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 19FDE314B37D
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 18:38:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3BE83E0C77;
	Tue, 30 Jun 2026 18:38:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112643DB635
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 18:38:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782844713; cv=none; b=WFER9/rqIM+2EYRMfJKqOKpGtgmm5YLRVHR0JKKqDzBlI26xXCpcgrFhGUwQFGy8A2byU9imNFVsPuA23b5gkhntQ8ulzaZno/sRHZ2Cp3nKjTgXYJBb3e8lWASu5/2w0xUWQHzU4nt6DbWmdCafFk4YW6h3bjM+xn2XMKTkj9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782844713; c=relaxed/simple;
	bh=cbvkjGExjYUHL2QoSeT/1yJv2i7vXmEZZ/yTfY2vjE8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nfJueNyknK8llNIxiP3qn9wJkfqoiP9/+eXvFTShSrAY5a5jhCNHT2aK1K6b6ZFzb+HcvyBZW9X7QLIVO6nE2xhFyvO5nrriK2YbZOl592cmiZ0pfps/h4WXAK820gOHroggdMxvVEVNPkiyMISJcyeU5m0AvboTX+WBOdzUga4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=cqee+qsZ; arc=none smtp.client-ip=209.85.210.44
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-7e9eaf04bfaso527217a34.1
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 11:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1782844711; x=1783449511; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9rgrcJFnBRvyDKAXtDJFOwtKqCg4JfQ5wObL2xRUARM=;
        b=cqee+qsZ0+rQIHuUOdzntuJveTo8DKIL7PBX3IwcLMD+WSaTwDB43sangDZPGTU8xi
         cWdg/HWGhBafEHtob/hZqNioCkl5dEsObahHDqGOUqh6gcoB8niVeAasyklLbJsMzkDQ
         zuBC234cxxgFsZE0L/jf5BLRq1BrPOhtjydWAckEpAZhvf9we4Ce2HSjpbxPhRYX/pVk
         ounRMJCbm9lcLDQi6FH/rxZGvD1dlscdPAR1v1GBKXvnEKkEMA3qWqXRhHMSpqNUbGKB
         4JU68NxV8Q/ts3tjH2r6ARE/MR28NsWMKVQxkwq73YEKfbRtv8RIZvqA6uk+5lDNAlsO
         6UMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782844711; x=1783449511;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9rgrcJFnBRvyDKAXtDJFOwtKqCg4JfQ5wObL2xRUARM=;
        b=SfgYcjvvBFQYa9Q1xF6Ps+mGU0d8X0B9WO306IzCqKlIEfhOBf+2B3ernxKNaJoQuZ
         z5wdBxV4KmcqK4Nxprv755kIp+UYx4rIB5jsnFrwlfVvui19nBHc+jGMzLu52duHiGCY
         4XNA23GhrIbQOIbr/p1qTkTZ+QcOFPo/x47aRv6vLxpuSWzh78D8fCnKMtlMmPmLYb6/
         9X4J2r4M5HhEEQebhibQxEAWWwhpB/uc+xWnEclihNm2XLvjseuZQZju39kxyumC3q5a
         gFobjjc5pAbDSpKe4Py+5IslOjEB3Ytuv2Tv8nMNxWsGsrU1xJEz/u2WKrj5IQjqXJXt
         3WHg==
X-Forwarded-Encrypted: i=1; AFNElJ83Ej1OOJ4IHjalCEiiWg74OjOt4+9c6acWphE4dOnkLgB5zk1j+dq8yLUS1CdGWIdUvEhYXLmrgH5D@vger.kernel.org
X-Gm-Message-State: AOJu0YwreLLfNZAOTNHCFM544Zx/4311jH1FPTIeWTk0umTasft/EuxR
	UbPdV28MYPLF5LA7bL3MYfHh2rG5762m6wuwGINu1QrSdbEVAdjX+pvONyokYTGlLk0=
X-Gm-Gg: AfdE7cmmwm0NvQbnWMDN5xQZWmN8vXXPNuG/IUpK3GTTOPXAm3H7EJLWDDdXKlIrAUG
	4uzSkoHIhls+0jvqLmEOzt9HlElrFYAc1YC2mHbR0Lu6frxP4tE1DlzfXGDo+I8rVfoM/uFpegs
	lqjDBfpaMoThWbV1kIIA5o75anpCuQ4tVXx7p91ne7Kiibl0jgY8n38+MaRtXntJHmjjXi9ZBQL
	0Sj76rjAHbE27GO8Q5OShvXEYhmkivg/33cFisTBEtnBRz0+rXFX4rzShH47XiAqU0DUKvGXB5M
	8/DdyMCO37hciW20kv632G8BR8q36K6RQ4CR4k+JU2H9MvfSW4xPzGPPzQMYQPwIjkZXheWbNlz
	VICH5awM0AbCW+n30K8z7vf31P9skszQ15GSQAj07yzfzgGwygkXBGGS6vPhyPJWmkucKsn+ZAw
	AoJh8w1fGaGKn2hhnxKuz3qSQ1hv+O3qbtrCsWrGQB711C3bYWU4zqJRl2IBMLKL0=
X-Received: by 2002:a05:6830:7306:b0:7e9:e860:6e7 with SMTP id 46e09a7af769-7e9fc2a622fmr888833a34.30.1782844710983;
        Tue, 30 Jun 2026 11:38:30 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:e190:78b2:dd4e:ba94? ([2600:8803:e7e4:500:e190:78b2:dd4e:ba94])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e9ec2e353fsm2942446a34.20.2026.06.30.11.38.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2026 11:38:30 -0700 (PDT)
Message-ID: <2a0a9fe9-b3b5-49a0-bf58-5035655fc16d@baylibre.com>
Date: Tue, 30 Jun 2026 13:38:30 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/7] dt-bindings: iio: adc: Add TI ADS126x ADC family
To: Kurt Borja <kuurtb@gmail.com>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260628-ads126x-v2-0-4b1b231325ba@gmail.com>
 <20260628-ads126x-v2-1-4b1b231325ba@gmail.com>
 <946a30c9-01e9-42f1-bd2b-b7934fda85cf@baylibre.com>
 <DJKX600ONL4O.1YUTCD1L9FU8F@gmail.com>
 <a16f61fb-4e98-4c30-8d4f-da084e27ebeb@baylibre.com>
 <DJLOAISPZLG7.VZYX8B16QU4K@gmail.com>
 <22e1e1c2-659c-4991-857c-b38d66769c7e@baylibre.com>
 <DJMJX5FGSZ9X.1GQK24K6CI60X@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <DJMJX5FGSZ9X.1GQK24K6CI60X@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318014-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:kuurtb@gmail.com,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[baylibre.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,baylibre.com:dkim,baylibre.com:mid,baylibre.com:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5C2226E7435

On 6/30/26 12:14 PM, Kurt Borja wrote:
> On Mon Jun 29, 2026 at 11:43 AM -05, David Lechner wrote:
>> On 6/29/26 11:27 AM, Kurt Borja wrote:
>>> On Mon Jun 29, 2026 at 9:21 AM -05, David Lechner wrote:
>>>> On 6/28/26 2:12 PM, Kurt Borja wrote:
>>>>> On Sun Jun 28, 2026 at 10:45 AM -05, David Lechner wrote:
>>>>>> On 6/28/26 12:36 AM, Kurt Borja wrote:
>>>>>>> The ADS1262 and ADS1263 are 32-bit, 38.4-kSPS delta-sigma ADCs with an
>>>>>>> integrated PGA, internal reference, excitation and burn-out current
>>>>>>> sources for sensor biasing and diagnostics. The ADS1263 adds a second,
>>>>>>> 24-bit delta-sigma ADC (ADC2) for background measurements.
>>>>>>>
>>>>
>>>> ...
>>>>
>>>>>>> +
>>>>>>> +patternProperties:
>>>>>>> +  "^channel@[0-9]+$":
>>>>>>> +    $ref: /schemas/iio/adc/adc.yaml#
>>>>>>> +    unevaluatedProperties: false
>>>>>>> +
>>>>>>> +    properties:
>>>>>>> +      reg:
>>>>>>> +        maxItems: 1
>>>>>>> +
>>>>>>
>>>>>> If we want to allow single-ended/pseudo-differential inputs, then we should
>>>>>> also allow single-channel (positive pin) and common-mode-channel (negative
>>>>>> pin) properties.
>>>>>>
>>>>>> This will also require additional common-mode-<N>-supply properties to allow
>>>>>> for the negative pin connected to something other than GND.
>>>>>
>>>>> Ah interesting. Why the N though? wouldn't a single supply connected to
>>>>> AINCOM be enough here?
>>>>
>>>> In theory, any AINx could be a common mode input by connecting it to
>>>> a constant voltage supply.
>>>
>>> Technically yes, but there is a pin named AINCOM intended for this
>>> purpose. Can we do a simplification here? I propose having
>>>
>>>   common-mode-channel:
>>>     /* AINCOM pin */
>>>     const: 10
>>>
>>> That way we would only need one common-mode-supply. Would that be okay?
>>>
>>
>> Ideally, we shouldn't limit how the chip can be wired up in the devicetree
>> bindings. It doesn't mean that we have to implement everything in the driver
>> though.
> 
> Makes sense.
> 
> I just have a doubt: In the ADS112c14 bindings, is there a specific
> reason why you didn't describe common-mode-<N>-supply?
> 

For singled-ended inputs on ADS112c14, there is an internal
connection to GND, so it isn't possible to have a pseudo-
differential input like that. I guess technically, it could
still be possible, but wasn't a typical wiring described in
the datasheet like it is on ADS1263.


