Return-Path: <devicetree+bounces-311694-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Vm25FHSeL2qdDQUAu9opvQ
	(envelope-from <devicetree+bounces-311694-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:40:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB906683E4C
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:40:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IY0baVte;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311694-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311694-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E82483000BA8
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 06:40:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D673B3A7F58;
	Mon, 15 Jun 2026 06:40:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABDC3B2D06
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 06:40:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781505644; cv=none; b=Wk4MjghJ/KD8Q8YU6x6713Vs2q91pejK4iqRoZut+YU8mk6wXrVL9umN+1rPeNvmE+HRKvdTJyui6+WW7knh8CEW2rQkYlWC6CbJtVKi381F+rOweBWCRwla8s9F3mXpRRrTSs0p0Rd7vG8XA+U8wzKbj9j9MMtCPm5QbnWH7GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781505644; c=relaxed/simple;
	bh=qlyGeyNmGTzrC54k5kkkSWJw4ZVq3zNqkMH/l0Z8bBA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Qm+3zr9hJDsoFZiD36EfMyjY2VDjOhODrgXCeQVq/0acdq9PhkVaa3bH3NU7uNNUNEv/8WtV5VwBmartXNwVyIagScOQ9fSLAfn5pnVfyZM7HF4/fLW6iMkBSVOzux9qhX/fejlu0RdBJF+OPWrZXQ2h13U7rOdBj87qOGShw0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IY0baVte; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7192E1F000E9;
	Mon, 15 Jun 2026 06:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781505642;
	bh=7yNAmv61JvbQHkwqcWNf6ZNYI3rUcJOTchHFJDRbC1s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IY0baVteZOrScnI5uuLiQ+1eE5dWKF24/NSGGToEp4CkkJEOc3bvXHzSaTlIUnrGI
	 Mx2ijSMEB0LFtbMCgjw3P+xhiMq52YB1sYDP/X8zCOkH7+t53u1SV+fwf4L6Ma89pm
	 uV1aXZcsJftvMA8CoU6D5tx6ADtFcFYslCbxUUd8Rd7TWY17Y+6NmaqFKwStoFx1eW
	 Cj3XLNZtT4UbLkX72Mz5F5Xck8Am8Jyhsc7Q/XBm3q5Jg+xrJO92smLB7rtyOlS0Ue
	 AsoEvL5f3ZYaV59xXKFPEhOoYBwjwvtztzR09k7v+EUKrXjQQHeaNJ9whaIiLeydgn
	 KZXAunq95wUfQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 3/7] drm/rcar-du: dsc: Add rudimentary Renesas R-Car
 V4H DSC driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Tomi Valkeinen" <tomi.valkeinen+renesas@ideasonboard.com>
Cc: robh@kernel.org, wsa+renesas@sang-engineering.com, conor+dt@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260615-rcar-du-dsc-v4-3-93096a1b56a3@ideasonboard.com>
References: <20260615-rcar-du-dsc-v4-3-93096a1b56a3@ideasonboard.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 06:40:42 +0000
Message-Id: <20260615064042.7192E1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311694-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:tomi.valkeinen+renesas@ideasonboard.com,m:robh@kernel.org,m:wsa+renesas@sang-engineering.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:tomi.valkeinen@ideasonboard.com,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BB906683E4C

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] `WARN_ON(pm_runtime_get_sync(dsc->dev))` incorrectly warns on succ=
ess and mishandles errors.
- [High] Mixing devm-managed bridge registration with manual runtime PM man=
ipulation creates race conditions during probe and removal.
- [Low] The driver calls `of_drm_get_bridge_by_endpoint()`, which does not =
exist anywhere in the kernel, causing a build failure.
- [Low] Dead Kconfig dependency prevents `DRM_RCAR_DSC` from ever compiling=
 under `COMPILE_TEST`.
--

commit 6b399ab87555498e65f4bb3171342804aa8feb3a
Author: Marek Vasut <marek.vasut+renesas@mailbox.org>

drm/rcar-du: dsc: Add rudimentary Renesas R-Car V4H DSC driver

The Renesas DSC Display Stream Compression is a bridge embedded in the
Renesas R-Car V4H SoC. The bridge performs VESA DSC encoding of up to
8k or 400 Mpixel/s. Add rudimentary driver, which currently acts as a
pass-through bridge and allows DSI1 to be operational on R-Car V4H.

