Return-Path: <devicetree+bounces-298772-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8ANTLIrOCGp16AMAu9opvQ
	(envelope-from <devicetree+bounces-298772-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 22:07:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F89F55D9E3
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 22:07:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B5F31300CC3E
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 20:07:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B96F35C1B2;
	Sat, 16 May 2026 20:07:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cjdns.fr header.i=@cjdns.fr header.b="Wrv1kLQX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.cjdns.fr (mail.cjdns.fr [5.135.140.105])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F33434F48D
	for <devicetree@vger.kernel.org>; Sat, 16 May 2026 20:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=5.135.140.105
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778962056; cv=none; b=Yqt/qL/V32Zob1fn3vHIHySyDgSIyGSPQsoxZi+qjZuJzoIwBaySfsHMjuWwaqcw2TNlMNtLmOsbq9BLXOagoeeEt+1D2PQbUdle5qOtet54GBlOfOGY8klzbaA5AKO8nOGHfnyrvgmGzQKrR2QapOnDz0c/tCr7N1n6lLvh/vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778962056; c=relaxed/simple;
	bh=/XSwKEBlN2etIJ2HDD3RrPUiKaW6GeUhkusBv518Ws0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GtVhNcJ2lxHxs7psv5xTExP+BbBZl7W23srw9O/HZ4mzfkoRKVU5Ywi/2OO520e2gyWafxx9wHtmxWGC/9KlpGZJnRzaoeVjuPteUqLu2URtDwF3p4AqxV6XghJ9SE4OAjmJiqoMhLlWfso6aBFln/pEh8I9dRgrhxtmI6CKk2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cjdns.fr; spf=none smtp.mailfrom=cjdns.fr; dkim=pass (2048-bit key) header.d=cjdns.fr header.i=@cjdns.fr header.b=Wrv1kLQX; arc=none smtp.client-ip=5.135.140.105
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cjdns.fr
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cjdns.fr
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 06F5A3F6CB3;
	Sat, 16 May 2026 22:07:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cjdns.fr; s=dkim;
	t=1778962051; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=CRBHpz6Y3zzrdaC5vfdjbfoqovTiBHZIMpJNktzJRBE=;
	b=Wrv1kLQXnvaTDxuVSKX9XJyPwcIpxkBVXbxvtvKFJcqKzTkLKfOQk9aoOSqhoU+cdGI/UK
	4pneOIxJQPiODAkDZVs05SAHqzwTXQ1I3VMqmLV4YMjhn08S850EU/duHT2qlIhSJO8qDh
	ZG0tBufzd/igfiEn6uXBhLfiaVT5aboLhmaiDp9cnFzs5xYRYN4jDTk66JaZIbrEDmxkxO
	LfX4hIEaDszt3vA75g40ocY22V5KaKShS6OZty/S4L8EKbCaFUzFU0LkELdvdBZ08Bk68W
	WTaltsaUl2QRReuei5k35YtZZHR9S24paKc7uTD8wdEH7+01J/ctSKlcYYxSgA==
Message-ID: <a6b00560-d6fb-480b-bfcb-26324e478ad3@cjdns.fr>
Date: Sat, 16 May 2026 22:07:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH v3 2/4] clocksource/timer-econet-en751221: Init teardown
 on error if possible
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
References: <20260516182648.3987792-3-cjd@cjdns.fr>
 <20260516190510.CD925C19425@smtp.kernel.org>
