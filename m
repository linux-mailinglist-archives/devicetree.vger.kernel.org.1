Return-Path: <devicetree+bounces-218458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F5AB80694
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 17:11:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 81C691C26FA1
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:05:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28D90330D32;
	Wed, 17 Sep 2025 15:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NlgIVplc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0360132E747
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 15:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758121358; cv=none; b=NLYoOa5RdO+9MGFh0lFw27saBsf06IlEexn5ANOE07Imjz8rp9mWhNFI32GjdqObmUbNuFSLva3ip/Uhc23MNClHLfv5mJR7E/xoXQXpq3pKCcWwjmTslWmLQUPbZQghKxpC1UNFSl1MSzusz3St2YcODaKT5X4aV2zf58o4mCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758121358; c=relaxed/simple;
	bh=NK1NyMuEOj0ydYsGx4ZznjUDtoWvKqGQmTI9anPdlYg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IiaMaR7OuBIc/Jniwyjx6w4rF1j6m88JhyGJNa4K+zl0bnfPkeIUvpP61jiGywM8fZQ+P55t3hPWNa4snlUXd0E3a3mT939TlVm6c+4MGuSKWVeEMs/qGfXGSpXX/i+eLKj7T1dO2JLnVezeEiAWxtkBaOqaBPLNWQPU4r7ziAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NlgIVplc; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-62105d21297so13142604a12.0
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 08:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758121354; x=1758726154; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lIUjmKGGbQEJsCoFeZig1jDOJNxeqR+9vgxX7Gkos/k=;
        b=NlgIVplccLGOuDvQmoD4tVOjPq2CsNCms1DDKVBojv/PLJ1rVg3DGM6XZkhVJnsYmV
         ul8erHnVNPhBNr0BJIO+Os3+qzQpLhm9jyqF+GPasH/tz4iuaK3w3OTpS+U9lgOWA/iq
         H8ycdarrSInpy3Q2CHPukpaJHnCWmfwZ1ORjaUJWA2aE8vOAWnCEYUo/HuZtzQt2GuCM
         aOzkR1kl31hdOmKUf4OdjuV+k5MwtW2gDdtS51/9NJOjPdmwVgSYsRXZgWGY8H702CO6
         qtIKva4qwKkhl0q5flGlrcJOiMLFDLZk+Y8SZ0QFs0zCJT1yu//wga1S0/8x1Ti7eGej
         IuTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758121354; x=1758726154;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lIUjmKGGbQEJsCoFeZig1jDOJNxeqR+9vgxX7Gkos/k=;
        b=LD+jXcMs3Bhd73GTzJm4lYDesuRvBlTbctdePTOdp9W7gFy78hzlSttxzvzpVAryZQ
         nXiuQU9JzpVbZo2wJgwBt/7+SiCGwvT+RSDYexNOVMRtKylPVMzltqfqN+LeNDkQIvVb
         rlLWqjUXnjlrmGhxOje3/SdodPVEoZ5Vma4YQ4qev6AUEZzrFQQKGVm3EJx9fT6H7CTJ
         GtMa3QBk94CwLYGF66O6Lsn6om2hSNYvY+TfgCn7q2+uLYxmMswpcA4+lMPzMSOWXHEQ
         MraktgrVTesHllrTZVso523KWflxYRmtvNR2gd1UyOGTT6tMYBnnhjmA+EhtLqOytB8m
         BUxA==
X-Forwarded-Encrypted: i=1; AJvYcCWPMFCG1hjrJjzLzZPtG2D5S8sMs9kQ0BUkO8ufee+0c5lWS7mbfJjFgd+t1Qrn3LiohowggbOblzOb@vger.kernel.org
X-Gm-Message-State: AOJu0Yzdtm+2UJRx+groHejFN/mxtemcxsmR/bgATiS3kh4omnXJLegQ
	e9LSLO6ZkfOWZYlNoUzomh6WNZeKNfuV17YHQUJkObdTiVmlpJfaoXWRgv3VXH73nk8=
X-Gm-Gg: ASbGnctCkzCmLXOEDsZMb90WoSws9GxBW945CY9tWu7wXOjehv5EO0lcLK/eq0WhsA7
	uGXaruCGUzp2avBUzoYX2gj6jZuXSbUT6faAl3hcUkROWfILNtyDhMV/pY4wo53PblxeuZR6wHU
	7sZcMJuG7UO0d1MBKCtqGTYxhQnqJwqP9qhF3wbO9tl/tMRZ1MnhzO5r6HdvpjZ0Cb+8n040cxk
	6/j+lriearI9Qbfhy5RqRt8gYmqE0dLswAp4pbwaWr6AinEnmZmhU6AjS4RHujVVzyiasvsYh1B
	6PGjgutrkjmG+zZx/muiOVN6IxS/3aDel7X+Dk5dr3Xwo8tz0II0lal9RvB1MSNTzZifkhXNcGJ
	YOfxNBV0mj9hl5hb/NmnIc5vFIRs0ZBWr
X-Google-Smtp-Source: AGHT+IH30uplY82utdrU9T7Dyp89uUZLy9OYpPpZfnqv2x2yCGVqH4bKpd1FnewjvmvV1dBnafhklA==
X-Received: by 2002:a17:907:6ea4:b0:b04:85f2:d272 with SMTP id a640c23a62f3a-b1bb935d70fmr292343066b.49.1758121353549;
        Wed, 17 Sep 2025 08:02:33 -0700 (PDT)
