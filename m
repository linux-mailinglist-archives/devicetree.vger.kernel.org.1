Return-Path: <devicetree+bounces-314040-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yQtRLycfN2rZJQcAu9opvQ
	(envelope-from <devicetree+bounces-314040-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 01:15:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C0A6A9DD4
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 01:15:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b=v3wkx8vG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314040-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-314040-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linux.dev;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1CFB8300C83F
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 23:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0881323C50A;
	Sat, 20 Jun 2026 23:15:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-182.mta0.migadu.com (out-182.mta0.migadu.com [91.218.175.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7735B40D57C
	for <devicetree@vger.kernel.org>; Sat, 20 Jun 2026 23:15:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781997347; cv=none; b=hsrpWkmAOA12Wrw+WeIWMIunSJheAL5Yj0Z0PhknpZdoOyldhpyyoVtGfjOFzusNsIdRvZkL7aPEvkzwmKblQl4jrZ9X49S593gs7ksCcZpk7AJR+ZiSp5KbRgdNP+z183kcFgcblqm+6dpw7IUSZlSJ1KS3k6dRm0E7yx97Lhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781997347; c=relaxed/simple;
	bh=c55u9JRxfeVF5+lIje4TMCUBZ0laNtO3MJ5wSzOs+SI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UnC/Pnk1IVXJehBJSEyuLV68CQjLryUoNeo/FZvKJhfYQjPIhbTjikcRyNBG1tf14B8HdCbzycooY8wuyjfJwr/llJ4qdXX0Ud9zVAHgJWYDxaY4t2IcX9xJzMJIiZ3c2wIMNiV9GskezuL3i2OVyd+NUQnQLMUmARlmvAwD6JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=v3wkx8vG; arc=none smtp.client-ip=91.218.175.182
Message-ID: <bebea55d-6f39-41af-b838-22e030b2a66c@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1781997334;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eEuPlCv52nwo/gWF/w3ejVnuRDQuHOF1oyVFidnviJY=;
	b=v3wkx8vGIeU4QuFQVyrdSpesGGjauu1sXFQYpIKoVlQyF7JA3RGBhPMJkhMukyf3J/j8+n
	GFX27PN3z9+lpigeIBNUVtH/j0ymUOWJva6tpJM60MDdYEZRgC7akAjxLY71Tn5Tt1t8Wb
	iNRahysUw3rVAMjkSB/+4AJPiO7SM34=
Date: Sat, 20 Jun 2026 16:15:30 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v6 14/21] RISC-V: perf: Skip PMU SBI extension when not
 implemented
To: sashiko-reviews@lists.linux.dev
Cc: devicetree@vger.kernel.org, linux-perf-users@vger.kernel.org,
 robh@kernel.org, conor+dt@kernel.org, linux-riscv@lists.infradead.org
References: <20260608-counter_delegation-v6-14-285b72ed65a9@meta.com>
 <20260609063329.66D801F00893@smtp.kernel.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Atish Patra <atish.patra@linux.dev>
In-Reply-To: <20260609063329.66D801F00893@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314040-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:devicetree@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:linux-riscv@lists.infradead.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[atish.patra@linux.dev,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linux.dev:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[atish.patra@linux.dev,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:dkim,linux.dev:mid,linux.dev:from_mime,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 28C0A6A9DD4


On 6/8/26 11:33 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
>
> Pre-existing issues:
> - [Critical] Missing perf_pmu_unregister() on error paths leads to Use-After-Free of the pmu struct.
> - [High] Unconditional cpuhp_state_remove_instance() on an uninitialized hlist_node causes a kernel panic.
> --
>
> commit bd51c5655be0902a2fc1fd90b8d692c299e7265b
> Author: Charlie Jenkins <charlie@rivosinc.com>
>
> RISC-V: perf: Skip PMU SBI extension when not implemented
>
> When the PMU SBI extension is not implemented, sbi_v2_available should
> not be set to true. The SBI implementation for counter config matching
> and firmware counter read  should also be skipped when the SBI extension
> is not implemented.
+linux-riscv
>> diff --git a/drivers/perf/riscv_pmu_sbi.c b/drivers/perf/riscv_pmu_sbi.c
>> index 1f16df9d0dd00..5bfcd3821f572 100644
>> --- a/drivers/perf/riscv_pmu_sbi.c
>> +++ b/drivers/perf/riscv_pmu_sbi.c
> [ ... ]
>> @@ -2045,12 +2052,13 @@ static int __init rvpmu_devinit(void)
>>   	int ret;
>>   	struct platform_device *pdev;
>>   
>> -	if (sbi_spec_version >= sbi_mk_version(0, 3) &&
>> -	    sbi_probe_extension(SBI_EXT_PMU))
>> -		static_branch_enable(&riscv_pmu_sbi_available);
>> +	if (sbi_probe_extension(SBI_EXT_PMU)) {
>> +		if (sbi_spec_version >= sbi_mk_version(0, 3))
>> +			static_branch_enable(&riscv_pmu_sbi_available);
>> +		if (sbi_spec_version >= sbi_mk_version(2, 0))
>> +			sbi_v2_available = true;
>> +	}
>>   
>> -	if (sbi_spec_version >= sbi_mk_version(2, 0))
>> -		sbi_v2_available = true;
>>   	/*
>>   	 * We need all three extensions to be present to access the counters
>>   	 * in S-mode via Supervisor Counter delegation.
> [Severity: Critical]
> This is a pre-existing issue, but I noticed a potential use-after-free in the
> error handling path of rvpmu_device_probe() when allocating or registering
> fails after perf_pmu_register() succeeds.
>
> If an error occurs, such as pmu_sbi_snapshot_alloc() failing, the code jumps
> to out_unregister:
>
> out_unregister:
> 	riscv_pmu_destroy(pmu);
>
> out_free:
> 	kfree(pmu);
> 	return ret;
>
> However, neither the error path nor riscv_pmu_destroy() calls
> perf_pmu_unregister(&pmu->pmu).
>
> This leaves the PMU registered in the perf core subsystem while its backing
> memory is freed via kfree(). Any subsequent access to the PMU could result
> in a use-after-free.
>
> Should perf_pmu_unregister() be called during teardown to avoid memory
> corruption?

Yes. Same comment as other patches. Fixed.


> [Severity: High]
> This is a pre-existing issue, but the error teardown path in
> rvpmu_device_probe() seems to have a bug that could trigger a kernel panic.
>
> If rvpmu_device_probe() fails before successfully calling
> cpuhp_state_add_instance(), it jumps to out_unregister and calls
> riscv_pmu_destroy(pmu).
>
> Inside riscv_pmu_destroy(), it unconditionally removes the hotplug instance:
>
> static void riscv_pmu_destroy(struct riscv_pmu *pmu)
> {
> 	...
> 	cpuhp_state_remove_instance(CPUHP_AP_PERF_RISCV_STARTING, &pmu->node);
> }
>
> Because the pmu struct is allocated with kzalloc() and the node hasn't been
> added to the hotplug list yet, its hlist_node is zero-initialized.
>
> When hlist_del() is called internally by cpuhp_state_remove_instance(), it
> attempts to dereference node->pprev (which is NULL), causing a NULL pointer
> dereference.
>
> Would it be better to check if the node is actually hashed before attempting
> to remove the hotplug instance?
Fixed in v7.

