Return-Path: <devicetree+bounces-313975-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zl+REHfgNWqg5gYAu9opvQ
	(envelope-from <devicetree+bounces-313975-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 02:36:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BDA6A8170
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 02:36:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b="lwZsj/nb";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313975-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313975-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linux.dev;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2F930302F5B9
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 00:36:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79945175A7C;
	Sat, 20 Jun 2026 00:36:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-184.mta0.migadu.com (out-184.mta0.migadu.com [91.218.175.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC97136358
	for <devicetree@vger.kernel.org>; Sat, 20 Jun 2026 00:36:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781915764; cv=none; b=CYgVKCar2lYpu7yp7ArxsqGfMkTk2MXil0+OBd2RiRZIZod+MozNKzz/K+6j4I5ekWNWwylJIAvjPsnXGpQmeecJJ7IK78FwqOW9ExdZ2FLDNHreRiV0NGLYmQmTOwWA7enBf/soNglFXVGNvUpytDy3DD+OAmNaeexf+J7Iz2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781915764; c=relaxed/simple;
	bh=RlxAjKzRt8XRO4CRmFT2F6yQjuupfM2gHD3+/l35IfM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uBFhPMNhmtreIO3ujD0Eo4qYVzMBcx9aB6b16LQRuP7QeF+IllM5l/tg0wJY5kbRb4B9BypbmK5XXZNrzpi24VoIBLkt4C17YxD0IeixcGtaM5YU1kDGEtDideMfv+Hd5S8VOf+/j2GWDFVS62MBNsP31DGBDeQMHfe4vkMVsEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=lwZsj/nb; arc=none smtp.client-ip=91.218.175.184
Message-ID: <389a9141-277d-4325-8099-de17eb4e19fa@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1781915751;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Erh4jwB4l3hfJMazZbrRVUERfRd67oKz+ZwQVO1+Te8=;
	b=lwZsj/nbf43DWttCMigRXCPU80SWC4TV7N9n29BmPVqA0F6PjIUMQ1X42rQebg0gGuaric
	Nz3UxfbTfpQB9It+4+FzdGeydAhCoR9W/3I7MzGDQTXrocxKQ3cLcgl4dcRXys6jf5HMiQ
	zF28q35P4TkYE3tnHDKmDWy7RqQk+No=
Date: Fri, 19 Jun 2026 17:35:43 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v6 16/21] RISC-V: perf: Add legacy event encodings via
 sysfs
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
 linux-perf-users@vger.kernel.org
References: <20260608-counter_delegation-v6-16-285b72ed65a9@meta.com>
 <20260609062110.1D0C61F00893@smtp.kernel.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Atish Patra <atish.patra@linux.dev>
In-Reply-To: <20260609062110.1D0C61F00893@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313975-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[atish.patra@linux.dev,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:linux-perf-users@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linux.dev:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[rivosinc.com:email,vger.kernel.org:from_smtp,linux.dev:dkim,linux.dev:mid,linux.dev:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 81BDA6A8170


On 6/8/26 11:21 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Medium] The globally scoped pmu_ctr_list array is leaked if PMU counter discovery fails, compounded by a flawed error code cast.
> --
>
> commit 7d64e724e6eff197f10e62cdd709e07f0a5c9a7d
> Author: Atish Patra <atishp@rivosinc.com>
>
> RISC-V: perf: Add legacy event encodings via sysfs
>
> Define sysfs details for the legacy events so that any tool can
> parse these to understand the minimum set of legacy events
> supported by the platform. The sysfs entry will describe both event
> encoding and corresponding counter map so that an perf event can be
> programmed accordingly.
>
>> diff --git a/drivers/perf/riscv_pmu_sbi.c b/drivers/perf/riscv_pmu_sbi.c
>> index 4b4f151a0744d..00b84b28117a8 100644
>> --- a/drivers/perf/riscv_pmu_sbi.c
>> +++ b/drivers/perf/riscv_pmu_sbi.c
>> @@ -130,7 +130,20 @@ static struct attribute_group riscv_cdeleg_pmu_format_group = {
>>   	.attrs = riscv_cdeleg_pmu_formats_attr,
>>   };
> [ ... ]
>
> [Severity: Medium]
> Does this code leak the pmu_ctr_list array if PMU counter discovery fails?
>
> In rvpmu_find_ctrs(), pmu_ctr_list is allocated via kcalloc(), but the function
> bails out without freeing it if num_sbi_counters or num_deleg_counters
> exceeds RISCV_MAX_COUNTERS:
>
> drivers/perf/riscv_pmu_sbi.c:rvpmu_find_ctrs() {
> ...
> 	pmu_ctr_list = kcalloc(RISCV_MAX_COUNTERS, sizeof(*pmu_ctr_list),
> 			       GFP_KERNEL);
> 	if (!pmu_ctr_list)
> 		return -ENOMEM;
>
> 	if (riscv_pmu_cdeleg_available_boot())
> 		num_deleg_counters = rvpmu_deleg_find_ctrs();
>
> 	/* This is required for firmware counters even if the above is true */
> 	if (riscv_pmu_sbi_available_boot())
> 		num_sbi_counters = rvpmu_sbi_find_num_ctrs();
>
> 	if (num_sbi_counters > RISCV_MAX_COUNTERS || num_deleg_counters > RISCV_MAX_COUNTERS)
> 		return -ENOSPC;
> ...
> }
>
> Also, could num_sbi_counters inadvertently capture negative error codes?
>
> rvpmu_sbi_find_num_ctrs() returns an int which can be a negative error
> code. Storing it in the u32 num_sbi_counters implicitly casts
> it to a very large positive value.
>
> This triggers the RISCV_MAX_COUNTERS check and causes the function to abort
> with -ENOSPC, losing the original error.
>
> The caller rvpmu_device_probe() then fails to clean up the leaked globally
> scoped pmu_ctr_list pointer during its error handling:
>
> drivers/perf/riscv_pmu_sbi.c:rvpmu_device_probe() {
> ...
> 	num_counters = rvpmu_find_ctrs();
> 	if (num_counters < 0) {
> 		pr_err("SBI PMU extension doesn't provide any counters\n");
> 		goto out_free;
> 	}
> ...
> out_free:
> 	kfree(pmu);
> 	return ret;
> }

valid points but same as issue raised in PATCH11. Fixed in v7.



