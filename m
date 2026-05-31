Return-Path: <devicetree+bounces-304850-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GJkaKNgaHGqMJwkAu9opvQ
	(envelope-from <devicetree+bounces-304850-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 31 May 2026 13:26:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 087B3615C49
	for <lists+devicetree@lfdr.de>; Sun, 31 May 2026 13:26:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3B9583012CF8
	for <lists+devicetree@lfdr.de>; Sun, 31 May 2026 11:26:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 950F537756A;
	Sun, 31 May 2026 11:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tzg+n6JG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 830FE376A0E;
	Sun, 31 May 2026 11:26:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780226771; cv=none; b=R0yHjOLlZjXIlWz8DjbgBueJiCGj8fY8wrol8+CKSxi/StZvHQmpvpXP9fvVpsAQnZ8z2grtvApaJYtH0UiyYFwDCPUEAiRcm/gP6EBirvrs7hoY/pqAsH6btmeHaaYRcHE1eOEj3W0pT1c8vvYxdF3RfhuvqHjtN6hDi9+B2JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780226771; c=relaxed/simple;
	bh=nCB4KQgjhMoXs1Kba3YrABRTW8CO1pz3NRWQXfhHVTk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=MrM89p2mPcUJy1dW7eyGiAtw3l5D09lKC86nsLRE8YEsBln83KiIpjUlFftFrAF7oTB8fUlJbW/P+i7kpwJw00LkbYn1U4pKT6wBWQP8NuEdTe0wxS7OiHpAV3hScH+etoQnHI2v1niHqXWjNMlodjy2pESTL+9GThy7HcK+4LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tzg+n6JG; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C79331F00893;
	Sun, 31 May 2026 11:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780226770;
	bh=rBpJ0ic8gfUx8A/Jp5OnpELlWpRWtPYeBf7xn7rbesg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Tzg+n6JGAhJioJoqbPidKnZmLHCRnPMKXezDOofVpP3oXSBjAKWzFxZI6Toojxe+V
	 OHlIJX1ilnodxidAPa5MO1vD7aldDPQUM5fPcXcVdDJXq4aTucJafBfLRaHkfyjmCO
	 N5hcEhDxHwhUzUHlh56wsUE70768mMTvrurAryImdkRzqdqlpKrIHV7E/z+KVfc3I0
	 JvfwP4sRY86uhbu2PEkIw8hYc3OAUY3dvRLnLJAS9IEDelQeZyqXBJWO6C0FRbcrYc
	 bAfd4irq/C7rCOlYioUyDuTAZsMXQQkC4j0MiQ3qsx/ZjuATmW56teK5wgCvp5kxa8
	 8x4pot7H64J1Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/4] soc: mediatek: pwrap: Add support for MT6735 and
 MT6328 SoC/PMIC pair
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yassine Oudjana via B4 Relay" <devnull+y.oudjana.protonmail.com@kernel.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, dmitry.torokhov@gmail.com, linux-input@vger.kernel.org
In-Reply-To: <20260531-mt6735-pwrap-mt6328-pmic-v2-2-dac37bf92894@protonmail.com>
References: <20260531-mt6735-pwrap-mt6328-pmic-v2-2-dac37bf92894@protonmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 May 2026 11:26:09 +0000
Message-Id: <20260531112609.C79331F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-304850-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,sashiko.dev:url,smtp.kernel.org:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto];
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
	TAGGED_RCPT(0.00)[devicetree,y.oudjana.protonmail.com,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 087B3615C49
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] PMIC_MT6328 is missing from the slave cipher initialization switch=
 statement, which will cause the driver probe to time out and fail.
- [Medium] Unsafe write to PMIC register 0x0 if MT6735 is paired with a PMI=
C lacking `PWRAP_DEW_RDDMY_NO`.
--

commit 21ea916ac0163eee8daf299b310759cc6d675f2a
Author: Yassine Oudjana <y.oudjana@protonmail.com>

soc: mediatek: pwrap: Add support for MT6735 and MT6328 SoC/PMIC pair

This commit adds register definitions and configuration for the MT6735 SoC
and the MT6328 PMIC to the MediaTek PMIC wrapper driver. It defines their
specific register layouts and capabilities to enable communication between
the two chips.

> diff --git a/drivers/soc/mediatek/mtk-pmic-wrap.c b/drivers/soc/mediatek/=
mtk-pmic-wrap.c
> index 0bcd858263755..0f14dca5609d1 100644
> --- a/drivers/soc/mediatek/mtk-pmic-wrap.c
> +++ b/drivers/soc/mediatek/mtk-pmic-wrap.c
[ ... ]
> @@ -1733,6 +1877,10 @@ static void pwrap_init_chip_select_ext(struct pmic=
_wrapper *wrp, u8 hext_write,
>  static int pwrap_common_init_reg_clock(struct pmic_wrapper *wrp)
>  {
>  	switch (wrp->master->type) {
> +	case PWRAP_MT6735:
> +		pwrap_write(wrp, wrp->slave->dew_regs[PWRAP_DEW_RDDMY_NO], 0x8);

[Severity: Medium]
Will this write to register 0x0 if MT6735 is paired with a PMIC that lacks
PWRAP_DEW_RDDMY_NO?

If MT6735 is paired with a PMIC like MT6397 that doesn't define this regist=
er
in its array, the read will return 0 and the driver will write 0x8 to PMIC
register 0x0. Should this verify the PMIC type first, similar to how it is
handled for MT6795 below?

> +		pwrap_init_chip_select_ext(wrp, 0, 6, 0, 0);
> +		break;
>  	case PWRAP_MT6795:
>  		if (wrp->slave->type =3D=3D PMIC_MT6331) {
[ ... ]
> @@ -2194,6 +2343,14 @@ static const struct pwrap_slv_type pmic_mt6323 =3D=
 {
>  		PWRAP_SLV_CAP_SECURITY,
>  };
> =20
> +static const struct pwrap_slv_type pmic_mt6328 =3D {
> +	.dew_regs =3D mt6328_regs,
> +	.type =3D PMIC_MT6328,
> +	.regops =3D &pwrap_regops16,
> +	.caps =3D PWRAP_SLV_CAP_SPI | PWRAP_SLV_CAP_DUALIO |
> +		PWRAP_SLV_CAP_SECURITY,

[Severity: High]
Does pwrap_init_cipher() need to be updated to handle PMIC_MT6328?

Since PMIC_MT6328 has PWRAP_SLV_CAP_SECURITY, pwrap_init_cipher() will run.
However, PMIC_MT6328 is missing from the switch (wrp->slave->type) block in
pwrap_init_cipher().

Without writing 1 to PWRAP_DEW_CIPHER_EN for this PMIC, the cipher engine
remains disabled, which will cause the subsequent readx_poll_timeout() for
pwrap_is_pmic_cipher_ready to time out and fail the driver probe.

> +};
> +
>  static const struct pwrap_slv_type pmic_mt6331 =3D {

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260531-mt6735-pwr=
ap-mt6328-pmic-v2-0-dac37bf92894@protonmail.com?part=3D2

