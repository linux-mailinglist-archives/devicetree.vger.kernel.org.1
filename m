Return-Path: <devicetree+bounces-257482-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qL/2BSG8b2kOMQAAu9opvQ
	(envelope-from <devicetree+bounces-257482-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 18:32:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8774899F
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 18:32:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id ACF638AD4D6
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 15:33:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9A5947D958;
	Tue, 20 Jan 2026 15:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bR3/T7zd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83A2747D94A
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 15:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768922035; cv=none; b=Zw2d/J1ZT6R+Kr6HvJihGV7/7Tco9gyEB/0oMMs+p0cRAuUYWYcBYxFiqE8vcqqKE4LfQLp9YBZnzwh/rUQNr7lvo+G33CJsIKGIhL3+VM9Lj7pv7MyZ8g6abcxsqWI9gQ/uW4nP2T4kEvPtbM6zLBh9u3yqhvxkz/7BCFSWz/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768922035; c=relaxed/simple;
	bh=tTdNJ9w0A3SRS2jGZyO87hh6ddJ8/yTI7BHcKalWjPA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e0aQkNfheVSOSp9+cI3gpHteHd0qI05Ew1zvk9RlO0kd7Y7Ir2jo8Ox5hbL3jOMXO8yv1sKzLW8gjoakH1GdecVGG13Jr0zxnLuiVOtpjBqopItuF5EvQMlB/uK9zKN+zimhJAxvKR4Zgv+ohf8ANuPW5Eqrmiep0JC2YdpVwbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bR3/T7zd; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4801c314c84so35236575e9.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 07:13:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768922031; x=1769526831; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KfHF8XX2sLoiWwn6mh6WL+QXvB0XHx4J/lS+4r+T224=;
        b=bR3/T7zdFsQ79orClB/OtuJkhWjteFZ0ldd6bNXwgN6fisE5qcOQgkjwxTZFoHHc5y
         7yOyZDtZSZaDTS8ifjUmEfV9CoS4RA0mOQRRHhOX37mQc5i2WUhVK/u4Fj0WEq244H2m
         EL8NGU7vTFgO0C5cgmMINHG7iQ82UZZYrBQhBcFL3LFsiYgUncQGXA/w0u1AqIGJk6WN
         JM0QyEhH/TdLoVc9N/tGqY0ahOhJLCkixGa08RxflOIfnO2f/B+6aHagRzCQwLkG22Bf
         QqDk0s97FGVeslJMAlK5OHWLIEqY2BEyQ63ZNs6fO3Us9xRwOe7ylg8LmnX5TJqPW7qe
         UMhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768922031; x=1769526831;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KfHF8XX2sLoiWwn6mh6WL+QXvB0XHx4J/lS+4r+T224=;
        b=fqOVRBXP+fyVXGvwlRXQg2lYEYt0FVk1SdU2Y+ab6eh3yezRY2tCqUEQwDBbKpHEec
         W8TBtDqs6gLZX3y9UfVDWxtp5gU/5JYKvgSCyG1O2MO4dCr/8yzTtImvaG5ZWSsluDv6
         cXSl+8dedd4lLCbu+d2cIVvn2wCEQHjgBfd/XAdt6L7Y4AWyO33QpS+4omwVz/LcfAuG
         Oq/eFoO0LOhRi2ZOdab2cRhzd0rOTDy1tfhzfUkhpGJXHO8U3hzHRtVDnIO/4B0wHWDt
         ds9jS0hU3sd2bZXQkBEcbjt9ZkWZzTeAMtL0YOGgh0Um4H8S9FVlL3zWj9uZW+iSpdRl
         sxcA==
X-Forwarded-Encrypted: i=1; AJvYcCVwn/NqF8Jdn83ZyAaPBsGyaSRhCA0bBvbFGXfy/oYAwnWVqzFatBtXaCI6+IqEiTtWhUxgbdOKHP5e@vger.kernel.org
X-Gm-Message-State: AOJu0YyYNSA2jcc1IP6wcy/3M3DBd9UTuuZMjn0Fj4zU79MSRs1XywxL
	yih1AvADCHV7ofVqGVrcvDt6Rgb5n4S2YAadSuEIqlkmx4teYqc2KVKVdZ4DVJ7eEoQ=
X-Gm-Gg: AY/fxX6c4xmFVJatQKeru8UvPWPePrTqH4eOHS7YdSS2OBoS1CC7U/8U0krK+A+d/qw
	u3+QwBE+Zekn6q8v1sZp4JuCVAFgAYqNLWFkjq+6v+1ar77XNvju0rFhMgrskE5StajbYoSz+Rp
	Rpp5iNS7ymJgkXeLXVDey1i/GKNI0vJekxEjlcZk4hS1aYVAEtsfc4Aw9fOswee4WsyLoi1ZQ+D
	JlbvvtUs2+x+JHqLpFUNXb2tT5+WZhxzHV6zses/g/L3fGgetGU15w1j9E9gWbG9dtbSwTjA5qt
	t6bX0Y12WBT571/J9WTGrn4qEfLhXOTi4DoIDq1yYpdTp3MLt5+TXfGrjwUtbtbz5Td/pJRCXEY
	EAWDb/UA3X4Z7qv0TmXoIGdN7W+wI1hXbFttOovcmxlW2AEBDIxpyHfpT4vymmVuryWl2kW8qjb
	oURpNlILzP4MFpSn4Rv7ucZjRnc8Tyoh4=
X-Received: by 2002:a05:600c:458d:b0:47d:264e:b435 with SMTP id 5b1f17b1804b1-4801e34209cmr173700875e9.22.1768922030743;
        Tue, 20 Jan 2026 07:13:50 -0800 (PST)
Received: from [192.168.1.221] ([94.202.56.172])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801e9ee5c3sm113053335e9.2.2026.01.20.07.13.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 07:13:50 -0800 (PST)
Message-ID: <ae85df64-b6b7-43d7-ba50-9c0525481299@linaro.org>
Date: Tue, 20 Jan 2026 17:13:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 18/26] mm/memblock: Add MEMBLOCK_INSPECT flag
To: Mike Rapoport <rppt@kernel.org>, david@redhat.com
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, tglx@linutronix.de, andersson@kernel.org,
 pmladek@suse.com, rdunlap@infradead.org, corbet@lwn.net, mhocko@suse.com,
 tudor.ambarus@linaro.org, mukesh.ojha@oss.qualcomm.com,
 linux-arm-kernel@lists.infradead.org, linux-hardening@vger.kernel.org,
 jonechou@google.com, rostedt@goodmis.org, linux-doc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-arch@vger.kernel.org, tony.luck@intel.com, kees@kernel.org
