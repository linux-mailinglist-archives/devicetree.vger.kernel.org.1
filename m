Return-Path: <devicetree+bounces-303913-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MAC7LcdrGGrcjggAu9opvQ
	(envelope-from <devicetree+bounces-303913-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 18:22:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D0E5F4EB7
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 18:22:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4C13C3069151
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 16:02:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2535940911E;
	Thu, 28 May 2026 15:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cjdns.fr header.i=@cjdns.fr header.b="t8m3C54g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.cjdns.fr (mail.cjdns.fr [5.135.140.105])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 809D8481249
	for <devicetree@vger.kernel.org>; Thu, 28 May 2026 15:46:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=5.135.140.105
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779983191; cv=none; b=YMOhmCKGwjRc1AlX8SrN9e5JSgaa4mZjX0034wIjD1ojaTdhKqMSahwogItVyFjgbAsjs0BYsQ5HS/VnFW04GzNlBrmUWTO2Rm7pEFKUb5iIH6sBxklG369rHbmBwQ4NwO5OPhM7vp2WQWVYiy0CxiaFX9W/sBGnEnNJFBji30Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779983191; c=relaxed/simple;
	bh=ZcxEwXE1OB6A4lNBsg0j+Ck+Wn3pDWCw2b/gZ2ylMXM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dV5qWqtgV7ThymRVTiKvl1trQ4fcIXD7/sMGlkCKpxfvWCRWr6c1AfhPqW9iZtN2uhQwoCy8gU+1AI8TRLA8sNF/sM616g1Ehekbd8cCLNlQqbQVjsJHaPjwYqAItg5nI2XiejwwoplhclpIgjWejRInWuqquVXoY6PAy8wfU+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cjdns.fr; spf=pass smtp.mailfrom=cjdns.fr; dkim=pass (2048-bit key) header.d=cjdns.fr header.i=@cjdns.fr header.b=t8m3C54g; arc=none smtp.client-ip=5.135.140.105
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cjdns.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cjdns.fr
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 2E7174B9409;
	Thu, 28 May 2026 17:46:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cjdns.fr; s=dkim;
	t=1779983187; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=Lig/Y3jjno2s3ssT2q87EUHF7rWx9/04UKQMvVpIUBw=;
	b=t8m3C54gKW9W7JpxCSv30JiXzivv60u8SoMRRMCicGUYQkedL7v7+1m9FVelyXL3E7WCTo
	XnfMpht0eFKrB1WzHaZTe6WDbcDl3/mGmaHrHt/l9Thr5QBtScMAoucGLxKiIKvmYlEjAA
	KP9LFmAg4rTLk74yLNjXsRAxVwzz4JE62GFCFIpoUENdEnTwy1NT9+KnyNIZaizLjxDKp8
	aoplKkmrJ0RENTc/SlStN70si/BlDPUzIM5MJ1iEiF7joWwLXQgwo79/c7UtOS8EL28rRD
	tHGuSPMWaRkFPjkgG6sc4n8zGapnpRXfwaPli0MeTLZTs5OIOIamow8JyZ5Tfw==
Message-ID: <8542ce1e-4e6b-4393-87f7-b4270f43be65@cjdns.fr>
Date: Thu, 28 May 2026 17:46:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH v6 3/5] clocksource/timer-econet-en751221: Init teardown
 on error if possible
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
References: <20260528140046.2897674-4-cjd@cjdns.fr>
 <20260528152337.DD6D41F000E9@smtp.kernel.org>
Content-Language: en-US
From: Caleb James DeLisle <cjd@cjdns.fr>
In-Reply-To: <20260528152337.DD6D41F000E9@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[cjdns.fr,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[cjdns.fr:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303913-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[cjdns.fr:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cjd@cjdns.fr,devicetree@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,cjdns.fr:email,cjdns.fr:mid,cjdns.fr:dkim]
X-Rspamd-Queue-Id: C1D0E5F4EB7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 28/05/2026 17:23, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Critical] The newly added error path for `cpuhp_setup_state()` failure creates a fatal use-after-unmap vulnerability by freeing IRQs and unmapping I/O memory without unregistering the active clockevent devices.

I'm considering this not-a-bug because at the time the timer comes 
online, there is only one CPU, and if cevt_init_cpu errors out it 
requires no tear-down. I can silence this warning by not erroring on 
failed cpuhp_setup_state call, but I didn't consider "make Sashiko 
happy" a good enough reason to do it.

Thanks,

Caleb

> --
>
> commit e1e0b36b8164978eb079f38d9547d743cebd0a97
> Author: Caleb James DeLisle <cjd@cjdns.fr>
>
> clocksource/timer-econet-en751221: Init teardown on error if possible
>
> This commit reorganizes the initialization process of the econet timer by
> separating it into two phases. It adds teardown logic to safely roll back
> resource allocations like memory mappings and IRQ requests if an error occurs
> before the point of no return.
>
>> diff --git a/drivers/clocksource/timer-econet-en751221.c b/drivers/clocksource/timer-econet-en751221.c
>> --- a/drivers/clocksource/timer-econet-en751221.c
>> +++ b/drivers/clocksource/timer-econet-en751221.c
> [ ... ]
>> @@ -187,22 +166,45 @@ static int __init timer_init(struct device_node *np)
> [ ... ]
>> +	ret = cpuhp_setup_state(CPUHP_AP_ONLINE_DYN,
>> +				"clockevents/econet/timer:starting",
>> +				cevt_init_cpu, NULL);
>> +	if (ret < 0) {
>> +		pr_err("%pOFn: cpuhp setup failed (%d)\n", np, ret);
>> +		goto out_irq_free;
>> +	}
> [Severity: Critical]
> When cpuhp_setup_state() executes the startup callback across online CPUs,
> it registers the clockevent devices. If this fails on a subsequent CPU,
> cpuhp_setup_state() aborts. Because a NULL teardown callback was provided,
> the CPU hotplug core skips rollback and leaves the successfully registered
> clockevent devices active on the earlier CPUs.
>
> The error path here then frees the IRQs and unmaps the I/O memory. If the
> timekeeping core attempts to handle a timer interrupt or program the next
> event on the still-registered clockevent devices, will it dereference the
> unmapped memory?
>
> Should the active clockevent devices be unregistered, or a teardown callback
> provided to cpuhp_setup_state(), before freeing these resources?
>
>> +
>> +	/* Point of no return, do not attempt to tear down after this. */
> [ ... ]
>> +out_irq_free:
>> +	free_percpu_irq(econet_timer.irq, &econet_timer_pcpu);
>> +out_irq_mapping:
>> +	irq_dispose_mapping(econet_timer.irq);
>> +out_membase:
>> +	for (int i = 0; i < ARRAY_SIZE(econet_timer.membase); i++) {
>> +		if (econet_timer.membase[i]) {
>> +			iounmap(econet_timer.membase[i]);
>> +			econet_timer.membase[i] = NULL;
>> +		}
>> +	}
>> +
>> +	return ret;
>>   }

