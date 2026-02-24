Return-Path: <devicetree+bounces-267790-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sMVnGIFxnWmAQAQAu9opvQ
	(envelope-from <devicetree+bounces-267790-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:38:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AA694184BAC
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:38:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 12D253087069
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 09:35:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA8FA36BCCC;
	Tue, 24 Feb 2026 09:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="KB51Fyh6"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8235F36B07D
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771925698; cv=none; b=MPjWV/PzCKHW4sX5KCLWoTkTFgVjCy1BdQN444mQ+QqWESIZ7CicdGF70iHGBgm9wGCx5EY5dipsqb9Mcn5TzmXMWuoBCaCsfuzxrmL57DxLyv88zY6VJOJjsZfcNEkD7WdFcnrPgo5UAwos4/MAfuvoJzZ4+SSz2VmOjJo5rpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771925698; c=relaxed/simple;
	bh=s6DByzrLUIdVl8l63+05mVX9KnRO5e6G5hkZDJSrnDk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=t3FYLnuOeynW4nCACZCDWUCGS970+fu7DLfjxELUF+gGgQyNY6GF8iDi33zz7umPXflywVQoBR4GuYJcIzh1ZMoeHMXNkUVVty1WNCbAnC+SIUilcZyIrop88nMmx95Mf6Bgye6GGEczyNMdD/GoiZtaL66Bm4ZslHagSur1gDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=KB51Fyh6; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771925695;
	bh=s6DByzrLUIdVl8l63+05mVX9KnRO5e6G5hkZDJSrnDk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KB51Fyh6baKM+BEpam7jGsEifDVhiEq/7HbfZ3uebVGyGCQwpSrFwuCLyayZYpy6n
	 rr8IIarsYGp/kgwJSzhxhrhuUQ7LuH5mOhsph9rVIXrEgNsK8QhVXH8Jl9xgvn0aMp
	 YxKhWk+RdEP8HTwRTlZK5lzih8O21W86La2i1FI3xNK+6e3plZe1GX8qt0BfUiXvEp
	 sKpcEPKRsLfkWKFG4Sg/kAwaZcO/U9WP6eJ498GmTWzZgnpg91xpd9UXKJYMt3NOJm
	 wlxwxnqwRH9LpIA6XSSB4EsS45V5hlsoAb23hH41Bpa48z0rlHv6l+9rsDgQMynspr
	 LT8JXQr52U9vQ==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6A5A417E012E;
	Tue, 24 Feb 2026 10:34:55 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sean Wang <sean.wang@mediatek.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
In-Reply-To: <20260224082541.7938-1-zajec5@gmail.com>
References: <20260224082541.7938-1-zajec5@gmail.com>
Subject: Re: [PATCH RESEND] ARM: dts: mediatek: mt7623: fix efuse fallback
 compatible
Message-Id: <177192569539.12050.9762878225171356081.b4-ty@collabora.com>
Date: Tue, 24 Feb 2026 10:34:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267790-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[collabora.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.155.187.48:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:mid,collabora.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: AA694184BAC
X-Rspamd-Action: no action

On Tue, 24 Feb 2026 09:25:41 +0100, Rafał Miłecki wrote:
> Fix following validation error:
> arch/arm/boot/dts/mediatek/mt7623a-rfb-emmc.dtb: efuse@10206000: compatible: 'oneOf' conditional failed, one must be fixed:
>         ['mediatek,mt7623-efuse', 'mediatek,mt8173-efuse'] is too long
>         'mediatek,mt8173-efuse' was expected
>         'mediatek,efuse' was expected
>         from schema $id: http://devicetree.org/schemas/nvmem/mediatek,efuse.yaml#
> arch/arm/boot/dts/mediatek/mt7623a-rfb-emmc.dtb: efuse@10206000: Unevaluated properties are not allowed ('compatible' was unexpected)
>         from schema $id: http://devicetree.org/schemas/nvmem/mediatek,efuse.yaml#
> 
> [...]

Applied to v7.0-next/dts32, thanks!

[1/1] ARM: dts: mediatek: mt7623: fix efuse fallback compatible
      commit: 5978ff33cc6f0988388a2830dc5cd2ea4e81f36a

Cheers,
Angelo



