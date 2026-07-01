Return-Path: <devicetree+bounces-318608-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id elszGLIURWqX6goAu9opvQ
	(envelope-from <devicetree+bounces-318608-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:22:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB696EE092
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:22:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=JJ+tc6u1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318608-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318608-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 213D530731C2
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 13:05:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B547441020;
	Wed,  1 Jul 2026 13:05:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5A64480DFE
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 13:05:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782911147; cv=none; b=BMRB8jOY1IBwN0DiEjxf4OD3eJZVh/PbDrbh8nOWC2RzwB6o239KMknkz3jri0m4Cj5wNJreBBr4YSc1dDk+XP/X1PXT4WowkPlDLFpJIcRveDMlOmaOd7g3uPYJe4mzHP9kwXXePiC3oRkuvHaduSPUzAe6PLe1uBEnbRs9DFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782911147; c=relaxed/simple;
	bh=2TFsYZO4NySggQT0nmGGX5Zrgtoi302hD0gNKtxiFAg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HoweYWK/Pn1/CypY817r5/33ngAKX6KQB2dXUzzRYOpeootHsCILkKIsCyUsQYsLHRxooLIQaaTTTZkz9zS8JmdLYV1sXutVgSudhiOpOhsLFdQAWdSoFJwE+FAcALAipPUmBEXpmhBWYwjSqtoKPgPXIDJ3Z1GppQ9E6BQKu2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=JJ+tc6u1; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782911143;
	bh=2TFsYZO4NySggQT0nmGGX5Zrgtoi302hD0gNKtxiFAg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=JJ+tc6u11BKVPiwEWEuktqapukuGl57AoCrzsbNrc5x11ylUWDBwbT1xqkuWLxr5z
	 apc8zzb+9cMdrxr2LYEy55AZ9341QjIMu72qrsRiUGlmZM8VeseHlNm9asv2GiPyMl
	 FSmoLiT8+JXdgqpwYozAFzKUHMv/CHfEXwmakUHBDqkPaqBmoHXSCcUL7xT8M+ENeJ
	 DwS7OskuMhi02YSACSKsrRq1WbQHntX4MC7B12FbOS/5Yl0/gBFRCr8jl/kRfH148o
	 CnIZjr5Hq68kvNu3ovtzoGXbGzRCElDkFlR6QfsHP8j/x6iJM+CcJ2QKwc7RWMqLhz
	 OyjM2UgG9fH+Q==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9BDDA17E0114;
	Wed,  1 Jul 2026 15:05:42 +0200 (CEST)
Message-ID: <92153ec5-f848-4a83-b470-c29ac974c7b9@collabora.com>
Date: Wed, 1 Jul 2026 15:05:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/12] phy: phy-mtk-dp: Rename regs to regmap in struct
 mtk_dp_phy
To: sashiko-reviews@lists.linux.dev
Cc: linux-phy@lists.infradead.org, neil.armstrong@linaro.org,
 dri-devel@lists.freedesktop.org, conor+dt@kernel.org, robh@kernel.org,
 olteanv@gmail.com, devicetree@vger.kernel.org, vkoul@kernel.org
References: <20260701122008.19509-1-angelogioacchino.delregno@collabora.com>
 <20260701122008.19509-3-angelogioacchino.delregno@collabora.com>
 <20260701122658.307E21F000E9@smtp.kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260701122658.307E21F000E9@smtp.kernel.org>
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
	FREEMAIL_CC(0.00)[lists.infradead.org,linaro.org,lists.freedesktop.org,kernel.org,gmail.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-318608-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:linux-phy@lists.infradead.org,m:neil.armstrong@linaro.org,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:olteanv@gmail.com,m:devicetree@vger.kernel.org,m:vkoul@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BCB696EE092

On 7/1/26 14:26, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> 
> Pre-existing issues:
> - [High] Missing NULL check for `dev->platform_data` before dereferencing.
> - [High] Missing `remove` callback to clean up PHY lookup leads to a memory leak and use-after-free.
> --
> 
> commit a1a96e429cf3345472aae1b06f6ffe5b31edee81
> Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> 
> phy: phy-mtk-dp: Rename regs to regmap in struct mtk_dp_phy
> 
> In preparation to perform further cleanups and to extend the driver to
> support more SoCs, rename the regs member to regmap to improve readability,
> as this is a common name across many kernel drivers for a struct regmap.
> 
>> diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy-mtk-dp.c
>> index d7024a1443358..bf7b3a95e72d2 100644
>> --- a/drivers/phy/mediatek/phy-mtk-dp.c
>> +++ b/drivers/phy/mediatek/phy-mtk-dp.c
> [ ... ]
>> @@ -176,7 +176,7 @@ static int mtk_dp_phy_probe(struct platform_device *pdev)
> 
> [Severity: High]
> This is a pre-existing issue, but is it possible for dev->platform_data to be
> NULL here?
> 
> Earlier in mtk_dp_phy_probe(), dev->platform_data is dereferenced directly
> without a check:
> 
> drivers/phy/mediatek/phy-mtk-dp.c:mtk_dp_phy_probe() {
> 	...
> 	struct regmap *regs;
> 
> 	regs = *(struct regmap **)dev->platform_data;
> 	if (!regs)
> 	...
> }
> 
> If the driver is manually bound via sysfs (or otherwise instantiated without
> platform data), dev->platform_data will be NULL.
> 
> Should the code validate that dev->platform_data is not NULL before
> dereferencing it to avoid a kernel panic?
> 

No, that's not crashing it, because there's a NULL check anyway just after that.

> [Severity: High]
> This isn't a bug introduced by this patch, but does this driver leak the
> phy_lookup struct and leave a dangling pointer if it gets unbound?
> 
> In mtk_dp_phy_probe(), when !dev->of_node is true, a lookup entry is
> registered:
> 
> drivers/phy/mediatek/phy-mtk-dp.c:mtk_dp_phy_probe() {
> 	...
> 	if (!dev->of_node)
> 		phy_create_lookup(phy, "dp", dev_name(dev));
> 
> 	return 0;
> }
> 
> However, mtk_dp_phy_driver does not have a .remove callback to call
> phy_remove_lookup():
> 
> drivers/phy/mediatek/phy-mtk-dp.c:
> static struct platform_driver mtk_dp_phy_driver = {
> 	.probe = mtk_dp_phy_probe,
> 	.driver = {
> 		.name = "mediatek-dp-phy",
> 	},
> };
> 
> If the driver is unbound, the phy_lookup struct is leaked and remains linked
> in the global phys list. Since the phy struct gets freed by the
> device-managed subsystem, subsequent device probes iterating the PHY lookup
> list would trigger a use-after-free.
> 
> Could a .remove callback be added to unregister the lookup and prevent this?
> 

That's right, but I didn't create this issue. I can fix that in a later commit
just for that, even though this code path is dead when using new style devicetree.

>>   	if (!dp_phy)
>>   		return -ENOMEM;
>>   
>> -	dp_phy->regs = regs;
>> +	dp_phy->regmap = regs;
>>   	phy = devm_phy_create(dev, NULL, &mtk_dp_phy_dev_ops);
>>   	if (IS_ERR(phy))
>>   		return dev_err_probe(dev, PTR_ERR(phy),
> 