Received: from [172.20.10.3] ([109.166.135.151])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b3347b90sm1362672466b.109.2025.09.17.08.02.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 08:02:33 -0700 (PDT)
Message-ID: <24d6a51d-f5f8-44d7-94cb-58b71ebf473a@linaro.org>
Date: Wed, 17 Sep 2025 18:02:30 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC][PATCH v3 09/16] genirq/irqdesc: Have nr_irqs as non-static
To: David Hildenbrand <david@redhat.com>, Thomas Gleixner
 <tglx@linutronix.de>, linux-arm-msm@vger.kernel.org,
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
From: Eugen Hristev <eugen.hristev@linaro.org>
Content-Language: en-US
In-Reply-To: <95ff36c2-284a-46ba-984b-a3286402ebf8@redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 9/17/25 17:46, David Hildenbrand wrote:
> On 17.09.25 16:10, Thomas Gleixner wrote:
>> On Wed, Sep 17 2025 at 09:16, David Hildenbrand wrote:
>>> On 17.09.25 07:43, Eugen Hristev wrote:
>>>> On 9/17/25 00:16, Thomas Gleixner wrote:
>>>>> I pointed you to a solution for that and just because David does not
>>>>> like it means that it's acceptable to fiddle in subsystems and expose
>>>>> their carefully localized variables.
>>>
>>> It would have been great if we could have had that discussion in the
>>> previous thread.
>>
>> Sorry. I was busy with other stuff and did not pay attention to that
>> discussion.
> 
> I understand, I'm busy with too much stuff such that sometimes it might 
> be good to interrupt me earlier: "David, nooo, you're all wrong"
> 
>>
>>> Some other subsystem wants to have access to this information. I agree
>>> that exposing these variables as r/w globally is not ideal.
>>
>> It's a nono in this case. We had bugs (long ago) where people fiddled
>> with this stuff (I assume accidentally for my mental sanity sake) and
>> caused really nasty to debug issues. C is a horrible language to
>> encapsulate stuff properly as we all know.
> 
> Yeah, there is this ACCESS_PRIVATE stuff but it only works with structs 
> and relies on sparse IIRC.
> 
>>
>>> I raised the alternative of exposing areas or other information through
>>> simple helper functions that kmemdump can just use to compose whatever
>>> it needs to compose.
>>>
>>> Do we really need that .section thingy?
>>
>> The section thing is simple and straight forward as it just puts the
>> annotated stuff into the section along with size and id and I definitely
>> find that more palatable, than sprinkling random functions all over the
>> place to register stuff.
>>
>> Sure, you can achieve the same thing with an accessor function. In case
>> of nr_irqs there is already one: irq_get_nr_irqs(), but for places which
> 
> Right, the challenge really is that we want the memory range covered by 
> that address, otherwise it would be easy.
> 
>> do not expose the information already for real functional reasons adding
>> such helpers just for this coredump muck is really worse than having a
>> clearly descriptive and obvious annotation which results in the section
>> build.
> 
> Yeah, I'm mostly unhappy about the "#include <linux/kmemdump.h>" stuff.
> 
> Guess it would all feel less "kmemdump" specific if we would just have a 
> generic way to tag/describe certain physical memory areas and kmemdump 
> would simply make use of that.

The idea was to make "kmemdump" exactly this generic way to tag/describe
the memory.
If we would call it differently , simply dump , would it be better ?
e.g. include linux/dump.h
and then DUMP(var, size) ?

could we call it maybe MARK ? or TAG ?
TAG_MEM(area, size)

this would go to a separate section called .tagged_memory.

Then anyone can walk through the section and collect the data.

I am just coming up with ideas here.
Could it be even part of mm.h instead of having a new header perhaps ?
Then we won't need to include one more.

> 
> For example, wondering if it could come in handy to have an ordinary 
> vmcoreinfo header contain this information as well?
> 
> Case in point, right now we do in crash_save_vmcoreinfo_init()
> 
> 	VMCOREINFO_SYMBOL_ARRAY(mem_section);
> 	VMCOREINFO_LENGTH(mem_section, NR_SECTION_ROOTS);
> 	VMCOREINFO_STRUCT_SIZE(mem_section);
> 
> And in kmemdump code we do
> 
> 	kmemdump_register_id(KMEMDUMP_ID_COREIMAGE_mem_section,
> 			     (void *)&mem_section, sizeof(mem_section));
> 
> I guess both cases actually describe roughly the same information: An 
> area with a given name.
> 
> Note 1: Wondering if sizeof(mem_section) is actually correct in the 
> kmemdump case
> 
> Note 2: Wondering if kmemdump would also want the struct size, not just 
> the area length.

For kmemdump, right now, debugging without vmlinux symbols is rather
impossible, so we have all that information from vmlinux.
> 
> (memblock alloc wrappers are a separate discussion)
> 
>>
>> The charm of sections is that they don't neither extra code nor stubs or
>> ifdeffery when a certain subsystem is disabled and therefore no
>> information available.
> 
> Extra code is a very good point.
> 
>>
>> I'm not insisting on sections, but having a table of 2k instead of
>> hundred functions, stubs and whatever is definitely a win to me.
> 
> So far it looks like it's not that many, but of course, the question 
> would be how it evolves.
> 


