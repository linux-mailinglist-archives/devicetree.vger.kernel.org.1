Return-Path: <devicetree+bounces-297226-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMZtCFkSBWpVSAIAu9opvQ
	(envelope-from <devicetree+bounces-297226-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 02:07:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFFC53C3FE
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 02:07:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 79C0E3011573
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 00:07:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67C8E7081E;
	Thu, 14 May 2026 00:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hIAv/Irk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433913597B
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 00:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778717241; cv=none; b=uZ2BL/5UYX7KC74NIYngms5HSN56lwfVyaEpCFeOse4haYd2dkApPRgev2k3elTxFZnY6qyKvFf6UogtkHowP9fXglXi20r+kkTFW4qH7ifGqF4BsutuumpZbIgDF1siNSy9bmiWWPk5mLG8Mc9PVF6GPnQRKmbcEbq5depWXdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778717241; c=relaxed/simple;
	bh=OoSBfy62F8MWIcpy0k2BSx/6Yfw/ydStDGzCEwAf2vQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ZTcj6nwyawquDnzVk3bSDEIXvUzQHtsTZRS8kjDYVKB8quqKuqRIFmgS9Ich1miTRaG+eXOqZOnyqyud3zSpIzmA11ZUySQ0LEkQ/DgR6e4G5shn/sYTN2MlWEP7ENE2hlpcrmy5iU9qLqY900AaZW1+n0QrgCbg6K2XHxrx4ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hIAv/Irk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EE14C19425;
	Thu, 14 May 2026 00:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778717240;
	bh=OoSBfy62F8MWIcpy0k2BSx/6Yfw/ydStDGzCEwAf2vQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=hIAv/IrkZlcBNiJVhsS6TLfK9mMIySWmETJs5SONWqSwbabLkElrRcoOn1SCQ5q7N
	 y3eJ2yihtv7bNxiSzCmsNfCvF9t0lTFDtOZycFP81IwbfKcVP9KKCCzgjbwhYdWQtN
	 JZFaRTd6t3tGcDHZ2o3PRmPOwe61LNzX9/g4S1ypYIJDmp3dhbpEBgE6vodSg7DR0+
	 2A4EzhDlLR+pXs6ARMy0U3v7yDLBKSGFPw0QKueYLj/Br/8Q2Pyro7tohbNmMnXO1Y
	 lwe+XpDBRpwcE9xYxJyafI7LH5D5iLJQmCL5jBJLbMB6IV9nNPPEicCJvN+IbxdieR
	 TcmWEjSjCaMVg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 03/16] ASoC: rsnd: Add reset controller support to
 rsnd_mod
Reply-To: sashiko-reviews@lists.linux.dev
To: "John Madieu" <john.madieu.xa@bp.renesas.com>
Cc: devicetree@vger.kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260512182631.3842065-4-john.madieu.xa@bp.renesas.com>
References: <20260512182631.3842065-4-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 00:07:20 +0000
Message-Id: <20260514000720.8EE14C19425@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 7AFFC53C3FE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297226-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,renesas.com:email];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Incorrect hardware teardown sequence in `rsnd_mod_quit()`.
- [Low] Unused `<linux/delay.h>` header inclusion.
--

commit 15ebc4bc5eee087115d0971e0b8a5f59090c9c82
Author: John Madieu <john.madieu.xa@bp.renesas.com>

ASoC: rsnd: Add reset controller support to rsnd_mod

This commit adds reset controller support to the Renesas sound (rsnd) modul=
e.
It updates rsnd_mod_init to accept a reset control parameter, deasserts it
during initialization, and mirrors this with an assert in rsnd_mod_quit.

> diff --git a/sound/soc/renesas/rcar/core.c b/sound/soc/renesas/rcar/core.c
> index 2dc078358612d..c3c139a6fc60a 100644
> --- a/sound/soc/renesas/rcar/core.c
> +++ b/sound/soc/renesas/rcar/core.c
> @@ -90,6 +90,7 @@
>   *
>   */
> =20
> +#include <linux/delay.h>

This isn't a bug, but is the inclusion of linux/delay.h necessary?

I don't see any delay functions used in the updated code. Was a hardware
stabilization delay intended after the reset_control_deassert() call, or
can this inclusion be safely removed?

[ ... ]
> @@ -217,6 +229,8 @@ void rsnd_mod_quit(struct rsnd_mod *mod)
>  {
>  	clk_unprepare(mod->clk);
>  	mod->clk =3D NULL;
> +	reset_control_assert(mod->rstc);

Does the hardware require the clock to be running to latch the reset state
change?

In rsnd_mod_init(), the initialization sequence enables the clock before
deasserting the reset. This suggests the IP block needs an active clock
to propagate the reset.

However, in rsnd_mod_quit(), clk_unprepare() is called before
reset_control_assert(). Since the clock is unprepared and not enabled
when the reset is asserted, can the hardware fail to latch the reset state,
or potentially hang the bus when the reset controller accesses a
powered-down domain?

Should the teardown sequence mirror the initialization by temporarily
enabling the clock, asserting the reset, and then disabling and
unpreparing the clock?

Also, a later patch in the series (ASoC: rsnd: Add system suspend/resume
support) appears to introduce rsnd_suspend_clk_reset() which repeats this
exact sequence of an unprepared clock followed by reset assertion.

> +	mod->rstc =3D NULL;
>  }
> =20
>  void rsnd_mod_interrupt(struct rsnd_mod *mod,

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260512182631.3842=
065-1-john.madieu.xa@bp.renesas.com?part=3D3

