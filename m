Return-Path: <devicetree+bounces-297277-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wKgYLr1FBWrmTwIAu9opvQ
	(envelope-from <devicetree+bounces-297277-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 05:47:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC6B53D657
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 05:47:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 785C430378BD
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 03:46:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B32830FF20;
	Thu, 14 May 2026 03:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkpLk3lL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC48C2C0274
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 03:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778730418; cv=none; b=MIfbdtlMXuFL/CT+gXG6UuljmnF74nNiJO3Poad09LvM+qG0HH4ViqbVUoSTSKmin8A53AN/siIEZmxUKpILAK5Y3sBPDgRKG39TETfSJK1wEIYU3pxOPT1OmaeUorMBWPwanVXspf77MuzlwE+H8oP6gpHm54EBSjtTPDt5b5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778730418; c=relaxed/simple;
	bh=HR5U4ZFhtj76rxGCpctxX21lS1njZPYG19CeTK/NiDM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ULbL2iPIZE6myrw9wYttkiUyLgzrnjBFNzjV3kGeP/zLcvBRlHtSkhJ6NeAp1vKnrRWKg1cUBNQz2SiXDjvTWiQMQEeGJHIoZL/arprvKfMFxIeCyScnOJBdktTvV3fOckXBxnwdNBK0Tr27/dgGv6wpZH/sfsh7iqBfcSCd6WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkpLk3lL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A599C2BCB7;
	Thu, 14 May 2026 03:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778730418;
	bh=HR5U4ZFhtj76rxGCpctxX21lS1njZPYG19CeTK/NiDM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=lkpLk3lLGH0Gi88uZP+53/pk7RZdH46RATUlc1v3lzs7TU+ejzuRwvXyZYcIUHtjy
	 62yqCQ/g7e8h8HsRKKUwHw5S7vEVlF9ip11pfbh/6V2JmyPNF80LcRmv2C86mjZK45
	 di8SQxuzoJ1cEAMvZuY+I5TTto9f3+Cm5KeezHhDUR3frTOQP2lGvCHnN6U+YCqjUC
	 8vDFJr1f9mLUGtm7d8jYfQ0GzX8JQ+65KYi3N5KLFWpqu1inp7lM35JWX0obCSMomX
	 Mqn+V9ASckgi8EcSI1rRTBt1YQw3t/+36xA6bReZxGf4l+BFoSvp7jpR0OQ2UqiPNH
	 +nmWZq/lG3DUQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 11/16] ASoC: rsnd: Add ADG reset support for RZ/G3E
Reply-To: sashiko-reviews@lists.linux.dev
To: "John Madieu" <john.madieu.xa@bp.renesas.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org, wsa+renesas@sang-engineering.com, robh@kernel.org
In-Reply-To: <20260512182631.3842065-12-john.madieu.xa@bp.renesas.com>
References: <20260512182631.3842065-12-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 03:46:57 +0000
Message-Id: <20260514034658.2A599C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 1DC6B53D657
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297277-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url,renesas.com:email];
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
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The ADG reset line is deasserted during probe but never asserted o=
n module removal or error paths, causing a state/resource leak.
- [High] The ADG module reset is deasserted before its clock is enabled, vi=
olating the hardware reset sequence.
--

commit 6c6d894ea65ae109e5fa8d85239c0bfcc07fc1aa
Author: John Madieu <john.madieu.xa@bp.renesas.com>

ASoC: rsnd: Add ADG reset support for RZ/G3E

This commit adds optional reset control support for the ADG module on
Renesas RZ/G3E SoCs. It retrieves the adg reset line and passes it to
rsnd_mod_init() during probe.

> diff --git a/sound/soc/renesas/rcar/adg.c b/sound/soc/renesas/rcar/adg.c
> --- a/sound/soc/renesas/rcar/adg.c
> +++ b/sound/soc/renesas/rcar/adg.c
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

Does this sequence deassert the reset before the module clock is enabled?

Looking at rsnd_mod_init(), the reset is deasserted immediately:

sound/soc/renesas/rcar/core.c:rsnd_mod_init() {
        ...
        ret =3D clk_prepare_enable(clk);
        if (ret)
                return ret;

        ret =3D reset_control_deassert(rstc);
        ...
}

Since NULL is passed for the clk argument in rsnd_adg_probe(), the ADG
clock isn't enabled during this deassertion. The actual ADG clock is
fetched and enabled later in rsnd_adg_probe() via rsnd_adg_get_clkin()
and rsnd_adg_clk_enable().

On Renesas hardware, synchronous resets typically require the module
clock to be actively running when the reset is deasserted. Could this
cause the hardware to miss the reset release or lead to uninitialized
module state?

>  	if (ret)
>  		return ret;

Are there missing cleanup paths for the deasserted reset?

If rsnd_adg_probe() fails later (for example, in rsnd_adg_get_clkin()),
it returns the error directly without jumping to a cleanup path to
re-assert the reset.

Additionally, if rsnd_adg_remove() does not call rsnd_mod_quit() for
the ADG module, does this leave the hardware permanently out of reset
across unbind and rebind cycles?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260512182631.3842=
065-1-john.madieu.xa@bp.renesas.com?part=3D11

