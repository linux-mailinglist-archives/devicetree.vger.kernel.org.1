Return-Path: <devicetree+bounces-313976-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qjQ9Hs/gNWqt5gYAu9opvQ
	(envelope-from <devicetree+bounces-313976-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 02:37:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2486A817C
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 02:37:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b=mPB+xqiz;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313976-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-313976-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linux.dev;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6FA3230087E9
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 00:37:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60009175A7C;
	Sat, 20 Jun 2026 00:37:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-181.mta0.migadu.com (out-181.mta0.migadu.com [91.218.175.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8778C2FF
	for <devicetree@vger.kernel.org>; Sat, 20 Jun 2026 00:37:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781915851; cv=none; b=SxBsGeKkqAYcZPZ5eTm2N3hc7OGvQEZExtfygVdDfgYMHg1CW2S4VvvW1X7T4hpjUDzkitysDsBpt+ee1Hi+fhe2VNtrjBLK16cyBsEd65Ta0wLFh1EnUWlyXma49acsEOnfRm9jqvc84etRW4gZNq05Um9+p6rRWuPwfXci3AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781915851; c=relaxed/simple;
	bh=zlVRYtTX0IMSiEplXwHZftLFto6fUpYN9sipcBlMMT0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LvkWIXshn1SBagoGc0Z89P8Jpt4VzRQnl0cKaKEz1F/ekQmKudRErjhUnA4+QDPoAY6AQAGh6qOhnPm1RCT6p0lYKd94viIhYnHGkw5lkQ/5CYSlMlgARLwaw8oqY6lmgGcM4sMx9zv106L5BXdlGB2nSb1CFeiY3DjxGTJzjHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=mPB+xqiz; arc=none smtp.client-ip=91.218.175.181
Message-ID: <45c4f50d-46d1-4111-b0a1-d4da386bba66@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1781915848;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=B6Ws2e3pGATryWc6/hsprSzAgwSCbcpOlE9xtcnLeMg=;
	b=mPB+xqiz75neW2047tYmRmI2dMRxaCpTphKtLfW1HQsYCJp1Mvh5Qb0beyurzKtAnm0sjk
	KESv+s6HbixTAvz2yslqKIJ8U64FRysQ3sNgMTGISXC88ZqsdNXerUusSqg4XR0gCiM6J2
	3mapRiWgq5uNsWXogQIm0ys+FepT564=
Date: Fri, 19 Jun 2026 17:37:22 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v6 17/21] RISC-V: perf: Add Qemu virt machine events
To: sashiko-reviews@lists.linux.dev
Cc: linux-perf-users@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org,
 devicetree@vger.kernel.org
References: <20260608-counter_delegation-v6-17-285b72ed65a9@meta.com>
 <20260609062221.D90C81F00893@smtp.kernel.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Atish Patra <atish.patra@linux.dev>
In-Reply-To: <20260609062221.D90C81F00893@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313976-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[atish.patra@linux.dev,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:linux-perf-users@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linux.dev:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[atish.patra@linux.dev,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:dkim,linux.dev:mid,linux.dev:from_mime,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,rivosinc.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0A2486A817C


On 6/8/26 11:22 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Medium] The patch incorrectly overloads the generic 'unimplemented' or 'non-commercial' CPU IDs (`mvendorid=0`, `marchid=0`, `mimpid=0`) to uniquely identify the QEMU virt machine, applying QEMU-specific PMU events globally to any minimal or academic RISC-V core.
> --
>
> commit 61b476b524390d76a4db3dcbab4b57114ff0ebc8
> Author: Atish Patra <atishp@rivosinc.com>
>
> RISC-V: perf: Add Qemu virt machine events
>
> This patch adds a minimal set of legacy perf events for the QEMU virt
> machine to the vendor table, allowing users to use them when counter
> delegation is enabled.
>
>> diff --git a/arch/riscv/include/asm/vendorid_list.h b/arch/riscv/include/asm/vendorid_list.h
>> index 7f5030ee1fcf8..603aa2b21c0ba 100644
>> --- a/arch/riscv/include/asm/vendorid_list.h
>> +++ b/arch/riscv/include/asm/vendorid_list.h
>> @@ -11,4 +11,8 @@
>>   #define SIFIVE_VENDOR_ID	0x489
>>   #define THEAD_VENDOR_ID		0x5b7
>>   
>> +#define QEMU_VIRT_VENDOR_ID		0x000
>> +#define QEMU_VIRT_IMPL_ID		0x000
>> +#define QEMU_VIRT_ARCH_ID		0x000
>> +
> [Severity: Medium]
> Do these definitions overload the generic "unimplemented" or "non-commercial"
> CPU IDs to uniquely identify the QEMU virt machine?
>
> According to the RISC-V Privileged Architecture specification, a value of 0
> in the mvendorid, marchid, and mimpid CSRs indicates that the ID is either
> unimplemented or represents a non-commercial implementation.

That's what virt machine exposes. We need actually what is being exposed 
in virt machine
as it still remains one of the most commonly used platforms in RISC-V.

>> diff --git a/drivers/perf/riscv_pmu_sbi.c b/drivers/perf/riscv_pmu_sbi.c
>> index 00b84b28117a8..74acac54328e0 100644
>> --- a/drivers/perf/riscv_pmu_sbi.c
>> +++ b/drivers/perf/riscv_pmu_sbi.c
> [ ... ]
>
>> @@ -453,7 +454,42 @@ struct riscv_vendor_pmu_events {
>>   	  .hw_event_map = _hw_event_map, .cache_event_map = _cache_event_map, \
>>   	  .attrs_events = _attrs },
>>   
> [ ... ]
>
>>   static struct riscv_vendor_pmu_events pmu_vendor_events_table[] = {
>> +	RISCV_VENDOR_PMU_EVENTS(QEMU_VIRT_VENDOR_ID, QEMU_VIRT_ARCH_ID, QEMU_VIRT_IMPL_ID,
>> +				qemu_virt_hw_event_map, qemu_virt_cache_event_map,
>> +				qemu_virt_event_group)
>>   };
> [Severity: Medium]
> By binding the 0x000 ID tuple to QEMU's specific PMU event maps here, will
> the kernel mistakenly assume any generic core returning 0 is a QEMU virt
> machine?
>
> If that non-QEMU core implements PMU counter delegation (Ssccfg/Smcdeleg) but
> uses standard or different raw event encodings, this could unconditionally
> program QEMU's arbitrary raw event values into the core's PMU configuration
> registers, silently corrupting performance monitoring statistics.

N/A



