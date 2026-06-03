Return-Path: <devicetree+bounces-305990-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id htaROrfOH2qfqAAAu9opvQ
	(envelope-from <devicetree+bounces-305990-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 08:50:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 57DD8634D3F
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 08:50:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=UwnTDDe2;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305990-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305990-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2589F307370F
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 06:44:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9BE138887B;
	Wed,  3 Jun 2026 06:44:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F82B37FF53
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 06:44:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780469067; cv=none; b=Z9Gqlm/bRyz6Qdy5uBNPa3/IULN9PU+SxP1J0v+byvZmrS/fsIllBvbSfdKUOj4mjR3QlyrFVrOb8U9pfRIbblhhahjEuVb+KR0fk2ZHpt9xAsrLPPNDbGvvKiyJk+giNC0j/7h8qvtocX2DgQWeR9G6hsPaAsd6+ffOma3HSZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780469067; c=relaxed/simple;
	bh=F5zhvt/iAlg6umNegPP2+kFF2Mb4DKEuLqC3mOxwjAU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dyqaJ8nqX3tRRRBW+7kSuG1P7FpV/ro8jE9VDkH0cuGiCBc5dsClaYF/hR0NlViUACLnDv47KyO1Xq70u7LnVL+7GiidcDDMiiwwXIDY3z6KnLKq6OtpY2GpuPBEXisnYRg1kDURxAqx3B251N8fBJAM+mOoc3Nto0KOyCcSikM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UwnTDDe2; arc=none smtp.client-ip=209.85.214.196
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-2c132ac5ec2so12251905ad.1
        for <devicetree@vger.kernel.org>; Tue, 02 Jun 2026 23:44:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780469066; x=1781073866; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sd7sOkllNO4XLGxbX/2aYhqo9JXcF7DuVUpDO/tIkqk=;
        b=UwnTDDe2HDAPPKNZ+EGfRLLYVrIlzEVtDcphB7zMHkrgATRevhZqQJ2kyqYfxli2EW
         V64X+Z1saem+tV+jJMmGESDqSVi4S06wFoz3vnC/oEITkdu/ZBYFhvjjyQ84iXEL+hcw
         OEmhfnDECGZ1tSdsuqaomLREDoxdealjHhrCOpyu3AE/m/qV0+04YEpRDhcHVFlSjyD9
         SnQMvo25g6T+eGdTvuBykQrBLZF7NE5Rxlw0SxS9buo9sO5mJ6EVLm0PLlxZ4WrzPOxI
         S+PUzZ69QItskJjccdE7lqd7MuhCw18RXZPI90dNlzsNA5qwHMhKBZW6sjw8Z41sE2vy
         oRBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780469066; x=1781073866;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sd7sOkllNO4XLGxbX/2aYhqo9JXcF7DuVUpDO/tIkqk=;
        b=VK7FAKiYyXDGEGtQJQ5oifZBn8EwSJm3ISfBQEyN/8cp2q7Qi/uvEH/EHWGpY+fxMq
         capH+8SaV2mUogZv9MwehJmZ0fT2QFevNccu0vzKM+viMD2aLLHxa1VkONwNLZBPcm4V
         PL7lPy3VTSFrT3lOLGyW0xxFGFKBefZ/qr2Ouqi0lwUyRab2JTvm6NzFUX1XU6gW4vrQ
         VHGX1jCt1Jangujbltsw3n9UWTohXKANwCfM4qiYzvrmJ5SqVKzEd0xs8PE9iM5ZUbt+
         fGwblj3jg83idt0iHoFLTMLEHv5IRChbtEGoU92josPfm4g0lhX/hH5AjitRdmteBLbq
         OYEg==
X-Forwarded-Encrypted: i=1; AFNElJ8e5OsieowH2mw4qAvaq16TXjByIghKg4zdSZ1/W8iF/5xOJJ9Gv4LjAa7jLz5QB59ZS5Tdr7z4yDWl@vger.kernel.org
X-Gm-Message-State: AOJu0YyrH+HQrWo64LS6j6TJzI8pC4qA0ToRxhF1l9mPPNK4SyaxLypv
	sX2VIUt5Zk3C31jQhgTUzSFBr2M6AxX7gCLAcdwyaqia5PkGUIuaBbM4
X-Gm-Gg: Acq92OFQwdWhJy7cr+oQP6oJFOEnrVtUY6+tZtndZyvCeYKwYb/Bt7i9pr067qskqfg
	LAth1HCeS/cA/HrjyQf/qbkydDFWHF5z5USFpabpVCUT/iTxrCEBaBtnTsRnJ31IVK2gmrPw+dU
	QTcrMweP9aDR5LzU1u9uVGzni3jZ1JRlY/N9KsrG7oFrgnt0jVbwLMIFq4jRNUdUFoc2Zg53E8g
	mnVc8P6SrJEOp/bzmIYoG8s57g4dFYVGqnZOyQtZQI+D6Do4MSCSfDdELqtRShxzA8W55cO6KEf
	xXfWXhhCD04YJrU7RwZrFXCeFSwLaS8AsO9YVBawC+sbGa9nO1fWf7/SFuOkbDWpSkgn5msDE+N
	4gbG30YxH3Lir6mYe1Hji6D5w5nyRxaIgAw+pJMn3otoMvsVFduLj7Xy1s6EKEunJAA+ClvxTS7
	QUibOIZJWQUtK7oLc6NocD4wvFL3QTS9YsogJsHDpyiw==
X-Received: by 2002:a17:903:298c:b0:2c1:4d9:c8db with SMTP id d9443c01a7336-2c1644dbfbamr22648805ad.37.1780469065484;
        Tue, 02 Jun 2026 23:44:25 -0700 (PDT)
Received: from [10.125.112.20] ([210.184.73.204])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c16629cfb4sm13674395ad.59.2026.06.02.23.44.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2026 23:44:24 -0700 (PDT)
Message-ID: <79932afc-2e91-4a54-aff9-f550be784c36@gmail.com>
Date: Wed, 3 Jun 2026 14:44:13 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 03/11] of: reserved_mem: avoid post-init UAF when
 alloc_reserved_mem_array() fails
