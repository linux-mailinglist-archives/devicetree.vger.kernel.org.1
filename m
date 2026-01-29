Return-Path: <devicetree+bounces-260678-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AAMfGreuemnv9AEAu9opvQ
	(envelope-from <devicetree+bounces-260678-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 01:49:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EC0AA5FD
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 01:49:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A4B25303AA9C
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 00:48:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE379258CDF;
	Thu, 29 Jan 2026 00:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="o+PFxSFo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113D31FF7C7
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769647704; cv=none; b=PdsRXM/QOJTfE4Ky7SkuAQlcRgbZ76KzwF+3O7l7n/qYYPctTEdJUmyYGKqUNeOwzGQ9hu1c9wT7VATaqSuX964smGDth+/PqdWSQ1dkAnW7g1QUyXBu8WmR+vuj7p6sDt77VfVKpll5HpV247mz75UtKmqH0Plat7K8NdyPl44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769647704; c=relaxed/simple;
	bh=s6acg1YZfXk+qj172JzqyxisT0tzm2xM0+qf5t4a0b8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LJfae8iqdYctvh+YQdNOQHLIufaP4KnpDjwyI5vnBGVihlBbfRgpnEW/VA9vySiPVWLwQ3HpnwyvG+VLhApK2IJ62OHftKAPTmOacA7Th1M9kUukdt9Kj9w/VE4fmJ5Rd/AvnJpHPAdC43aynvd912I8WTGjafybwOdQVDZjyFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=o+PFxSFo; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-45effa36208so343006b6e.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:48:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769647702; x=1770252502; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kbKwb212VLN49qYjAz8qGGRthTaVQz4Y5dXEvDAnI6I=;
        b=o+PFxSFo7XvIeG4TiruB+ZjbmHHhDsi080xZSdTUd6DBuaxvW7ayNUADyvdjT8CDa9
         JnqKSdBbZu2SSDAYdXHC3v47UdgJ9P9cLBDibcSfk736+RJWxuTlWmt08gvOdvxmG4xg
         zUAnhlnItbDubVGC5CPcQ9wbTEmyWaHj1tQEvMSMKlNTVBpFvkH7R8mIlV6wN/4xtVW4
         k9zajwJhmOLX/+qaG9NrGWRfdzDQuiUQiTB5jNUHpE9cJ08E+jX3/sasaw1y6tjummXg
         ParmY99kwpMrB/q6yLfR1DEC+WQOAJwBCH/G1cCeBJxej2ZqGVcGs+a/QC9YyPw89G6L
         K6Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769647702; x=1770252502;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kbKwb212VLN49qYjAz8qGGRthTaVQz4Y5dXEvDAnI6I=;
        b=WlWs1fVSR4JlO7oTwgYFFgzNz3drdAUtsb11Z03q9N5i80qxdo0tz6Lopyrnf++BfY
         E3ljG6ZFRNre5quwQZkM/LRqiyGsnYqL+923deOQhrhJuqs0U3dz0lV/ab7j86+YQ0CA
         AGiDcu5LCFd0QgBdSxprO6WiuWqjoCPCC5zV0buWu6J1i1GAqCK6MdNGUxndJ20w8gQ7
         OyoKK0EcJc/rhfbjLMx9eibpJIEP8o0YLEUC3SfWq2+cr7gVmRZxvcTTY81wF9hb0IxP
         oJfgHCmaXFal1zoGFoVHGOJ605l5R1felKMtPyzcBvzxCmkYwrxj7zO6uZjFFEhX4ImL
         BKjw==
X-Forwarded-Encrypted: i=1; AJvYcCUAi0CnpdizoMBUl1omHzSV2vA5aSDA8eD1Jtae8C7+W8jGPfytg4Z3oMNOeTuxUxAMumctbX3xXlfx@vger.kernel.org
X-Gm-Message-State: AOJu0YyuicNb7uODmjTIpy0liy8dbVbw6Bryq7uQFUhPrr21l2eL6cqu
	2cjbbh70n2R2k2TVJjyafUdvTcmJWecXxHr1uAzv416J7tAZmNGuWR9gw6/t2kQyyLc=
X-Gm-Gg: AZuq6aKxaF6QKWD3QOvbIdVck3fkTsvjeVvUr+SSf0cx2e/9f9SD8KC9WzElcMcQwx/
	J3f2MBs4OqvNxlzz/5tgOQzDaC6SiOXxgnyO/HV9RhfOdzBLiZrW8NUGJI/gpfwJdyntXTF6DNG
	CtF0z2sXSQmGtLBF4L5jutcYma3Fw9wZhNKkeAQyo/ShsHzbVmzCqGN0ZFJIckAL1YvRZ6H80IH
	6jur9cP/LWKCV2SdC9BaqXCZMPZVjR7DlaHWB3qCZM1C604PahYQImfYpTtYEKwaea/kBzgBTbq
	QNWo/ymEjMEoBa8nuOrr59fTvvCxR3U0DubkXABT0xC89LksIie8RHUdkjPegc6eLczzqI3bFEI
	0Om7saFZyuxO5T01sl9nMyA4Aa6TmsRDp09S8dLw9Bi1zD8pM8ZQMChXQ8AKptrnmIDsETJ4m0G
	4wpfenDp3yrqFnUYp5BlBnUSRJckK1QcKmnjY6GZE7+nyK0LlVRNQ=
X-Received: by 2002:a05:6820:4a0c:b0:660:e444:1098 with SMTP id 006d021491bc7-662f2174a23mr3237977eaf.80.1769647701832;
        Wed, 28 Jan 2026 16:48:21 -0800 (PST)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-662f9a18776sm2344023eaf.12.2026.01.28.16.48.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 16:48:21 -0800 (PST)
Message-ID: <3184a357-9f32-4023-9c15-d0b2fd502f4b@riscstar.com>
Date: Wed, 28 Jan 2026 18:48:19 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] regulator: spacemit-p1: Fix n_voltages for BUCK
 and LDO regulators
