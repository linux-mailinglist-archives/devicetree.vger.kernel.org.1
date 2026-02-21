Return-Path: <devicetree+bounces-267109-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WeaeAFXImWm/WgMAu9opvQ
	(envelope-from <devicetree+bounces-267109-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 15:59:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DF916D121
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 15:59:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5F376300292E
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 14:59:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF81D1C5D77;
	Sat, 21 Feb 2026 14:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="Wx3BCHB/"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F413119CD06;
	Sat, 21 Feb 2026 14:59:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771685967; cv=none; b=Tmz06+COPTS8JxCelM0h0u1Rx9fZPfuvoZGoQHusP4VoqSRQSdJfvPqsj0UEx/RX+b2FPvToXf585tiuFHIzERY36x59xa8zoDkotHiKQCeOSNj6KAfkUxUYG7/ocuai12z0URVkKuliZKMEFqY/EVRpVhgko3Br6bsMNzalXAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771685967; c=relaxed/simple;
	bh=xA22utvgRUdA5DBTKJr5qtockNVUiH7ZtWJLs1w/PPQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=aOFnuL0FkUyafBk9G1c3RflskDljodeLXMlGDG7zDginBtYKtKGcuHJcDpyh35idG07JfoBEBX5qCy81E93P5HobtzQ2qcrqoL9vjb9MNPCe0xBZGic9QARgT6hR2PXv2pNf8d5hA2SvZTztNKU/sOt3yVPpySTusPD0piR6tHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=Wx3BCHB/; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=xA22utvgRUdA5DBTKJr5qtockNVUiH7ZtWJLs1w/PPQ=; b=Wx3BCHB/7X48J37ZF46L83Wl/k
	ueplWD6JS0yylKYIteTeSvP2nHfEOmBcGASYFdlda8y9op5ARPjGtTxtiV9MkM0IO4dVuQz82aIqp
	5hoHZLupoQ4jd2xFv8NdcdItb0JUidFbUxVq6/OKaBFTLjw3yvb91WSika0/bYal1pM3I+0g0U0+p
	ZzniUxNbLvFje/SCmuMnsuTEqaW7TgM+r6AvPukQ9w5GPttUynX+eKMcJy0q21Rc3/R4yd7C2X9B4
	Ao7KyYRNCPibJ899dmpbjq0YvEl7FHWrVowUqqDgUTNNIK0+oVWWPdZPgCBY97ekIsVSt9xbL2Di1
	zTYcINOA==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: robh@kernel.org, WeiHao Li <cn.liweihao@gmail.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 WeiHao Li <cn.liweihao@gmail.com>
Subject:
 Re: [PATCH v2 1/4] phy: rockchip: inno-usb2: Add usb2 phy support for RK3368
Date: Sat, 21 Feb 2026 15:59:18 +0100
Message-ID: <4689639.clyjiGRsXx@diego>
In-Reply-To: <20250909132958.26423-2-cn.liweihao@gmail.com>
References:
 <20250909132958.26423-1-cn.liweihao@gmail.com>
 <20250909132958.26423-2-cn.liweihao@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267109-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,lists.infradead.org,vger.kernel.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 21DF916D121
X-Rspamd-Action: no action

Hi,

Am Dienstag, 9. September 2025, 15:29:55 Mitteleurop=C3=A4ische Normalzeit =
schrieb WeiHao Li:
> RK3368 has one USB2.0 PHY with two ports. This adds device specific data
> for it. Device specific data get form rockchip downstream source [1].
>=20
> [1] https://github.com/rockchip-linux/kernel/blob/develop-4.4/drivers/phy=
/rockchip/phy-rockchip-inno-usb2.c#L2805
>=20
> Signed-off-by: WeiHao Li <cn.liweihao@gmail.com>

just realized, this patch is missing the phy maintainer/reviewer as
recipient, the phy-list is likely not enough.

Please use scripts/get_maintainer.pl for the whole series, to get necessary
people. Because this phy-patch needs to go through the phy tree.

Thanks
Heiko



