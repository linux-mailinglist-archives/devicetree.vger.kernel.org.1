Return-Path: <devicetree+bounces-298774-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ZpHqGyfTCGov7AMAu9opvQ
	(envelope-from <devicetree+bounces-298774-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 22:27:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D9555DAB1
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 22:27:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 672B5300A75B
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 20:27:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CA8430C151;
	Sat, 16 May 2026 20:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cjdns.fr header.i=@cjdns.fr header.b="QKFNCsM7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.cjdns.fr (mail.cjdns.fr [5.135.140.105])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF2F02DECCC
	for <devicetree@vger.kernel.org>; Sat, 16 May 2026 20:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=5.135.140.105
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778963234; cv=none; b=XmLJ9xN5uterUdjGtOO9i5jZD6LbfD1teMK4HK+faSfBL9Jpad5R4GbUGjOkjxy3OGrkQ8ONwuUqXVr813yDyYvpa4dDiPOCPoXS/IRTVxbICOn3a/DTk+aJTGd6VqjqksiK/dms+MR+Ih3HgxQKRrD57o//9YdT3qKZrezJexY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778963234; c=relaxed/simple;
	bh=T0k7Wwrec0WvnAK+kdyipmL0NcZTus0+zz/Fkvx/LZ4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s4nKAJFW/Os3vtSXUM7Jmm/mPG1d18jtJtr60j20INCfxkFEjAQ5wGxCtjGxmglGwaJgn9SsphY59KeV/0Xos0jJ/pFE41VmCe1AAj1oHqfRz0jyv3KBQYv31uADBiSGlPQJwxHGv81gkb1YZRjr6h2Qo3ZxkWOVTfLZtkjqK8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cjdns.fr; spf=none smtp.mailfrom=cjdns.fr; dkim=pass (2048-bit key) header.d=cjdns.fr header.i=@cjdns.fr header.b=QKFNCsM7; arc=none smtp.client-ip=5.135.140.105
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cjdns.fr
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cjdns.fr
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 707633F9283;
	Sat, 16 May 2026 22:27:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cjdns.fr; s=dkim;
	t=1778963230; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=LqkOJ4cflb4R5gtL8qXDiRudP3BhK//fCfgK0ytXFlM=;
	b=QKFNCsM7oSUga9BYcN0ja8tpjx+D4GWiWRqr5S5gSkUOBEVhLnIuQbJVZcf14F8O/BYpz2
	zqHO9geSyeKth0sL2UYUyH7mCBNLaZvWOddSncj3SGGDyyfNxG74DaJJJSxbi98gS7id6l
	+csB/wAgSSOcFiqXyept6QF0/stdUKwmn2qFXaw5Nb9BI1VRPKW6gairuyHEL4pNh/7sgZ
	RxONe+POXgxBLdOrDPrssKYgtghJVSz1pvwQRX5o1AIidUvPyZVUDhEoZZiG/n5HY799EX
	k73Km1Tza4CRitzBAIPu7SF0OUVzRaTQuZhbObSRjHl8IkLIUyG1J+gLJu5J3A==
Message-ID: <3d36a919-dcb9-427f-9b9d-ca6dcbe67171@cjdns.fr>
Date: Sat, 16 May 2026 22:27:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH v3 4/4] clocksource/timer-econet-en751221: Support
 EN751627 without percpu IRQ
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
References: <20260516182648.3987792-5-cjd@cjdns.fr>
 <20260516200638.0FF88C19425@smtp.kernel.org>
