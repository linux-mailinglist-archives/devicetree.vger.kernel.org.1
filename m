Return-Path: <devicetree+bounces-326831-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id o60XCQdaV2oBKQEAu9opvQ
	(envelope-from <devicetree+bounces-326831-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:59:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA4E75CBB4
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:59:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=pSe05non;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326831-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326831-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 904D8303FFDD
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 09:57:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E513B436BE2;
	Wed, 15 Jul 2026 09:57:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 730B4387361;
	Wed, 15 Jul 2026 09:57:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784109423; cv=none; b=aON++IqF6d0O+DAt68+PN5cInvqNp8Yq+yHEo46t2/qsrewJ3lYwe114SokqmvJrS5cIkOY76QiqFxV2hHs5SueqdML2aCfbuMDIwQi7lVUQwTHrvbAa9s11j8naQamg48WZ1jKLk7XCFFKw4mNtz2Ria4a48IF1dAdladmph5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784109423; c=relaxed/simple;
	bh=OW/79ZzwiOczh73BlYcxy3dAlykMdIAPkOsugBdp0Zw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LD64DRcYFLpGcDEVIbM8miVQYqf6jzKc/20M/KM1EtCIn560aMqqVxJGfOhtY04X88W1IfAZzS3PLUVY2sMZban+iNl8FP4Fzok/AJVR9DaCTgHGIDZ56oX8wxmQh0oEaxf9crPUl73tZg3OpG0ZsTRnFAKN5r308pk/NmF6L2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=pSe05non; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784109420;
	bh=OW/79ZzwiOczh73BlYcxy3dAlykMdIAPkOsugBdp0Zw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=pSe05nonurkAhJsuBt2yEIQ5fPi41vauOhuIe9sf0w1XEIalfqMYITjaeZL9pFlMm
	 ekZjq00uuCno1aOoslDMoOsi9A3ewW0fpirsf9zZlSfLuXFEkUCIuQYpfspuy2+wJK
	 WYldNiOD8XceM9PxzSXBCdg0Uz2vWPwtTLGoPyPHhz/7+X0VX+/AKRbBQaRJqCNt1a
	 YId3go6YxasMtI/DvWlg7EtGURu9CTkUm3fB3rvgT9MfU6V2Hu457xi7TGD8v20lVn
	 m4hCQDv01OpY8ewAg8iWOISTyt0eAdON8lvD6F0IPQf04ncOb5x+Zdhu9tafNbt+DV
	 t003zfAbnqEfA==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0839B17E07F8;
	Wed, 15 Jul 2026 11:56:59 +0200 (CEST)
Message-ID: <9a4c815f-8db4-40c3-8f02-5c66eb5b0fc6@collabora.com>
Date: Wed, 15 Jul 2026 11:56:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] pmdomain: mediatek: Add support for MT6858 SoC
To: nikolai.burov@jolla.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Ulf Hansson <ulfh@kernel.org>
Cc: Matthias Brugger <mbrugger@suse.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org,
 Nikolai Burov <nikolai.burov+review@abscue.de>
References: <20260714-mt6858-pmdomain-v1-0-4f09bbb822e0@jolla.com>
 <20260714-mt6858-pmdomain-v1-3-4f09bbb822e0@jolla.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260714-mt6858-pmdomain-v1-3-4f09bbb822e0@jolla.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326831-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:nikolai.burov@jolla.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:ulfh@kernel.org,m:mbrugger@suse.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:linux-pm@vger.kernel.org,m:nikolai.burov+review@abscue.de,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,m:nikolai.burov@abscue.de,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[jolla.com,kernel.org,gmail.com];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,review];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,jolla.com:email,mediatek.com:email,collabora.com:from_mime,collabora.com:mid,collabora.com:email,collabora.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7CA4E75CBB4

On 7/14/26 15:43, Nikolai Burov via B4 Relay wrote:
> From: Nikolai Burov <nikolai.burov@jolla.com>
> 
> Add support for the power domains found in the MediaTek MT6858 SoC.
> 
> Signed-off-by: Nikolai Burov <nikolai.burov@jolla.com>
> ---
>   drivers/pmdomain/mediatek/mt6858-pm-domains.h | 462 ++++++++++++++++++++++++++
>   drivers/pmdomain/mediatek/mtk-pm-domains.c    |   5 +
>   drivers/pmdomain/mediatek/mtk-pm-domains.h    |   5 +
>   3 files changed, 472 insertions(+)
> 
> diff --git a/drivers/pmdomain/mediatek/mt6858-pm-domains.h b/drivers/pmdomain/mediatek/mt6858-pm-domains.h
> new file mode 100644
> index 000000000000..6d85835115b4
> --- /dev/null
> +++ b/drivers/pmdomain/mediatek/mt6858-pm-domains.h
> @@ -0,0 +1,462 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) 2025 MediaTek Inc.
> + *                    KY Liu <ky.liu@mediatek.com>
> + * Copyright (c) 2026 Jolla Mobile Ltd
> + *                    Nikolai Burov <nikolai.burov@jolla.com>
> + */

..snip..

> +static const struct scpsys_domain_data scpsys_domain_data_mt6858[] = {
> +	[MT6858_POWER_DOMAIN_MD] = {
> +		.name = "md",
> +		.sta_mask = MT6858_PWR_ACK,
> +		.ctl_offs = 0xe00,
> +		.pwr_sta_offs = 0xe00,
> +		.pwr_sta2nd_offs = 0xe00,
> +		.ext_buck_iso_offs = 0xf20,
> +		.ext_buck_iso_mask = GENMASK(1, 0),
> +		.caps = MTK_SCPD_MODEM_SECURE | MTK_SCPD_EXT_BUCK_ISO |

MTK_SCPD_MODEM_SECURE_PWRSEQ

After which:

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


> +			MTK_SCPD_KEEP_DEFAULT_OFF,
> +	},

