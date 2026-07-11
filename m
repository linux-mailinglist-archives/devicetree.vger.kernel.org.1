Return-Path: <devicetree+bounces-324746-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id C+NNCwHfUWpTJwMAu9opvQ
	(envelope-from <devicetree+bounces-324746-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 08:13:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 733997408FF
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 08:13:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=oTnxTwgf;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324746-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-324746-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C628A300250A
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 06:13:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C89AF331EA1;
	Sat, 11 Jul 2026 06:13:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8C9282F0C;
	Sat, 11 Jul 2026 06:13:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783750395; cv=none; b=I1MMyVmF3cnQlUyvBdGL0lE3kkUEBaz+o4Gc1Z4SaUuPYpUasmvCjWFdNVHuX6g2RGXPuSKLxCdvkZ4phHlls4pF+J+cUKDIpLmna17poN+JGswaehsHp86h3nFaeIeYj8pdVEFFPl0AgJYwbewH5tm4cQUh0BWrScM0GenBanM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783750395; c=relaxed/simple;
	bh=it+oYZ5v0yCTmLV9Pvin6MNvwGCKJHsdbn7h5XwmXu8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=NOD8GiO0Tv5NW6gGgoiHp7EC6PxpZNBc3ltlcRbr94Iq9Bw83idbq2sxmYeNKqqYhdkYm1drlIRfLacfIrUsl8alE1b1m3FTtPPreRODKn/Ab8+LBpJWNLsE/kKt62FNcLsAEOrLDWaLNuGRHxa9Qhoudu1DlmsRF2bX6hpUj2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTnxTwgf; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66D941F000E9;
	Sat, 11 Jul 2026 06:13:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783750393;
	bh=it+oYZ5v0yCTmLV9Pvin6MNvwGCKJHsdbn7h5XwmXu8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oTnxTwgfhkvjT7YP7ausmO+U4DunkS/96yD982GkHx1109Yu2BU1g+JzGNwBVlyR8
	 CQ8803CP10jvRZDqCEJvgqPnlj7Q9NtrupIhRfoqQkoqAvj60FWS0WV8gC8kXTIPKh
	 HRiP4x0FTmMMil4PLqRlFjVa1pPjWLCUFME30Knhq5NmfPi8cv2hqVj7axedLyruu1
	 8lzCJqf3AC4fZ8CLCFiHkDa5qmG2lMiIxKQGHqZeQPCoKjaowyoqvClIVhJm2t7qTG
	 oeAwNRZYVEtZ9bX42C3EBLNz7Ei+EZAp3E2LV3duGkjDnbMSLfiiahVUexvQbDVXfS
	 YJqJE4rIcOvKg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 16/16] arm: omap2: remove remaining pdata-quirks for
 pandora legacy devices
Reply-To: sashiko-reviews@lists.linux.dev
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Cc: robh@kernel.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org, devicetree@vger.kernel.org, mfd@lists.linux.dev, lee@kernel.org
In-Reply-To: <d380941287c655a3d205ee8b08516d364c0ddec9.1783749722.git.hns@goldelico.com>
References: <cover.1783749722.git.hns@goldelico.com>
 <d380941287c655a3d205ee8b08516d364c0ddec9.1783749722.git.hns@goldelico.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 11 Jul 2026 06:13:12 +0000
Message-Id: <20260711061313.66D941F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324746-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:hns@goldelico.com,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:mfd@lists.linux.dev,m:lee@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,goldelico.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 733997408FF

> After updating the pandora-backligt setup and removing the omap3pandora
> sound system and defining related gpios by device tree, we can remove
> omap3_pandora_legacy_init() and the related legacy devices completely.
>=20
> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1783749722.gi=
t.hns@goldelico.com?part=3D16


