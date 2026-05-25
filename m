Return-Path: <devicetree+bounces-302679-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OOvJHCI9FGq6LAcAu9opvQ
	(envelope-from <devicetree+bounces-302679-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 14:14:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C73E85CA576
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 14:14:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C5D7430125C8
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 12:14:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 654213815CC;
	Mon, 25 May 2026 12:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnlcGr0a"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C78E2AE78
	for <devicetree@vger.kernel.org>; Mon, 25 May 2026 12:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779711263; cv=none; b=OeJM6R7tlpLzbS8mvt1ze6IBCreNyD5WqkgGEOhUepNXwC+zEieAXE+ZpzMZlOrd7WbI1Tr3DDOBJXchcju5oU/+QFjfjfkjoNVtlmAxf8OQgwMeI4wAN708w2RT43VLflu5r0HGBaX/GH/r4mx2RoEfL2JjSt9CPn62q56RkTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779711263; c=relaxed/simple;
	bh=JonA6QRPgXFgFa/ZXSwNaYcmgoi+BJy/JdaHj+NoRdE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=rQYTk9R86IiiGodtZyDXRVlQCC0BFz2w682HheFa2D9DtRHhoxia3QcpbxDyDmtiDUmD/MjG9cvmg/nevlWXCwcZLw2MSA4xURcbz1PfZOTVzBl1MV1ZPSXGFOzIYM/OlnuOCCtSPkX6dVC0xrJQ4Mb2QVTrENRUVOh5TAPC4v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnlcGr0a; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9DC6A1F00A3C;
	Mon, 25 May 2026 12:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779711261;
	bh=G1xOlQwbA/OsO5cpc6v8/qXOJHs7lPuZrraz/xtlV2s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VnlcGr0a3e5nS4Bey01GL9z7ja+miJQfvyLKsF4mSCTW/WNBwHAZ7FFnmT2n3senX
	 nMOA02Nf8+Gae6su1EwDuryjNHFp4kLLVYpv0W1J/ohcoskwfyUYbBBkrpjBBmengo
	 6VetPA12NKvv5vZ9nvJbNejs6lLKA8nvuKoGitMG3NumDbgQLQriVIlC+stXqyQcAT
	 1eLeRM2fVefw05W7dDCq6+Sww3QYmDfQsOW1pLHsGNwFoUQ9nnd/UaaQ0EHpLlXmBv
	 MlHAwlHX0GklNLrlDqpbObvg2Ip5aQsMyofRRKeTDV1DWxJhqaBcuF/xyw3KkO/73j
	 TKbpclboaPzhg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 13/18] ASoC: rsnd: adg: Add per-SSI ADG and SSIF
 supply clock management
Reply-To: sashiko-reviews@lists.linux.dev
To: "John Madieu" <john.madieu.xa@bp.renesas.com>
Cc: wsa+renesas@sang-engineering.com, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260525110230.4014435-14-john.madieu.xa@bp.renesas.com>
References: <20260525110230.4014435-14-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 May 2026 12:14:20 +0000
Message-Id: <20260525121421.9DC6A1F00A3C@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302679-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,renesas.com:email];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: C73E85CA576
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The SSI module ID can exceed the bounds of the `adg->clk_adg_ssi` =
array, leading to out-of-bounds memory access.
- [Low] Inaccurate comment states unprepare happens in `hw_free`.
--

commit 1339aa202161336aea7400a2edeb8b4b15c203d4
Author: John Madieu <john.madieu.xa@bp.renesas.com>

ASoC: rsnd: adg: Add per-SSI ADG and SSIF supply clock management

This commit adds support for per-SSI ADG clocks and a shared SSIF supply
clock for RZ/G3E SoCs. These clocks are acquired and managed as optional
resources transparently for platforms that require them.

> diff --git a/sound/soc/renesas/rcar/adg.c b/sound/soc/renesas/rcar/adg.c
> index 813ad5eabba61..5dce62287d200 100644
> --- a/sound/soc/renesas/rcar/adg.c
> +++ b/sound/soc/renesas/rcar/adg.c
[ ... ]
> @@ -343,8 +350,16 @@ int rsnd_adg_clk_query(struct rsnd_priv *priv, unsig=
ned int rate)
> =20
>  int rsnd_adg_ssi_clk_stop(struct rsnd_mod *ssi_mod)
>  {
> +	struct rsnd_priv *priv =3D rsnd_mod_to_priv(ssi_mod);
> +	struct rsnd_adg *adg =3D rsnd_priv_to_adg(priv);
> +	int id =3D rsnd_mod_id(ssi_mod);
> +
>  	rsnd_adg_set_ssi_clk(ssi_mod, 0);
> =20
> +	/* RZ/G3E: only disable here, unprepare is done in hw_free */

[Severity: Low]
This isn't a bug, but is this comment accurate regarding hw_free?

Looking at rsnd_adg_ssi_clk_unprepare(), it is only called from
rsnd_adg_clk_control(priv, 0), which runs during the driver's remove and
suspend phases, not during the PCM hw_free callback.

> +	clk_disable(adg->clk_adg_ssi[id]);

[Severity: High]
Does this code overflow the adg->clk_adg_ssi array?

The array is defined with a fixed size of ADG_SSI_MAX (10), but the id
variable is dynamically derived from the Device Tree node name via
rsnd_mod_id(). This can yield indices up to 63 via rsnd_node_fixed_index().

If a Device Tree contains an SSI index of 10 or greater, won't this read
past the end of the array and pass an invalid pointer to clk_disable()?
The same issue appears to exist in rsnd_adg_ssi_clk_try_start() with
clk_enable().

> +	clk_disable(adg->clk_ssif_supply);
> +
>  	return 0;
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260525110230.4014=
435-1-john.madieu.xa@bp.renesas.com?part=3D13

