Return-Path: <devicetree+bounces-323613-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id M2u1LZJ8T2rdhwIAu9opvQ
	(envelope-from <devicetree+bounces-323613-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:48:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3E272FDAC
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:48:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=ZmBQCweC;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323613-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323613-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EC47230073D2
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 10:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6CDD3F99E3;
	Thu,  9 Jul 2026 10:42:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1FEA3F5BF5
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 10:42:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783593740; cv=none; b=liw5HKndbwGMz5E37tvD5BSaxuAM/OSu00Z0zidZ3mXTva1Cq17EIhORO1FtTVkB9B2YvdGBMSnEyxsUxD8iNcTNwiCDVerdxYVShWCXK/AYpL7kCccBSZ1upTRTfcgdygYm/YS3GugRM823EW1f12WeQYTncVqw7WeZpGEZrkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783593740; c=relaxed/simple;
	bh=2gPZ9ppRdv8niKJmnenk/VipJKBnL2UlhO35HK9NxfA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Vfukw3yILC3Xm09JwVHXZJkc8o1Q+mMWRBYar0e8PSbYuDTgoxegov/U4SAGPXnu3Cqkf2Mo0fV7AmtUHdMxGpueQ7jQ7xRtKcfkpH2zqmBMQDDQgYFfccqK/97PDTaEzwv853IciMUnbBO1V5kYIyTgbJmKLoWp9HqUxZ2PSEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=ZmBQCweC; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783593737;
	bh=2gPZ9ppRdv8niKJmnenk/VipJKBnL2UlhO35HK9NxfA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ZmBQCweCCis06ffuLrZsNtCZUDxnBnoCDs+8rqG9fJ2vKM3FIlB+FomFqdRDwoNVL
	 7g3XQ8siAekFKrIBzHsyEghRrpmJUXj0MJOJqYrjWEjyfkC8VvZOSZTDLoIJezVMzo
	 qTbQ+92WWFOLovcEXFO6nBUMu5q9rM9iC7MkaufV6Hr2KxtKEnNfpetuRWHTpSrLwT
	 5EP93iUJkrTHJzia+gKaRq9BzEWbEhOF3GbABoVouCGHTKY3yztxc0cosZ1Z3gGjHW
	 3b7zYF2Z+eBi6ED2tkPL6/RieELiq1bsXt49VQ/yAamOBAC73zsq9hPEPMio7vz+ty
	 j4t6qqG8eyXyQ==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C47C817E0564;
	Thu, 09 Jul 2026 12:42:16 +0200 (CEST)
Message-ID: <771c3867-2d42-43a3-beb0-7cb535cbd208@collabora.com>
Date: Thu, 9 Jul 2026 12:42:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/5] pmdomain: mediatek: Add support for Direct CTL
 simple power sequence
To: sashiko-reviews@lists.linux.dev
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
References: <20260709084635.24912-1-angelogioacchino.delregno@collabora.com>
 <20260709084635.24912-5-angelogioacchino.delregno@collabora.com>
 <20260709085843.6C09E1F000E9@smtp.kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260709085843.6C09E1F000E9@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323613-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,collabora.com:from_mime,collabora.com:email,collabora.com:mid,collabora.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2C3E272FDAC

On 7/9/26 10:58, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 3 potential issue(s) to consider:
> 
> Pre-existing issues:
> - [High] Incomplete error recovery in `scpsys_power_off_internal` leaves hardware paralyzed and causes clock refcount underflows.
> - [High] Unbalanced lifecycle operations in `scpsys_power_on` fail to revert hardware state on error.

Unfortunately there's no way of fixing those two briefly; the hardware may randomly
lockup if changes are reverted at that point.

I'm not even sure if there's any way at all of fixing this, but research will
be done a bit later. Not relevant for this series.

> - [Medium] Malformed device trees lacking access controllers guarantee a NULL pointer dereference in `scpsys_bus_protect_get_regmap`.

No, that's not true - only HFRPSYS HWV lack access controllers, and will use
different ops, so that's not going to create any NULL pointer dereference.

