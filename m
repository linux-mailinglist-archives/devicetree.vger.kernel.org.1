Return-Path: <devicetree+bounces-314989-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nOqUNaLuOmr1LwgAu9opvQ
	(envelope-from <devicetree+bounces-314989-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:37:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 561D46BA0F2
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:37:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=gI5FM0sp;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314989-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314989-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A6F2C3067047
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 20:37:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5366C3A6EEB;
	Tue, 23 Jun 2026 20:37:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B4F3955EC
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 20:37:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782247036; cv=none; b=c0HT4seTbuBJL69nr7w3bp1PPItFV1xYngzk/fxPiF0NktN/Z6hLv4iw1pCVUO9GmctuIBB2HP1mSm9ENRSepPfQsuKRqc4Y4IMZfrqoMGg8V5TdeCVpQ+0dpemiejCR40WyCDzMrQ8hte13RF7OapP2HmELDwDZLDW4mHkkTTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782247036; c=relaxed/simple;
	bh=s9olxSfOOO2WJGRrZPv/MUrnjPWCYK2+cioNICcdRno=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XbXmxfPWC56iKVUFRb7ASZbMq/KyqcoBn63dbjZxyAifqI/sHtTZYcQO/LLeO2SyRF5o1t8MBgHOLKU0l7YOuJP6ihxyrFLPtddicNbJ4VmWh8jK4CriyDLxs749OkxaMvGA/BQWZYiYJnHfEnJo57l7TIL9DxATGp4ipDXN+9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gI5FM0sp; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBD151F000E9;
	Tue, 23 Jun 2026 20:37:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782247035;
	bh=Li6xbg/V83Rks1Bkfq2CEL6SwT7EnyIuPl2BL5bWe2E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gI5FM0spp6rSlaoycupWq3QEUVYtoXpqPSPnD3b1bqtTyiHFlYVPAxyhFJ2f4S4/s
	 XkTChjVAE2uIAUmFFBK7tg+LJINdd08TCAAkuGzRvS6DfXbfOtpaUXMZrk38DcbAjZ
	 iHNk4kbGCkdWkRPKLZjxF+VDkVIOD87JCbHbC/nXbhmH1t+KBHZt/Rglh401UEpTNO
	 gt3X2z3/UEEtXIbYIpoeWK5+19zLBPqsw245SST4NQ8CUU5tTgqtqPT63KxHDELiNH
	 BxI+3foQzcyxhKvcv+B3DlmzzoEU/a+b/eWpiwYFy5lw9wo5xMUuyqwXZ3sEteNy0V
	 l0PEwwKVln3tQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 6/7] arm64: dts: renesas: sparrow-hawk: Enable
 DisplayPort by adding DSC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Tomi Valkeinen" <tomi.valkeinen+renesas@ideasonboard.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, wsa+renesas@sang-engineering.com, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260615-rcar-du-dsc-v5-6-aed1a28610e4@ideasonboard.com>
References: <20260615-rcar-du-dsc-v5-6-aed1a28610e4@ideasonboard.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 Jun 2026 20:37:14 +0000
Message-Id: <20260623203714.BBD151F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-314989-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,mailbox.org:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tomi.valkeinen+renesas@ideasonboard.com,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:wsa+renesas@sang-engineering.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:tomi.valkeinen@ideasonboard.com,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 561D46BA0F2

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The rcar_dsc driver ignores the `resets` property from the DT bind=
ing, failing to deassert the DSC hardware module's reset state.
--

commit a8616c71b764dc9fa4ae244e47795371e7fead44
Author: Marek Vasut <marek.vasut+renesas@mailbox.org>

drm/rcar-du: dsc: Add rudimentary Renesas R-Car V4H DSC driver

This commit introduces a rudimentary DSC bridge driver for the Renesas R-Car
V4H SoC. The driver functions as a pass-through to enable the DSI1 pipeline
and performs VESA DSC encoding.

> diff --git a/drivers/gpu/drm/renesas/rcar-du/rcar_dsc.c b/drivers/gpu/drm=
/renesas/rcar-du/rcar_dsc.c
> new file mode 100644
> index 0000000000000..362e683289d69
> --- /dev/null
> +++ b/drivers/gpu/drm/renesas/rcar-du/rcar_dsc.c

[ ... ]

> +static int rcar_dsc_probe(struct platform_device *pdev)
> +{
> +	struct device *dev =3D &pdev->dev;
> +	struct rcar_dsc *dsc;
> +	int ret;
> +
> +	dsc =3D devm_drm_bridge_alloc(dev, struct rcar_dsc, bridge,
> +				    &rcar_dsc_bridge_ops);
> +	if (IS_ERR(dsc))
> +		return PTR_ERR(dsc);
> +
> +	platform_set_drvdata(pdev, dsc);
> +
> +	dsc->dev =3D &pdev->dev;
> +
> +	dsc->bridge.next_bridge =3D of_drm_get_bridge_by_endpoint(dev->of_node,
> +								1, 0);

[Severity: High]
Does this driver fail to retrieve and deassert the DSC module's hardware re=
set
state?

If the reset control isn't retrieved and deasserted, the DSC hardware module
will remain in a reset state, breaking the display pipeline functionality. =
It
might coincidentally work if the bootloader has already deasserted the rese=
t,
but could fail on suspend/resume or when the bootloader does not initialize
the display.

Should the driver use devm_reset_control_get_exclusive() here and deassert
the reset state during probe?

> +	if (IS_ERR(dsc->bridge.next_bridge))
> +		return PTR_ERR(dsc->bridge.next_bridge);
> +
> +	dsc->bridge.of_node =3D dev->of_node;
> +
> +	pm_runtime_enable(&pdev->dev);
> +
> +	ret =3D devm_drm_bridge_add(dev, &dsc->bridge);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615-rcar-du-ds=
c-v5-0-aed1a28610e4@ideasonboard.com?part=3D6

