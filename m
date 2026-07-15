Return-Path: <devicetree+bounces-326998-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uYlUKwOCV2pVTgAAu9opvQ
	(envelope-from <devicetree+bounces-326998-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:50:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 191D475E57F
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:50:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=fhw4nx0i;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326998-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-326998-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A25203009B30
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 12:47:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E00CF47A0D8;
	Wed, 15 Jul 2026 12:47:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6836446AF10
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 12:47:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784119648; cv=none; b=ZqR/ragdcK3bv/7sK/sGG6K83FJKTllan6EeZIULPoCgjHP+JBATpUWl11SnK0ekrgmhu+B4LqpYjr8vL6BZ4FfKIFf6joHKjzLXx8YguezDdzQmBumLSFpmPw3lmWpZQUR0FQLDkZ4Qk8itAWmyqv6Tore+uITsdWf4R5GDYTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784119648; c=relaxed/simple;
	bh=kfNPUO3g6EJ9cMqF5HjZJQOpYWyZOgAYPhqIw0jZCTQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=j74XcXubjfPhncDXBhv8Z8caIzwoZC7kTL3PjDzn+hs+2PegCLR+1kv0xjTYxyz3ODctNuEgXrLXJX9qqL6QZyiwv5n7qi+oMWIJPoAgXO3KFd7zFAHAFDMYt4U8hu8X36WCoR1Lr2HxcCrsDbx4B3zkDTaJvAGN/zPjhjLXcTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhw4nx0i; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FD281F000E9;
	Wed, 15 Jul 2026 12:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784119635;
	bh=AFvYqtLkY2Jzez7qUzC0HB86THWPjC9TI9uz20afX2w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fhw4nx0iawIvEkCZUEYSZWIxtNCMzx09PJszgGwfkC95pPwQgYi0O9FEhZJ74WFz/
	 QpYOfU0W+rDNXnn499mruCvxLNv4VsqRq7gUM6wG/lGXGVshM8otK3tfJq7YotLqxc
	 c+ULiQlunsL1bQbs0Ll3kd0IfTfp0VF5ilLZO3TVlW7GUT+jLyVPQv6BoMCWvKhNoC
	 g2lK/QO0G3+QC4kvNakrVop0Xbb7ofFjVuhlvqDi2g0HuBSeyWa8TawbYjC6QLhgNX
	 4URe0cDcp4Fk8fFhhDhJ4zXRnn5tAtFMyx5cQdxNTiRnUIl+a3g3NLhvf6rk4CJKkN
	 Kn3DvKbOC9HmA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/3] soc: mediatek: pwrap: add mt6572 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Roman Vivchar" <rva333@protonmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260715-6572-pwrap-v2-3-bea1d801c81b@protonmail.com>
References: <20260715-6572-pwrap-v2-0-bea1d801c81b@protonmail.com>
 <20260715-6572-pwrap-v2-3-bea1d801c81b@protonmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2026 12:47:15 +0000
Message-Id: <20260715124715.9FD281F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326998-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[protonmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:rva333@protonmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,protonmail.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 191D475E57F
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Unconditional access to `wrp->slave->dew_regs` in `pwrap_common_=
init_reg_clock` for `PWRAP_MT6572` can lead to a NULL pointer dereference o=
r unintended PMIC register writes.
--

--- Patch [3]: [PATCH v2 3/3] soc: mediatek: pwrap: add mt6572 support ---
commit cbf0689188d0318bc80532d5ebc3a4d9de137810
Author: Roman Vivchar <rva333@protonmail.com>

soc: mediatek: pwrap: add mt6572 support

This commit adds mt6572 registers and platform data for the pmic wrapper,
omitting registers not included in the mt2701 array. It reuses the mt2701
SoC-specific initialization function.

> diff --git a/drivers/soc/mediatek/mtk-pmic-wrap.c b/drivers/soc/mediatek/=
mtk-pmic-wrap.c
> index a4b10b0a97cbb..3f05fc724e15b 100644
> --- a/drivers/soc/mediatek/mtk-pmic-wrap.c
> +++ b/drivers/soc/mediatek/mtk-pmic-wrap.c
[ ... ]
> @@ -1733,6 +1734,11 @@ static void pwrap_init_chip_select_ext(struct pmic=
_wrapper *wrp, u8 hext_write,
>  static int pwrap_common_init_reg_clock(struct pmic_wrapper *wrp)
>  {
>  	switch (wrp->master->type) {
> +	case PWRAP_MT6572:
> +		pwrap_writel(wrp, 0x8, PWRAP_RDDMY);
> +		pwrap_write(wrp, wrp->slave->dew_regs[PWRAP_DEW_RDDMY_NO], 0x8);

[Severity: Medium]
Could this unconditional access to wrp->slave->dew_regs cause a NULL pointer
dereference or unintended register writes if a malformed device tree is
provided?

If mediatek,mt6572-pwrap is paired with a PMIC that lacks dew_regs (such as
mediatek,mt6380-regulator) or lacks PWRAP_DEW_RDDMY_NO, pwrap_common_init_r=
eg_clock
will blindly dereference the array.

Other cases in this switch block, such as PWRAP_MT6795, verify the slave ty=
pe
before accessing dew_regs:

	case PWRAP_MT6795:
		if (wrp->slave->type =3D=3D PMIC_MT6331) {
			const u32 *dew_regs =3D wrp->slave->dew_regs;
			pwrap_write(wrp, dew_regs[PWRAP_DEW_RDDMY_NO], 0x8);
            ...

Would it be safer to add a similar slave type validation here to ensure we =
fail
gracefully on misconfigured device trees?

> +		pwrap_init_chip_select_ext(wrp, 5, 0, 0, 0);
> +		break;
>  	case PWRAP_MT6795:
>  		if (wrp->slave->type =3D=3D PMIC_MT6331) {
>  			const u32 *dew_regs =3D wrp->slave->dew_regs;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260715-6572-pwrap=
-v2-0-bea1d801c81b@protonmail.com?part=3D3