To: Guodong Xu <guodong@riscstar.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Yixun Lan <dlan@gentoo.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Troy Mitchell <troy.mitchell@linux.spacemit.com>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, devicetree@vger.kernel.org
References: <20260124-spacemit-p1-v2-0-2c86b06694ba@riscstar.com>
 <20260124-spacemit-p1-v2-1-2c86b06694ba@riscstar.com>
 <501849d1-2158-471a-af25-da3dbb070422@riscstar.com>
 <CAH1PCMYWFhR-Np0-yq40eWqJbTmFub4qop6Wq2gA2mUqbJrtdA@mail.gmail.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <CAH1PCMYWFhR-Np0-yq40eWqJbTmFub4qop6Wq2gA2mUqbJrtdA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260678-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,gentoo.org,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[elder@riscstar.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,riscstar.com:mid,riscstar.com:email]
X-Rspamd-Queue-Id: B4EC0AA5FD
X-Rspamd-Action: no action

On 1/28/26 9:26 AM, Guodong Xu wrote:
> Hi, Alex

I'm going to keep all this context, but I have a few comments below.

> On Wed, Jan 28, 2026 at 9:28 PM Alex Elder <elder@riscstar.com> wrote:
>>
>> On 1/23/26 6:20 PM, Guodong Xu wrote:
>>> Higher voltage settings were unusable due to incorrect n_voltages values
>>> causing registration failures. For example, setting aldo4 to 3.3V failed
>>> with -EINVAL because the required selector (123) exceeded the allowed
>>> range (n_voltages=117).
>>>
>>> Fix by aligning n_voltages with the hardware register widths per the P1
>>> datasheet [1]:
>>> - BUCK: 255 (was 254), allows selectors 0-254, selector 255 is reserved
>>> - LDO: 128 (was 117), allows selectors 0-127, selectors 0-10 are for
>>>     suspend mode, valid operational range is 11-127
>>>
>>> This enables the full voltage range supported by the hardware.
>>>
>>> Fixes: 8b84d712ad84 ("regulator: spacemit: support SpacemiT P1 regulators")
>>> Link: https://developer.spacemit.com/documentation [1]
>>> Signed-off-by: Guodong Xu <guodong@riscstar.com>
>>> ---
>>> v2: No change.
>>> ---
>>>    drivers/regulator/spacemit-p1.c | 6 +++---
>>>    1 file changed, 3 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/regulator/spacemit-p1.c b/drivers/regulator/spacemit-p1.c
>>> index 2bf9137e12b1..2b585ba01a93 100644
>>> --- a/drivers/regulator/spacemit-p1.c
>>> +++ b/drivers/regulator/spacemit-p1.c
>>> @@ -87,13 +87,13 @@ static const struct linear_range p1_ldo_ranges[] = {
>>>        }
>>>
>>>    #define P1_BUCK_DESC(_n) \
>>> -     P1_REG_DESC(BUCK, buck, _n, "vin", 0x47, BUCK_MASK, 254, p1_buck_ranges)
>>> +     P1_REG_DESC(BUCK, buck, _n, "vin", 0x47, BUCK_MASK, 255, p1_buck_ranges)
>>
>> This is correct.  There are 255 possible ranges, 0..254, and
>> 255 is an illegal value.
>>
>> I think this bug is an artifact of a change I made while
>> chasing an issue during development, and I neglected to
>> change it back.
>>
>> Technically this is a bug fix but it doesn't matter because
>> this voltage value (255 represents 3.450 volts) was not
>> required.
>>
>>>    #define P1_ALDO_DESC(_n) \
>>> -     P1_REG_DESC(ALDO, aldo, _n, "vin", 0x5b, LDO_MASK, 117, p1_ldo_ranges)
>>> +     P1_REG_DESC(ALDO, aldo, _n, "vin", 0x5b, LDO_MASK, 128, p1_ldo_ranges)
>>
>> I would say this is not correct.
>>
>> The valid range of values in this register is 0xd-0x1f (11-127),
>> which is 117 values; 0xd represents 0.500V and 0x1f represents
>> 3.400V.
>>
>> Technically, all other values represent 0.5v (and could therefore
>> be considered valid), but I believe those should never be used
>> and intentionally considered them invalid.  If 0.5V is desired,
>> 0xd should be used.
>>
>> Do you disagree with this?
> 
> I understand your concern about selectors 0-10. However, maybe you missed
> this part:
> 
> Code snippet from the c file, Line 53:
> (The p1_buck_ranges and p1_ldo_ranges are defined correctly.)
> 
> /* Selector value 255 can be used to disable the buck converter on sleep */
> static const struct linear_range p1_buck_ranges[] = {
> REGULATOR_LINEAR_RANGE(500000, 0, 170, 5000),
> REGULATOR_LINEAR_RANGE(1375000, 171, 254, 25000),
> };
> 
> /* Selector value 0 can be used for suspend */
> static const struct linear_range p1_ldo_ranges[] = {
> REGULATOR_LINEAR_RANGE(500000, 11, 127, 25000),
> };
> 
> .linear_range, the number of valid voltage steps (selectors 11-127)
> .n_voltages field, which defines the selector namespace (0 to 170, then to 254)