> diff --git a/drivers/gpu/drm/renesas/rcar-du/Kconfig b/drivers/gpu/drm/re=
nesas/rcar-du/Kconfig
> index 840305fdeb49a..80bd770ae0f68 100644
> --- a/drivers/gpu/drm/renesas/rcar-du/Kconfig
> +++ b/drivers/gpu/drm/renesas/rcar-du/Kconfig
[ ... ]
> @@ -25,6 +25,18 @@ config DRM_RCAR_CMM
>  	def_tristate DRM_RCAR_DU
>  	depends on DRM_RCAR_USE_CMM
> =20
> +config DRM_RCAR_USE_DSC
> +	bool "R-Car DU DSC Encoder Support"
> +	depends on DRM_BRIDGE && OF
> +	depends on DRM_RCAR_DU || COMPILE_TEST
> +	default DRM_RCAR_DU
> +	help
> +	  Enable support for the R-Car Display Unit embedded DSC encoder.
> +
> +config DRM_RCAR_DSC
> +	def_tristate DRM_RCAR_DU
> +	depends on DRM_RCAR_USE_DSC
> +

[Severity: Low]
Will this Kconfig setup prevent compile testing?

Since DRM_RCAR_USE_DSC depends on DRM_RCAR_DU || COMPILE_TEST, it can be
enabled when DRM_RCAR_DU=3Dn. However, DRM_RCAR_DSC defaults to
def_tristate DRM_RCAR_DU.

This means when DRM_RCAR_DU=3Dn during a COMPILE_TEST, DRM_RCAR_DSC will be
forced to 'n' and rcar_dsc.c will never actually be compiled.

> diff --git a/drivers/gpu/drm/renesas/rcar-du/rcar_dsc.c b/drivers/gpu/drm=
/renesas/rcar-du/rcar_dsc.c
> new file mode 100644
> index 0000000000000..5a2ff31491360
> --- /dev/null
> +++ b/drivers/gpu/drm/renesas/rcar-du/rcar_dsc.c
[ ... ]
> +static void rcar_dsc_atomic_enable(struct drm_bridge *bridge,
> +				   struct drm_atomic_commit *commit)
> +{
> +	struct rcar_dsc *dsc =3D bridge_to_rcar_dsc(bridge);
> +
> +	WARN_ON(pm_runtime_get_sync(dsc->dev));
> +}

[Severity: High]
Does this WARN_ON trigger on success?

pm_runtime_get_sync() returns 1 when the device is already active
(RPM_ACTIVE). By wrapping it directly in WARN_ON(), wouldn't this trigger
a false-positive stack trace on every successful modeset?

[ ... ]
> +static int rcar_dsc_probe(struct platform_device *pdev)
> +{
> +	struct device *dev =3D &pdev->dev;
> +	struct rcar_dsc *dsc;
> +	int ret;
[ ... ]
> +	dsc->bridge.next_bridge =3D of_drm_get_bridge_by_endpoint(dev->of_node,
> +								1, 0);

[Severity: Low]
Does this function exist?

Calling of_drm_get_bridge_by_endpoint() causes a build failure because it
doesn't exist anywhere in the kernel. Was this intended to be
devm_drm_of_get_bridge()?

> +	if (IS_ERR(dsc->bridge.next_bridge))
> +		return PTR_ERR(dsc->bridge.next_bridge);
> +
> +	dsc->bridge.of_node =3D dev->of_node;
> +
> +	ret =3D devm_drm_bridge_add(dev, &dsc->bridge);
> +	if (ret)
> +		return ret;
> +
> +	pm_runtime_enable(&pdev->dev);
> +
> +	return 0;
> +}
> +
> +static void rcar_dsc_remove(struct platform_device *pdev)
> +{
> +	pm_runtime_disable(&pdev->dev);
> +}

[Severity: High]
Can these devres and manual pm_runtime calls race?

In rcar_dsc_probe(), devm_drm_bridge_add() exposes the bridge to the DRM
subsystem before pm_runtime_enable() is called.

On teardown, rcar_dsc_remove() manually calls pm_runtime_disable(), but the
devres-managed bridge isn't removed until devres_release_all() runs later.

Doesn't this create a window where the bridge is fully accessible via DRM
but its PM runtime is disabled, potentially causing hardware access faults
during concurrent operations?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615-rcar-du-ds=
c-v4-0-93096a1b56a3@ideasonboard.com?part=3D3

