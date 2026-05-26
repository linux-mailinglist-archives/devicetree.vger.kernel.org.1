Return-Path: <devicetree+bounces-302822-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yKKGLA8QFWrnSQcAu9opvQ
	(envelope-from <devicetree+bounces-302822-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 05:14:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5AF5D0459
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 05:14:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6E7A7300A4DF
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 03:14:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBB483AB282;
	Tue, 26 May 2026 03:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=huawei.com header.i=@huawei.com header.b="e4nKcL1R"
X-Original-To: devicetree@vger.kernel.org
Received: from canpmsgout03.his.huawei.com (canpmsgout03.his.huawei.com [113.46.200.218])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF1C73A873B
	for <devicetree@vger.kernel.org>; Tue, 26 May 2026 03:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=113.46.200.218
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779765258; cv=none; b=C7ZdV+Z4dPlFAh2Q3B3cFK3JCqfVJJIGolPxzz6V82L9x9iLX/z/EzD0xgcg7FyPLlY+aOEcRGm4xS7dFhNfnNtf7VxiHh3aPgNL/sPK+5Tx0UZSDhN5g9pVBWALB9NV/IbIncr1U61abL3aKx++dgjfhBG6ZuYMkCFam/ikaHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779765258; c=relaxed/simple;
	bh=cMlv+4VHyG5s4OZ4/qiNCB6VWeXg2yMgS3kZXC2V0L0=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=oZQGEUragvOd5eQA/ZYyPZFIwiP9yBP3THEVuh5SGVnardoI0Kl/GqmAy+TjgB2EEsFAQOHsH9vSmEygffa0y3pw9AKtIEz/jNhPRwPUycluiHBLQnPtSdsy/aag4pgnIQ9lekMY+GmUfz0DAohqPzi49I+8SJAxvCRVCVJyzl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; dkim=pass (1024-bit key) header.d=huawei.com header.i=@huawei.com header.b=e4nKcL1R; arc=none smtp.client-ip=113.46.200.218
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
dkim-signature: v=1; a=rsa-sha256; d=huawei.com; s=dkim;
	c=relaxed/relaxed; q=dns/txt;
	h=From;
	bh=I3AI5WWwz/t22n83hZQ/Ox4+zJeIKBNhES3I39cuV9Q=;
	b=e4nKcL1RmKiaFSvmcvjt23Dxp4EfYfvnMR/cNZ/L6bHKupwamdreV0ONgPUG4iTedzPZh2AS2
	kllshWJso5W8N3OfQIsCGlh/ld30qcyut4Y3PPPqDZldWEKPmtmTpBLv1uyixrmmGtDbPeMH4JJ
	TPKFI4nfSZJ1qdEa4ZbI1U8=
Received: from mail.maildlp.com (unknown [172.19.162.140])
	by canpmsgout03.his.huawei.com (SkyGuard) with ESMTPS id 4gPd2H70RGzpTN6;
	Tue, 26 May 2026 11:06:47 +0800 (CST)
Received: from dggpemf500011.china.huawei.com (unknown [7.185.36.131])
	by mail.maildlp.com (Postfix) with ESMTPS id D8DC8202E6;
	Tue, 26 May 2026 11:14:11 +0800 (CST)
Received: from [10.67.109.254] (10.67.109.254) by
 dggpemf500011.china.huawei.com (7.185.36.131) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Tue, 26 May 2026 11:14:11 +0800
Message-ID: <1c1e497b-1e41-43ba-a117-6f128857309f@huawei.com>
Date: Tue, 26 May 2026 11:14:10 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 02/17] powerpc/crash: Fix possible memory leak in
 update_crash_elfcorehdr()
To: <sashiko-reviews@lists.linux.dev>, <sourabhjain@linux.ibm.com>,
	<hbathini@linux.ibm.com>, <mpe@ellerman.id.au>
CC: <conor+dt@kernel.org>, <devicetree@vger.kernel.org>, <robh@kernel.org>
References: <20260525084932.934910-3-ruanjinjie@huawei.com>
 <20260525092207.96B9D1F000E9@smtp.kernel.org>
