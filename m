Return-Path: <devicetree+bounces-306548-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RONQKijaIGr48QAAu9opvQ
	(envelope-from <devicetree+bounces-306548-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 03:51:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0914863C498
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 03:51:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=GzKYh+Q6;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306548-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306548-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 567343040964
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 01:49:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78B5C28469A;
	Thu,  4 Jun 2026 01:49:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com [209.85.210.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AF8280035
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 01:49:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780537743; cv=none; b=QbQzjjySOGzcWhqSYZEBb35vt9sO5ZqPL4SSvikuV1TUE1JCj5P5VpZ1l27//xPRT4akNmsIHjjt/F2bolzy+JeWMuazN0OWGmiufh0x149GmGqTw9e9+5P61ROa1mOUWarJWW0mjGydJL9DSth94RikZBGebyWTkLtXSuuhcH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780537743; c=relaxed/simple;
	bh=gamBR4h2rf1Imsoj8RobEGb1Bt2afo71z/VsoMkVocw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Je5QVlD9ibRonAfuoF019qc21YtbqYDdohv+B9QUUM/fWn0lZkCOerHhKpSgysw5rw0fkMwaiWL5wHz/dlnzaWth+s9qcmOTMEJrwlWGyIFPrlX0wQleL7hbHP1NuPZ3XzFBINCzpHliShCaDCvCdUNLkKDMbQpAgnFHnHkf0yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GzKYh+Q6; arc=none smtp.client-ip=209.85.210.195
Received: by mail-pf1-f195.google.com with SMTP id d2e1a72fcca58-8422871b42dso81080b3a.3
        for <devicetree@vger.kernel.org>; Wed, 03 Jun 2026 18:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780537741; x=1781142541; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R9vTs/JHnHpc6BmzGsq91wlnVhg5cqc1lx/XeBVEZpQ=;
        b=GzKYh+Q6LF1yOU5QGHQSc2uflOqpcVZX/+CQme/uY/0e7iAFJ0i9kL8LvVcxKD5K+r
         C4NY+HlBKuAAoiSGYxTE4/fRxlqdDy+/UQkotTde0m3dA/TbsytmwrwdmM67Hekklmoh
         IPA3d/SDcTceDD0C5VxlLDm7gNfLc3yffsqm3u8hy/6yFSUsUtBdS/OHfasoyAaPng/r
         XIC32YBozORzD/n9Ot5euDw+fNUFU8jeXtKwDm23AIIibeis1tndN8ueBzOI/17X8FCY
         sePvNYZfBkzuFW3HxWrUqHy5/QH3MXq0py61r/pxG4mALYbRy4akoqE531B0tcxTr5ZI
         /1tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780537741; x=1781142541;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R9vTs/JHnHpc6BmzGsq91wlnVhg5cqc1lx/XeBVEZpQ=;
        b=Be2JswWLwDXiWaAKH5UMSBwPPT9M8kxFOJg+3fKxOMemALgsqOthX4o7swTNLoNk+1
         r7x3YnAzxFDaHTZJbWlD39xrcDTa+fEMw+wqGFkvlHPZ7563NJshbRy+5rMkTQodd0nL
         BRfQTIwAdOFtVPUTJuh3KwLyXGtQOERqPFRVzLGTr8oi+46fAynjd+IRqxn4/+Drr4cG
         7Tusqx79P4yqiKDl2okSMmpIiCKJ7DXBGjJ+JpziZ05VBq+HPvKV1nzArcharl7wxpa1
         EoF5Eeq0kF7YxxS/eYJ46oy25SEOZ8hlQ9G5CnC0k2gLyulQ40kpWY2Oi0YScW/gVQ4d
         3PWg==
X-Forwarded-Encrypted: i=1; AFNElJ+7SFBXiNDQnq0unDXLszVh+KlrHA1BArsJnVV99HUuPOgB0oVJoDnO27nwRPo0ElxVoTNZ802pHiKt@vger.kernel.org
X-Gm-Message-State: AOJu0YyUZqDLBDv07r82PELEeyA7ooGybtZ83jd42t5LDjWN41gmiDGA
	0FhW7p+H4XZ++9SwAaRXj1czmgHm9WFBM4QEp70oVsc3DtDExgerzhsR
X-Gm-Gg: Acq92OGneJcfzK+8nTTu90JKgARwC5Q+dCfvFgC6/g+JUVRKitGr329kdYI2NA4GpbK
	HZNIP9KL2inIegRcJSaYePkKwvQI8mhepIOkX6eQaZgREva4UlfV0WcA+tWd2VrqTrpeLCZMQ//
	csMDh1twTQkOHNY7XsA1BQvrP7yAaGska2RdZN+Cawi8vAwNk35PavzMt1uRNhJKS3Ez+xkLo+a
	hNDPal0lYAqQcrbAK92cC25+i9oETHIU/wNs3GAJmQ39IbhPPSJANCh2ozGiHv9RoKpU5rM9UkF
	tq86GRma5NkoIgsQpryG6kC3trbRo8K6QLEUHAvqF/532UDWDKDlhTbMd20NFwu2WEELpBNEtTP
	+l3v5aYWgNQ5PsLeG0XoYiUpvqJfKnXYX9qGBd9ARZULS1rcrbc18Go0YUb3NFvz6lN2sUpr305
	tg4P0524ip3nKuNp+LoEoKR4X8FmT+kS1X6/1Apn0Qng==
X-Received: by 2002:aa7:8882:0:b0:842:38d2:a35f with SMTP id d2e1a72fcca58-84284e8dc75mr6032800b3a.31.1780537741272;
        Wed, 03 Jun 2026 18:49:01 -0700 (PDT)
Received: from [10.125.112.20] ([210.184.73.204])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84282350f8csm4439444b3a.14.2026.06.03.18.48.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2026 18:49:00 -0700 (PDT)
Message-ID: <8e088395-c22d-4bc8-9e58-84235af1e56b@gmail.com>
Date: Thu, 4 Jun 2026 09:48:44 +0800
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
 <79932afc-2e91-4a54-aff9-f550be784c36@gmail.com>
 <CAL_JsqJOC1ko1Len3Dyc5SNKrHmhQn9uiDAkFfVbYa2wAfFUTg@mail.gmail.com>
Content-Language: en-US
From: Wandun <chenwandun1@gmail.com>
In-Reply-To: <CAL_JsqJOC1ko1Len3Dyc5SNKrHmhQn9uiDAkFfVbYa2wAfFUTg@mail.gmail.com>
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
	TAGGED_FROM(0.00)[bounces-306548-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0914863C498



On 6/4/26 01:44, Rob Herring wrote:
> On Wed, Jun 3, 2026 at 1:44 AM Wandun <chenwandun1@gmail.com> wrote:
>>
>>
>> On 6/3/26 00:24, Rob Herring wrote:
>>> On Wed, May 27, 2026 at 11:29:09AM +0800, Wandun Chen wrote:
>>>> From: Wandun Chen <chenwandun@lixiang.com>
>>>>
>>>> The global pointer 'reserved_mem' continues to reference the
>>>> reserved_mem_array which lives in __initdata if
>>>> alloc_reserved_mem_array() fails. of_reserved_mem_lookup() is
>>>> exported for post-init use, that would dereference freed memory
>>>> and trigger a use-after-free.
>>>>
>>>> So reset reserved_mem_count to 0 when alloc_reserved_mem_array()
>>>> fails.
>>>>
>>>> Fixes: 00c9a452a235 ("of: reserved_mem: Add code to dynamically allocate reserved_mem array")
>>> Fixes should come first in a series.
>> Understood, will do in future submissions.
>>>> Signed-off-by: Wandun Chen <chenwandun@lixiang.com>
>>>> ---
>>>>    drivers/of/of_reserved_mem.c | 20 ++++++++++++++------
>>>>    1 file changed, 14 insertions(+), 6 deletions(-)
>>>>
>>>> diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
>>>> index 313cbc57aa45..6d479381ff1f 100644
>>>> --- a/drivers/of/of_reserved_mem.c
>>>> +++ b/drivers/of/of_reserved_mem.c
>>>> @@ -69,29 +69,31 @@ static int __init early_init_dt_alloc_reserved_memory_arch(phys_addr_t size,
>>>>     * the initial static array is copied over to this new array and
>>>>     * the new array is used from this point on.
>>>>     */
>>>> -static void __init alloc_reserved_mem_array(void)
>>>> +static bool __init alloc_reserved_mem_array(void)
>>>>    {
>>>>       struct reserved_mem *new_array;
>>>>       size_t alloc_size, copy_size, memset_size;
>>>>
>>>> +    if (!total_reserved_mem_cnt)
>>>> +            return true;
>>>> +
>>>>       alloc_size = array_size(total_reserved_mem_cnt, sizeof(*new_array));
>>>>       if (alloc_size == SIZE_MAX) {
>>>>               pr_err("Failed to allocate memory for reserved_mem array with err: %d", -EOVERFLOW);
>>>> -            return;
>>>> +            goto fail;
>>>>       }
>>>>
>>>>       new_array = memblock_alloc(alloc_size, SMP_CACHE_BYTES);
>>>>       if (!new_array) {
>>>>               pr_err("Failed to allocate memory for reserved_mem array with err: %d", -ENOMEM);
>>>> -            return;
>>>> +            goto fail;
>>>>       }
>>>>
>>>>       copy_size = array_size(reserved_mem_count, sizeof(*new_array));
>>>>       if (copy_size == SIZE_MAX) {
>>>>               memblock_free(new_array, alloc_size);
>>>> -            total_reserved_mem_cnt = MAX_RESERVED_REGIONS;
>>>>               pr_err("Failed to allocate memory for reserved_mem array with err: %d", -EOVERFLOW);
>>> These prints could be moved to 'fail'. Perhaps instead of just printing
>>> an error value, you can return the error value instead of boolean.
>> Will do, consolidating pr_err() under 'fail' and changing the return type
>> to int.
>>> If you respin just this patch, I can pick it up for 7.2.
>> Before I respin, I'd like to flag a dependency:
>> patch 05/07 in this series build on the signature change introduced by this
>> patch ("the void -> bool return type change of alloc_reserved_mem_array()")
>>
>> Could you let me know which of the following you'd prefer:
>> a) Take patch 03 alone via your tree as you suggested, after it lands, I'll
>>      respin the remaining patches of this series.
> I would go with this option. AIUI, this series isn't going to land in
> 7.2, so ultimately you will rebase on v7.2-rc1 which will have the
> fix.
OK, will send v4.

Best regards,
Wandun
>
>> b) Keep patch 03 in the v4 respin of the full series, reordered to the front
>>      per your earlier comment.
>
> Rob


