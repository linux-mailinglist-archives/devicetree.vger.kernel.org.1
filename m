Return-Path: <devicetree+bounces-326838-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +W02BzBgV2q2KgEAu9opvQ
	(envelope-from <devicetree+bounces-326838-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 12:25:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF5375CF69
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 12:25:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=YJfVJDzN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326838-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326838-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 95CDE30ECE1D
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 10:21:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C43A43E9CE;
	Wed, 15 Jul 2026 10:21:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 838B443DA25;
	Wed, 15 Jul 2026 10:21:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784110861; cv=none; b=EfpnCopWbIqtKK5rtSgndbN8MyEIm2PkkexRdoDfNNYF2TVRDEgBOv39eepNyJTJU0xjJShUqRYM/KaulF/YSyRjl8yuCH1hxd6Ccb55RP22eyBKdBZ4EobCKuJwERJyBtgIN+8j+45SebfAd+lp3vDzbsuFvT/lK18wwS1LXgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784110861; c=relaxed/simple;
	bh=y+ynGkCaYoXRDmgB014d4Ad6Wj5i1LOY4L9jyC5DNh0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lRBu6RAxYTwk6N02nqRSZDqG38pL6I6ZvXEcgpVoG2QLQqol68HLDSDYNbP/l1l1AO5SF+ZHeSyiCcZvo6fkNFJCCodwB1YfFoi72WbhnzMoFyq9Sld5RKKG7CLQrN4efryVlEuoWc5UUPwyAmlRQ/VKGyyQ78jVuYGR4W9Ef00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=YJfVJDzN; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784110858;
	bh=y+ynGkCaYoXRDmgB014d4Ad6Wj5i1LOY4L9jyC5DNh0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=YJfVJDzNldvpTUS5ABBvAnFhP6Vnzwp+yH2e3DTFWYOwgB0Q3VP1YHf6rvLm1lHwj
	 /3J/fXZAoEC8Kf1shil5y3lnP/tFvantshMIHagW6+zcctJ99IYkVKfjWm/LfWwsHt
	 ke1tXGJu1eANIyj2XclkQ+6be8j3POLtQI7cQFmTQ9kCL2HqbC/k3Q8lmtS5mvgo1t
	 qeHjH10VKhMROLXBvov2e2lbL4Qz6m3hNj32fptiBdq2Syrd/GTAtz2cFSLed1L/z/
	 HQolHnFHd/YWOR5y25nxtbr7x0G4n/EZlwzTwsz6eRA10QZjnFKUySHY26UfQTHmgX
	 sBzYr8njRAE8g==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5D15117E0720;
	Wed, 15 Jul 2026 12:20:58 +0200 (CEST)
Message-ID: <f9e34c90-5f9f-4a51-9968-0fb3467a782b@collabora.com>
Date: Wed, 15 Jul 2026 12:20:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] soc: mediatek: pwrap: use correct log level
To: rva333@protonmail.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Flora Fu <flora.fu@mediatek.com>, Alexandre Mergnat <amergnat@baylibre.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20260714-6572-pwrap-v1-0-d8e5a39cf7ef@protonmail.com>
 <20260714-6572-pwrap-v1-2-d8e5a39cf7ef@protonmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260714-6572-pwrap-v1-2-d8e5a39cf7ef@protonmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326838-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:rva333@protonmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:flora.fu@mediatek.com,m:amergnat@baylibre.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[protonmail.com,kernel.org,gmail.com,mediatek.com,baylibre.com];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:from_mime,collabora.com:mid,collabora.com:email,collabora.com:dkim,protonmail.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7AF5375CF69

On 7/14/26 14:42, Roman Vivchar via B4 Relay wrote:
> From: Roman Vivchar <rva333@protonmail.com>
> 
> Errors paths should be dev_err, not dev_dbg. Replace all dev_dbg in error
> branches to have the correct log level. Also simplify dev_err and return
> with dev_err_probe.
> 
> Signed-off-by: Roman Vivchar <rva333@protonmail.com>


Yeah.... I agree.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

> ---
>   drivers/soc/mediatek/mtk-pmic-wrap.c | 45 ++++++++++++++----------------------
>   1 file changed, 17 insertions(+), 28 deletions(-)
> 

