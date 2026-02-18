Return-Path: <devicetree+bounces-266322-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CF6qDY11lWlCRwIAu9opvQ
	(envelope-from <devicetree+bounces-266322-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 09:17:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDBF153EE7
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 09:17:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2D9543006B47
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 08:17:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42811315D48;
	Wed, 18 Feb 2026 08:17:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nTx7qOme"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA34430C60A
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 08:17:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771402632; cv=none; b=iagKzKPEHJ9nNMd74Ep+elLRTWA1CWsSn4lnxxsdWDxbVhBhLtkuA8uUYXr/JHU80EGBjcAUS3wky4I4c99pqWC6Jk2+J22aXYKBGf7TyBOvPtTHgzFLt6lPsrccNOSMVQvbGjULxliEMcaqnanaD7uTkYNf37D6Xqj4dpqlqTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771402632; c=relaxed/simple;
	bh=9moeBSWAnG3dtSIbdW4ZnD0x20PyiAy3DOWv8ETJgx0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qrJaSA02COdny5mHB+EdbCwvfriFMK86MKH81DAazNZ0FVjRW7cHNaqnCC/vGuasBbq08w+jvq+gDkhyC7/mWv+hjg8MEnf+F36jDIcVvh4+A5zAuXazmremCL8q9x1SGpCTZD7pIbD1r8eolsQ52w+u/LvDNMfUFH0V7puc3tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nTx7qOme; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-59dd4bec4ecso6269358e87.0
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 00:17:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771402629; x=1772007429; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5r0xdr1WGpCeGTUqLANRfTri1dCqx5zok5lpbzySRko=;
        b=nTx7qOmeum236BXFrq/lI95npYcbZdRkmrsYpw6z44rQeeD2T//+MtGlF4miv5w2A3
         973XqBQSOtxZaws0YxAmu+XEEJNfeGXkBlZFU5Z+lKYprZhMNfCc/i0gIofqZCTjnUn/
         vVKH4KurYSpHbro3gpWg8JEiIu6tPOrKkEyhgu0fVuyXnNMQTtY8kYWz6F7X002VpCx0
         VI0Gq1zYb0an31wBKti3j8ihdTIBaDKT6QjtbmQjIBr8z4GPRYyxbPS6qdw/kdbxdOWb
         Xmwf48ZWRjNGLbJS23hhX4iX20jPRH8xdAg3+1VlzLeqSvVxnb/78oDeP5vADrvsirma
         BKzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771402629; x=1772007429;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5r0xdr1WGpCeGTUqLANRfTri1dCqx5zok5lpbzySRko=;
        b=er3LGc1dgnbd9OSkq11cZ037uj6kn7mdu1x3ma/3HGRRt9RsECFjxWB3i1MsgIy95i
         f7IqfncgwCj8at7VPaN6yIU0TTg1n1NFn9I0gBu++5q/nxSOum9mqYNwoh/+zDhKMOhv
         zumMTUcKavj+yqdCLwlvTZ5cEd2rw2xSZozlpqVuZvBGPW8oWgwR1pdmgVUtTzkVk4Gj
         Vj+pH0ETjcBO27eIq1xzd4IgefCDyrhOVsjOKq2acfkQUoja0UXnQTGptFNg1KBNSQKc
         ENaObkicgvBR6Q2Tcx7gopvb/WDJqgcCEcKzwXTzq7Xn4KEoTg9G/RS0kctCWj5bDNyR
         J1Rw==
X-Forwarded-Encrypted: i=1; AJvYcCW2QaAhZ9i8vDfAWFTsI6j9+J9bJPZN8IsohGDtX2yBTSDAISMZUWw1iNHSSA+ZZwldgEkL5LO7o15C@vger.kernel.org
X-Gm-Message-State: AOJu0Ywy4/KS/20GET4B7cG3UUHoGYno6jYuzo0RELT7+XcfM20flyUL
	vAkJROMq9nBDLWUxqy1iMYXf+H6q5VxVA+xaKz0/mk20r/cGntf+T6aM
X-Gm-Gg: AZuq6aLB1iL1Jd/pNwlEQfW+lbuhLnoB9WWI4Tzo4i0+PAuVTQ5QN59Nk4Lfti3qf0w
	635AgBXKjVz5aIfjyWJx2UcmHwYVBCE9LhA+/iOCSK0UmTQ0NMTpxIquiBawR/2+k339hOkbu6j
	mYqo9cpH/IrCSEQsH0gzSw3P19l4KLFgtxD86V1AkGOY+EHOazbKSu7jwqTS7gNTPTPaZOLRmDG
	pdpe3oNsFJqxOQrKVeDXVKa5aa51iHer8KR8rYC4ii9pRBC8Bss+cJJohDw+kG1RXhASK2wsKrt
	Svnu0MRK0V/srRfFBfXP5Q5f8yU/owy92QJtjFAimijOicImDmy1uyz05QFjOwlzcmGeQt5+XbZ
	SWWUJPaRP4ZvOkrtka5RWXIC9hGrn7uhBhX39Y38csHxt5Q49VUSR+pq68vKgNp158605KtaRTm
	o4v3AmAwQ8Xt6cAtyMi2oTE/0UErky6go6LW0mhzukL2ZthnYf8gvOWoXN+MuqbNp1kRBO+gS18
	bd3yB2TZKITeB4IJM0=
X-Received: by 2002:a05:6512:1150:b0:59e:6c24:3f91 with SMTP id 2adb3069b0e04-59f83bbcd19mr369556e87.34.1771402628519;
        Wed, 18 Feb 2026 00:17:08 -0800 (PST)
Received: from ?IPV6:2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703? ([2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f56867fsm4391846e87.24.2026.02.18.00.17.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Feb 2026 00:17:07 -0800 (PST)
Message-ID: <66dab64b-ca3e-4ae0-81d6-0500899757e5@gmail.com>
Date: Wed, 18 Feb 2026 10:17:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/6] lib/linear_ranges: Add
 linear_range_get_selector_high_array
To: Amit Sunil Dhamne <amitsd@google.com>, Sebastian Reichel
 <sre@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?=
 <andre.draszik@linaro.org>, Lee Jones <lee@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Peter Griffin <peter.griffin@linaro.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Mark Brown <broonie@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 RD Babiera <rdbabiera@google.com>, Kyle Tso <kyletso@google.com>
References: <20260214-max77759-charger-v6-0-28c09bda74b4@google.com>
 <20260214-max77759-charger-v6-4-28c09bda74b4@google.com>
 <5d889f66-7697-4a39-beed-33ace693a1ef@gmail.com>
 <b1df24fd-bbb6-4991-be52-dc1ef694db25@google.com>
Content-Language: en-US, en-AU, en-GB, en-BW
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <b1df24fd-bbb6-4991-be52-dc1ef694db25@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266322-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mazziesaccount@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: BEDBF153EE7
X-Rspamd-Action: no action

On 18/02/2026 03:45, Amit Sunil Dhamne wrote:
> 
> On 2/16/26 5:58 AM, Matti Vaittinen wrote:
>> On 14/02/2026 05:12, Amit Sunil Dhamne via B4 Relay wrote:
>>> From: Amit Sunil Dhamne <amitsd@google.com>

// snip

>>> --- a/lib/linear_ranges.c
>>> +++ b/lib/linear_ranges.c
>>> @@ -241,6 +241,42 @@ int linear_range_get_selector_high(const struct 
>>> linear_range *r,
>>>   }
>>>   EXPORT_SYMBOL_GPL(linear_range_get_selector_high);
>>>   +/**
>>> + * linear_range_get_selector_high_array - return linear range 
>>> selector for value
>>> + * @r:        pointer to array of linear ranges where selector is 
>>> looked from
>>> + * @ranges:    amount of ranges to scan from array
>>> + * @val:    value for which the selector is searched
>>> + * @selector:    address where found selector value is updated
>>> + * @found:    flag to indicate that given value was in the range
>>> + *
>>> + * Scan array of ranges for selector for which range value matches 
>>> given
>>> + * input value. Value is matching if it is equal or higher than 
>>> given value
>>> + * If given value is found to be in a range scanning is stopped and 
>>> @found is
>>> + * set true. If a range with values greater than given value is found
>>> + * but the range min is being greater than given value, then the 
>>> range's
>>> + * lowest selector is updated to @selector and scanning is stopped.
>>
>> Is there a reason why the scanning is stopped here? What ensures that 
>> the rest of the ranges wouldn't contain a better match?
>>
>> The logic is now different from the 
>> linear_range_get_selector_low_array(), and I would like to understand 
>> why? It'd be nice if these APIs were 'symmetric' to avoid confusion. 
>> Hence, I would like to know rationale behind making them different.
> 
> 
> The rationale for this being asymmetric is to find the tightest upper 
> bound for `value` < minimum value across the linear range array.
> 
> To better illustrate this with an example. I have 2 entries in the 
> linear range array [ [4, 8], [11, 15] ]. Let's assume I pass a value of 
> "2".
> 
> Based on my current approach, the call to get_selector_high() would 
> successfully return with `found`=false and a selector value 
> corresponding to "4".
> 
> However, if I continued to search, I would end up the selector 
> corresponding to "11". A selector corresponding to "4" is much closer/ 
> tighter than "2".
> 
> For values higher than the highest value in any range, this would keep 
> iterating and end up returning an -EINVAL.
> 
> For in range values this would work as expected.
> 
> This implementation assumes that the linear ranges are provided in 
> sorted order, an assumption that I believe already underlies the 
> existing *_low_array() logic.

Ah. I think ... I didn't think. :)

It definitely makes sense to stop scanning if the range_min already was 
greater than the given target value. Thanks for the patience and for 
adding this missing piece :)

Reviewed-by: Matti Vaittinen <mazziesaccount@gmail.com>


---
Matti Vaittinen
Linux kernel developer at ROHM Semiconductors
Oulu Finland

~~ When things go utterly wrong vim users can always type :help! ~~

