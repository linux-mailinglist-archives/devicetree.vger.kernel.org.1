Return-Path: <devicetree+bounces-297727-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OCuCu3+BWrFdwIAu9opvQ
	(envelope-from <devicetree+bounces-297727-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 18:57:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9206E544FD9
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 18:57:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9E25D300956A
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 16:56:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2736032B9BB;
	Thu, 14 May 2026 16:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cjdns.fr header.i=@cjdns.fr header.b="JDt02rvo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.cjdns.fr (mail.cjdns.fr [5.135.140.105])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17C3344D9A
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 16:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=5.135.140.105
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778777782; cv=none; b=ID44a2K8KqPLcobxaad0GdPm9EF6BR13QRv1sknMxzJR1oHMoqd/u3Q6XmaqnkBOtnrk5RnKVFpp7+KbsFgy9C0gwahirX7ZAOAsD2NZlzdzW5TG2ep/WMkg52FCEBvKgVqpYQ7LaczDvggwbBh1qOgZhth34jzSHbSey3uIUo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778777782; c=relaxed/simple;
	bh=5ULVOCgR+aIMYOuMkruHNrVw/rTZYAg8CEk8Xdm5pxo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=br5IDYMK88eyobxR0Q7jvefCHw4HhzyV0OPuc198TEXppEaO41hCNIIcy9RK7pP6twbV3VQ8+VW7FbBQwyqWQhBboocL4nGTOu5GqUU2s6LzGGVMlnlyFYN6X/SN0IR/d2KaE35IeU+tQHrL1SCfoscAtGWX4MEQm0GvhLtSYNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cjdns.fr; spf=pass smtp.mailfrom=cjdns.fr; dkim=pass (2048-bit key) header.d=cjdns.fr header.i=@cjdns.fr header.b=JDt02rvo; arc=none smtp.client-ip=5.135.140.105
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cjdns.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cjdns.fr
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 15C1A3C392C;
	Thu, 14 May 2026 18:56:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cjdns.fr; s=dkim;
	t=1778777777; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=jrQZUENFZB71CdcUq7065FvlPBBJ+5mCQIWY7rRfEEY=;
	b=JDt02rvo6MmqK9SbHQ2R4ofLQ7KV6YumbjteB1dVmW4oiOi6dDjQgt2uPFhxQxXUuKa10/
	4UIqCqrK5ViTb9NlA2jJMtlie1g/pfdtU7yGJ1s3/EG4Wlbl6f2/XiwaAP8QdH6qEQHPwq
	S4iGECpx+UdVhdBiXm0GzQVt9FkPAbb+vXJOEUHi+wn+jYrTTsFOBfe/zhXA8t6bhhJ2lq
	Dbs0sLxAskk3C06qCT6nZnLbWdebI4PLo3vkv76J8vh0CYh1gIOIaaMYtYOr7CYMkEX+8f
	yxsHE7jRW9pbwndRX90jiPDruS5FH43qIsSzL9XtI3A29xIP6YZinsToWdJuWw==
Message-ID: <b11694d8-5f4f-4f24-bf53-bad3b5394a04@cjdns.fr>
Date: Thu, 14 May 2026 18:56:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH v2 4/5] clocksource/timer-econet-en751221: Unmap io mem on
 probe error
To: sashiko-reviews@lists.linux.dev
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org
References: <20260514000601.3430262-5-cjd@cjdns.fr>
 <20260514125641.C94F2C2BCB3@smtp.kernel.org>
Content-Language: en-US
From: Caleb James DeLisle <cjd@cjdns.fr>
In-Reply-To: <20260514125641.C94F2C2BCB3@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Queue-Id: 9206E544FD9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[cjdns.fr,none];
	R_DKIM_ALLOW(-0.20)[cjdns.fr:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297727-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[cjdns.fr:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cjd@cjdns.fr,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,cjdns.fr:email,cjdns.fr:mid,cjdns.fr:dkim]
X-Rspamd-Action: no action


On 14/05/2026 14:56, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Critical] Unmapping IO memory after a successful `clocksource_mmio_init()` registration introduces a fatal use-after-unmap vulnerability.
> --
>
> commit dd9c92736c75fb466e09313766fb39cf62c86394
> Author: Caleb James DeLisle <cjd@cjdns.fr>
> clocksource/timer-econet-en751221: Unmap io mem on probe error
>
> This commit updates the econet timer initialization to unmap the IO
> memory blocks if an error occurs during probe.
>
>> --- a/drivers/clocksource/timer-econet-en751221.c
>> +++ b/drivers/clocksource/timer-econet-en751221.c
> [ ... ]
>> @@ -198,12 +199,12 @@ static int __init timer_init(struct device_node *np)
>>   				    clocksource_mmio_readl_up);
>>   	if (ret) {
>>   		pr_err("%pOFn: clocksource_mmio_init failed: %d", np, ret);
>> -		return ret;
>> +		goto err_unmap;
>>   	}
>>   
>>   	ret = cevt_init(np);
>>   	if (ret < 0)
>> -		return ret;
>> +		goto err_unmap;
> If clocksource_mmio_init() succeeds, it registers the clocksource and saves
> the mapped IO pointer. If the subsequent cevt_init() fails, the code now
> jumps to err_unmap and unmaps the memory via iounmap().
Yeah I need to go back through this again.
>
> Since clocksource_mmio_init() does not provide a way to unregister the
> clocksource, the registered clocksource will remain active. When the kernel
> reads from this clocksource later, will it dereference the unmapped IO memory
> and cause a use-after-unmap regression?
>
> Looking at clocksource_mmio_init() in drivers/clocksource/mmio.c:
>
> clocksource_mmio_init() {
>          ...
>          cs->reg = base;
>          cs->clksrc.read = read;
>          ...
>          return clocksource_register_hz(&cs->clksrc, hz);
> }
>
> Before this patch, if cevt_init() failed, the driver returned an error
> without unmapping the memory, which allowed the already-registered
> clocksource to safely continue functioning.
>
> [ ... ]
>> +err_unmap:
>> +	for (int i = 0; i < ARRAY_SIZE(econet_timer.membase); i++) {
>> +		if (econet_timer.membase[i])
>> +			iounmap(econet_timer.membase[i]);
>> +	}
>> +
>> +	return ret;
>>   }

