Return-Path: <devicetree+bounces-302663-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oI3LLqU2FGpuKwcAu9opvQ
	(envelope-from <devicetree+bounces-302663-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 13:46:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4005CA257
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 13:46:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 95BEE300DE1F
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 11:41:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DB1737F8C3;
	Mon, 25 May 2026 11:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/Kv7X9f"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0D137F8AC
	for <devicetree@vger.kernel.org>; Mon, 25 May 2026 11:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779709286; cv=none; b=PtAvUf3VXbnbQqhGLOLC9nD1o6s9KETbKSwJXVBbr9f70hYeT/X7Ou0wV1/Ep2ilA2lnycFZyr5bDzPHkAXCsyWP1oc6o+OQerzOgFxMbcbIPGEDeAdxhNFPg8SEjY+xBdtHnik1pfssvFEuz8smviqVdXqqSZMnRMIiVrEdvCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779709286; c=relaxed/simple;
	bh=Yb88PVwLQbUIwfH+ZUbv9KRcGQSNVZ3z/iDGeIJ1zME=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=BkdaUESDGL0pIwRVrUtE1+Zp4UVqS0KdU7G/PexfTl6AuLCf3j3ebbUwjMV882zk5SC5XIhU+Rj8VHPQjpu0Ge9itVZMEofUUNzcFX0Ny5Fe1L47794Cn7VNj7jdP3mvgnvojCvm/RyEkZdxjz36ci82w2nm/Cp1DZAQjAAZs+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/Kv7X9f; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8C601F000E9;
	Mon, 25 May 2026 11:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779709284;
	bh=ienxeBNnxHoCdnhLVuQFBZpO2Asch8EnXppH0lrQCPk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=J/Kv7X9fWGC4xISLJtZziLPsFhZWdFRp5o5pPQAGxWIc4w6EXzvdyt46DJIqMj5+u
	 wZGEqyMS68F1lzEdhuFXGHlOoiPcd8uxwPvgahb36FVMYGUo+0MtmDMZmHIPIsdMer
	 yfGQufTbtcZMazb483Svxk78rLscR1xB4j6uiA6IeVQ80DvT7hj2u+oQ0Ge5ikvDCs
	 xppEAjxOoit4S7czgy3+fcJJ4Lql8l0bEQwMpJDFH5mx1l/ekgkDVB2bbS/2WHgrV2
	 pZ0Gh5fNho39jBYO675+anAfganu3qaA28QZDXx+laaZT2E89HqdPoBZQj0pXyecQv
	 huujaTxlN7IDQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 09/18] ASoC: rsnd: ssiu: Add shared SSI reset
 controller support
Reply-To: sashiko-reviews@lists.linux.dev
To: "John Madieu" <john.madieu.xa@bp.renesas.com>
Cc: wsa+renesas@sang-engineering.com, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260525110230.4014435-10-john.madieu.xa@bp.renesas.com>
References: <20260525110230.4014435-10-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 May 2026 11:41:23 +0000
Message-Id: <20260525114123.C8C601F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302663-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto];
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
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 1C4005CA257
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Missing rollback on probe error paths leaks the shared reset contr=
ol's deassert count.
--

commit 75b9405455f9c9d54972ded411c26d45e6a17c73
Author: John Madieu <john.madieu.xa@bp.renesas.com>

ASoC: rsnd: ssiu: Add shared SSI reset controller support

The RZ/G3E SoC exposes a single shared "ssi-all" reset that gates all
SSI/SSIU modules. Acquire it at SSIU probe and pass it through
rsnd_mod_init() so it is wired into the rsnd_mod->rstc plumbing.

> diff --git a/sound/soc/renesas/rcar/ssiu.c b/sound/soc/renesas/rcar/ssiu.c
> --- a/sound/soc/renesas/rcar/ssiu.c
> +++ b/sound/soc/renesas/rcar/ssiu.c
[ ... ]
> @@ -586,7 +593,7 @@ int rsnd_ssiu_probe(struct rsnd_priv *priv)
>  		}
> =20
>  		ret =3D rsnd_mod_init(priv, rsnd_mod_get(ssiu),
> -				    ops, NULL, NULL, RSND_MOD_SSIU, i);
> +				    ops, NULL, rstc, RSND_MOD_SSIU, i);
>  		if (ret)
>  			return ret;

[Severity: High]
This is a pre-existing issue, but does this error path leak the shared reset
control's deassert count?

If probe fails on a subsequent module (for example, returning -EPROBE_DEFER
from rsnd_mod_init), the function returns directly without calling
rsnd_mod_quit() for the modules initialized in previous iterations of the l=
oop.

Since rsnd_mod_init() calls reset_control_deassert(), the reset remains
deasserted for those modules.

While devres cleanup will call reset_control_put() on the shared reset acqu=
ired
via devm_reset_control_get_optional_shared(), this only drops the kref. It =
does
not balance the atomic deassert_count or assert the hardware line.

Across common initialization events like -EPROBE_DEFER retries, will the
deassert count grow unbounded and leave the hardware permanently deasserted?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260525110230.4014=
435-1-john.madieu.xa@bp.renesas.com?part=3D9

