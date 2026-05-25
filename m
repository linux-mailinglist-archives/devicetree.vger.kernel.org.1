Return-Path: <devicetree+bounces-302669-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SGn6HPc2FGpuKwcAu9opvQ
	(envelope-from <devicetree+bounces-302669-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 13:48:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B095CA2C2
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 13:48:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6D15030117B2
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 11:48:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D40F35C1AD;
	Mon, 25 May 2026 11:48:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nX8U5OpV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232572E424F
	for <devicetree@vger.kernel.org>; Mon, 25 May 2026 11:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779709683; cv=none; b=i+/3+4DzkCXxeEjPyG00VVHctx/xi2viw9HFI4wI8A+BqeZTXWJ6fJ1zA1T0g3Ja531P8BcdZXLwdfCv/BJJeNikIS+2kJQWnElfM0CE8Y8Ggmfjt8pXHErrwPfj/Vlg+b75mUS/mMU69ZZDhBjgn9rVRiN07snj1EynD/EFxXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779709683; c=relaxed/simple;
	bh=PpLQ0D1BlYDtlgDRGSO8CY2gTTdSQMrvfg7+a7viOj4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=KhNODHKsmDosuk3c5PN3GyGaO7Bk2PWzkZtDN5JCW7oK2OBdtHyc+acAqe38BuutBEfeiKY3yL6yCY3cBk6/reRAMzuxmIvggD99sdgpanSs0lttB/WNlSD0Ji4c1gUaSS79tqzxh14N13g7oPIlzPf5yX5x4G0aG91fGBdjmgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nX8U5OpV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A8C01F000E9;
	Mon, 25 May 2026 11:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779709681;
	bh=Lc7rMsaHtGoDfWvbbdr7Ijig4FWguyf/AhHkREOI0gE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nX8U5OpV02WZjVwDMG+XTrzcc7h28BRbQLh2Imh1Pbebs9qb2BLZZ/g9QwWpvM5nv
	 KoSbBvMdt5wJ9YMT/ulNGVeUq4TDw2xKlZztFxTWHlVjsGpVhqXIyH1D3WBm2aNEqC
	 HlVlvtzTJcKRDQI1rT9AcXWzVQL3peWYn3m5nG4vmY8dVkeNwZBTnE3AmDj+LGyFeH
	 Usk4Edsv7Xp7TrCx3T7ZJM0qj09E3EobY1Hzyg7wOQWp0pHLnl7sgNzSeCozpoVhV6
	 i/ukeQhBSZft8ho3fCJp2Ty0KMq3Mfwp4cmzcS6yywbqbiGCTMT0lJXBJu5hijzSlc
	 AG0gFnUl1jzKw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 11/18] ASoC: rsnd: Add SSI reset support for RZ/G3E
 platform
Reply-To: sashiko-reviews@lists.linux.dev
To: "John Madieu" <john.madieu.xa@bp.renesas.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260525110230.4014435-12-john.madieu.xa@bp.renesas.com>
References: <20260525110230.4014435-12-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 May 2026 11:48:01 +0000
Message-Id: <20260525114801.5A8C01F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302669-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: D9B095CA2C2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The module clock is not enabled before calling reset_control_asser=
t() during module teardown, which can cause the reset propagation to stall =
and time out.
--

commit ef6d940426384aba7286c552a35eb9b1119adf84
Author: John Madieu <john.madieu.xa@bp.renesas.com>

ASoC: rsnd: Add SSI reset support for RZ/G3E platform

This commit adds SSI reset support for the RZ/G3E platform by acquiring the
per-SSI reset controller and passing it to rsnd_mod_init(). It uses the
rsnd_devm_reset_control_get_optional_indexed() helper to support both new
hyphenated and legacy dotted names.

> diff --git a/sound/soc/renesas/rcar/ssi.c b/sound/soc/renesas/rcar/ssi.c
> index cf98cc9ee44c3..e6734671328c8 100644
> --- a/sound/soc/renesas/rcar/ssi.c
> +++ b/sound/soc/renesas/rcar/ssi.c

[ ... ]

> @@ -1220,7 +1232,7 @@ int rsnd_ssi_probe(struct rsnd_priv *priv)
>  			ops =3D &rsnd_ssi_dma_ops;
> =20
>  		ret =3D rsnd_mod_init(priv, rsnd_mod_get(ssi), ops, clk,
> -				    NULL, RSND_MOD_SSI, i);
> +				    rstc, RSND_MOD_SSI, i);

[Severity: High]
Does this code stall or panic during module teardown?

While rsnd_mod_init() correctly enables the clock before calling
reset_control_deassert(), the teardown path in rsnd_mod_quit() calls
reset_control_assert() without first enabling the module clock.

Because rsnd_mod_quit() is executed during module teardown when streams are
stopped and module clocks are disabled:

rsnd_mod_quit()
    reset_control_assert(mod->rstc);

Asserting the reset will fail to propagate through the unclocked IP block.

Will this cause the SoC's reset controller driver to time out while polling
the reset monitor bit, leaving the hardware in an inconsistent state?

>  		if (ret)
>  			goto rsnd_ssi_probe_done;
>

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260525110230.4014=
435-1-john.madieu.xa@bp.renesas.com?part=3D11