To: Rob Herring <robh@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 loongarch@lists.linux.dev, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, kexec@lists.infradead.org,
 iommu@lists.linux.dev, zhaomeijing@lixiang.com, catalin.marinas@arm.com,
 will@kernel.org, chenhuacai@kernel.org, kernel@xen0n.name, pjw@kernel.org,
 palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
 saravanak@kernel.org, akpm@linux-foundation.org, bhe@redhat.com,
 rppt@kernel.org, pasha.tatashin@soleen.com, pratyush@kernel.org,
 ruirui.yang@linux.dev, m.szyprowski@samsung.com, robin.murphy@arm.com,
 quic_obabatun@quicinc.com
References: <20260527032917.3385849-1-chenwandun1@gmail.com>
 <20260527032917.3385849-4-chenwandun1@gmail.com>
 <20260602162450.GA442759-robh@kernel.org>
Content-Language: en-US
From: Wandun <chenwandun1@gmail.com>
In-Reply-To: <20260602162450.GA442759-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305990-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:loongarch@lists.linux.dev,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,m:kexec@lists.infradead.org,m:iommu@lists.linux.dev,m:zhaomeijing@lixiang.com,m:catalin.marinas@arm.com,m:will@kernel.org,m:chenhuacai@kernel.org,m:kernel@xen0n.name,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:saravanak@kernel.org,m:akpm@linux-foundation.org,m:bhe@redhat.com,m:rppt@kernel.org,m:pasha.tatashin@soleen.com,m:pratyush@kernel.org,m:ruirui.yang@linux.dev,m:m.szyprowski@samsung.com,m:robin.murphy@arm.com,m:quic_obabatun@quicinc.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[chenwandun1@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chenwandun1@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lixiang.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 57DD8634D3F



On 6/3/26 00:24, Rob Herring wrote:
> On Wed, May 27, 2026 at 11:29:09AM +0800, Wandun Chen wrote:
>> From: Wandun Chen <chenwandun@lixiang.com>
>>
>> The global pointer 'reserved_mem' continues to reference the
>> reserved_mem_array which lives in __initdata if
>> alloc_reserved_mem_array() fails. of_reserved_mem_lookup() is
>> exported for post-init use, that would dereference freed memory
>> and trigger a use-after-free.
>>
>> So reset reserved_mem_count to 0 when alloc_reserved_mem_array()
>> fails.
>>
>> Fixes: 00c9a452a235 ("of: reserved_mem: Add code to dynamically allocate reserved_mem array")
> Fixes should come first in a series.
Understood, will do in future submissions.
>
>> Signed-off-by: Wandun Chen <chenwandun@lixiang.com>
>> ---
>>   drivers/of/of_reserved_mem.c | 20 ++++++++++++++------
>>   1 file changed, 14 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
>> index 313cbc57aa45..6d479381ff1f 100644
>> --- a/drivers/of/of_reserved_mem.c
>> +++ b/drivers/of/of_reserved_mem.c
>> @@ -69,29 +69,31 @@ static int __init early_init_dt_alloc_reserved_memory_arch(phys_addr_t size,
>>    * the initial static array is copied over to this new array and
>>    * the new array is used from this point on.
>>    */
>> -static void __init alloc_reserved_mem_array(void)
>> +static bool __init alloc_reserved_mem_array(void)
>>   {
>>   	struct reserved_mem *new_array;
>>   	size_t alloc_size, copy_size, memset_size;
>>   
>> +	if (!total_reserved_mem_cnt)
>> +		return true;
>> +
>>   	alloc_size = array_size(total_reserved_mem_cnt, sizeof(*new_array));
>>   	if (alloc_size == SIZE_MAX) {
>>   		pr_err("Failed to allocate memory for reserved_mem array with err: %d", -EOVERFLOW);
>> -		return;
>> +		goto fail;
>>   	}
>>   
>>   	new_array = memblock_alloc(alloc_size, SMP_CACHE_BYTES);
>>   	if (!new_array) {
>>   		pr_err("Failed to allocate memory for reserved_mem array with err: %d", -ENOMEM);
>> -		return;
>> +		goto fail;
>>   	}
>>   
>>   	copy_size = array_size(reserved_mem_count, sizeof(*new_array));
>>   	if (copy_size == SIZE_MAX) {
>>   		memblock_free(new_array, alloc_size);
>> -		total_reserved_mem_cnt = MAX_RESERVED_REGIONS;
>>   		pr_err("Failed to allocate memory for reserved_mem array with err: %d", -EOVERFLOW);
> These prints could be moved to 'fail'. Perhaps instead of just printing
> an error value, you can return the error value instead of boolean.
Will do, consolidating pr_err() under 'fail' and changing the return type
to int.
>
> If you respin just this patch, I can pick it up for 7.2.
Before I respin, I'd like to flag a dependency:
patch 05/07 in this series build on the signature change introduced by this
patch ("the void -> bool return type change of alloc_reserved_mem_array()")

Could you let me know which of the following you'd prefer:
a) Take patch 03 alone via your tree as you suggested, after it lands, I'll
    respin the remaining patches of this series.

b) Keep patch 03 in the v4 respin of the full series, reordered to the front
    per your earlier comment.

Best regards,
Wandun
>
> Rob


