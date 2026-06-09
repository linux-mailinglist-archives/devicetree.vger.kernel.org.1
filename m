Return-Path: <devicetree+bounces-308775-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id V1fDOv7BJ2qh1gIAu9opvQ
	(envelope-from <devicetree+bounces-308775-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 09:34:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DFB65D419
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 09:34:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Lao9jZyJ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308775-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-308775-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 24CB030C3AD1
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 07:29:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D86A3D8101;
	Tue,  9 Jun 2026 07:29:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294F137BE6C
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 07:29:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780990164; cv=none; b=nvPMHCDZR0RhcJ9PzQ7REhU+pN1SvI7nNWxJteLJQ6qmFejisgXLWiZqDYxMXZ5Wy7JY0Q7W3/l0R6vwXQTXoMqk/QzxhK0rWxvXWEHKrXYRFZns/VikEkbne0GoejgcxCc7pEJTsIf1iJMGEefmUAbUm+orMMzZxEuq8ie7+nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780990164; c=relaxed/simple;
	bh=hixhGKsLCWzUZ9fE+/dIR7odo3qTkpqbsJ+IgDXOz8g=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ZRYR+p3dkNbmo1+7zF77jPHOZ77J/xtanPvv51uXpqGQ4scpe0rK38AtsXB8g+G+7Ply0rk3J50nuqUueHDcJLZlraDxc1atZh8KSZDlLCWzTCjrqjy+LI9yuw0UJCTPyVmjhofgqc9yANNYKpkw3rj04+N05jn6kSHcZ6WZfRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lao9jZyJ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A1D21F00893;
	Tue,  9 Jun 2026 07:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780990162;
	bh=B1R5zx8NHot8/+DiFpxcG1SuAhrtNa7QjdZN2szCVGM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Lao9jZyJ2TFnbBo9pLxWGt1ev2X6Q7+zMLCyIkkK0/oUt5JaoGm+xlFvdpg/mQwfw
	 Hl9nTGNEOUp22RZEyzUETb5srldBtO4oDkyUpirdC2xVPOEgvqh5WIqhJsSxvQEbkJ
	 eYiW3CbZs0rSn42dHdanHJMSiGLmr3Jye5pxjaGSilLKMW1zsvuemtsChPLhPvKS1a
	 57V8C+tJQqES3iSaER+wahp4rI4m7lSTObIknjPUIVQLt1Nx/a0icbllAtR+TOW2Qy
	 MV2ou4WeT4Hp3lVtQvl0U2O+8ZDNQ8SNvAYXll/yx3fKKQueGwuI11T70DUyp891JV
	 auh4AEkR0Brow==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/7] ASoC: codecs: ES8389: Modify the clock table
Reply-To: sashiko-reviews@lists.linux.dev
To: "Zhang Yi" <zhangyi@everest-semi.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260609071732.20939-4-zhangyi@everest-semi.com>
References: <20260609071732.20939-4-zhangyi@everest-semi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 07:29:22 +0000
Message-Id: <20260609072922.8A1D21F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308775-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:zhangyi@everest-semi.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 91DFB65D419

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The `get_coeff` function incorrectly treats `dvdd_vol =3D=3D 0` an=
d `dmic_sel =3D=3D 0` as wildcards, causing exact matches for `0` to fail a=
nd shadowing subsequent table entries.
--

commit 4e226f94a9447f64377fe0e23eb54e3295a2c321
Author: Zhang Yi <zhangyi@everest-semi.com>
ASoC: codecs: ES8389: Modify the clock table

Updated the configuration for certain frequencies and returns -EINVAL if
get_coeff does not find a match.

> diff --git a/sound/soc/codecs/es8389.c b/sound/soc/codecs/es8389.c
> index 886069be1535f..647d9d62820e6 100644
> --- a/sound/soc/codecs/es8389.c
> +++ b/sound/soc/codecs/es8389.c
> @@ -434,52 +434,54 @@ static const struct _coeff_div  coeff_div[] =3D {

[ ... ]

>  	{256, 24576000, 96000, 0x00, 0x40, 0x00, 0xC0, 0x10, 0xC1, 0x80, 0xC0, =
0x00, 0x9F, 0x7F, 0xBF, 0xC0, 0x7F, 0x7F, 0x80, 0x12, 0xC0, 0x35, 0x91, 0x2=
8, 2, 2},
>  	{128, 24576000, 192000, 0x00, 0x50, 0x00, 0xC0, 0x18, 0xC1, 0x81, 0xC0,=
 0x00, 0x8F, 0x7F, 0xBF, 0xC0, 0x3F, 0x7F, 0x80, 0x12, 0xC0, 0x3F, 0xF9, 0x=
3F, 2, 2},
> +	{64, 12288000, 192000, 0x00, 0x41, 0x00, 0xC0, 0x18, 0xC1, 0x80, 0x00, =
0x00, 0x8F, 0x7F, 0xEF, 0xC0, 0x7F, 0x7F, 0x80, 0x12, 0xC0, 0x3F, 0xF9, 0x3=
F, 1, 0},
>  };
> =20
>  static inline int get_coeff(u8 vddd, u8 dmic, int mclk, int rate)

[Severity: High]
This is a pre-existing issue, but does the modulo 2 arithmetic in get_coeff=
()
unintentionally treat 0 as a wildcard alongside 2?

Looking at get_coeff():

    vddd_det |=3D ~(coeff_div[i].dvdd_vol % 2) & 0x01;
    dmic_det |=3D ~(coeff_div[i].dmic_sel % 2) & 0x01;

Since 0 % 2 is 0, this causes ~0 & 1, which evaluates to 1.

This means a row specifying dmic_sel =3D 0 (like the newly added row above)
will incorrectly match requests where dmic =3D 1.

Similarly, if an earlier row specifies 0, will it shadow subsequent rows by
acting as a wildcard instead of an exact match?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609071732.2093=
9-1-zhangyi@everest-semi.com?part=3D3

