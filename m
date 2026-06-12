Return-Path: <devicetree+bounces-311161-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vH2lC29uLGozQwQAu9opvQ
	(envelope-from <devicetree+bounces-311161-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 22:39:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ABBE67C5BC
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 22:39:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YJp+kr7k;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311161-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311161-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 481FF309B7A6
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 20:39:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B85F9324B22;
	Fri, 12 Jun 2026 20:39:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 990242BE051;
	Fri, 12 Jun 2026 20:39:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781296748; cv=none; b=RLCB/B4cyEyUa/eOT1PyLzWnuFRdtsc+vP3g62pezZr2rYMxTpoUseXASAULTXrsk1ASHcE1drK5W7QEk3zGwxuYDj0UNODy1eUAXVzcaLTnT+mu3hj2fJarGyKTKEIqzMdGliPoZL1R+i403HbN5Y+1a2gszCueosxI/WYtl9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781296748; c=relaxed/simple;
	bh=eicU+rt9aGU++NavoZzZRElg9JuqfKGQbf+nodk5C4k=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=B2mZwAgcgppwIUceyn6SjMshO8IPYy4RzRZOCRothWCXk2bLKzBVMoKxMNNxlWCNZAGclcNaDQlf+yWeRBOnM+zXVbC8tlQDYroA/4ouamaTGg+S+82fE7lgAT9S1ia2/Ls1J90WO+uomxJ8qpDgFqeVegYkFin+c+m9fJLnqa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJp+kr7k; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E53231F000E9;
	Fri, 12 Jun 2026 20:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781296747;
	bh=CFXkz/KtKZUVRH+VGbL5pBMt6IMlfPCCe2Qmgr4JUk4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YJp+kr7kRYl4REdCACrwSuJkBH583n3Z06PCltITAbDpmKUzEq6Ol5137pbXaNoPJ
	 7B2l5T1XjEhLBEWQaR2UQYN5CuULE3Rl8Mb6HXKoRlwK0c00dE1ZshATNqGKwbympx
	 LGVb1y33BcFjt1VP9uX2le6G4YHYRsf/4+bhKroPndcA+JW9Biwv3vrssq6IoXdTvc
	 LwicM6HEMjy7zUww/DltYmX8UbKpjFV9iUQpXuy072GjgMBF4hQfI3VFh2azuHMnw/
	 XsZXc1+iwkzJMwXccSohzI0y6f+VW4bemxZSYTbvY/1Ys0j68R3RqoZlc5X7ZKa+hS
	 BGWpUAVuAwj0g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 5/7] input: keyboard: mtk-pmic-keys: Add MT6392
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Luca Leonardo Scorcia" <l.scorcia@gmail.com>
Cc: linux-input@vger.kernel.org, dmitry.torokhov@gmail.com, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260612200717.361018-6-l.scorcia@gmail.com>
References: <20260612200717.361018-6-l.scorcia@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 20:39:06 +0000
Message-Id: <20260612203906.E53231F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:l.scorcia@gmail.com,m:linux-input@vger.kernel.org,m:dmitry.torokhov@gmail.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:lscorcia@gmail.com,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-311161-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,packett.cool:email,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7ABBE67C5BC

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Out-of-bounds array access and incorrect parsing of disabled DT no=
des in `mtk_pmic_keys_probe` due to a mismatch between child counting and i=
teration macros.
- [High] `mt6357_regs` incorrectly uses `MTK_PMIC_HOMEKEY_INDEX` instead of=
 `MTK_PMIC_HOMEKEY_RST` for the home key reset mask.
--

commit 2b2bdf18b713288536d3d56d4b82a48e65594233
Author: Val Packett <val@packett.cool>

    input: keyboard: mtk-pmic-keys: Add MT6392 support
   =20
This commit adds support for the MT6392 PMIC to the mediatek pmic keys driv=
er
by defining its specific register layout and adding the required compatible
string.

