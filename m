Return-Path: <devicetree+bounces-298009-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mH6+FnXbBmoxogIAu9opvQ
	(envelope-from <devicetree+bounces-298009-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 10:38:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CC16954B789
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 10:38:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8E0FC3059F90
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 08:30:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CD303FCB09;
	Fri, 15 May 2026 08:30:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcVaQbjv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC4C3F20F1
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 08:30:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778833858; cv=none; b=s772qPac7xlRLSa0Zh21RvwGJYnjSOJz+XDtbBCDPd6AU3Q+2dnl7hNhbJZsjLBCcomDhI6xQhke6IRy+IjlBjj5PEWZojYH+HId5BQ/v2le96i2gj5gmVJlu3yN1sQ57TeSU1uyR6A6Dfr0XAFO6bHJYZPTx78TOHMBzNDNJXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778833858; c=relaxed/simple;
	bh=TuM8uzFhCfbCeX7iLDcSAPhcFLY3hHpwqn3/6Z/oiXk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=HLaMhArHutZ9IRLS2DIDCwoUq4RhnkjcfSyF30Dv6WSaCXa5DSDgw9bnQRer19ZbLf13cHmwfvjS0YsfpbjAohyNoRrkOrgoVBvYg+mLUfvdbpFQYLpi53EG9ILgUPL1EhZzaJVaIfb2H2eO4E6SxYbcCoAebwNkgP8iZ9J/zlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcVaQbjv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5FB2C2BCB8;
	Fri, 15 May 2026 08:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778833858;
	bh=TuM8uzFhCfbCeX7iLDcSAPhcFLY3hHpwqn3/6Z/oiXk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=dcVaQbjv+RGCi1YkJSXR/YEztCATYBtCC6X6NrY5TCXxG9XyCXn9eH4+6r5wMo8sh
	 lu6alH4npdgF5YHJSYA/luhrw8/pVDnua2A/l340kKjMncgnqK0bODTEDT2c5lxUF2
	 oCVSoj+zTBeZpE+OaUWr68/tslWrWAc+3LX0I2wdi33eamur7Wtb0wvUma3mllU2Oz
	 pGq5lGjf59NHKwoAfalunuQcTtHKK0ER7pqBcANDjqT+esL4EK/L8zN5x0T9Z6km4n
	 CgeQNjr71Ck2WMD3IHvBngpJNsdVAMgBheERrgOvL41SsTvFQUNErJdOiMP3bVugNa
	 XH5uRMUN+t8sw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/5] drm/rcar-du: dsc: Add rudimentary Renesas R-Car
 V4H DSC driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Tomi Valkeinen" <tomi.valkeinen+renesas@ideasonboard.com>
Cc: devicetree@vger.kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260515-rcar-du-dsc-v2-3-f6b9240a1240@ideasonboard.com>
References: <20260515-rcar-du-dsc-v2-3-f6b9240a1240@ideasonboard.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 08:30:57 +0000
Message-Id: <20260515083057.C5FB2C2BCB8@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: CC16954B789
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:email,smtp.kernel.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-298009-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] Sleeping functions called from atomic bridge callbacks (Subsystem =
Guide Violation).
- [Medium] Resource leak of the remote bridge module reference.
- [Low] Kconfig logic error defeats COMPILE_TEST support.
- [Low] Unbalanced clock management due to ignored initialization errors.
--

commit bddd7270b2102e27ba00c2ae1f77dd8387606431
Author: Marek Vasut <marek.vasut+renesas@mailbox.org>

drm/rcar-du: dsc: Add rudimentary Renesas R-Car V4H DSC driver

The Renesas DSC Display Stream Compression is a bridge embedded in the
Renesas R-Car V4H SoC. The bridge performs VESA DSC encoding of up to
8k or 400 Mpixel/s. Add rudimentary driver to act as a pass-through
bridge for DSI1.

> diff --git a/drivers/gpu/drm/renesas/rcar-du/Kconfig b/drivers/gpu/drm/re=
nesas/rcar-du/Kconfig
> index 840305fdeb49a..a51f996d35375 100644
> --- a/drivers/gpu/drm/renesas/rcar-du/Kconfig
> +++ b/drivers/gpu/drm/renesas/rcar-du/Kconfig
> @@ -33,6 +33,19 @@ config DRM_RCAR_DW_HDMI
>  	help
>  	  Enable support for R-Car Gen3 or RZ/G2 internal HDMI encoder.
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
> +	select RESET_CONTROLLER

Since DRM_RCAR_DSC lacks a user prompt and uses def_tristate DRM_RCAR_DU,
doesn't it silently evaluate to 'n' during cross-architecture compile tests
where DRM_RCAR_DU=3Dn?

This seems to prevent rcar_dsc.c from being compiled even when COMPILE_TEST
is enabled in DRM_RCAR_USE_DSC.

> diff --git a/drivers/gpu/drm/renesas/rcar-du/rcar_dsc.c b/drivers/gpu/drm=
/renesas/rcar-du/rcar_dsc.c
> new file mode 100644
> index 0000000000000..2ab5a4bb099c3
> --- /dev/null
> +++ b/drivers/gpu/drm/renesas/rcar-du/rcar_dsc.c
[ ... ]
> +static void rcar_dsc_atomic_enable(struct drm_bridge *bridge,
> +				   struct drm_atomic_state *state)
> +{
> +	struct rcar_dsc *dsc =3D bridge_to_rcar_dsc(bridge);
> +
> +	WARN_ON(clk_prepare_enable(dsc->clk));

Does this sequence execute in atomic context?

Looking at the DRM subsystem guidelines, bridge atomic enable/disable
callbacks run in atomic context where sleeping is forbidden. Since
clk_prepare_enable() acquires a mutex internally, can this trigger a
scheduling while atomic warning?

Also, if clk_prepare_enable() fails, the failure is recorded by WARN_ON()
but execution continues. Later, the pipeline teardown will unconditionally
call clk_disable_unprepare().

Can this lead to unbalanced clock disable warnings from the Common Clock
Framework since the clock was never actually enabled?

> +	WARN_ON(reset_control_deassert(dsc->rst));
> +}
> +
> +static void rcar_dsc_atomic_disable(struct drm_bridge *bridge,
> +				    struct drm_atomic_state *state)
> +{
> +	struct rcar_dsc *dsc =3D bridge_to_rcar_dsc(bridge);
> +
> +	reset_control_assert(dsc->rst);
> +	clk_disable_unprepare(dsc->clk);
> +}
[ ... ]
> +static int rcar_dsc_probe(struct platform_device *pdev)
> +{
[ ... ]
> +	dsc->bridge.next_bridge =3D of_drm_find_and_get_bridge(remote);
> +	of_node_put(remote);
> +	if (!dsc->bridge.next_bridge)
> +		return -EPROBE_DEFER;
> +
> +	dsc->bridge.of_node =3D dev->of_node;
> +
> +	return devm_drm_bridge_add(dev, &dsc->bridge);
> +}

Does this code leak the remote bridge module reference?

The call to of_drm_find_and_get_bridge() acquires a reference to the
bridge that requires a matching drm_bridge_put(). If devm_drm_bridge_add()
fails, the reference doesn't appear to be released.

Additionally, there doesn't seem to be a .remove callback or a registered
devm action to release the reference when the driver unbinds. Would using
devm_drm_of_get_bridge() resolve this?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515-rcar-du-ds=
c-v2-0-f6b9240a1240@ideasonboard.com?part=3D3