Content-Language: en-US
From: Caleb James DeLisle <cjd@cjdns.fr>
In-Reply-To: <20260516190510.CD925C19425@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Queue-Id: 0F89F55D9E3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[cjdns.fr,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[cjdns.fr:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298772-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[cjdns.fr:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cjd@cjdns.fr,devicetree@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,cjdns.fr:email,cjdns.fr:mid,cjdns.fr:dkim]
X-Rspamd-Action: no action


On 16/05/2026 21:05, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> - [High] The error teardown path for `cpuhp_setup_state()` failure unmaps MMIO memory without unregistering active clock event devices, creating a latent use-after-unmap bug.
> - [High] `cevt_dev_init()` accesses memory blocks using absolute CPU IDs, causing a NULL pointer dereference if the CPU mask is sparse or the device tree is incomplete.
> --
>
> commit 28fb215150f468c2962087cefa4f634e20465bd8
> Author: Caleb James DeLisle <cjd@cjdns.fr>
>
> clocksource/timer-econet-en751221: Init teardown on error if possible
>
> This commit converts the initialization process into two clearly delineated
> phases. It moves all IRQ and address resource mapping before the point of no
> return and adds teardown logic in case of error.
>
>> diff --git a/drivers/clocksource/timer-econet-en751221.c b/drivers/clocksource/timer-econet-en751221.c
>> index 4008076b1a210..155471f68e6f8 100644
>> --- a/drivers/clocksource/timer-econet-en751221.c
>> +++ b/drivers/clocksource/timer-econet-en751221.c
> [ ... ]
>
>> @@ -126,22 +127,9 @@ static void __init cevt_dev_init(uint cpu)
>>   	iowrite32(U32_MAX, reg_compare(cpu));
>>   }
>>   
>> -static int __init cevt_init(struct device_node *np)
>> +static void __init cevt_init(struct device_node *np)
>>   {
>> -	int i, irq, ret;
>> -
>> -	irq = irq_of_parse_and_map(np, 0);
>> -	if (irq <= 0) {
>> -		pr_err("%pOFn: irq_of_parse_and_map failed", np);
>> -		return -EINVAL;
>> -	}
>> -
>> -	ret = request_percpu_irq(irq, cevt_interrupt, np->name, &econet_timer_pcpu);
>> -
>> -	if (ret < 0) {
>> -		pr_err("%pOFn: IRQ %d setup failed (%d)\n", np, irq, ret);
>> -		goto err_unmap_irq;
>> -	}
>> +	int i;
>>   
>>   	for_each_possible_cpu(i) {
>>   		struct clock_event_device *cd = &per_cpu(econet_timer_pcpu, i);
>> @@ -151,21 +139,12 @@ static int __init cevt_init(struct device_node *np)
>>   					  CLOCK_EVT_FEAT_C3STOP |
>>   					  CLOCK_EVT_FEAT_PERCPU;
>>   		cd->set_next_event	= cevt_set_next_event;
>> -		cd->irq			= irq;
>> +		cd->irq			= econet_timer.irq;
>>   		cd->cpumask		= cpumask_of(i);
>>   		cd->name		= np->name;
>>   
>>   		cevt_dev_init(i);
> Could this iteration cause a NULL pointer dereference if the CPU mask is
> sparse?
>
> timer_init() allocates memory blocks based on num_possible_cpus(). If
> cpu_possible_mask is sparse (for example, if only CPUs 0 and 3 are present),
> num_possible_cpus() is 2, and only 1 block is mapped.
>
> When this loop reaches CPU 3, cevt_dev_init(3) might try to access an
> unmapped membase pointer.
>
> A later patch in this series changes the allocation to use of_address_count()
> and adds a check in cevt_init_cpu(), but since cevt_dev_init() is called
> unconditionally here, the issue appears to remain reachable during early
> initialization.
This is a potential issue but it predates this patch, and this patch 
only tries to fix one thing.
>
>>   	}
> [ ... ]
>
>> @@ -186,22 +165,45 @@ static int __init timer_init(struct device_node *np)
>>   		econet_timer.membase[i] = of_iomap(np, i);
>>   		if (!econet_timer.membase[i]) {
>>   			pr_err("%pOFn: failed to map register [%d]\n", np, i);
>> -			return -ENXIO;
>> +			ret = -ENXIO;
>> +			goto out_membase;
>>   		}
>>   	}
> [ ... ]
>
>> +	cevt_init(np);
>> +
>> +	ret = cpuhp_setup_state(CPUHP_AP_ONLINE_DYN,
>> +				"clockevents/econet/timer:starting",
>> +				cevt_init_cpu, NULL);
>> +	if (ret < 0) {
>> +		pr_err("%pOFn: cpuhp setup failed (%d)\n", np, ret);
>> +		goto out_irq_free;
>> +	}
> If cpuhp_setup_state() fails, does this error path leave active clock event
> devices registered with unmapped MMIO memory?
>
> cpuhp_setup_state() invokes its startup callback (cevt_init_cpu) on all
> online CPUs, which activates the clock events. If it fails on a subsequent
> CPU, the NULL teardown callback means no rollback occurs.
>
> When the error path jumps to out_irq_free and unmaps the MMIO memory, any
> subsequent timer interrupt could dereference the unmapped memory.
>
> A later patch in this series modifies cevt_init_cpu() to return errors,
> which makes this teardown path reachable.

cevt_init_cpu either returns an error, or it registers a timer, not both. Per my understanding, if there's an error running on CPU0, cpuhp_setup_state will not register it to run on other CPUs.

So I don't think there's anything to be done for this.



