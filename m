Return-Path: <devicetree+bounces-297289-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wD1WOApLBWreUQIAu9opvQ
	(envelope-from <devicetree+bounces-297289-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 06:09:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 488EE53D8D6
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 06:09:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4299E300274B
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 04:09:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B28F33AB27B;
	Thu, 14 May 2026 04:09:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XizmsJUE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 903AA321420
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 04:09:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778731753; cv=none; b=kBLpVjI6XE9SJPwzU7P/czkM4Onohl0JkHTQZnPY3bSeXps5AQFEnNTW3YOjBaTtH0flFUqHktLOwQZJxL4IJuTwUxai06ZIEPOP4I4Ay6Q3e3Jkg33/pt88mtwh0QWbZXTzq9/2nIGsjWHx9mGI4TDTycg57cv++xxHJIvwlj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778731753; c=relaxed/simple;
	bh=2jPrFj/EKOoozCFbCuN+MjWObFaqWfQ/51ApzABzHbs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=L5PaJwi+Atz9UFS5WRHT5XsGDC4mdPaoOU1cpuwg/3w4rhXBBpDZ/j+O/3uC1aA/b7dKc6yaENrg2q+rWql+HcrB3aQva2UBOJu98eP2IsTpCf9zrljEzx/b6b4rHKMosz5LumPijif5QU9u8VHTDTG+sXj37P2lvUJ+KAdqmR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XizmsJUE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD2C8C2BCB7;
	Thu, 14 May 2026 04:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778731753;
	bh=2jPrFj/EKOoozCFbCuN+MjWObFaqWfQ/51ApzABzHbs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=XizmsJUEBI97R3mtBoL0Rf1pY8XNhIoUdDteTpOUJK+vzYi/sVXmKIaO+uph2rYYS
	 peQUaCZmwIJs5LBpYCpNMnLMagrk7zRmy0b/PaxS3DQk0BPxkgXTT4fKxmwnqcDHhs
	 QOPSR7POrJ/yymbPO9Z+dmmqim1zk78SPD/FNJvWfatAh0R6ZZee88BWH291cunimv
	 0OOTYlvh9ZJsVRGbeRDE3VP9ojGhJEENc0ida1P5uS5bBukRHezEHow94C846d1ccx
	 IjTR3doUy68BxjfU+qz0KkaeZowcUWJRB0UBBIrM9iUN+ptG2O7L5THg8vMo7FKWAZ
	 VkeU3qfCq8nKQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 12/16] ASoC: rsnd: adg: Add per-SSI ADG and SSIF
 supply clock management
Reply-To: sashiko-reviews@lists.linux.dev
To: "John Madieu" <john.madieu.xa@bp.renesas.com>
Cc: wsa+renesas@sang-engineering.com, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260512182631.3842065-13-john.madieu.xa@bp.renesas.com>
References: <20260512182631.3842065-13-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 04:09:12 +0000
Message-Id: <20260514040912.DD2C8C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 488EE53D8D6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297289-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,renesas.com:email];
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
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Bitwise OR error code corruption and unbalanced clock unprepare in=
 rsnd_adg_clk_control()
- [High] Missing error handling cleanup in rsnd_adg_probe() leads to Use-Af=
ter-Free
--

commit 96241f9dadb676a5e8a4489644874b25a85bb097
Author: John Madieu <john.madieu.xa@bp.renesas.com>
ASoC: rsnd: adg: Add per-SSI ADG and SSIF supply clock management

This commit introduces explicit clock management for SSI audio interfaces
on the RZ/G3E, which differs from previous R-Car generations. It adds
per-SSI ADG clocks and a shared SSIF supply clock, acquiring them via
optional APIs to remain transparent to other platforms.

> diff --git a/sound/soc/renesas/rcar/adg.c b/sound/soc/renesas/rcar/adg.c
> --- a/sound/soc/renesas/rcar/adg.c
> +++ b/sound/soc/renesas/rcar/adg.c
[ ... ]
> @@ -417,6 +448,29 @@ int rsnd_adg_clk_control(struct rsnd_priv *priv, int=
 enable)
>  		}
>  	}
> =20
> +	/*
> +	 * rsnd_adg_clk_enable() might return error (_disable() will not).
> +	 * We need to rollback in such case
> +	 */
> +	/*
> +	 * RZ/G3E per-SSI ADG and SSIF supply clocks.
> +	 *
> +	 * Follow the same style as for_each_rsnd_clkin() above: on enable,
> +	 * try to prepare every clock and accumulate the error. On disable
> +	 * (which is also used as the rollback path below), unprepare every
> +	 * clock. Absent optional clocks are NULL, for which clk_prepare()
> +	 * and clk_unprepare() are no-ops.
> +	 */
> +	if (enable) {
> +		for (i =3D 0; i < ADG_SSI_MAX; i++)
> +			ret |=3D clk_prepare(adg->clk_adg_ssi[i]);
> +		ret |=3D clk_prepare(adg->clk_ssif_supply);

Does using bitwise OR to accumulate error codes corrupt the returned error
value? clk_prepare() returns negative error codes like -ENOMEM, and
accumulating them with a bitwise OR could return a meaningless value to
the caller, breaking probe deferral.

Also, if one of these clocks fails to prepare, the loop does not break.
The subsequent rollback path will then unconditionally call clk_unprepare()
on all clocks. Does calling clk_unprepare() on a clock that failed to prepa=
re
trigger a kernel warning and underflow its state?

Additionally, if the preceding for_each_rsnd_clkin loop failed, the ret
variable is already less than zero. This block will still execute because
enable is true, which will overwrite the valid error code from the first lo=
op.

> +	} else {
> +		clk_unprepare(adg->clk_ssif_supply);
> +		for (i =3D 0; i < ADG_SSI_MAX; i++)
> +			clk_unprepare(adg->clk_adg_ssi[i]);
> +	}
> +
[ ... ]
> @@ -798,6 +877,11 @@ int rsnd_adg_probe(struct rsnd_priv *priv)
>  	if (ret)
>  		return ret;
> =20
> +	/* RZ/G3E-specific: per-SSI ADG and SSIF supply clocks */
> +	ret =3D rsnd_adg_get_ssi_clks(priv);
> +	if (ret)
> +		return ret;

If rsnd_adg_get_ssi_clks() returns an error here (such as -EPROBE_DEFER),
does returning directly skip deregistering the clock provider?

Earlier in rsnd_adg_probe(), the clock provider is registered via
rsnd_adg_get_clkout() which ultimately adds the provider.

Since the memory for adg is managed by devm_kzalloc(), if this probe fails,
the memory is automatically freed. If the clock provider remains registered
with the subsystem, could this lead to a use-after-free when accessed?

> +
>  	ret =3D rsnd_adg_clk_enable(priv);
>  	if (ret)
>  		return ret;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260512182631.3842=
065-1-john.madieu.xa@bp.renesas.com?part=3D12