I think you mean 117, not 170.  I don't understand what you mean
with "then to 254."

In any case...  you and I talked offline and I now accept that,
in order to allow selector values up through 127, the value of
regulator_desc->n_voltages needs to be 128 (or conceivably,
256).

This is shown in numerous places, with things like:

         if (selector >= desc->n_voltages)
                 return -EINVAL;

         if (selector < desc->linear_min_sel)
                 return 0;

In <linux/regulator/driver.h> it states "Selectors range from
zero to one less than regulator_desc.n_voltages" but it also
says n_voltages is the "Number of selectors available for
ops.list_voltage()."

The former meaning is really about all possible values that
can be stored in a selector register (field)--whether those
values are valid selectors or not.  While the latter description
sounds to me like the size of an array.  We have a case where
some values (0..10 and 128..255) don't really fit (they all
represent value 0.5 volts, while 11..127 represent a linear
range).  And I was thinking n_voltages was 117 (the size of
the array), rather than 128 (one more than the maximum
valid selector value).

In any case, some of this seems less clear than it could be.

But I'm not going to get in the way of your patch being
accepted.

Reviewed-by: Alex Elder <elder@riscstar.com>




> With n_voltages = 117, the maximum accessible selector is 116. This makes
> selectors 117-127 unreachable, even though they're defined in the linear_range.
> 
> n_voltages = 128 doesn't enable those for operational use, it just allows
> the full valid range (11-127) to be accessible.
> 
> This is why in my test for the K3 pico board, setting ALDO to 3.3V
> (selector 123) or 3.4V (selector 127) fails with the current code.
> I mean that leads me to this bug fix.
> 
> Best regards,
> Guodong Xu
> 
> 
>>>    #define P1_DLDO_DESC(_n) \
>>> -     P1_REG_DESC(DLDO, dldo, _n, "buck5", 0x67, LDO_MASK, 117, p1_ldo_ranges)
>>> +     P1_REG_DESC(DLDO, dldo, _n, "buck5", 0x67, LDO_MASK, 128, p1_ldo_ranges)
>>>
>>>    static const struct regulator_desc p1_regulator_desc[] = {
>>>        P1_BUCK_DESC(1),
>>>
>>
>> I have exactly the same comment about this change to the
>> number of supported values.
>>
>>                                          -Alex


