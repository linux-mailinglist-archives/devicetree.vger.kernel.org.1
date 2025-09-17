Return-Path: <devicetree+bounces-218492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E089B80BBB
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 17:50:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3AB8116D83D
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:47:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F37DF33BB0C;
	Wed, 17 Sep 2025 15:44:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Z3QERJsN"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DB319E98C
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 15:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758123879; cv=none; b=X+3Lh7X3YrN2jC/gHG3omTtDppDJKqiTDtCbuDyH1u6ONMu1mnzpzPZ7ot4R4fpDfrqSMvSaQAIy+jltqy+qR7JzUSwpj579HvHoIuJFXWtK3MIcJw0SbEbVvkp8qm4Y9512t3FIelp9uUmOURmNd0IP/RAZJNq64+/V9kNSwJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758123879; c=relaxed/simple;
	bh=z4tCoDZQOuh4LECbalwkAqS2zlkXL9yErxewejGxnWE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OlXBsVTxl/PThg55x4uMnRIlB48WI/Dwi6DtYdhMDIpHKQz2dqAqabrGvOOVsyjffE1hOTYoXdLfLPikAxGwyxX0tq4kmNaO88M3nVBqaP0ytuz9u45YBSbrAxIJzrtGKRdM6/kWOAQt0P/8vLiliXxGlWFg9bUDVEBFMGPmGUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Z3QERJsN; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1758123877;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=NYmqILMx1xlw2m4tQW0RBlUiktKctlRRDbbC0EtpRGc=;
	b=Z3QERJsNgEhe/ZhKICfekTWZdya1aW5bi3RAjPaXx6Ekd+P6IknylSUBcj0WmaJHeFvmsR
	KSM/Tikj0JBpZd5O6i60BJQBf6sKwPcSCuu5X2HudkDyzGrgS/9AAXFaStZJYDtatzKwNA
	USux//jh+59QRs1V4Bjs2O0VBxZph+g=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-13-Ql7OC3W5PlG7eLnayiUIog-1; Wed, 17 Sep 2025 11:44:35 -0400
X-MC-Unique: Ql7OC3W5PlG7eLnayiUIog-1
X-Mimecast-MFC-AGG-ID: Ql7OC3W5PlG7eLnayiUIog_1758123874
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-45df9e11fc6so39877665e9.3
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 08:44:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758123874; x=1758728674;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NYmqILMx1xlw2m4tQW0RBlUiktKctlRRDbbC0EtpRGc=;
        b=rbNPmp+jh7cxm5vT0+qj0+5Ys6FdvMvjTagCzL34LwD1e/IzuMmGbYkbzMwpxl2Riy
         ZLy/LDN9s1JjO2unJ92m7fPqy4saRAwCzsEXJbCOA30iqY23EgAZP312Lj7KltRkz71U
         oZeOWu3zW/Htbm0MbLFq4+Tnpf70pVdvvhRG1FKz+tbOx8E/2xsAIHC4moGDu/iQd3Zb
         nsIySevgQGiw2JNj49N6EirBXOYAkjApsan51yQUvbNNWdMba9CkwEFmLxsCgUE/W00e
         gJ2EqfonrITzbZyFhOOHBe8P6U1CYv7/deq0+HeVxbHBdGf+gXAmoTKmGpbMVC+5CW44
         fGuQ==
X-Forwarded-Encrypted: i=1; AJvYcCVED5iidTWtFglKdX4DJTnJEUf3y0rY9/8+3FDw4jPby71dAipp2CiCRujcn+4e6Vi9slgO1EE8ESHx@vger.kernel.org
X-Gm-Message-State: AOJu0Yxt6EaAu0kVNTDSkvXCI/aYyGLqGmEpiuhfbRGx6BxyhJNEsMBb
	Cx5sZ5hy2i0Y8A874HHP5EvRN9ssdPkf4c5m2YV5GOHBu+40QEX4nn3+zndA1EQgOp+ZisW9wMN
	o8ustnreLv/NsxLieCAGSqIQ7+twkskLN2xvW5OXich3J1s4tOuQfiwcy5KYISYI=