References: <20251119154427.1033475-1-eugen.hristev@linaro.org>
 <20251119154427.1033475-19-eugen.hristev@linaro.org>
 <aVImIneFgOngYdSn@kernel.org>
 <4b8953ac-567b-4d68-9c25-72a69afdf1b3@linaro.org>
 <aVlsqdgXSBLIE9Xi@kernel.org>
From: Eugen Hristev <eugen.hristev@linaro.org>
Content-Language: en-US
In-Reply-To: <aVlsqdgXSBLIE9Xi@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	DKIM_TRACE(0.00)[linaro.org:+];
	TAGGED_FROM(0.00)[bounces-257482-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eugen.hristev@linaro.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,linaro.org:mid,linaro.org:dkim]
X-Rspamd-Queue-Id: 7D8774899F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 1/3/26 21:23, Mike Rapoport wrote:
> On Sat, Jan 03, 2026 at 08:36:40AM +0200, Eugen Hristev wrote:
>>
>>
>> On 12/29/25 08:56, Mike Rapoport wrote:
>>> Hi Eugen,
>>>
>>> On Wed, Nov 19, 2025 at 05:44:19PM +0200, Eugen Hristev wrote:
>>>> This memblock flag indicates that a specific block is registered
>>>> into an inspection table.
>>>> The block can be marked for inspection using memblock_mark_inspect()
>>>> and cleared with memblock_clear_inspect()
>>>
>>> Can you explain why memblock should treat memory registered for inspection
>>> differently?
>>
>> It should not, at a first glance.
>>
>> The purpose of the flag is to let memblock be aware of it.
>> The flag is there to have a "memblock way" of registering the memory,
>> which inside memblock , it can translate to a meminspect way of
>> registering the memory. It's just an extra layer on top of meminspect.
>> With this, it would be avoided to call meminspect all over the places it
>> would be required, but rather use the memblock API.
> 
> memblock APIs are not available after boot on many architectures, most
> notable being x86.
> 
> But regardless, I can't say I understand why using memblock APIs for
> meminspect is better than using meminspect directly.
> I'd imagine that using meminspect register APIs would actually make it more
> consistent and it would be easier to identify what memory is registered
> with meminspect.
> 
> In the end, memblock_alloc*() returns dynamically allocated memory, just
> like kmalloc(), the difference is that memblock is active very early at
> boot and disappears after core MM initialization.

Hi Mike,

Thanks for sharing your opinion.

David, what do you think, does it make sense to have this flag or we can
ditch it and use meminspect directly ?

Also, for some memory blocks, they do not disappear ever, e.g. the
printk log buffer, it's allocated early and never freed, so it's
required to have some memblocks marked for inspection.

Eugen

> 
>> And further, inside memblock, it would be a single point where
>> meminspect can be disabled (while preserving a no-op memblock flag), or
>> easily changed to another API if needed.
>> Ofcourse, one can call here directly the meminspect API if this is desired.
>> Do you think it would be better to have it this way ?
>>
>> Thanks for looking into it,
>> Eugen
> 