> --
> 
> --- Patch [4]: [PATCH v3 4/5] pmdomain: mediatek: Add support for Direct CTL simple power sequence ---
> commit 0a6955778a8abcdf284811fe9a9089e2c1cff6d6
> Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> 
> pmdomain: mediatek: Add support for Direct CTL simple power sequence
> 
> Some new SoCs like MT8196, MT6991, and others, have got one
> additional power controller (usually in the HFRP Multimedia
> block) which needs a simplified power on/off sequence while
> using Direct Control strategy.
> 
> Domains using the "simple power sequence" are not backed by
> the RTFF hardware, have no Bus Protection mechanism, lacks
> the ISO, PWR_ON, PWR_ON_2ND bits, and therefore get enabled
> automatically after getting out of reset.
> 
> This simple power sequence is then a subset of the full one
> as only needs the enablement of the specific power domain's
> clock input and reset (where, again, after getting out of
> reset, the ISO and PWR_ON bits are automatically internally
> getting flipped) to enable or disable (power on or off).
> 
> Moreover, the simple power sequence power domains guarantee
> that they always get enabled/disabled after executing the
> relevant power sequence (on/off) so, differently from the
> others, there is also no need to poll for a PWR_ACK.
> 
>> diff --git a/drivers/pmdomain/mediatek/mtk-pm-domains.c b/drivers/pmdomain/mediatek/mtk-pm-domains.c
>> index 8d49d9ee3cd29..632c5dcdcedaf 100644
>> --- a/drivers/pmdomain/mediatek/mtk-pm-domains.c
>> +++ b/drivers/pmdomain/mediatek/mtk-pm-domains.c
> [ ... ]
>> @@ -688,7 +739,8 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
>>   err_enable_bus_protect:
>>   	scpsys_bus_protect_enable(pd, 0);
>>   err_disable_sram:
>> -	scpsys_sram_disable(pd);
>> +	if (!MTK_SCPD_CAPS(pd, MTK_SCPD_SIMPLE_PWRSEQ))
>> +		scpsys_sram_disable(pd);
>>   err_disable_subsys_clks:
>>   	if (!MTK_SCPD_CAPS(pd, MTK_SCPD_STRICT_BUS_PROTECTION))
>>   		clk_bulk_disable_unprepare(pd->num_subsys_clks,
>>   					   pd->subsys_clks);
> 
> [Severity: High]
> This is a pre-existing issue, but does this error path fail to revert
> the hardware state if an error occurs?
> 
> If scpsys_bus_protect_disable() or clk_bulk_prepare_enable() fails after
> *_pwrseq_on() has successfully executed, the error path jumps to err_pwr_ack.
> 
> This path disables the domain's regulator and clocks but fails to execute
> *_pwrseq_off() or revert ext_buck_iso:
> 
> err_pwr_ack:
> 	clk_bulk_disable_unprepare(pd->num_clks, pd->clks);
> err_reg:
> 	scpsys_regulator_disable(pd->supply);
> 	return ret;
> 
> Could this sever the supply while leaving the domain's internal logic active,
> resulting in hardware lockup and state machine desynchronization?
> 
> [ ... ]
>> @@ -725,15 +778,21 @@ static int scpsys_power_off_internal(struct scpsys_domain *pd)
>>   		return ret;
>>   
>>   	if (MTK_SCPD_CAPS(pd, MTK_SCPD_MODEM_PWRSEQ))
>> -		scpsys_modem_pwrseq_off(pd);
>> +		ret = scpsys_modem_pwrseq_off(pd);
>> +	else if (MTK_SCPD_CAPS(pd, MTK_SCPD_SIMPLE_PWRSEQ))
>> +		ret = scpsys_simple_pwrseq_off(pd);
>>   	else
>> -		scpsys_ctl_pwrseq_off(pd);
>> +		ret = scpsys_ctl_pwrseq_off(pd);
>> +
>> +	if (ret < 0) {
>> +		/* Re-enable clocks so that next power off doesn't break the refcount */
>> +		int r = clk_bulk_prepare_enable(pd->num_subsys_clks, pd->subsys_clks);
>> +
>> +		if (r)
>> +			dev_warn(scpsys->dev, "Could not re-enable clocks: %d\n", r);
>>   
>> -	/* wait until PWR_ACK = 0 */
>> -	ret = readx_poll_timeout(scpsys_domain_is_on, pd, tmp, !tmp, MTK_POLL_DELAY_US,
>> -				 MTK_POLL_TIMEOUT);
>> -	if (ret < 0)
>>   		return ret;
>> +	}
>>   
>>   	clk_bulk_disable_unprepare(pd->num_clks, pd->clks);
> 
> [Severity: High]
> This isn't a bug introduced by this patch, but does the error recovery in
> scpsys_power_off_internal() leave the hardware in a paralyzed state?
> 
> If pwrseq_off fails, this block restores subsys_clks but leaves the domain's
> SRAM disabled, isolation applied, and bus protection disabled, while
> returning an error to genpd.
> 
> Because an error is returned, genpd treats the domain as still ON, allowing
> active consumers to interact with a paralyzed hardware domain.
> 
> Additionally, if scpsys_bus_protect_enable() fails earlier in this function:
> 
> 	ret = scpsys_bus_protect_enable(pd, BUS_PROT_IGNORE_SUBCLK);
> 	if (ret < 0)
> 		return ret;
> 
> It returns early and bypasses clock recovery entirely, causing a permanent
> clock refcount underflow on the next failure.
> 
> Can we ensure consistent state on power off errors?
> 
> [ ... ]
>> @@ -1109,6 +1168,12 @@ static int scpsys_get_bus_protection_legacy(struct device *dev, struct scpsys *s
>>   		regmap[2] = NULL;
>>   	}
>>   
>> +	/* If no access controllers are needed, don't allocate and don't fail */
>> +	if (num_regmaps == 0) {
>> +		scpsys->bus_prot = NULL;
>> +		return 0;
>> +	}
>> +
>>   	scpsys->bus_prot = devm_kmalloc_array(dev, num_regmaps,
>>   					      sizeof(*scpsys->bus_prot), GFP_KERNEL);
> 
> [Severity: Medium]
> This is a pre-existing issue, but does this result in a NULL pointer
> dereference if the device tree is malformed?
> 
> If an older SoC's device tree is missing required access controllers,
> num_regmaps becomes 0. The probe function succeeds and explicitly sets
> scpsys->bus_prot = NULL.
> 
> When the domain later attempts to power on, scpsys_bus_protect_enable() sees
> that the hardcoded SoC domain data still requests bus protection and
> unconditionally dereferences the NULL array in
> scpsys_bus_protect_get_regmap():
> 
> 	unsigned short block_idx = scpsys->bus_prot_index[bpd->bus_prot_block];
> 	return scpsys->bus_prot[block_idx];
> 
> Should we ensure scpsys->bus_prot is not dereferenced when NULL, or perhaps
> fail the probe if required controllers are missing?
> 

