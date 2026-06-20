Return-Path: <devicetree+bounces-314037-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id y18BNjj1Nmo3HAcAu9opvQ
	(envelope-from <devicetree+bounces-314037-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 22:16:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D3A6A9AD6
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 22:16:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=m7MEGcgk;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314037-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314037-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BA20B3004D32
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 20:16:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32D5836D9EB;
	Sat, 20 Jun 2026 20:16:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168D6218EBA;
	Sat, 20 Jun 2026 20:16:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781986609; cv=none; b=kwQFux6lmuN2nhWHjtw6sAJ+/nzIeF43FNEE/1Ce1aK0tC8RTkBQCR6x43I/XFot/81Ek9RnQ1s5Y0amyXtX3nxzSYtwnrwFXy4ZPcRwX11/FEQFBjwpA0wWQseQxAZ3Cn/qTF5xDtIfqOpLff/0zQ8Qx5oekui1TRevqhh3erc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781986609; c=relaxed/simple;
	bh=tSrfq4P3tw99qyAeeXFyx3GeUUcgDojcChvEgpZYars=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=FTPZqWI5qREuUKMYD8fCCFx8nB15TEd/LoiBIWVtmK6SMv05wVTq9VYAD96eghD95n9oFhuNfg/37IdwODw6PrPyVMW/O3tkD2tRIqrfO0z4WA+ww6dkfk+x6S29ZU/FbLhM6wF1AwWaG3iUNqAnVVu2MPM3I0z6xCs1TrmHICw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m7MEGcgk; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CED71F00A3A;
	Sat, 20 Jun 2026 20:16:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781986607;
	bh=38SKgxFBawAuLPGEYHfIK/6/1xNK9+uSY+5jPR1ENMo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=m7MEGcgkiiGKDEQS5mdV6K2Eyw6hYu+d55UFFbuDn1qiH3VEYNvg56/MO+hIH8Mta
	 v8cvLn3raAD7VuODqxmCbDcQrj6V55fyIQ0p2XtxmEJXgETobxjyWEjsk17FyKDvSB
	 FgDQq+P1kQTOOl4wnqqC9FDiUOt0klfO8yVKR4gDdDOkaFg0NZu/PHP+dLO7lZbskF
	 y8vDlaxutKIZMOAMQHfTnh10SYWToHxYkiqU/CCP0koJFO5gZ68Izdvvp+tqeoyPn/
	 EEdHQZx8ZDDdfVgQxaqTKzl9lbWKijuCpdv/UN/VHZ0F1CjdRdxF9reqRrl0rLdewB
	 soxcGtyTGLGHQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 6/9] input: keyboard: mtk-pmic-keys: Add MT6392
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Luca Leonardo Scorcia" <l.scorcia@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, dmitry.torokhov@gmail.com, linux-input@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260620200032.334192-7-l.scorcia@gmail.com>
References: <20260620200032.334192-1-l.scorcia@gmail.com>
 <20260620200032.334192-7-l.scorcia@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 20 Jun 2026 20:16:47 +0000
Message-Id: <20260620201647.9CED71F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:l.scorcia@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:dmitry.torokhov@gmail.com,m:linux-input@vger.kernel.org,m:conor+dt@kernel.org,m:lscorcia@gmail.com,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-314037-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp,packett.cool:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C7D3A6A9AD6

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Incorrect reset bitmask used for MT6357 home key, causing register=
 corruption.
--

commit 1b3cefe34c0ab03bf79d61642de046924d4afa84
Author: Val Packett <val@packett.cool>

input: keyboard: mtk-pmic-keys: Add MT6392 support

Add support for the MT6392 PMIC to the keys driver.

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

[Severity: High]
This is a pre-existing issue, but while reviewing these new register
configurations I noticed a copy-paste typo in the mt6357_regs struct.

In mt6357_regs, the home key reset mask is initialized like this:

    .keys_regs[MTK_PMIC_HOMEKEY_INDEX] =3D
        MTK_PMIC_KEYS_REGS(MT6357_TOPSTATUS,
                   0x8, MT6357_PSC_TOP_INT_CON0, 0xa,
                   MTK_PMIC_HOMEKEY_INDEX),

Does this incorrectly use the array index MTK_PMIC_HOMEKEY_INDEX instead of
the reset bitmask MTK_PMIC_HOMEKEY_RST?

When mtk_pmic_keys_lp_reset_setup() is called during probe for an MT6357
device, wouldn't this inadvertently modify bit 0 of the MT6357_TOP_RST_MISC
register instead of bit 5?

It looks like this might corrupt an unrelated control bit in the PMIC regis=
ter
state, while also failing to manage the long-press reset functionality for =
the
home key.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260620200032.3341=
92-1-l.scorcia@gmail.com?part=3D6

