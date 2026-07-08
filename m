Return-Path: <devicetree+bounces-322718-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6HRfJW8mTmqhEAIAu9opvQ
	(envelope-from <devicetree+bounces-322718-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 12:29:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 995CF72453B
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 12:29:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=REoXunlh;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322718-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-322718-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D21B2303C37E
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 10:25:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A631039B48F;
	Wed,  8 Jul 2026 10:24:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D8CB399002
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 10:24:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783506271; cv=none; b=R3WhOFEAzYWmRbr8FWwhEe42MZ8CE9c5f95an8qddqeGapIPZ16UboFj2nIY+j8YtwLnsLIl3ui2tr8uoYNun3YQzl8e1e0wkOCdHhWA72wOV9hIjOGkci5lG83GKupEYojIfRxvOxctfbyjoxg1zl9QR4ffneETa+D+YVTH0kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783506271; c=relaxed/simple;
	bh=/XATuqxqUXnPChzwMWClvKW6sZKHDbKi//Jiyki11zQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=SccHg1kgWaYFIz3Ow7P8V3X6QzTG3d/6hle94eww1LfBOMvTUh3jzgy7XQiBFaVx0/eziwQLShzlKaOWMm+k+7Cw53a2i2iuGZHcZMy9NBUhQMh0K3KFjtU+fqxNwU4+ok72uZ6PhLjNYKRwN5iabhfSyija2BlHDuranwdHziA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=REoXunlh; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D76361F000E9;
	Wed,  8 Jul 2026 10:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783506270;
	bh=RwiQORZJR/HSB78wOGhBYXCyFU379RBuzE/W5Wrpy4I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=REoXunlhRfBfZ5H5+fLGd0Mc1KGbuhGiiHMytilkJF5hszPcDEiowNv44T8rankBe
	 gSBAUvJh6+H5ypgZ/5g6yftWiFOWWWcrbq5lNbyWPed/0xVkKomM9+YM2kREKKpLvz
	 Qxf3DV7viN6EHmqNFcJKo/RFBBm4NCcAyxYSvoCmdDKhUROIaDynMYhCgTnRzcTIKm
	 1roIOjtBdiEh3lISUBbknccvOO9lH+0sbIv+Nz3w2IlvoGG1XmeB7NlMXvPA8FDbrR
	 4R34ofD7DIWptO50Q+koEpy0Vhl6gV75lUpy1FOKOtRX3cJ6jSXUT7dQ0NAGeKDD0W
	 ZHDenEJH4jzUA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/6] clk: renesas: Add R-Car X5H CPG driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Geert Uytterhoeven" <geert+renesas@glider.be>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <50f5804f00c55cd60604d00da1bf1f1dc912ba8d.1783505142.git.geert+renesas@glider.be>
References: <cover.1783505142.git.geert+renesas@glider.be>
 <50f5804f00c55cd60604d00da1bf1f1dc912ba8d.1783505142.git.geert+renesas@glider.be>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 10:24:29 +0000
Message-Id: <20260708102429.D76361F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-322718-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,glider.be:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:geert+renesas@glider.be,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:wsa+renesas@sang-engineering.com,m:geert@glider.be,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
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
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 995CF72453B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Memory and clock registration leak if `devm_kasprintf()` fails d=
uring fixed clock registration.
--

--- Patch [3]: [PATCH v2 3/6] clk: renesas: Add R-Car X5H CPG driver ---
commit 1d0eaa24ed7151f3cc9ee126c74cd79bec68356e
Author: Geert Uytterhoeven <geert+renesas@glider.be>
Date:   Wed Jul 8 10:15:08 2026 +0000

clk: renesas: Add R-Car X5H CPG driver

This patch adds a minimal Clock Pulse Generator driver for the R-Car X5H
(R8A78000) SoC. It provides support for the fixed-rate clocks needed by the
current minimal DTS.

> diff --git a/drivers/clk/renesas/r8a78000-cpg.c b/drivers/clk/renesas/r8a=
78000-cpg.c
> new file mode 100644
> --- /dev/null
> +++ b/drivers/clk/renesas/r8a78000-cpg.c

[ ... ]

> +static int register_fixed_clks(struct r8a78000_cpg_priv *priv)
> +{
> +	struct device *dev =3D priv->dev;
> +	unsigned long rate;
> +	struct clk_hw *hw;
> +	const char *name;
> +
> +	for (unsigned int i =3D 0; i < ARRAY_SIZE(fixed_clk_rates); i++) {
> +		rate =3D fixed_clk_rates[i];
> +		name =3D devm_kasprintf(dev, GFP_KERNEL, "cpg-%lu", rate);
> +		if (!name)
> +			return -ENOMEM;

[Severity: Medium]
If devm_kasprintf() fails on a later iteration, does this return statement
leak the clocks that were successfully registered in previous iterations?

The cleanup loop for clk_hw_unregister_fixed_rate() is only executed if
clk_hw_register_fixed_rate() fails, and the devres action to unregister
the clocks is not added until the end of the function.

> +
> +		hw =3D clk_hw_register_fixed_rate(dev, name, NULL, 0, rate);
> +		if (IS_ERR(hw)) {
> +			while (i-- > 0)
> +				clk_hw_unregister_fixed_rate(priv->fixed_hws[i]);
> +			return PTR_ERR(hw);
> +		}
> +
> +		priv->fixed_hws[i] =3D hw;
> +	}
> +
> +	return devm_add_action_or_reset(dev, unregister_fixed_clks, priv);
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1783505142.gi=
t.geert+renesas@glider.be?part=3D3

