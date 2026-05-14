Return-Path: <devicetree+bounces-297242-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yMr3Hy0hBWpySwIAu9opvQ
	(envelope-from <devicetree+bounces-297242-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 03:11:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 216B053C923
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 03:11:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DED4E30117E1
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 01:11:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECAF52FFFBE;
	Thu, 14 May 2026 01:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSfJvdyl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB3F78F4A
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 01:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778721066; cv=none; b=Sbht3+LFMUjNr1AvOKLypXHqEf4msKfIs5J/FXaEUnCQ+pOqmk+D7i4QhTjQAWNtiBhB7gnkbGzCC1F7pm79fcO5rmz3z9VC9kEYDjKz4tP4+Ju3Js4sLzJkZDpPnB9SKBQLkgiKTuh3t0s6s/ZrX/48Ftfg/ejCQtQsphAnXD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778721066; c=relaxed/simple;
	bh=vHjcmI3+a/qLvArU+eDic4CWccbE/wuLCUEAjeBvmcc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=HEWrNVLH8WTe5gdNzhY+OeUXkqzkOPRo2BeOEGPE2W3uK+fK+Qrn6m6f90E7hPmIYyqU28+/jcpfNg84uLKqTpsvXGmBkNkW8e8p06xXRiHutRJNowNTkvwZF8TvfYk2qURmcMHIDBGY/xHEI1CDSSx2/23L7UL912WlXAyoKzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSfJvdyl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22465C19425;
	Thu, 14 May 2026 01:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778721066;
	bh=vHjcmI3+a/qLvArU+eDic4CWccbE/wuLCUEAjeBvmcc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=NSfJvdyl0JOJjchBs+JqpwJl59UnPALadl2wbo+aP2Hg3DmBWoJ9fGqaotlLCrUyu
	 xFfNwXCfUUALLal0kKfxtvi0/Fd1gxgfTOJJqb10kwTbnnxXanx3N+mzbT+NHLoJAx
	 aKwOkD7q7Cc1621H2Y+l3ICC+vprNMC8O/TJlr4KYXK+BkJyF+8w9qH/aN4doEInw0
	 +YDE/bFOYAKFFZvhr2QbzcArVBwQLSvOUzHRDredd1CDxb6ApLRTilnps1KtxJd0OL
	 7EjGahV4PQ4BbpBYIC2cYnFMX/KYn3WYm06iXO6LCASnUGoNwDWAaB0Puf78XPjEUk
	 vkIdgRI0mSDgg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 06/16] ASoC: rsnd: Add audmacpp clock and reset
 support for RZ/G3E
Reply-To: sashiko-reviews@lists.linux.dev
To: "John Madieu" <john.madieu.xa@bp.renesas.com>
Cc: wsa+renesas@sang-engineering.com, conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260512182631.3842065-7-john.madieu.xa@bp.renesas.com>
References: <20260512182631.3842065-7-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 01:11:05 +0000
Message-Id: <20260514011106.22465C19425@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 216B053C923
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297242-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,renesas.com:email];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Resource leak (clock and reset) when falling back to PIO mode du=
e to missing memory resource.
--

commit 9d3365c013fb5e0808a6b0ca2bbf14ed35e47250
Author: John Madieu <john.madieu.xa@bp.renesas.com>

ASoC: rsnd: Add audmacpp clock and reset support for RZ/G3E

This commit adds global audmacpp clock and reset management in
rsnd_dma_probe() for RZ/G3E using optional APIs.

> diff --git a/sound/soc/renesas/rcar/dma.c b/sound/soc/renesas/rcar/dma.c
> --- a/sound/soc/renesas/rcar/dma.c
> +++ b/sound/soc/renesas/rcar/dma.c
[ ... ]
> @@ -864,6 +867,25 @@ int rsnd_dma_probe(struct rsnd_priv *priv)
>  	if (rsnd_is_gen4(priv))
>  		goto audmapp_end;
> =20
> +	/*
> +	 * Audio DMAC peri-peri clock and reset for RZ/G3E.
> +	 * These use optional APIs, so they gracefully return NULL
> +	 * (no error) on platforms whose DT does not provide them.
> +	 *
> +	 * Enable the clock first so the block sees a stable clock on
> +	 * the way out of reset, then deassert the reset line.
> +	 */
> +	dmac->audmapp_clk =3D devm_clk_get_optional_enabled(dev, "audmapp");
> +	if (IS_ERR(dmac->audmapp_clk))
> +		return dev_err_probe(dev, PTR_ERR(dmac->audmapp_clk),
> +				     "failed to get audmapp clock\n");
> +
> +	dmac->audmapp_rstc =3D
> +		devm_reset_control_get_optional_exclusive_deasserted(dev, "audmapp");
> +	if (IS_ERR(dmac->audmapp_rstc))
> +		return dev_err_probe(dev, PTR_ERR(dmac->audmapp_rstc),
> +				     "failed to get audmapp reset\n");
> +
>  	res =3D platform_get_resource_byname(pdev, IORESOURCE_MEM, "audmapp");
>  	if (!res) {
>  		dev_err(dev, "lack of audmapp in DT\n");
>  		return 0; /* it will be PIO mode */

Does this code leak the clock and reset if the device tree provides a clock
but lacks the memory resource?

Because rsnd_dma_probe() returns 0 on this fallback path, the overall
probe succeeds and devm will not clean up the acquired resources. This leav=
es
the clock permanently enabled and the reset deasserted.

Additionally, since priv->dma is not set before the early return, the clock
cannot be disabled during system suspend.

Could the memory resource check be performed before acquiring and enabling
the clock and reset?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260512182631.3842=
065-1-john.madieu.xa@bp.renesas.com?part=3D6

