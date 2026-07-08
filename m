Return-Path: <devicetree+bounces-323226-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jG39GZfQTmqSUgIAu9opvQ
	(envelope-from <devicetree+bounces-323226-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 00:35:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F7A72AE7C
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 00:35:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZO6I+6rW;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323226-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-323226-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5E8BC302EAAC
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 22:34:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CDFB400DE0;
	Wed,  8 Jul 2026 22:34:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49607381B1A
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 22:34:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783550097; cv=none; b=ZoTd7/n/TO/KlWkKIBKja4+zxtquPl9STXL6dAzGAEkPKGTzUR+nvsuBSY8oowduKHLwA/D2VHd5Yc6qFLwXjZyGmucKdnTGLM1uMH4V2iyK1ar9MVdoCBntPlIHK61ZNu39VJ0RIba3eEak+avM13tSIA+4oG8x/pWZGhiswtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783550097; c=relaxed/simple;
	bh=X42vz6Vj5S0SIKv81DzKo615ZKHfRGfuAgIV+0vsSh8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JFxwcbWOWtvpA1paUIg8gE12t5qOWRW/2BFZiAjPZfqbTOQH2WHXqz9bX3UzYBwf2bF1a7jdrSQqR/1fiU5R6LUXYpGmoJGHj8UJg/wd+VDM85b5Uqj2dl26PjF0/JyKDTZTtk2kVGPKd6TsWR/rU8zaAqdhhXyPYCPm+BlPQHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZO6I+6rW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B26731F000E9;
	Wed,  8 Jul 2026 22:34:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783550096;
	bh=X8Eza6YxZCIYkqVhMbQueO1rwyiBg5OiJPSkups1+Yw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZO6I+6rWsN1Ikpu2eiiR0IseEiNHDxWtINC4WaTd+6xN9eAVb/NeYFTPipJIn6Jw4
	 UAIBPoVByKax95tweY4mISuyQ0AjJYiCJ1AiOWsrjRvX98Dni4c21Cq4TvQDxWzp1M
	 sKqaALM55xZeU6Lps0NZLbAjT/yuI/jxouo6ejSX4ai65bJqHeO7XGN9bfF3vv043q
	 KXNje7b7/kkrKkKa7bttb7eyLG4PTUt+gZqEnGXpxAuACnGGSvZVkPPaNxYM9nn9bN
	 zvfyv6TdAh8Yp7ktFNSf0g88xsFEMc3JERp8nlY3ueTr8hEOQI2DgfZawoq8790bo/
	 L+KA3yj59p4dA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v5 07/13] net: ethernet: oa_tc6: Add
 read_mms/write_mms register access functions
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ciprian Regus" <ciprian.regus@analog.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260708-adin1140-driver-v5-7-4aca7b51a58b@analog.com>
References: <20260708-adin1140-driver-v5-0-4aca7b51a58b@analog.com>
 <20260708-adin1140-driver-v5-7-4aca7b51a58b@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 22:34:55 +0000
Message-Id: <20260708223455.B26731F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323226-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ciprian.regus@analog.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,analog.com:email,lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 14F7A72AE7C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Missing SKB tailroom validation before skb_put() allows oversized =
frames to cause a kernel panic (DoS).
--

--- Patch [7]: [PATCH net-next v5 07/13] net: ethernet: oa_tc6: Add read_mm=
s/write_mms register access functions ---
commit 1657b3f7ce65c20a46c5f26047b7e9b1c93b5265
Author: Ciprian Regus <ciprian.regus@analog.com>

net: ethernet: oa_tc6: Add read_mms/write_mms register access functions

The Open Alliance TC6 standard defines multiple memory maps for the
MAC-PHY's register space. Define register access functions that allow the
caller to specify the MMS.

> diff --git a/drivers/net/ethernet/oa_tc6.c b/drivers/net/ethernet/oa_tc6.c
> index 3c19233fb38f8..955148d3cefc4 100644
> --- a/drivers/net/ethernet/oa_tc6.c
> +++ b/drivers/net/ethernet/oa_tc6.c
> @@ -62,6 +62,8 @@
>  #define STATUS0_RESETC_POLL_DELAY		1000
>  #define STATUS0_RESETC_POLL_TIMEOUT		1000000
> =20
> +#define OA_TC6_REG_MMS_MASK		GENMASK(19, 16)
> +

[Severity: High]
This isn't a bug introduced by this patch, but is it possible for oversized
frames to cause a kernel panic due to a missing SKB tailroom check?

Looking at oa_tc6_update_rx_skb() in this file, it unconditionally calls
skb_put():

drivers/net/ethernet/oa_tc6.c:oa_tc6_update_rx_skb() {
	...
	memcpy(skb_put(tc6->rx_skb, length), payload, length);
}

This is fed by continuous chunks of an ongoing frame:

drivers/net/ethernet/oa_tc6.c:oa_tc6_prcs_ongoing_rx_frame() {
	...
	oa_tc6_update_rx_skb(tc6, payload, OA_TC6_CHUNK_PAYLOAD_SIZE);
}

If an oversized frame is received, or if the MAC-PHY streams continuous chu=
nks
without asserting the end_valid flag, the driver reassembles the frame by
repeatedly calling oa_tc6_prcs_ongoing_rx_frame() and oa_tc6_update_rx_skb(=
).

Since the SKB is allocated with a fixed size, and skb_put() is called
unconditionally without verifying skb_tailroom(), won't this overflow the
bounds and cause a panic via skb_over_panic()?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-adin1140-d=
river-v5-0-4aca7b51a58b@analog.com?part=3D7

