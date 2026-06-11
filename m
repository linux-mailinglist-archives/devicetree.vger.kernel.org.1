Return-Path: <devicetree+bounces-310341-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8HgVO8KNKmousQMAu9opvQ
	(envelope-from <devicetree+bounces-310341-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 12:28:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4858C670D95
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 12:28:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=TQvSpXfQ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310341-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310341-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F1F43300A3BF
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 10:26:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC76B37C90B;
	Thu, 11 Jun 2026 10:26:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B70F732AABA
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 10:26:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781173579; cv=none; b=Ijdq1ysYAPE5Xv6sdf9dC5q+Ha/O1bXYsugRm9mwNGgutlCRRgbIV4ljjCGy5hDmTfepeQH5KEk+hKidOBj/mytHSZAqHafw0x1j5PXsjzg5pA+0Djrggp27DP4RPoUG2yFNJI8LsJ66+MLJW5HUFamBZplHqmK7HQ5rrSltxAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781173579; c=relaxed/simple;
	bh=hC8v9m1YHzKd/66Qrk9CBpDXROasboXiPCVkgXvlEyU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XUZnH8V0LNA4h38YROSD5DNMIYKF71SQDeBTi+KZea1ebyI4E9+FGzX/6qQEJaJOxS3Zdf0wweSQW/XjSOuidyDhX3mUBQ8+ZDtHQ741Oz4iXB8dHr1mYpCH37ta6CWuXVZdFtxbY07oJV7dUh+b4bgdQ//9ccy6bIbUV5Br0uM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQvSpXfQ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 128001F00893;
	Thu, 11 Jun 2026 10:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781173578;
	bh=0cKTdU0RMbKcRj5rGBv4daloJGZ/NlB/fXbTQwZYXQU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TQvSpXfQyXFfAJsAdPe95LHsrymmrNP938fa/8h9Lx9NB7c4pr4cO5/xUQu12cpjn
	 c5pnc71/wFTSJn4+rJqLh8myPj6+i9moGbLVLpjlzuskC1gKaVdAMVRUZ3YaHRO4Vq
	 SBH54UyxtzfONHblyqvfe+Oq8cXeNwJ/T+jlW8ebNwUJfbsKoi+P1rDUrd0nHySKHA
	 9O6SEguerAkg1RK2QtoDZLbXT+IIFAB50gjmbOF1Iby+FO3Bk9PgS4KzgN+/Fcjy8L
	 b87M3e/o9tcPrXpT6NLX/jv2zGtpobMtX44CVTk/PpdQhMsq/IgoZqa5eY9rLgwFkx
	 8zgryt3eAUN6g==
From: sashiko-bot@kernel.org
Subject: Re: [net-next 8/9] dt-bindings: net: renesas,etheravb: Add optional
 gPTP phandle for Gen4
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?TmlrbGFzIFPDtmRlcmx1bmQ=?= <niklas.soderlund+renesas@ragnatech.se>
Cc: robh@kernel.org, wsa+renesas@sang-engineering.com, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260610102432.3538432-9-niklas.soderlund+renesas@ragnatech.se>
References: <20260610102432.3538432-9-niklas.soderlund+renesas@ragnatech.se>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Jun 2026 10:26:17 +0000
Message-Id: <20260611102618.128001F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310341-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ragnatech.se:email,smtp.kernel.org:mid,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:niklas.soderlund+renesas@ragnatech.se,m:robh@kernel.org,m:wsa+renesas@sang-engineering.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:niklas.soderlund@ragnatech.se,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4858C670D95

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Introduction of a redundant vendor-specific devicetree property `re=
nesas,gptp` instead of using standard generic properties.
--

commit 4c4c5b9d2738df48084bc14d69fc8572fafc601c
Author: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.se>

dt-bindings: net: renesas,etheravb: Add optional gPTP phandle for Gen4

This commit adds an optional renesas,gptp phandle property to the
renesas,etheravb device tree binding to reference an external gPTP clock
for Gen4 platforms. It updates both the properties list and the schema
conditions to ensure this property is restricted to the Gen4 hardware varia=
nt.

> diff --git a/Documentation/devicetree/bindings/net/renesas,etheravb.yaml =
b/Documentation/devicetree/bindings/net/renesas,etheravb.yaml
> index 1e00ef5b3acda..7bc910ab3ae0f 100644
> --- a/Documentation/devicetree/bindings/net/renesas,etheravb.yaml
> +++ b/Documentation/devicetree/bindings/net/renesas,etheravb.yaml
> @@ -122,6 +122,13 @@ properties:
>        Specify when the AVB_LINK signal is active-low instead of normal
>        active-high.
> =20
> +  renesas,gptp:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      A phandle to an external gPTP clock for Gen4 platforms. The proper=
ty is

[Severity: Low]
Could this use the standard generic ptp-timer property from
ethernet-controller.yaml instead of introducing a vendor-specific
renesas,gptp phandle?

The renesas,etheravb.yaml binding explicitly inherits from
ethernet-controller.yaml, which already defines ptp-timer as a standard
phandle for referencing an IEEE 1588 PTP device.

Alternatively, if this external module is simply a CCF reference clock,
could it be added to the standard clocks property instead?

> +      optional for backwards compatibility, but without it gPTP timestam=
ps are
> +      disabled as Gen4 have no gPTP as part of the RAVB module itself.
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610102432.3538=
432-9-niklas.soderlund+renesas@ragnatech.se?part=3D1

