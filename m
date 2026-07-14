Return-Path: <devicetree+bounces-325942-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GKu0ABjcVWrUuQAAu9opvQ
	(envelope-from <devicetree+bounces-325942-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 08:50:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D77751A3F
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 08:49:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=grF5yu4Z;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325942-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325942-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4D5523043FF0
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 06:49:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 771E43E2ABC;
	Tue, 14 Jul 2026 06:49:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491783DD523
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 06:49:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784011752; cv=none; b=Y1xkUoh52T5MR5h1ZdgWvvtTFYpGgBsxfl81SLfjhV3pgWx133lTa0pv72Uf+53jkN6cChHs1/OyYwlOe3kl8cankUG0hTLmDKhv+r/wwajZKCojs9L4VzfyvovB49mdruZb6KKrw3ongS3wudgXf4CWmdsKZbAqRDHX25K720A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784011752; c=relaxed/simple;
	bh=zUgyu1PPcq8zGbhy/enfIp6unX2fRNPURswqi0UFfOk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=WPCj1tIFZ1K7Rw6X8BL31/peDFz05TEJf2YRxsCzvyCFkxUVADUi8MKP5kuNiFUiMSFIhx+9N40Ane+e6pmz9ZUma21Fm/iJ755vV7Ip3D+6JXMD98mOHMkKwMnzfCaDx7WveoLtXfsVCe61QTOPnLHzcpLS8BGAQ8EGlfZsaFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grF5yu4Z; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9CB11F000E9;
	Tue, 14 Jul 2026 06:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784011751;
	bh=e2vrEhUN78zzgXo+gMbi4YwjjemjNnEjirBlOXP0sss=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=grF5yu4ZHT3y5/IMCXqGdq11CepUixV/c7zdbPE7gwDXU+PRXLzRLpMmaXZifgyZR
	 n+fK3YHp6Cm5FGqD4tIPuHwAQ8eFiCrh6EyBlhb7MryWmSJ+/gDePmc/wHzpYdT5Cm
	 orc/hd/hgIuzNjwRdHP9K0brm474aRYLV8ZX5tn2MTCcmH6M0b0QtdW0iu5awOgcib
	 v/7FZcR2qYiI/tkpe6B0zpoqhwbDh5m6YFeWe4+b9u6DDH4BS/0K7KwdaSrtGDbQvv
	 92ZK3WcPymHozY/acMjBpsEEp+TT+v7Tyl32aOx0gDNuQZUjv4nV1/4nw8rM/baHkB
	 iFMZosARVZMCw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 5/6] phy: qcom: qmp-combo: Add serdes and
 RBR/HBR/HBR2/HBR3 tables for v1 DP PLLs
Reply-To: sashiko-reviews@lists.linux.dev
To: "Esteban Urrutia" <esteuwu@proton.me>
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, conor+dt@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260714-sm8475-bup-v1-5-b2871be2b4ec@proton.me>
References: <20260714-sm8475-bup-v1-0-b2871be2b4ec@proton.me>
 <20260714-sm8475-bup-v1-5-b2871be2b4ec@proton.me>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 06:49:10 +0000
Message-Id: <20260714064910.A9CB11F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-325942-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:esteuwu@proton.me,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:conor+dt@kernel.org,m:linux-phy@lists.infradead.org,m:robh@kernel.org,m:vkoul@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url,proton.me:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 96D77751A3F

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The newly introduced v1 DP PLL configuration tables are declared as=
 static const but never referenced, leading to compiler warnings and breaki=
ng strict builds (-Werror).
--

--- Patch [5]: [PATCH 5/6] phy: qcom: qmp-combo: Add serdes and RBR/HBR/HBR=
2/HBR3 tables for v1 DP PLLs ---
commit e4414eef7407c61ff8a26f53b835396525b0a343
Author: Esteban Urrutia <esteuwu@proton.me>

phy: qcom: qmp-combo: Add serdes and RBR/HBR/HBR2/HBR3 tables for v1 DP PLLs

This commit introduces serdes and rate-specific tables for v1 DP PLLs to
support SM8475. It also renames existing v1.1 tables and updates several
PHY configurations to use them.

> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qual=
comm/phy-qcom-qmp-combo.c
> index cdcfad2e86b1d..8c09d4c1594d0 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -1337,7 +1337,30 @@ static const struct qmp_phy_init_tbl qmp_v5_5nm_dp=
_tx_tbl[] =3D {
>  	QMP_PHY_INIT_CFG(QSERDES_V5_5NM_TX_TX_BAND, 0x01),
>  };
> =20
> -static const struct qmp_phy_init_tbl qmp_v6_dp_serdes_tbl[] =3D {
> +static const struct qmp_phy_init_tbl qmp_v6_dp_v1_serdes_tbl[] =3D {
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SVS_MODE_CLK_SEL, 0x15),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0x3b),

[Severity: Low]
Are these new v1 tables referenced anywhere in this patch?

They are declared as static const, but appear to be unreferenced. Could this
regression cause -Wunused-const-variable compiler warnings and break builds
that use CONFIG_WERROR=3Dy?

[ ... ]

> @@ -1471,7 +1494,55 @@ static const struct qmp_phy_init_tbl qmp_v8_n3p_dp=
_tx_tbl[] =3D {
>  	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX1_RESTRIM_POST_CAL_OFFSET, 0x10),
>  };
> =20
> -static const struct qmp_phy_init_tbl qmp_v6_dp_serdes_tbl_rbr[] =3D {
> +static const struct qmp_phy_init_tbl qmp_v6_dp_v1_serdes_tbl_rbr[] =3D {
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x05),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x69),

[Severity: Low]
Does this rate-specific v1 table for RBR also need a reference to avoid
the unused variable warning?

[ ... ]

> +static const struct qmp_phy_init_tbl qmp_v6_dp_v1_serdes_tbl_hbr[] =3D {
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x03),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x69),

[Severity: Low]
Is this HBR table missing a reference in the configurations below?

[ ... ]

> +static const struct qmp_phy_init_tbl qmp_v6_dp_v1_serdes_tbl_hbr2[] =3D {
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x8c),

[Severity: Low]
Would leaving this HBR2 table unreferenced trigger the same compiler
warning?

[ ... ]

> +static const struct qmp_phy_init_tbl qmp_v6_dp_v1_serdes_tbl_hbr3[] =3D {
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x69),

[Severity: Low]
Should this HBR3 table be hooked up to the PHY config struct so the compiler
doesn't complain about unused variables?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-sm8475-bup=
-v1-0-b2871be2b4ec@proton.me?part=3D5