X-Gm-Gg: ASbGncsKBsVe2ZcMd5Uj+dopukJSxCcTUnDJqWD6V5kotNhtMR0QgWppo5iQWktb2Wr
	wx9ii05uoIUid7k08gs4Z6Q9tsThb1Juwri/O8ISdyLcDioZp9He5bbL6GHFgqtTArqDd0uXZ7O
	P9P3ezAU9hloVBJJhyAACB5871D2grehnRUQyQuZy+7WlIbGIzkV7OD2nsbwVwrr/XW8KU+zLbU
	ZdGhDsj5tgeJJXX1lGF6fP3B0wJ7g/t2S+fn9n8u3R05Cqcro3AivpaY8k9z8miJgKXECVNjno8
	8B8ky+85aAluVK6EosFF4nnrhcwSsD8/rXTYYKynjtyZeaI99resjvdq2CD4tncQGqKRea1Cung
	LXVgHZiKnenyrlpLDWNjPigIbYeMyb2b1CRxX9sIvNwRPMs7GAWvKykUKW2e+gy+V
X-Received: by 2002:a05:600c:548f:b0:45f:2c7c:c1ed with SMTP id 5b1f17b1804b1-46201f8b0f7mr24718625e9.2.1758123874118;
        Wed, 17 Sep 2025 08:44:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH8g1ZaRN7oJUXl7N8nfBOuCnjfDBEtxRyVeyDn4nu6ScGXDtKea6BR0IkCAuJ/wYcffRSBqQ==
X-Received: by 2002:a05:600c:548f:b0:45f:2c7c:c1ed with SMTP id 5b1f17b1804b1-46201f8b0f7mr24718205e9.2.1758123873544;
        Wed, 17 Sep 2025 08:44:33 -0700 (PDT)
Received: from ?IPV6:2003:d8:2f27:6d00:7b96:afc9:83d0:5bd? (p200300d82f276d007b96afc983d005bd.dip0.t-ipconnect.de. [2003:d8:2f27:6d00:7b96:afc9:83d0:5bd])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-462c17c9347sm10474045e9.0.2025.09.17.08.44.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 08:44:32 -0700 (PDT)
Message-ID: <b532ab38-37a3-46d0-8a14-d7395421130d@redhat.com>
Date: Wed, 17 Sep 2025 17:44:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC][PATCH v3 09/16] genirq/irqdesc: Have nr_irqs as non-static
To: Eugen Hristev <eugen.hristev@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-msm@vger.kernel.org,
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
 <7f4aa4c6-7b77-422b-9f7a-d01530c54bff@redhat.com>
 <10540b3e-09ca-403d-bc20-b9412a7fe28a@linaro.org>
From: David Hildenbrand <david@redhat.com>
Content-Language: en-US
Autocrypt: addr=david@redhat.com; keydata=
 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
 qIws/H2t
