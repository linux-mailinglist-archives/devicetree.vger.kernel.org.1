Return-Path: <devicetree+bounces-218861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58485B84EBA
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 15:54:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D7B4C7B4036
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 13:52:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBF452264A8;
	Thu, 18 Sep 2025 13:53:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vP1Rm5Bg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064B822173F
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 13:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758203632; cv=none; b=RZeEvtNfUj+lIdEK9+om9Th4DD4QMHLCDv5nk41pTn0Q/3WC0J64MNsZO3Fu6F6TsDj673xDBjKduwlLc6iBhbwx2J6lSYOf9Jl5Aq/ZQ6kwJZoD9TdvzQqrcX52KFgcka9iRQwIiPtEARAGwQ8OjebDzJfw+TOt88gr530Jxbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758203632; c=relaxed/simple;
	bh=W8d+rtW76hd2LNkPX2+QJLDJy6PBL5cszIE1g/3/9FI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MShGIE7zib7ePgmhP1dvKj/W0MaqEqwNjAAYEXHn0VKP39x3tPb1K81aX0DC8s13+BMyZackRrPh9i8hO+Ppvuij97I6Ni/kMhedXYF57Cfpz/ADk0MiPI+ZZ2GAb8Dr36HDJhft2jUQjYXPH9q4m2dCs894Olvz89Icra60kto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vP1Rm5Bg; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b223ec0d5caso83593966b.0
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 06:53:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758203629; x=1758808429; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j7efdXg49cd0dO4HNsPgED93u6J0FRsteNdyMBWuRc0=;
        b=vP1Rm5BgxuT7yhjaTvZQFg8T7BDd5EaCAPjILnxIbKI3WR+HT85Z0eBWUW/XxCAUsz
         3q1mRKog9SWRFnEbNx/j0pcceR2YhA6NxvKhZUAmvt0l6sEn2h6w71IHdvvNRYL6TX/t
         z51mBcTvWNgJPmn/uyMXb7z50uAR5BfQn1HHbLLstF+yugaffF5W7P5aYLzzMX/4Nvpb
         saZeSMkAB0fDagaUMJOP1O40SFmkplr30h1M35Fypu3ZHgAMKeSE0QpkRUTk+lK3+23s
         csTnZJYTP6f1X6zIZYKaosyjQbXYpHlzigy6/aLDf8XZSN+6UdsV8RmxeuPMEc1cd11V
         IJNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758203629; x=1758808429;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j7efdXg49cd0dO4HNsPgED93u6J0FRsteNdyMBWuRc0=;
        b=SnMLPct2lZgZJCCd+ZcYay6eAi1onYqGc9ASXejrzC9o20kH8CKxIMCtVJlnTml4TQ
         +jL2KtH+mWKF67fTTEVKeRafP4jUDEK6rOx09SF5uT28VGhPjC8NHoJVDV3XFGMrA5yK
         AT1zbE/apKEUvvbQurPXDX+8CAxj9+VqXNNeUsBE8j4JRIvCJiIBc22sy7RFh1a1YMRx
         N/NweGKsMJUWoz8cMshRMgWrw7Cjg+dXwg/kSod4bG1A04lPrCgbOOw9TaQSz+q7W9E3
         8KLytTHWOTrzYMP9rx7Iy17Fh9lQ48SN/VASr7c/pd6KqDzm8rlaQzNwILF20Nvhh+cs
         KsXA==
X-Forwarded-Encrypted: i=1; AJvYcCW7i50jnHeTUFvOseNShj4ByOdpZQ4gYle8qugwOYmwydudaNZdHwgnt0c0YK1QgYXO5Ao5bqIJ6X+m@vger.kernel.org
X-Gm-Message-State: AOJu0Yzj9CwbyEa2dYYFBXtFHEQgcHU2/b7xqP4bjuY1UCXu1KrozavJ
	LUp6EuDH1pkCTYERhT2BL1DQ4FaeVe6SHDpsRTtPvgSuuuHBuhrlE44dfWh94pk/7bk=
X-Gm-Gg: ASbGncs5+keJNHtnYDkL+EzJdOQH2KzLRQAqhvTefO1fbrZZZhpZTs3pRNp11SYzDOX
	6cgABJebi8+X8mm6wrpeDu4Nb63OYtzFZNYqKlESMBrka04GcnbcG8dTIsD4f+pMQ97nXalnFzd
	afm0vjMWdEmGUJdQWk+DTCb5mDuTZQxXHUuzwG3Zw0R6R/N3EBv0SUgRVTf6OGBG84k4oSBCTuW
	jHpCtQqFgbh6PK66NQRuqMrS3OPRGDpxlIyI7E2I49KPXLhk8fvz9Pz3zTiS2xUaQTgKoQbmrcp
	wciYSB7Qq3Tmix4fptbDdFVe/qn/d9Sdwm9tZp96fz83pVdFWNTqCarLQvt2jft52CHztMFLh4t
	86um9egj4QLvHUUekNX9I8FQOwD2SgEecLWJ/SsJoqNG3iGBIPH4=
X-Google-Smtp-Source: AGHT+IHnDWpjM1umgSyHsR6OREF3QxVVNfm6x8W+jII5XcXDsJKZeNe+EM7x++buErDbKkF9QmRQfw==
X-Received: by 2002:a17:907:7e93:b0:b02:a093:eac9 with SMTP id a640c23a62f3a-b1bc1169518mr637192866b.53.1758203628349;
        Thu, 18 Sep 2025 06:53:48 -0700 (PDT)
