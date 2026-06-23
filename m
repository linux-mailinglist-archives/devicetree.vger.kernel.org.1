Return-Path: <devicetree+bounces-314975-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eYI0BTbmOmp5KggAu9opvQ
	(envelope-from <devicetree+bounces-314975-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:01:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EB16B9D3C
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:01:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=MO6BXShO;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314975-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314975-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 37A97300D868
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 20:01:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66D6E31A570;
	Tue, 23 Jun 2026 20:01:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377577081A
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 20:01:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782244915; cv=none; b=qcnd51W7MBOSrsRVjQxc1XFNTmiuLZEARiiZu0hP+irnqjjAmYQXSrkGOsD5z+DyQXLYPDCIji0OqTIs95wLwmfQy3vTtsALb9rJx7IiWBDgku1zE19FeftmYLxFQspaIwXEbRsPnX/GLK4yw6ZThGFiKcB+SXDU0lSY4bFlEDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782244915; c=relaxed/simple;
	bh=Km19hIcC6e370v9sB/KpA0b/pmpVRhloGGHypOCducg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ic61SeqPATELmkxVkjW01S1fTaHVRFwAA0IupmkO0sVmpJdCQYW+klVFjGSvUWu0gg6CKt0wXILZ/PZ+XV+zqmEOVKsyEzg2a3kB7bzwsK0WOuGfW3PikKRLbOjePOSEDxFxsJdlNdtcuUqBrguicAv0WdIK7apw2H/wJKIqj2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MO6BXShO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6AB2B1F000E9;
	Tue, 23 Jun 2026 20:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782244913;
	bh=abdRzSRIMzRyvEXdYQYbD4NoC24sPEJHD0qpKCIs5/c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MO6BXShOWVkjWZrSXL78y0Os1in6Kjg4qeg3XWrNB1k94sKalH1dnnZ0UqC8yqh+6
	 U9jK0KaAjJkAZksg2CQzwxn364nhFCmkvOPCBGfC9MO5T0srVgzugJK2krtF6Pxdnm
	 OMiFHN4K1EZZ2WczWQ1qILOzVsrlsugBaic3aeh5oXnzmJ8zdfXGvIM4LyURStcYVC
	 bngOQAMnh49rErK9+Em0XbOHfr2Tu3jJpoj0UHI5asUcgJAAJecHh5cnmUoQxSDGtD
	 NFxVOilBCVcxJLcBiw09MuTlydoUk1U2gEt+Vc8lc9t+5jzbg93IUR8TPu2RbztOKs
	 DBMCcEeO5hoEg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 3/7] drm/rcar-du: dsc: Add rudimentary Renesas R-Car
 V4H DSC driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Tomi Valkeinen" <tomi.valkeinen+renesas@ideasonboard.com>
Cc: robh@kernel.org, conor+dt@kernel.org, wsa+renesas@sang-engineering.com, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260615-rcar-du-dsc-v5-3-aed1a28610e4@ideasonboard.com>
References: <20260615-rcar-du-dsc-v5-3-aed1a28610e4@ideasonboard.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 Jun 2026 20:01:52 +0000
Message-Id: <20260623200153.6AB2B1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-314975-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tomi.valkeinen+renesas@ideasonboard.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:wsa+renesas@sang-engineering.com,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:tomi.valkeinen@ideasonboard.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 65EB16B9D3C

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The DRM bridge remains registered and globally accessible after `p=
m_runtime_disable()` is called, creating a teardown order race during drive=
r removal.
- [Medium] The sleeping function `pm_runtime_get_sync()` is called from an =
atomic context path (`rcar_dsc_atomic_enable`).
--

commit a8616c71b764dc9fa4ae244e47795371e7fead44
Author: Marek Vasut <marek.vasut+renesas@mailbox.org>

drm/rcar-du: dsc: Add rudimentary Renesas R-Car V4H DSC driver

The Renesas DSC Display Stream Compression is a bridge embedded in the
Renesas R-Car V4H SoC. The bridge performs VESA DSC encoding of up to
8k or 400 Mpixel/s. Add rudimentary driver, which currently acts as a
pass-through bridge and allows DSI1 to be operational on R-Car V4H.

> diff --git a/drivers/gpu/drm/renesas/rcar-du/rcar_dsc.c b/drivers/gpu/drm=
/renesas/rcar-du/rcar_dsc.c
> new file mode 100644
> --- /dev/null
> +++ b/drivers/gpu/drm/renesas/rcar-du/rcar_dsc.c

[ ... ]

> +static void rcar_dsc_atomic_enable(struct drm_bridge *bridge,
> +				   struct drm_atomic_commit *commit)
> +{
> +	struct rcar_dsc *dsc =3D bridge_to_rcar_dsc(bridge);
> +
> +	WARN_ON(pm_runtime_get_sync(dsc->dev) < 0);

[Severity: Medium]
Is it safe to call the sleeping function pm_runtime_get_sync() here?

Since rcar_dsc_atomic_enable() is called during non-blocking atomic commits,
doesn't this path execute in atomic context where sleeping is forbidden and
can lead to kernel warnings or deadlocks?

> +}

[ ... ]

> +static int rcar_dsc_probe(struct platform_device *pdev)
> +{

[ ... ]

> +	pm_runtime_enable(&pdev->dev);
> +
> +	ret =3D devm_drm_bridge_add(dev, &dsc->bridge);
> +	if (ret)
> +		goto err_runtime_disable;
> +
> +	return 0;
> +
> +err_runtime_disable:
> +	pm_runtime_disable(&pdev->dev);
> +
> +	return ret;
> +}
> +
> +static void rcar_dsc_remove(struct platform_device *pdev)
> +{
> +	pm_runtime_disable(&pdev->dev);
> +}

[Severity: High]
Does this create a teardown order race during driver removal?

Because devm_drm_bridge_add() defers unregistration until after
rcar_dsc_remove() returns, the bridge remains globally accessible to the DRM
subsystem after pm_runtime_disable() has already shut down power management.

If a concurrent modeset calls rcar_dsc_atomic_enable() during this window,
won't pm_runtime_get_sync() return -EACCES and trigger the WARN_ON since
power management is disabled?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615-rcar-du-ds=
c-v5-0-aed1a28610e4@ideasonboard.com?part=3D3