In-Reply-To: <10540b3e-09ca-403d-bc20-b9412a7fe28a@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17.09.25 17:32, Eugen Hristev wrote:
> 
> 
> On 9/17/25 18:18, David Hildenbrand wrote:
>> On 17.09.25 17:02, Eugen Hristev wrote:
>>>
>>>
>>> On 9/17/25 17:46, David Hildenbrand wrote:
>>>> On 17.09.25 16:10, Thomas Gleixner wrote:
>>>>> On Wed, Sep 17 2025 at 09:16, David Hildenbrand wrote:
>>>>>> On 17.09.25 07:43, Eugen Hristev wrote:
>>>>>>> On 9/17/25 00:16, Thomas Gleixner wrote:
>>>>>>>> I pointed you to a solution for that and just because David does not
>>>>>>>> like it means that it's acceptable to fiddle in subsystems and expose
>>>>>>>> their carefully localized variables.
>>>>>>
>>>>>> It would have been great if we could have had that discussion in the
>>>>>> previous thread.
>>>>>
>>>>> Sorry. I was busy with other stuff and did not pay attention to that
>>>>> discussion.
>>>>
>>>> I understand, I'm busy with too much stuff such that sometimes it might
>>>> be good to interrupt me earlier: "David, nooo, you're all wrong"
>>>>
>>>>>
>>>>>> Some other subsystem wants to have access to this information. I agree
>>>>>> that exposing these variables as r/w globally is not ideal.
>>>>>
>>>>> It's a nono in this case. We had bugs (long ago) where people fiddled
>>>>> with this stuff (I assume accidentally for my mental sanity sake) and
>>>>> caused really nasty to debug issues. C is a horrible language to
>>>>> encapsulate stuff properly as we all know.
>>>>
>>>> Yeah, there is this ACCESS_PRIVATE stuff but it only works with structs
>>>> and relies on sparse IIRC.
>>>>
>>>>>
>>>>>> I raised the alternative of exposing areas or other information through
>>>>>> simple helper functions that kmemdump can just use to compose whatever
>>>>>> it needs to compose.
>>>>>>
>>>>>> Do we really need that .section thingy?
>>>>>
>>>>> The section thing is simple and straight forward as it just puts the
>>>>> annotated stuff into the section along with size and id and I definitely
>>>>> find that more palatable, than sprinkling random functions all over the
>>>>> place to register stuff.
>>>>>
>>>>> Sure, you can achieve the same thing with an accessor function. In case
>>>>> of nr_irqs there is already one: irq_get_nr_irqs(), but for places which
>>>>
>>>> Right, the challenge really is that we want the memory range covered by
>>>> that address, otherwise it would be easy.
>>>>
>>>>> do not expose the information already for real functional reasons adding
>>>>> such helpers just for this coredump muck is really worse than having a
>>>>> clearly descriptive and obvious annotation which results in the section
>>>>> build.
>>>>
>>>> Yeah, I'm mostly unhappy about the "#include <linux/kmemdump.h>" stuff.
>>>>
>>>> Guess it would all feel less "kmemdump" specific if we would just have a
>>>> generic way to tag/describe certain physical memory areas and kmemdump
>>>> would simply make use of that.
>>>
>>> The idea was to make "kmemdump" exactly this generic way to tag/describe
>>> the memory.
>>
>> That's probably where I got lost, after reading the cover letter
>> assuming that this is primarily to program kmemdump backends, which I
>> understood to just special hw/firmware areas, whereby kinfo acts as a
>> filter.
> 
> If there is a mechanism to tag all this memory, or regions, into a
> specific section, what we would do with it next ?
> It would have a purpose to be parsed and reused by different drivers,
> that would be able to actually use it.
> So there has a to be some kind of middleman, that holds onto this list
> of regions, manages it (unique id, add/remove), and allows certain
> drivers to use it.

Right, just someone that maintains the list and possibly allows 
traversing the list and possibly getting notifications on add/remove.

> Now it would be interesting to have different kind of drivers connect to
> it (or backends how I called them).
> One of these programs an internal table for the firmware to use.
> Another , writes information into a dedicated reserved-memory for the
> bootloader to use on the next soft reboot (memory preserved).
> I called this middleman kmemdump. But it can be named differently, and
> it can reside in different places in the kernel.
> But what I would like to avoid is to just tag all this memory and have
> any kind of driver connect to the table. That works, but it's quite
> loose on having control over the table. E.g. no kmemdump, tag all the
> memory to sections, and have specific drivers (that would reside where?)
> walk it.

Yeah, you want just some simple "registry" with traversal+notification.

> 
>>
>>> If we would call it differently , simply dump , would it be better ?
>>> e.g. include linux/dump.h
>>> and then DUMP(var, size) ?
>>>
>>> could we call it maybe MARK ? or TAG ?
>>> TAG_MEM(area, size)

Just because I thought about it again, "named memory" could be an 
alternative to "tagged memory".

-- 
Cheers

David / dhildenb


