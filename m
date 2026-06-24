Return-Path: <devicetree+bounces-315062-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uJVmOZWAO2qgYwgAu9opvQ
	(envelope-from <devicetree+bounces-315062-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 09:00:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC5F6BBF88
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 09:00:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b=GCjf4y4G;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315062-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315062-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linux.dev;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 85A0E301983A
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 07:00:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C84B538AC97;
	Wed, 24 Jun 2026 07:00:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-180.mta0.migadu.com (out-180.mta0.migadu.com [91.218.175.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FE33839B9
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 07:00:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782284411; cv=none; b=XppCe/guSxXDd+7lw3iQk64HhQbbDgd4ABdZm+umNz1CZU4nweZLhG32eoBe5A2HdRAzyoNXtyZLL35mObVVFstwResVFbnC4QtioXKVmg0Av5jgNU5XEY7g2kh8Md92Y3Bl9zCPuqmpQq9rZE/SzGjtbEy+Tk+CUvdDLujQVu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782284411; c=relaxed/simple;
	bh=pffaeaJ4G179rWWPKwwJFVgPNjYO2Ulg7w/Q+yMkdvs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fPx1hOL8patB6hQD3UVHnGHmHYbDwqPvJ5noQtK3FNrOa0H1IjX74A+1TJZZNzmA20ndwc9H7llIAE0Doz18MDgNO5rQFrMmryl9sUILqrvtM2LyiOrC97PtH85FPU2m7jTgtZUmum6eLMGY4826ZyVPmlRPws5B6r9SRb8phFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=GCjf4y4G; arc=none smtp.client-ip=91.218.175.180
Message-ID: <c23bec7d-9571-4917-b23b-d6b08c2cc159@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1782284407;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GLWIFVQRHB5qd32LJSyZVW2YD4K906tt2u8jGkqFmSQ=;
	b=GCjf4y4G2cFqF2sb9SzQPMbGZ00TV7Isvch0xHsbC0kXWXnVhyj3D0TmXGNDbN8rAgLJT/
	ePYuWASdg1NFDZhlEXhW1GeGm8acBTbyUHj7wGiUqix5DPSY+wQ8QWagAXgQFz+O4qCTvm
	eNdJKVP7KC0FiRkQ+54md/XPjC6QTQ4=
Date: Wed, 24 Jun 2026 00:00:01 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v6 17/21] RISC-V: perf: Add Qemu virt machine events
To: Charlie Jenkins <thecharlesjenkins@gmail.com>
Cc: James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Jiri Olsa <jolsa@kernel.org>,
 Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Anup Patel <anup@brainfault.org>, Namhyung Kim <namhyung@kernel.org>,
 Paul Walmsley <pjw@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Ian Rogers <irogers@google.com>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-perf-users@vger.kernel.org,
 Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20260608-counter_delegation-v6-0-285b72ed65a9@meta.com>
 <20260608-counter_delegation-v6-17-285b72ed65a9@meta.com>
 <ajjZ5NljehUXERN1@blinky>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Atish Patra <atish.patra@linux.dev>
In-Reply-To: <ajjZ5NljehUXERN1@blinky>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:thecharlesjenkins@gmail.com,m:james.clark@linaro.org,m:robh@kernel.org,m:acme@kernel.org,m:jolsa@kernel.org,m:will@kernel.org,m:mark.rutland@arm.com,m:anup@brainfault.org,m:namhyung@kernel.org,m:pjw@kernel.org,m:krzk+dt@kernel.org,m:irogers@google.com,m:linux-riscv@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:conor@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-315062-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[atish.patra@linux.dev,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[atish.patra@linux.dev,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linux.dev:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rivosinc.com:email,linux.dev:dkim,linux.dev:mid,linux.dev:from_mime,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5FC5F6BBF88


On 6/21/26 11:44 PM, Charlie Jenkins wrote:
> On Mon, Jun 08, 2026 at 11:01:31PM -0700, Atish Patra wrote:
>> From: Atish Patra <atishp@rivosinc.com>
>>
>> Qemu virt machine supports a very minimal set of legacy perf events.
>> Add them to the vendor table so that users can use them when
>> counter delegation is enabled.
>>
>> Signed-off-by: Atish Patra <atishp@rivosinc.com>
>> ---
>>   arch/riscv/include/asm/vendorid_list.h |  4 ++++
>>   drivers/perf/riscv_pmu_sbi.c           | 36 ++++++++++++++++++++++++++++++++++
>>   2 files changed, 40 insertions(+)
>>
>> diff --git a/arch/riscv/include/asm/vendorid_list.h b/arch/riscv/include/asm/vendorid_list.h
>> index 7f5030ee1fcf..603aa2b21c0b 100644
>> --- a/arch/riscv/include/asm/vendorid_list.h
>> +++ b/arch/riscv/include/asm/vendorid_list.h
>> @@ -11,4 +11,8 @@
>>   #define SIFIVE_VENDOR_ID	0x489
>>   #define THEAD_VENDOR_ID		0x5b7
>>   
>> +#define QEMU_VIRT_VENDOR_ID		0x000
>> +#define QEMU_VIRT_IMPL_ID		0x000
>> +#define QEMU_VIRT_ARCH_ID		0x000
> Palmer proposed a change to this a while ago to set the archid for qemu
> as 42 but it looks like it was never merged in qemu, but it was merged
> into the riscv spec.
>
> Here is the spec PR: https://github.com/riscv/riscv-isa-manual/pull/1213
> Here is the current spec: https://github.com/riscv/riscv-isa-manual/blob/main/marchid.md
> Here is the QEMU patch: https://lore.kernel.org/all/20240131182430.20174-1-palmer@rivosinc.com/
>
> Should we follow up with this/maybe this should be accounted for here as
> an alternate id?

Ahh yes. I remember that thread now. Thanks for digging this.
Yes. We should resurrect that patch and use that archid as an alternate ID.

> - Charlie
>
>> +
>>   #endif
>> diff --git a/drivers/perf/riscv_pmu_sbi.c b/drivers/perf/riscv_pmu_sbi.c
>> index 00b84b28117a..74acac54328e 100644
>> --- a/drivers/perf/riscv_pmu_sbi.c
>> +++ b/drivers/perf/riscv_pmu_sbi.c
>> @@ -26,6 +26,7 @@
>>   #include <asm/sbi.h>
>>   #include <asm/cpufeature.h>
>>   #include <asm/vendor_extensions.h>
>> +#include <asm/vendorid_list.h>
>>   #include <asm/vendor_extensions/andes.h>
>>   #include <asm/hwcap.h>
>>   #include <asm/csr_ind.h>
>> @@ -453,7 +454,42 @@ struct riscv_vendor_pmu_events {
>>   	  .hw_event_map = _hw_event_map, .cache_event_map = _cache_event_map, \
>>   	  .attrs_events = _attrs },
>>   
>> +/* QEMU virt PMU events */
>> +static const struct riscv_pmu_event qemu_virt_hw_event_map[PERF_COUNT_HW_MAX] = {
>> +	PERF_MAP_ALL_UNSUPPORTED,
>> +	[PERF_COUNT_HW_CPU_CYCLES]		= {0x01, 0xFFFFFFF8},
>> +	[PERF_COUNT_HW_INSTRUCTIONS]		= {0x02, 0xFFFFFFF8}
>> +};
>> +
>> +static const struct riscv_pmu_event qemu_virt_cache_event_map[PERF_COUNT_HW_CACHE_MAX]
>> +						[PERF_COUNT_HW_CACHE_OP_MAX]
>> +						[PERF_COUNT_HW_CACHE_RESULT_MAX] = {
>> +	PERF_CACHE_MAP_ALL_UNSUPPORTED,
>> +	[C(DTLB)][C(OP_READ)][C(RESULT_MISS)]	= {0x10019, 0xFFFFFFF8},
>> +	[C(DTLB)][C(OP_WRITE)][C(RESULT_MISS)]	= {0x1001B, 0xFFFFFFF8},
>> +
>> +	[C(ITLB)][C(OP_READ)][C(RESULT_MISS)]	= {0x10021, 0xFFFFFFF8},
>> +};
>> +
>> +RVPMU_EVENT_CMASK_ATTR(cycles, cycles, 0x01, 0xFFFFFFF8);
>> +RVPMU_EVENT_CMASK_ATTR(instructions, instructions, 0x02, 0xFFFFFFF8);
>> +RVPMU_EVENT_CMASK_ATTR(dTLB-load-misses, dTLB_load_miss, 0x10019, 0xFFFFFFF8);
>> +RVPMU_EVENT_CMASK_ATTR(dTLB-store-misses, dTLB_store_miss, 0x1001B, 0xFFFFFFF8);
>> +RVPMU_EVENT_CMASK_ATTR(iTLB-load-misses, iTLB_load_miss, 0x10021, 0xFFFFFFF8);
>> +
>> +static struct attribute *qemu_virt_event_group[] = {
>> +	RVPMU_EVENT_ATTR_PTR(cycles),
>> +	RVPMU_EVENT_ATTR_PTR(instructions),
>> +	RVPMU_EVENT_ATTR_PTR(dTLB_load_miss),
>> +	RVPMU_EVENT_ATTR_PTR(dTLB_store_miss),
>> +	RVPMU_EVENT_ATTR_PTR(iTLB_load_miss),
>> +	NULL,
>> +};
>> +
>>   static struct riscv_vendor_pmu_events pmu_vendor_events_table[] = {
>> +	RISCV_VENDOR_PMU_EVENTS(QEMU_VIRT_VENDOR_ID, QEMU_VIRT_ARCH_ID, QEMU_VIRT_IMPL_ID,
>> +				qemu_virt_hw_event_map, qemu_virt_cache_event_map,
>> +				qemu_virt_event_group)
>>   };
>>   
>>   static const struct riscv_pmu_event *current_pmu_hw_event_map;
>>
>> -- 
>> 2.53.0-Meta
>>
>>