Received: from [172.20.10.3] ([109.166.131.237])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fc5f44bbcsm203026466b.5.2025.09.18.06.53.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Sep 2025 06:53:47 -0700 (PDT)
Message-ID: <c3ab4a21-183f-495a-b3b5-cc74b392eebc@linaro.org>
Date: Thu, 18 Sep 2025 16:53:45 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC][PATCH v3 09/16] genirq/irqdesc: Have nr_irqs as non-static
To: Thomas Gleixner <tglx@linutronix.de>, David Hildenbrand
 <david@redhat.com>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, andersson@kernel.org,
 pmladek@suse.com, rdunlap@infradead.org, corbet@lwn.net, mhocko@suse.com
Cc: tudor.ambarus@linaro.org, mukesh.ojha@oss.qualcomm.com,
 linux-arm-kernel@lists.infradead.org, linux-hardening@vger.kernel.org,
 jonechou@google.com, rostedt@goodmis.org, linux-doc@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250912150855.2901211-1-eugen.hristev@linaro.org>
 <20250912150855.2901211-10-eugen.hristev@linaro.org> <87cy7q9k8y.ffs@tglx>
 <87a52u9jyl.ffs@tglx> <8df2cf28-c15e-4692-a127-6a5c966a965e@linaro.org>
 <2bd45749-e483-45ea-9c55-74c5ba15b012@redhat.com> <87v7lh891c.ffs@tglx>
 <95ff36c2-284a-46ba-984b-a3286402ebf8@redhat.com>
 <24d6a51d-f5f8-44d7-94cb-58b71ebf473a@linaro.org>
 <7f4aa4c6-7b77-422b-9f7a-d01530c54bff@redhat.com> <87segk9az5.ffs@tglx>
 <f8d3c2d4-8399-4169-8527-3c87922f2ef1@redhat.com> <87jz1w88zq.ffs@tglx>
From: Eugen Hristev <eugen.hristev@linaro.org>
Content-Language: en-US
In-Reply-To: <87jz1w88zq.ffs@tglx>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 9/18/25 11:23, Thomas Gleixner wrote:
> On Wed, Sep 17 2025 at 21:03, David Hildenbrand wrote:
>>> As this is specific for the compiled kernel version you can define an
>>> extensible struct format for the table.
>>>
>>> struct inspect_entry {
>>> 	unsigned long	properties;
>>>          unsigned int	type;
>>>          unsigned int	id;
>>>          const char	name[$MAX_NAME_LEN];
>>> 	unsigned long	address;
>>>          unsigned long	length;
>>>          ....
>>> };
>>>
>>> @type
>>>         refers either to a table with type information, which describes
>>>         the struct in some way or just generate a detached compile time
>>>         description.
>>>
>>> @id
>>>         a unique id created at compile time or via registration at
>>>         runtime. Might not be required
>>
>> We discussed that maybe one would want some kind of a "class" 
>> description. For example we might have to register one pgdat area per 
>> node. Giving each one a unique name might be impractical / unreasonable.
>>
>> Still, someone would want to select / filter out all entries of the same 
>> "class".
>>
>> Just a thought.
> 
> Right. As I said this was mostly a insta brain dump to start a
> discussion. Seems it worked :)
> 
>>> @properties:
>>>
>>>          A "bitfield", which allows to mark this entry as (in)valid for a
>>>          particular consumer.
>>>
>>>          That obviously requires to modify these properties when the
>>>          requirements of a consumer change, new consumers arrive or new
>>>          producers are added, but I think it's easier to do that at the
>>>          producer side than maintaining filters on all consumer ends
>>>          forever.
>>
>> Question would be if that is not up to a consumer to decide ("allowlist" 
>> / filter) by class or id, stored elsewhere.
> 
> Yes, I looked at it the wrong way round. We should leave the filtering
> to the consumers. If you use allow lists, then a newly introduced class
> won't be automatically exposed everywhere.
> 
> Thanks,
> 
>         tglx


So, one direction to follow from this discussion is to have the
inspection entry and inspection table for all these entries.
Now, one burning question open for debate, is, should this reside into mm ?
mm/inspect.h would have to define the inspection entry struct, and some
macros to help everyone add an inspection entry.
E.g. INSPECTION_ENTRY(my ptr, my size);
and this would be used all over the kernel wherever folks want to
register something.
Now the second part is, where to keep all the inspection drivers ?
Would it make sense to have mm/inspection/inspection_helpers.h which
would keep the table start/end, some macros to traverse the tables, and
this would be included by the inspection drivers.
inspection drivers would then probe via any mechanism, and tap into the
inspection table.
I am thinking that my model with a single backend can be enhanced by
allowing any inspection driver to access it. And further on, each
inspection driver would register a notifier to be called when an entry
is being created or not. This would mean N possible drivers connected to
the table at the same time. ( if that would make sense...)
Would it make sense for pstore to have an inspection driver that would
be connected here to get different kinds of stuff ?
Would it make sense to have some debugfs driver that would just expose
to user space different regions ? Perhaps something similar with
/proc/kcore but not the whole kernel memory rather only the exposed
inspection entries.
Now, for the dynamic memory, e.g. memblock_alloc and friends ,
would it be interesting to have a flag e.g. MEMBLOCK_INSPECT, that would
be used when calling it, and in the background, this would request an
inspection_entry being created ? Or it makes more sense to call some
function like inspect_register as a different call directly at the
allocation point ?

Feel free to throw your opinion at each of the above.
Thanks for helping out !

