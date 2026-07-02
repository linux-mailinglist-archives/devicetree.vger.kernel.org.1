Return-Path: <devicetree+bounces-319529-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id e2J8KZOoRmqzbAsAu9opvQ
	(envelope-from <devicetree+bounces-319529-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 20:06:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 817246FBD5D
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 20:06:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=fPWu1mJ0;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319529-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319529-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 79F803029502
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 18:06:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED8603939D2;
	Thu,  2 Jul 2026 18:06:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF8CC3955EF
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 18:06:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783015568; cv=none; b=bWSAzLBcYMsIgCDmcsC3ZD7XtWiPykDMpU9CoHI0giNOEEOJ2QIT0Wy2omspTFIE4Ju2kOAFLuUzjmsj0Fw0iZKn1CUJs0qf1qmJnd6QC3LpM1K71s6wkS2ymCzOBwCre5HobRRUZZ1y36HL6f5WgGzlRiyAX9WI+X/YY5n3zQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783015568; c=relaxed/simple;
	bh=f2inAP+pXVGh4E+sARO3ce21KB69lzS3/RyR/bAuLvQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=oFEjpdBs+3ZvWkz8LJ3qAFFpNjKBLiVSZ0oyhPiHKkwW1049ipDE7x5Nb9npLqDpZvt26GykYtE0YoU3O3DT29dKoeFTbzBD+S+RiGIgHS26Z/LD26WwFJrJy04JkB7Qr7QtjhfIHA++RosXv3Kkaqh6V+qoGomp/f3omDxtUGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPWu1mJ0; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D6C11F00A3A;
	Thu,  2 Jul 2026 18:06:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783015567;
	bh=kaFKZspe1pBMSoPKQPZ4+bwKP343ujonqSJ3tPKVkvE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fPWu1mJ06mQBFCZONfDIZDLvcFfk30m2EXs7pxe2/dXJSl1qRCCLyr9oNcLcgPjcB
	 8Aypzwq7iAtfLd3QT2A6VnV+8ZSKnV/57yfTSFJMhfxic60WS9LBEEP+jCqCHN4iz4
	 7sVRSw/dahOrdGboH6vlY5iYg/pD2E1T+iyOmIzxVF4hb6x4AwBN23p27HJNMf6tBR
	 2oF/eENS3hRY3Kc0tEo4AMOI6vZ44HuecbJnAEPI5m7gVHN2AMNYxFjtuHOkkm3viu
	 Qk42ht3zdkNaJa5ru59zR32lEbh0pealOnDUgsZzR5hmzQ5ttHJc0Q2JQLJigBDKaT
	 ZG9W7X9WGp/Dg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 07/15] clk: mediatek: Add MT8189 topckgen clock support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260701-mt8189-clocks-system-base-v1-7-2b048feea50a@collabora.com>
References: <20260701-mt8189-clocks-system-base-v1-0-2b048feea50a@collabora.com>
 <20260701-mt8189-clocks-system-base-v1-7-2b048feea50a@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 18:06:07 +0000
Message-Id: <20260702180607.8D6C11F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319529-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:louisalexis.eyraud@collabora.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 817246FBD5D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Missing MODULE_DEVICE_TABLE(of, ...) macro prevents module autol=
oading.
--

commit ad61575ea6a112e8fdb28af2de8ae432cbe5778c
Author: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>

clk: mediatek: Add MT8189 topckgen clock support

Add support for the MT8189 topckgen clock controller, which provides
muxes and dividers for clock selection in other IP blocks.

> diff --git a/drivers/clk/mediatek/clk-mt8189-topckgen.c b/drivers/clk/med=
iatek/clk-mt8189-topckgen.c
> new file mode 100644
> index 0000000000000..62d292f5b8b87
> --- /dev/null
> +++ b/drivers/clk/mediatek/clk-mt8189-topckgen.c

[ ... ]

> +static const struct of_device_id of_match_clk_mt8189_topck[] =3D {
> +	{ .compatible =3D "mediatek,mt8189-topckgen", .data =3D &topck_desc },
> +	{ /* sentinel */ }
> +};

[Severity: Medium]
Will this module automatically load if configured as a loadable module (=3D=
m)?

Without the MODULE_DEVICE_TABLE(of, ...) macro, it appears udev won't=20
be able to automatically load the driver based on the device tree compatible
string alias. This could leave downstream IP blocks that depend on the
topckgen clocks without clock support, potentially causing functional or
boot failures.

> +
> +static struct platform_driver clk_mt8189_topck_drv =3D {
> +	.probe =3D mtk_clk_simple_probe,
> +	.remove =3D mtk_clk_simple_remove,
> +	.driver =3D {
> +		.name =3D "clk-mt8189-topck",
> +		.of_match_table =3D of_match_clk_mt8189_topck,
> +	},
> +};

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701-mt8189-clo=
cks-system-base-v1-0-2b048feea50a@collabora.com?part=3D7

