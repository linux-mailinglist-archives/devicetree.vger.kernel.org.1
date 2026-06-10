Return-Path: <devicetree+bounces-310079-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1z5oORs9Kmo1lAMAu9opvQ
	(envelope-from <devicetree+bounces-310079-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 06:44:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4DA66E44B
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 06:44:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=HbNpwvp0;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310079-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310079-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=mailbox.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7909B308847B
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 04:42:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C040A349CFE;
	Thu, 11 Jun 2026 04:42:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B74D533D6F7;
	Thu, 11 Jun 2026 04:42:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781152954; cv=none; b=lGh3NRzowfGGMzeumE0LMlX0JHyE6Ote7A0Uh4TdwXtrnQalzx9MagP3g9PFzDLInQlZgnAl3MR7Y+UMKc8EBQ/kFO4EuOgHFnUsaB3xqXTJczq+jcvULevcZK6VKDVUdDZP7Cvb6XU0CFUeEuubg6k5anO+OqrJFM4se6fC63Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781152954; c=relaxed/simple;
	bh=m+lauUpGk4LLE+zWBpWBZpWf5CCZUvP3Ls0+I20GSdA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qMecD8Rc29qhzKFu7WI65dI2U/HFHCU7J3cUnjARI3D1Gp4z9df1s40wHd3UGjFpIxd5/vvdyyLo4goGkoR5X50VEA8WeaH8bGZMBf+XwTo7NLzRtRqjrNSKo75DQID6q5TF1cE+MRgYP0WA4GMqLU8QnyVAHUJiUPlAg2oTrAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org; spf=pass smtp.mailfrom=mailbox.org; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=HbNpwvp0; arc=none smtp.client-ip=80.241.56.161
Received: from smtp102.mailbox.org (smtp102.mailbox.org [IPv6:2001:67c:2050:b231:465::102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4gbVPK5Fbvz9txK;
	Thu, 11 Jun 2026 06:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1781152949;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=a6BcnN8rdSZBC0imBDjb7WvsMQmmgBw7lE2xxGdBFAc=;
	b=HbNpwvp0Zj9yuH8o2oc0btr7NocD+4rpR36lGjssYY90zRMgEJRkepCWreP4M9Nf7FWw2G
	E9HY7rp4S1MHTyX7QMMv4fee/ekSf8lduJvfBHyzesvL6A0l+8xzJosXYM3uEd5i/B7NCU
	XmguDNfQaWWdZs542ORZ1bEfxqdHnEaIn+nV+xPx+WSbnnv1kOj/dQZ9e42m4tixPkbJYf
	XCDZ2t31PxCmC6VKwmLLgG9MPT5QYc9OJeFntCCtD4Aif4NtXPkbD4xa0jiLpOWeWwgjAT
	pYs0XO2gv848HpNsiV/Bhc9ssNxU0+H+ax/skEM2e6ZHgyZiJJuhS5Ekuv7d+A==
Message-ID: <7fc8f50f-7f6d-4b45-b172-a83d97164b40@mailbox.org>
Date: Wed, 10 Jun 2026 18:31:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 00/39] Add i.MX95 DPU/DSI/LVDS support
To: Liu Ying <victor.liu@nxp.com>
Cc: Piyush Patle <piyushpatle228@gmail.com>, dri-devel@lists.freedesktop.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Peng Fan <peng.fan@nxp.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Lucas Stach <l.stach@pengutronix.de>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Abel Vesa <abelvesa@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20251011170213.128907-1-marek.vasut@mailbox.org>
 <20260605121112.27866-1-piyushpatle228@gmail.com> <aiZzxhljfyYQ68Gl@raspi>
 <9ece4e08-a77f-4410-ba16-a77b9bd0aace@mailbox.org> <aifOQtaAi_7F9hXt@raspi>
Content-Language: en-US
From: Marek Vasut <marek.vasut@mailbox.org>
In-Reply-To: <aifOQtaAi_7F9hXt@raspi>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-MBO-RS-ID: 8a541f9777ff949760e
X-MBO-RS-META: trp3ppsudps4pgwo9w4hhy1o1twon399
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[mailbox.org,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[mailbox.org:s=mail20150812];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310079-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[marek.vasut@mailbox.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS(0.00)[m:victor.liu@nxp.com,m:piyushpatle228@gmail.com,m:dri-devel@lists.freedesktop.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:shawnguo@kernel.org,m:festevam@gmail.com,m:peng.fan@nxp.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:l.stach@pengutronix.de,m:Laurent.pinchart@ideasonboard.com,m:tzimmermann@suse.de,m:abelvesa@kernel.org,m:kernel@pengutronix.de,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,lists.freedesktop.org,lists.linux.dev,lists.infradead.org,vger.kernel.org,kernel.org,nxp.com,pengutronix.de,ideasonboard.com,suse.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marek.vasut@mailbox.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[mailbox.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,mailbox.org:dkim,mailbox.org:mid,mailbox.org:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3F4DA66E44B

On 6/9/26 10:26 AM, Liu Ying wrote:

Hello Liu,

>>>> I brought this series up on the i.MX95 15x15 FRDM (IT6263 LVDS-to-HDMI on
>>>> LVDS ch1). It mostly works, but I ran into a few issues around DI routing,
>>>> LVDS format handling, and DC enable sequencing which needed rework before
>>>> HDMI would come up reliably on the board.
>>>>
>>>> I don't see a v2 of the series and things seem to have been quiet since
>>>> November. Are you planning to post an updated version?
>>>
>>> My plan was to enable prefetch engine support[1] for i.MX8QXP display
>>> controller and add device tree for a whole i.MX8QXP LVDS display pipeline,
>>> before adding i.MX95 display controller support.
>>>
>>> Unfortunately, it seems that Marek is not a big fan of [1]
>>
>> I am fine with [1] as long as it can be isolated and does not affect every
>> SoC that might reuse this driver, which I think it can be done.
> 
> How can it be isolated?

if (compatible("mx8q"))
   something->prefetch_op = somefunction;

And then wherever is prefetch used, do

if (something->prefetch_op)
   something->prefetch_op()

Or something along those lines ?

>>> and I'm busy
>>> with downstream development so the plan doesn't move forward well.  I still
>>> think [1] makes sense(maybe I need to rebase it on latest drm-misc-next),
>>> so I'd like to see review comments on [1] and hopefully people think that
>>> the overall idea of [1] is ok.
>>
>> My only concern is, to keep it isolated to MX8Q, so this driver can be
>> reused by MX95.
>>
>>>> I've accumulated a fair amount of rework while getting this running on the
>>>> FRDM. If you're not planning a v2, I can clean things up and send one based
>>>> on the current series.
>>>
>>> I still think that i.MX95 display controller driver should be in a separate
>>> driver, rather than sharing the same driver with i.MX8QXP display controller
>>> like this patch series does, because the two display controllers are quite
>>> different as I mentioned in comments on this patch series and in discussion
>>> in [1].  Also, the common part between the two display controllers should
>>> be extracted to a common helper library as I mentioned there too.
>> Are they really? It seems this series adds support for the MX95 DC without
>> that many changes, so are the DCs really that different ? It seems the MX95
>> DC is simply a reuse/evolution of the MX8Q DC blocks, so duplicating the
>> code seems like the wrong direction, it will only lead to disparate sets of
>> bugs in two drivers, which isn't desired.
> 
> I pointed out a lot of H/W differences between the two display controllers
> during the discussions for this patch series and my i.MX8QXP prefetch engine
> patch series[1].  Please take a look at [1], which clearly shows that the
> prefetch engine would considerably impact CRTC/plane atomic callback
> implementations.

Is the prefetch engine actually grown into the CRTC/DE or not ? I 
suspect it is separate and instead part of the built-in DMA, right ?

> Display controller internal blocks would also impact
> the implementations, e.g., DomainBlend block in i.MX95 display controller
> doesn't present in i.MX8QXP display controller.  It makes sense to use
> separate drivers for the two display controllers instead of adding 'if/else'
> checks to a single driver's atomic callbacks or introducing two pairs of
> atomic callbacks to that single driver.  I mentioned before, the code to
> simply add a DRM driver(struct drm_driver) is fairly limited.

Can't we simply have two sets of ops (one for mx8q and one for mx95) for 
those ops which are too complicated to implement as a single op with 
if/else statements ?

> I also mentioned before that separate drivers make them easier to maintain:
> we don't have to test both i.MX8QXP and i.MX95 if only one display controller
> specific code is changed.

The downside is lack of code reuse, which leads to disparate sets of 
bugs in these two drivers and code duplication. And it seems to me, that 
large parts of the MX8Q and MX95 DC are effectively identical.

>> (I might not fully understand what you have in mind with the helper library
>> though?)
> 
> I said this could be something like imx-ldb-helper.c and plus perhaps some
> callbacks like fg->dc_fg_cfg_videomode().
Do you perceive that the DC driver cannot be parametrized easily enough 
that it has to be turned into a library like that ? When I look at this 
patchset, esp. the first half which updates the various blocks, it does 
not seem to me that way.

