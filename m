Return-Path: <devicetree+bounces-274589-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMyaCpG3smmYOwAAu9opvQ
	(envelope-from <devicetree+bounces-274589-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 13:54:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 858A62720B9
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 13:54:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 71489306F38E
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:54:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBFA3308F39;
	Thu, 12 Mar 2026 12:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="a9/GnhF4"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C80E37DE8A;
	Thu, 12 Mar 2026 12:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773320065; cv=none; b=V3aB+K5H3it+0zDSvfgX7I1fCLDDOYDkxw5S9q7R3OER+PQTQi0eI83Jf2xVqSd8ggkT1D6d2LOWlb/q6dsKjQzoApXlfZk0fmVnIjHg2oEOLZn9sHE+WDJtm/OcOT2EYdLMO7lznES/ivfRxRi7pwxb6NUGXFjhMr62y/6qULo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773320065; c=relaxed/simple;
	bh=C/NkVQNNGo4EQd299QTibe2nPSsMByDx86rINHtzd0k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LWy6gTKm49CE/mECV7wKGh2012737HjmkhVPGhwYjs9bFgchAWNCuOpzly0xkez20VFDmo28we+dP6ASegHUPiL4W5FWKtZh623EcUarM7rz0Ia8wFU3qz6Y6jNInMsDC5saSfueJdtUH/41Ce8c3I6DT0ALoKLUea/zuUnnZWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=a9/GnhF4; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1773320062;
	bh=C/NkVQNNGo4EQd299QTibe2nPSsMByDx86rINHtzd0k=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=a9/GnhF43SOshCt13goOtyiT7ex3KghXkeWXTMkpgmNGBt3q6iEvZMer3LCfCIrEU
	 K9aV3S3iQ6AarYvHvlc5ASgRi7zLQxukgD/xlaJIYBp/jZplWE2jClMpwA9sssn1TC
	 VwwE2ahGtr/lW/cSWg+tygIXyXeVWuW5G/m2/4PmuuBk/qT4KySus/vDAExMOS1T8X
	 PsuLEQ+LQ3hUFjZU71nLdz0rTocJ4aBUMXL7Oqy8pGhY6AQ6xySHkrfW3VSFfcBvei
	 CJgbXTQpULor4IwYL1rWqitUy2qzZySClowt+dveTv0CsqAyfObtIHQYrKJpo4VrIO
	 wBipJWp1+ye0Q==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D89D517E0E6C;
	Thu, 12 Mar 2026 13:54:21 +0100 (CET)
Message-ID: <f5b3a8d9-cb5e-4341-a89d-0a07bd4207ac@collabora.com>
Date: Thu, 12 Mar 2026 13:54:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm: dts: mediatek: mt6589: add basic support for
 Lenovo B8000-F
To: Akari Tsuyukusa <akkun11.open@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 matthias.bgg@gmail.com, sean.wang@mediatek.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <20260304192417.818211-1-akkun11.open@gmail.com>
 <20260304192417.818211-3-akkun11.open@gmail.com>
 <94465ca7-b3dc-4736-9d58-4024f2494e54@collabora.com>
 <CAKr_iV5cmE-GBp679Q-=bZi+186BvMvD41ctxnxNC3mTKEzuRw@mail.gmail.com>
 <0994fef0-88f2-4277-aa46-0b6a33c53bfa@collabora.com>
 <CAKr_iV6tVkT1be8EjXoNjMerTek0s79W2-n2shzt-wrmB1bYgA@mail.gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <CAKr_iV6tVkT1be8EjXoNjMerTek0s79W2-n2shzt-wrmB1bYgA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274589-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,mediatek.com,vger.kernel.org,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 858A62720B9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Il 12/03/26 05:36, Akari Tsuyukusa ha scritto:
> On Fri, Mar 6, 2026 at 11:06 PM AngeloGioacchino Del Regno
> <angelogioacchino.delregno@collabora.com> wrote:
>> Ouch. Well, it's mostly done then, hopefully sooner than later :-)
> 
> Thank you for your consideration.
> 
>>> - PWRAP and MT6320 PMIC RTC
>> Start upstreaming the RTC (and MFD parts) right now maybe?
>> That all depends on the actual state of things, of course.
>>
>> Remember that you can upstream whatever is clean and works fine, that doesn't
>> have hard dependencies on other components.
> 
> mediatek,mt6397.yaml says that "regulators are needed",

ARGH! Forgot about that :-)

> so I have to complete the regulator driver.
> It will be completed soon.
> 
>>> - Power Domains (scpsys)
>>
>> The power domains should be handled by mtk-pm-domains.c - not sure what you wrote
>> but if you did it on mtk-scpsys.c that's wrong.
> 
> Ohno! I wrote in mtk-scpsys.c, thank you for telling me about this.
> 

I really have to add a comment in that driver saying that it's deprecated and it
shall never be used ever again, if not for already present legacy SoCs, which
should get anyway migrated to mtk-pm-domains for good measure (but I don't have
any of those, and I can't do that myself).

>>> - eMMC/SD (MSDC)
>> I can confirm that the MSDC controller in MT6589 will work with mtk-sd, there may
>> be some very small modifications to be done.... if any.
>> The mtk-sd driver does support "very old" SoCs already :-)
> 
> I forgot to add "CONFIG_REGULATOR_FIXED_VOLTAGE=y".
> SD is working and can boot from it.
> However, increasing the frequency causes errors,
> so adjustments are necessary.

Told ya! :-)

Cool to know that you're getting nicer and nicer progress over this!

> 
>> Keep up the good work!
> 
> I will continue to do my best!
> Further news will be sent via patch.
> 

Patiently waiting, and excited to see the news!

Cheers,
Angelo