> diff --git a/drivers/input/keyboard/mtk-pmic-keys.c b/drivers/input/keybo=
ard/mtk-pmic-keys.c
> index c78d9f6d97c4f..8b4a89fce4fb1 100644
> --- a/drivers/input/keyboard/mtk-pmic-keys.c
> +++ b/drivers/input/keyboard/mtk-pmic-keys.c

[ ... ]

> @@ -69,6 +70,19 @@ static const struct mtk_pmic_regs mt6397_regs =3D {
>  	.rst_lprst_mask =3D MTK_PMIC_RST_DU_MASK,
>  };
> =20
> +static const struct mtk_pmic_regs mt6392_regs =3D {
> +	.keys_regs[MTK_PMIC_PWRKEY_INDEX] =3D
> +		MTK_PMIC_KEYS_REGS(MT6392_CHRSTATUS, 0x2,
> +				   MT6392_INT_MISC_CON, 0x10,
> +				   MTK_PMIC_PWRKEY_RST),
> +	.keys_regs[MTK_PMIC_HOMEKEY_INDEX] =3D
> +		MTK_PMIC_KEYS_REGS(MT6392_CHRSTATUS, 0x4,
> +				   MT6392_INT_MISC_CON, 0x8,
> +				   MTK_PMIC_HOMEKEY_RST),
> +	.pmic_rst_reg =3D MT6392_TOP_RST_MISC,
> +	.rst_lprst_mask =3D MTK_PMIC_RST_DU_MASK,
> +};
> +

[Severity: High]
This isn't a bug introduced by this patch, but I noticed a potential
out-of-bounds access in mtk_pmic_keys_probe() due to a mismatch in child no=
de
parsing:

drivers/input/keyboard/mtk-pmic-keys.c:mtk_pmic_keys_probe() {
    ...
	keycount =3D of_get_available_child_count(node);
	if (keycount > MTK_PMIC_MAX_KEY_COUNT) {
		dev_err(dev, "too many keys defined (%d)\n", keycount);
		return -EINVAL;
	}

	for_each_child_of_node_scoped(node, child) {
		keys->keys[index].regs =3D &keys->mtk_regs->keys_regs[index];
    ...
}

The check uses of_get_available_child_count(), which skips nodes with
status=3D"disabled", but the loop uses for_each_child_of_node_scoped(), whi=
ch
iterates over all child nodes regardless of their availability.

If a device tree defines more than MTK_PMIC_MAX_KEY_COUNT nodes but disables
enough to pass the initial check, could the loop execute more than
MTK_PMIC_MAX_KEY_COUNT times?  Would this cause an out-of-bounds array acce=
ss
on the keys->keys[] and irqnames[] arrays?

[Severity: High]
This is a pre-existing issue as well, but looking at the existing register
definitions, mt6357_regs appears to use the wrong macro for the home key
reset mask:

drivers/input/keyboard/mtk-pmic-keys.c:
static const struct mtk_pmic_regs mt6357_regs =3D {
	.keys_regs[MTK_PMIC_PWRKEY_INDEX] =3D
		MTK_PMIC_KEYS_REGS(MT6357_TOPSTATUS,
		0x2, MT6357_INT_MISC_CON, 0x10, MTK_PMIC_PWRKEY_RST),
	.keys_regs[MTK_PMIC_HOMEKEY_INDEX] =3D
		MTK_PMIC_KEYS_REGS(MT6357_TOPSTATUS,
		0x8, MT6357_INT_MISC_CON, 0x8, MTK_PMIC_HOMEKEY_INDEX),
    ...
};

Does this incorrectly use MTK_PMIC_HOMEKEY_INDEX instead of
MTK_PMIC_HOMEKEY_RST?

Because MTK_PMIC_HOMEKEY_INDEX is just an array index, would this result in
modifying the wrong bits in the reset register during
mtk_pmic_keys_lp_reset_setup() and failing to properly enable the long-press
hardware reset for the home key on MT6357?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612200717.3610=
18-1-l.scorcia@gmail.com?part=3D5

