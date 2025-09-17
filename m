Return-Path: <devicetree+bounces-218215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5908FB7C770
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:02:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6D0224E2518
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 07:16:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63141298987;
	Wed, 17 Sep 2025 07:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="b4DK/5ht"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C459625A331
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 07:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758093396; cv=none; b=OUzt7xFNg/SG4fYsEw8wa1SfnhzjNXoxGj40Mx+3LukAUJkgN+vMzlnW+xyn3hLye7Z/WnKUtdssw1EWUOoEie79iQdnOCOFTqG42JMgxzS/iq74YDn99ip46/tDc0giyPbIoL0yw29T5dC9FK2KSOXVJbAIU4atjg4PAqznSfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758093396; c=relaxed/simple;
	bh=T5zrGXefk5YqzH+xL7lyiCx6Qqp0h29OwnsxViUW03c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T65u5A7QEQk6G6svNpaaF7ti0/sYSwKrfdkoivwsQlNBBOerVuZcIi2w2TbpxUbf7OCthR1/zIB9xOFNl4vUT9ggCKo+bVTUYz1YLz+VgzIs1cB1lxLFrGCWjxK/v5WNMn+F2c9TspCsgAPpRy1j9d5l/eIV8mz7AyQPGH1Aqbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=b4DK/5ht; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1758093393;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=dVrVz1y1JTYA35iR89KO57gWYWUGvkIopfwpVXaBh+A=;
	b=b4DK/5ht6QPIe7llFKbPvGqx1bSfeBX8vbQi+ZhqJ+Duv9Cx1zXD437hocrr2Biscj1ZJh
	DUKdp94W9GFjRk6mvaKkpEjz+l78MgLmGRmAecBj6Yj8g++wliWol1wvL7VQeuL1Tda3sE
	afk/uRKtw3nGG0ut0XUgM7pm/klUano=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-590-NbeIfzzWOjSu76TO-wBlsg-1; Wed, 17 Sep 2025 03:16:32 -0400
X-MC-Unique: NbeIfzzWOjSu76TO-wBlsg-1
X-Mimecast-MFC-AGG-ID: NbeIfzzWOjSu76TO-wBlsg_1758093391
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-3ebc706ef7fso600623f8f.1
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 00:16:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758093391; x=1758698191;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dVrVz1y1JTYA35iR89KO57gWYWUGvkIopfwpVXaBh+A=;
        b=YNmUHNkBgG0mYdIwYxmFo0Nao8zLtwmCVGqpxBWGZCQpLxPj100keAOKALjbneCrfq
         n1aWglZMVvIc6cD5xFkpF0UGhtx5baQgeKQCQiMXlsh7YXxr5oN0X7YoQ8XGIdU6d6uc
         Cd2hqU12TnQHyBgT+VImF69SAEX1EV7Pi0p8KyhAFT49/3HNpadwlieJXhnyse8sgyYq
         Rg14h7ITIZZfj/O5wiYXqwV8Awree6BASD7/0hirGEyWJsaGPrQ5XT0f62kBPn0JiL3d
         J1bg+wMqDTpffRtaEKOYOKEg48EobJJh2WfGVPP18xaHDcye26BogAh930v4BYZFEthg
         jzHg==
X-Forwarded-Encrypted: i=1; AJvYcCVRf0M3O1BEvk36b2HQZDx5O/kbOyTWmyVt65KfrEWpVQ/ybObuFumGN3xfYIMV8poMEYPwcrW6sNp4@vger.kernel.org
X-Gm-Message-State: AOJu0YzPwwywoG50TPqCuHtGqwbgzFz/RRxp5TtDFwiPEWG/eLejXxfG
	MZfX18HzBqMvpiiVC6nZ0cq6RLFFGG0pxhmTKIhEMgDl26bjJfcnXYoP+Y6mn0A2JxYWSAmWyUF
	kwr2KF2Pi7UBDFGWEaKyk9X5KweayGo/URv/zHYxvhjl0EhXvM8J2UcUyZbzfnYs=