Content-Language: en-US
From: Caleb James DeLisle <cjd@cjdns.fr>
In-Reply-To: <20260516200638.0FF88C19425@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Queue-Id: A2D9555DAB1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[cjdns.fr,none];
	R_DKIM_ALLOW(-0.20)[cjdns.fr:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[cjdns.fr:+];
	TAGGED_FROM(0.00)[bounces-298774-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cjd@cjdns.fr,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+]
X-Rspamd-Action: no action


On 16/05/2026 22:06, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 3 potential issue(s) to consider:
> - [High] Missing bounds check on `num_blocks` leads to buffer overflow and memory corruption.
> - [High] Off-by-one error in `cpuhp_setup_state` failure path causes out-of-bounds array access and invalid IRQ free.
> - [High] Missing CPU hotplug teardown callback causes unbalanced `enable_irq` warnings and use-after-unmap crashes on initialization failure.
> --
>
> commit c9306a7aa40ae1fa4dc34819e52ba88137234f75
> Author: Caleb James DeLisle <cjd@cjdns.fr>
>
> clocksource/timer-econet-en751221: Support EN751627 without percpu IRQ
>
> EN751627 is based on the 1004Kc which uses a different interrupt number
> for each CPU timer. Support both this and the EN751221 which uses a
> single percpu interrupt.
>
>> diff --git a/drivers/clocksource/timer-econet-en751221.c b/drivers/clocksource/timer-econet-en751221.c
>> index ed750e39cc4fa..dea6dbafa16ea 100644
>> --- a/drivers/clocksource/timer-econet-en751221.c
>> +++ b/drivers/clocksource/timer-econet-en751221.c
>> @@ -107,7 +128,10 @@ static int cevt_init_cpu(uint cpu)
>>   	clockevents_config_and_register(cd, econet_timer.freq_hz,
>>   					ECONET_MIN_DELTA, ECONET_MAX_DELTA);
>>   
>> -	enable_percpu_irq(cd->irq, IRQ_TYPE_NONE);
>> +	if (econet_timer.is_percpu)
>> +		enable_percpu_irq(cd->irq, IRQ_TYPE_NONE);
>> +	else
>> +		enable_irq(cd->irq);
> Will this cause unbalanced enable_irq() warnings when a CPU is brought back
> online?
Doesn't happen on this SoC.
>
> Since cpuhp_setup_state() provides NULL for the teardown callback, taking a
> CPU offline leaves the IRQ depth at 0.
>
> When brought back online, cevt_init_cpu() calls enable_irq() again, which
> could trigger the IRQ subsystem's unbalanced enable warning.
>
> Also, if cpuhp_setup_state() fails midway, the hotplug core attempts to roll
> back CPUs but does nothing due to the NULL teardown callback. The driver then
> proceeds to unmap MMIO memory and free IRQs.
Per last patch note, cevt_init_cpu only either errors OR sets up a 
timer, not both.
>
> Could this leave active clockevent devices registered that will crash the
> system when their set_next_event callback accesses the unmapped memory?
>
> [ ... ]
>
>> @@ -148,9 +177,23 @@ static void __init cevt_init(struct device_node *np)
>>   
>>   static int __init timer_init(struct device_node *np)
>>   {
>> -	int num_blocks = DIV_ROUND_UP(num_possible_cpus(), 2);
>> +	int num_blocks = of_address_count(np);
> [ ... ]
>
>> @@ -160,7 +203,7 @@ static int __init timer_init(struct device_node *np)
>>   
>>   	econet_timer.freq_hz = clk_get_rate(clk);
>>   
>> -	for (int i = 0; i < num_blocks; i++) {
>> +	for (i = 0; i < num_blocks; i++) {
>>   		econet_timer.membase[i] = of_iomap(np, i);
> Could this overflow the econet_timer.membase array?
>
> The econet_timer.membase array is statically sized to ECONET_NUM_BLOCKS.
>
> If a device tree specifies more address resources than ECONET_NUM_BLOCKS, this
> loop will write out of bounds and corrupt adjacent memory like the irqs array.
>
> Also, if num_blocks is less than required for the number of CPUs, will
> cevt_dev_init() dereference unmapped NULL memory?
Indeed, invalid DT will cause a crash. I can fix this easy enough.
>
> [ ... ]
>
>> @@ -216,11 +270,20 @@ static int __init timer_init(struct device_node *np)
>>   	return 0;
>>   
>>   out_irq_free:
>> -	free_percpu_irq(econet_timer.irq, &econet_timer_pcpu);
>> +	for (; i >= 0; i--) {
>> +		if (econet_timer.is_percpu) {
>> +			free_percpu_irq(econet_timer.irqs[i], &econet_timer_pcpu);
>> +		} else {
>> +			free_irq(econet_timer.irqs[i], NULL);
>> +		}
>> +	}
> Could this perform an out-of-bounds access or free an uninitialized IRQ?
>
> After successfully requesting num_irqs interrupts in the loop above, the loop
> variable i is equal to num_irqs.
>
> If the subsequent cpuhp_setup_state() call fails, the code executes goto
> out_irq_free without decrementing i.
>
> If num_irqs equals ARRAY_SIZE(econet_timer.irqs), this will access
> econet_timer.irqs[num_irqs], which is past the end of the array. Even if
> within bounds, it calls free_irq() on an unrequested index.
Oops yes that needs fixing. Will send v4 for this and sweep in a few of 
the others as well.
>

