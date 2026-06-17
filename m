Return-Path: <devicetree+bounces-312966-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CamlLYyHMmpH1gUAu9opvQ
	(envelope-from <devicetree+bounces-312966-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 13:39:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B48C699314
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 13:39:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=G0VfgQcG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312966-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312966-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C83BB301EB54
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 11:28:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C35A53CBE7C;
	Wed, 17 Jun 2026 11:24:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBAE22E7F3A
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 11:24:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781695498; cv=none; b=WsTC5v38F7Z2OFCE0X70IIjAFc5C4cMhDCveqLfrWW8kwbXoiuW6B33IUe8UUwUOX9ko4qjjfBGfragbxERwV8J4/9m9wZ/Lr5h2x145Wzjl76XZGpinJAMAEaROpKLpDh4PDmiC47J9k0qh+e18eBw/R78QH28nJvdjoZtUohw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781695498; c=relaxed/simple;
	bh=jX/8emOQp5xs4seA46C4NVqBAgm+8hcDgxoQT28DtsI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=TSLxqpcB6tNEQfGobxik80PRtdYhWB2j9YYN1oA+XOQWcKpUaWiKHIGR9PMkYj9d3PQgXj7Xxf7lLqwCStBocATtV1F7Dkinee4KoDcp2t6lJuJY9w37k5YXki9XRvuyGC4SXPsfK4U5atj5+EewXxGFm+K1rjvDL78eTAqOn+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0VfgQcG; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5773E1F000E9;
	Wed, 17 Jun 2026 11:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781695497;
	bh=DrgRXswN9gowQ21ag0rmVRzpXIIR022S13w6JYDKPBU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=G0VfgQcGtZMdAVQnYO5ByroW3Gmxu1X3++LCyAuxWklVUIoxmhhkMWKDMqyzaN5/U
	 AByVT93oSy7o84brkYznTum6Ktb+iAcCzzwtqJxlgs5j0qcQJb7qWFLKKujAEs9KCh
	 dGyYZxQwjQEE1ThxoMWc/y7t9pV7oE7pJ0KEOz8L7/s1ovHutHLWmNpXYB250C/xCH
	 X7I0dQr53AdETOnfekoOZcbUF+a0k7rSDVvmRikj+/KBlHTDMpsJBCUXWfMs48QhZL
	 CvSOhs2Yq/R4TteIqrKbDv7sdqGb0yeoNq+whpbBKmq+EVJmYimzQx99gemkQkNrp9
	 Hpnzkn4hYyyBw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 3/7] mfd: p3h2x4x: Add driver for NXP P3H2x4x i3c
 hub and on-die regulator
Reply-To: sashiko-reviews@lists.linux.dev
To: "Lakshay Piplani" <lakshay.piplani@nxp.com>
Cc: Frank.Li@kernel.org, linux-i3c@lists.infradead.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260617110355.1591844-4-lakshay.piplani@nxp.com>
References: <20260617110355.1591844-1-lakshay.piplani@nxp.com>
 <20260617110355.1591844-4-lakshay.piplani@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jun 2026 11:24:56 +0000
Message-Id: <20260617112457.5773E1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-312966-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,nxp.com:email,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lakshay.piplani@nxp.com,m:Frank.Li@kernel.org,m:linux-i3c@lists.infradead.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1B48C699314

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The I3C driver incorrectly binds to any generic I3C Hub instead of=
 specifically to NXP P3H2x4x devices.
--

commit e3f8613aba897f64df36ad159bade0cf0e0c5cf1
Author: Aman Kumar Pandey <aman.kumarpandey@nxp.com>

mfd: p3h2x4x: Add driver for NXP P3H2x4x i3c hub and on-die regulator

This commit adds core MFD support for the NXP P3H2x4x family of multiport
I3C hub devices. It registers the devices via I3C/I2C/SMBus and exposes
multiple downstream target ports and an on-die regulator.

> diff --git a/drivers/mfd/p3h2840.c b/drivers/mfd/p3h2840.c
> new file mode 100644
> index 0000000000000..0a80992d6250a
> --- /dev/null
> +++ b/drivers/mfd/p3h2840.c
[ ... ]
> +static const struct i3c_device_id p3h2x4x_i3c_ids[] =3D {
> +	I3C_CLASS(I3C_DCR_HUB, NULL),

[Severity: High]
Does this match table inappropriately bind the driver to any generic I3C Hub
instead of specifically NXP P3H2x4x devices?

Since p3h2x4x_device_probe_i3c() does not perform manufacturer or part ID
validation, could this claim non-NXP hubs and cause child drivers to send
proprietary NXP register sequences to them?

Should this use the I3C_DEVICE() macro with MIPI_VENDOR_ID_NXP instead?

> +	{ /* sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(i3c, p3h2x4x_i3c_ids);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260617110355.1591=
844-1-lakshay.piplani@nxp.com?part=3D3