From: Jinjie Ruan <ruanjinjie@huawei.com>
In-Reply-To: <20260525092207.96B9D1F000E9@smtp.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: kwepems200002.china.huawei.com (7.221.188.68) To
 dggpemf500011.china.huawei.com (7.185.36.131)
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[huawei.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[huawei.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DKIM_TRACE(0.00)[huawei.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-302822-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ruanjinjie@huawei.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 7F5AF5D0459
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

+cc Sourabh Jain, Hari Bathini and Michael Ellerman

On 5/25/2026 5:22 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> 
> Pre-existing issues:
> - [Critical] Missing NULL check on `rmem` before accessing `rmem->nr_ranges` causes a NULL pointer dereference in `kexec_extra_fdt_size_ppc64()`.
> - [Critical] `__merge_memory_ranges()` incorrectly shrinks overlapping memory ranges, causing critical memory regions to be lost.
> --
> 
> commit 4efbfe4b6923f71ffba2342131a0178fa07349c0
> Author: Jinjie Ruan <ruanjinjie@huawei.com>
> 
> powerpc/crash: Fix possible memory leak in update_crash_elfcorehdr()
> 
> This commit fixes a memory leak in update_crash_elfcorehdr() by ensuring
> allocated memory from get_crash_memory_ranges() is freed if an error occurs.
> It updates the code to jump to the out label to properly free the memory.
> 
>> diff --git a/arch/powerpc/kexec/crash.c b/arch/powerpc/kexec/crash.c
>> index e6539f213b3d1..a520f851c3a6b 100644
>> --- a/arch/powerpc/kexec/crash.c
>> +++ b/arch/powerpc/kexec/crash.c
>> @@ -502,7 +502,7 @@ static void update_crash_elfcorehdr(struct kimage *image, struct memory_notify *
>>  	ret = get_crash_memory_ranges(&cmem);
>>  	if (ret) {
>>  		pr_err("Failed to get crash mem range\n");
>> -		return;
>> +		goto out;
>>  	}
>>  
>>  	/*
> 
> [Severity: Critical]
> This is a pre-existing issue, but does kexec_extra_fdt_size_ppc64()
> dereference a NULL pointer if rmem is NULL?
> 
> If get_reserved_memory_ranges(&rmem) returns 0 without allocating memory for
> rmem (e.g., when there are no matching device tree nodes), rmem remains NULL
> when passed to kexec_extra_fdt_size_ppc64():
> 
> arch/powerpc/kexec/elf_64.c:elf64_load() {
> 	...
> 	ret = get_reserved_memory_ranges(&rmem);
> 	if (ret)
> 		goto out;
> 
> 	fdt = of_kexec_alloc_and_setup_fdt(image, initrd_load_addr,
> 					   initrd_len, cmdline,
> 					   kexec_extra_fdt_size_ppc64(image, rmem));
> 	...
> }
> 
> Inside kexec_extra_fdt_size_ppc64(), there is no check before accessing
> rmem->nr_ranges:
> 
> arch/powerpc/kexec/file_load_64.c:kexec_extra_fdt_size_ppc64() {
> 	...
> 	/* Consider extra space for reserved memory ranges if any */
> 	if (rmem->nr_ranges > 0)
> 		extra_size += (unsigned int)(rmem->nr_ranges * sizeof(u64));
> 	...
> }
> 
> Could this lead to a NULL pointer dereference and a kernel panic during
> the kexec device tree preparation?
> 
> 
> [Severity: Critical]
> This isn't a bug introduced by this patch, but does __merge_memory_ranges()
> incorrectly shrink overlapping memory ranges?
> 
> When merging memory ranges, the code unconditionally assigns ranges[i].end
> to ranges[idx].end without using max(), and compares the start against
> ranges[i-1].end rather than ranges[idx].end:
> 
> arch/powerpc/kexec/ranges.c:__merge_memory_ranges() {
> 	...
> 	for (i = 1; i < mem_rngs->nr_ranges; i++) {
> 		if (ranges[i].start <= (ranges[i-1].end + 1))
> 			ranges[idx].end = ranges[i].end;
> 		else {
> 	...
> }
> 
> If a smaller memory range is completely subsumed by a larger one, could this
> assignment shrink the end boundary of the merged range?
> 
> Would this truncate valid memory blocks from the kexec exclude lists,
> potentially allowing the new kernel to overwrite the running kernel's memory
> and causing data corruption or crashes?
> 