X-Gm-Gg: ASbGnctZ4OmTykPmkxkh+oprjDC518kXFveJ6CPnjIwx5hdOZrlfs80njtsDbUbNMtj
	ggoKcqs74kQwxVmsmMRyQmckPX0EiWv+lm+7mt69tnIJPUUyMF6rboNEsI5PbNoiGII4v4JL2u5
	RlUcL27i41FswPNTy7d32n/qVWc5o7NTwjVf3RQHhnj9CpcuxSaHbWkmVqN0247k72pJbVRsENV
	Gc8jNC5UGhJDF0mw6JLLm2I1BOj9fcYwrum81jp+b6FT0NiHF3K8YjNX0zsARHLfyg0A7eQssRp
	mZ7A2M0SH5vCQKUZ1c4i9w38jqMyESz0uVkNPtu7K8kPjyJaGifGqNjz+zqNdRPLRFswbcGkQG7
	8gI38wPFB9isCo44YknXh2nWXQldzUyuss+jlqi1IRhI4ZTXRChxPrSIm5sHTiARa
X-Received: by 2002:a05:6000:24c5:b0:3e8:b4cb:c3a0 with SMTP id ffacd0b85a97d-3ecdf9afe4amr737094f8f.8.1758093391117;
        Wed, 17 Sep 2025 00:16:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE6KvkUbAw/hWHVpyZFeQHd7+eZojTjephumHug7ngWtVuZzWRraD7sIx3LIE+G0iYk+zOhBg==
X-Received: by 2002:a05:6000:24c5:b0:3e8:b4cb:c3a0 with SMTP id ffacd0b85a97d-3ecdf9afe4amr737058f8f.8.1758093390674;
        Wed, 17 Sep 2025 00:16:30 -0700 (PDT)
Received: from ?IPV6:2003:d8:2f27:6d00:7b96:afc9:83d0:5bd? (p200300d82f276d007b96afc983d005bd.dip0.t-ipconnect.de. [2003:d8:2f27:6d00:7b96:afc9:83d0:5bd])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46139122a8fsm23710285e9.7.2025.09.17.00.16.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 00:16:30 -0700 (PDT)
Message-ID: <2bd45749-e483-45ea-9c55-74c5ba15b012@redhat.com>
Date: Wed, 17 Sep 2025 09:16:28 +0200
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
From: David Hildenbrand <david@redhat.com>
Content-Language: en-US
Autocrypt: addr=david@redhat.com; keydata=
 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
 qIws/H2t
In-Reply-To: <8df2cf28-c15e-4692-a127-6a5c966a965e@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17.09.25 07:43, Eugen Hristev wrote:
> 
> 
> On 9/17/25 00:16, Thomas Gleixner wrote:
>> On Tue, Sep 16 2025 at 23:10, Thomas Gleixner wrote:
>>> On Fri, Sep 12 2025 at 18:08, Eugen Hristev wrote:
>>>> nr_irqs is required for debugging the kernel, and needs to be
>>>> accessible for kmemdump into vmcoreinfo.
>>>
>>> That's a patently bad idea.
>>>
>>> Care to grep how many instances of 'nr_irqs' variables are in the
>>> kernel?
>>>
>>> That name is way too generic to be made global.
>>
>> Aside of that there is _ZERO_ justification to expose variables globaly,
>> which have been made file local with a lot of effort in the past.
>>
>> I pointed you to a solution for that and just because David does not
>> like it means that it's acceptable to fiddle in subsystems and expose
>> their carefully localized variables.

It would have been great if we could have had that discussion in the 
previous thread.

I didn't like what I saw in v2. In particular, having subsystems fiddle 
with kmemdump specifics.

I prefer if we can find a way to not have subsystems to that.

>>
> 
> I agree. I explained the solution to David. He wanted to un-static
> everything. I disagreed.

Some other subsystem wants to have access to this information. I agree 
that exposing these variables as r/w globally is not ideal.

I raised the alternative of exposing areas or other information through 
simple helper functions that kmemdump can just use to compose whatever 
it needs to compose.

Do we really need that .section thingy?

-- 
Cheers

David / dhildenb


