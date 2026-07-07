Return-Path: <devicetree+bounces-322279-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id R6gEDTY3TWrZwgEAu9opvQ
	(envelope-from <devicetree+bounces-322279-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 19:28:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D1E71E476
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 19:28:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=THixKM11;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322279-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-322279-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 18F5530456FF
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 17:18:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D438B438466;
	Tue,  7 Jul 2026 17:18:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD88035E936
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 17:18:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783444701; cv=none; b=qUjqsBuuauJheJCCbahnD3x9MtBjr41SULgFQpLdVxkUy16vSqa5LL6OXdGmE6yW1zO6jUMqfsicvzk7zbF8RZoOB/vKJqQnA3OuZ0y91Vjj55gDApY67/xeBL8kl5FWa8JFYBvwN8Acj8pAIkb5SxpP78IGSauMUVM2PCOJ+ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783444701; c=relaxed/simple;
	bh=D+YoA5u0ly14et7nD7bg3OgQLDFnBQxZMnV2w0JeasE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=uXo8ukIAzIaPgfAy/MRxPLwA8iiKjuUBpz9P+dX5j3lhZFvw84j0joJbfXAIpRASTqJKdLsjLkEJhrIlSkMNQi7vZMvtLoZ2T8DAV0vfCQGoJURszKoNS6qK/WJd73gmK92oohbU/tu7jew4ereFlXRx5eD3iBcd1IMHa1ln4bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THixKM11; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F0A61F00A3A;
	Tue,  7 Jul 2026 17:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783444700;
	bh=OPIPLcyfMBvWoF/4P1/KVhkpSOVkXneU6Lcifmuf6PU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=THixKM118Ehm2vfKM8WfgGXOup48KqRt4j+ITdMZ/tCJIY3iGKgkT1BsJOphbBo/4
	 NxYZmQKVtVODmjuFmh66Id7UzVvSKynjIDOfLfKGVE+Hzt/y5B/JABL0+G33Kl5De9
	 4d9KVjRFnIHZDPQBrwQWyht1B0q96SxnjcQb/p3atc9bbsVOmtzSFnKv9P5OyiAsh2
	 cAjfULJ32ZfPPnnSqj0UBNhU1MNddg0KfexqAIEUIdxhSax/aITFCvon9G8h55Lmd4
	 PE3h+6c3cUwrxVxt/a8NeeNlHLVC5oJdXfpAZ3NLylbr/nd1oLCONpHv4zBOpzVZZf
	 z5suk++ZhBwRw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 05/20] media: imx355: Programmatically set the crop
 parameters for each mode
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dave Stevenson" <dave.stevenson@raspberrypi.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260707-media-imx355-v2-5-1683ec07b897@raspberrypi.com>
References: <20260707-media-imx355-v2-0-1683ec07b897@raspberrypi.com>
 <20260707-media-imx355-v2-5-1683ec07b897@raspberrypi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 17:18:19 +0000
Message-Id: <20260707171820.3F0A61F00A3A@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322279-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dave.stevenson@raspberrypi.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid,raspberrypi.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 21D1E71E476

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Missing initialization of the 0x030b PLL configuration register.
--

--- Patch [5]: [PATCH v2 05/20] media: imx355: Programmatically set the cro=
p parameters for each mode ---
commit 4df459187456782ee3ca7366e5ecefcdad82a80b
Author: Dave Stevenson <dave.stevenson@raspberrypi.com>

media: imx355: Programmatically set the crop parameters for each mode
   =20
Currently the cropping is set via register entries in the per mode
register lists. Add the crop information to the mode structure as
a v4l2_rect, and set the registers programmatically.

> diff --git a/drivers/media/i2c/imx355.c b/drivers/media/i2c/imx355.c
> index 28b210f1a8689..363b5667b6c9a 100644
> --- a/drivers/media/i2c/imx355.c
> +++ b/drivers/media/i2c/imx355.c
[ ... ]
> @@ -253,21 +261,9 @@ static const struct imx355_reg_list imx355_global_se=
tting =3D {
>  static const struct imx355_reg mode_3268x2448_regs[] =3D {
>  	{ 0x0342, 0x0e },
>  	{ 0x0343, 0x58 },

[Severity: High]
Is the 0x030b PLL configuration register missing from the global settings?

It looks like the 0x030b register (value 0x01) was accidentally omitted
when moving identical registers from the per-mode arrays to the global
register array in the commit "media: imx355: Remove duplicated registers
from the mode tables".

Could this omission leave the hardware at its power-on reset state and
prevent the sensor from streaming correctly when imx355_start_streaming()
applies the global settings?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707-media-imx3=
55-v2-0-1683ec07b897@raspberrypi.com?part=3D5

