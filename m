Return-Path: <devicetree+bounces-302670-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2H0zNWA3FGpuKwcAu9opvQ
	(envelope-from <devicetree+bounces-302670-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 13:49:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC995CA2DA
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 13:49:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B2D88300D9CB
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 11:49:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1CA331F9BD;
	Mon, 25 May 2026 11:49:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H74Dj2Yw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 928C4344025
	for <devicetree@vger.kernel.org>; Mon, 25 May 2026 11:49:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779709788; cv=none; b=I51yBa722K+xqNXg8jZQJKjJceBFeBlRKgLMepZyeyDdraMuf/VgVeBhNNEPqZuVxz8fTGj6ZcfrE14pQEhnedzIrzz9EncZ0Jvu3BVJzl3xsvL/Gn1n7ozBDtoS7tsdabLAhQE60/Koo4E1jZ50RF1SqpfmdSPZ/q/WBo0Wc8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779709788; c=relaxed/simple;
	bh=aYyZSJk4TI5bEzGw7ismVy6+YAOH0RwT+G8M/P1lUU4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=HXZ963hUkaSTqiBu9QoEOCKjZtAiAX1XcryRkhn4Ax4aKN0TNjfdbeXjRPp7IgTZwCEwKawRa92P3VUPuULZfspuJzbvadOskuQRliCwGLTe8daIubIjZIfYnCClsCdyMzS3UmRSQxB7nqyPF6Y20nrffeIcBVo2iJ84nh2NRa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H74Dj2Yw; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09B0E1F000E9;
	Mon, 25 May 2026 11:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779709787;
	bh=hAdUM86yPCWOn81DznBAXV3plyk26Mhnwi2i4a4jZ60=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=H74Dj2Yw1sK3X/D5TG4Bg8QPAu1ElrgMMyzUOjW6G0eIOOq4byxPGDcTDkqgGdaPh
	 jSj2yPj/b9RAhldEUcAnjhC4hCahjH1LI7vqGabwO/YH5SbkUObV/Mb7W3mxKsc23u
	 s9o5OwKnWVBwTc0+V/f4ExM7396vMgrEVmGGFCnTioGGYKXx4ox2NMk4HadM9QHzqe
	 CeqVA8pAGtSwpVxGLxvi8C8Htn++KCxewFVkDFzbTZKa8B1PavBW+EXqoKctE8C3dz
	 Z+wn4hNRx89q0CyQvevMmRTK61PIzXNP1+rk1rxUPso4zI6bojZENr1oeYMfis81lm
	 fOQjLgikU+Cwg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 12/18] ASoC: rsnd: Add ADG reset support for RZ/G3E
Reply-To: sashiko-reviews@lists.linux.dev
To: "John Madieu" <john.madieu.xa@bp.renesas.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com, robh@kernel.org
In-Reply-To: <20260525110230.4014435-13-john.madieu.xa@bp.renesas.com>
References: <20260525110230.4014435-13-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 May 2026 11:49:46 +0000
Message-Id: <20260525114947.09B0E1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302670-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 4CC995CA2DA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The ADG module reset is deasserted before its module clock is requ=
ested or enabled, violating hardware sequencing rules.
- [Medium] The newly introduced ADG reset control is never asserted on driv=
er unbind or probe error paths, leaking the hardware state.
--

commit d6340a23ee109a2c61a0071ea77ab96a55373b74
Author: John Madieu <john.madieu.xa@bp.renesas.com>

ASoC: rsnd: Add ADG reset support for RZ/G3E

This commit adds support for an optional ADG reset line for the RZ/G3E SoC.
It fetches the reset control in rsnd_adg_probe() and passes it to
rsnd_mod_init() during initialization.

> diff --git a/sound/soc/renesas/rcar/adg.c b/sound/soc/renesas/rcar/adg.c
> index 0105c60a144e0..813ad5eabba61 100644
> --- a/sound/soc/renesas/rcar/adg.c
> +++ b/sound/soc/renesas/rcar/adg.c
[ ... ]
> @@ -779,8 +780,11 @@ int rsnd_adg_probe(struct rsnd_priv *priv)
>  	if (!adg)
>  		return -ENOMEM;
> =20
> -	ret =3D rsnd_mod_init(priv, &adg->mod, &adg_ops,
> -		      NULL, NULL, 0, 0);
> +	rstc =3D devm_reset_control_get_optional_exclusive(dev, "adg");
> +	if (IS_ERR(rstc))
> +		return dev_err_probe(dev, PTR_ERR(rstc), "failed to get adg reset\n");
> +
> +	ret =3D rsnd_mod_init(priv, &adg->mod, &adg_ops, NULL, rstc, 0, 0);

[Severity: High]
Does this sequence deassert the ADG module reset before its module clock is
enabled?

When rsnd_mod_init() is called here, the clk argument is passed as NULL.
Inside rsnd_mod_init(), clk_prepare_enable() does nothing for a NULL clock,
and then reset_control_deassert() is executed immediately.

Since the ADG clock is not fetched until the subsequent call to
rsnd_adg_get_clkin() and is only enabled later in rsnd_adg_clk_enable(),
this appears to deassert a synchronous hardware reset without an active
module clock. Can this invalid sequence fail to propagate the reset state
properly or lead to bus lockups?

>  	if (ret)
>  		return ret;
> =20

[Severity: Medium]
Are there missing error handling and teardown paths for this new reset?

If rsnd_adg_probe() fails after rsnd_mod_init() completes successfully
(for example, if rsnd_adg_get_clkin() returns an error), the function
returns directly. It appears there is no call to rsnd_mod_quit() to unwind
the state and assert the reset line on this error path.

While the devm framework will free the reset control reference on probe
failure, it does not automatically assert the line, leaving the hardware
permanently out of reset. Is an update to rsnd_adg_remove() also needed to
ensure the reset is properly asserted during driver unbind?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260525110230.4014=
435-1-john.madieu.xa@bp.renesas.com?part=3D12

