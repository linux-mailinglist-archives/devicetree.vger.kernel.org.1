Return-Path: <devicetree+bounces-325661-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Hd9hJ6UGVWpZjAAAu9opvQ
	(envelope-from <devicetree+bounces-325661-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 17:39:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F41BA74D260
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 17:39:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=LHFSLObL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325661-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325661-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C8CDF3053F12
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 15:33:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6722231F993;
	Mon, 13 Jul 2026 15:33:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CE131A07F
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 15:33:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783956787; cv=none; b=HoPh7UWTF6dTMoQLrpa6VU/QUFf1neojFCtGIinmvF0qkr+nnrCvMfHaQKebP+Smd1Eus+pHAwAPoVCYYrreovavJZg+Zhj8zMHGiBZt/iL2d8FeVuP3NbYtLgbfE7jS0b+AnWjPhxVTJFey+bM3UOA+jFiJhjHrle+px39xvGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783956787; c=relaxed/simple;
	bh=/G69A7Uh2kxd3aSB0Cbj1WDdxfbkuVsT0DuwUjNCbvo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=reAHooXfneguKsxMen9qxD2N7CyMYuO7X8ZirCz2RKuiMcg99tgF311y2ud0IaQ13HJQhCxhtaxJBfBrHUq0du9r7dZV1K6zMDkiSXDvK9r73BDbNVSsLRjEz5lZRGxkCNf7x8TF9f0xPD1ArTvC7TC7XgQzeltEH3p4K779oBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHFSLObL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6278B1F000E9;
	Mon, 13 Jul 2026 15:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783956785;
	bh=FLO33FKUbF6LAcJmb2g3zYshINIkFS18krvXSDtzPI0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LHFSLObLA8fnh3rmkBkfXyxdysXErLE9bDQpnnreOyltg5krGVtBPBkegNmzxHJej
	 c5Da5/9iAbqhBxmnUhCNuJikpCcKlFoT57E3XzndCeMC/2mjJTD7nnEuCV+qwO6vxH
	 PIu1fN4k1SUFMLYOMMJItoJlDiwtPkrxJeB9O31mVWDn/alcM144o0u2GxAeX0l4M4
	 x+34reEPbX/Uq/2xOAcbS27Oz4Tx+FW/Oflem5yyvSV1KlKlnNMFN3mvdEAx6gAv5x
	 KIo1XZ8MvtSdoIz13v0rFdA9fuldjNQb1x4J07d8E4HgHH47Od8o6P/FNVPrrHuLVR
	 uF1Gdvk7o00vA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/3] pinctrl: mediatek: Add driver for MT6858
Reply-To: sashiko-reviews@lists.linux.dev
To: "Nikolai Burov" <nikolai.burov@jolla.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260713-mt6858-pinctrl-v2-2-1bd072e3206c@jolla.com>
References: <20260713-mt6858-pinctrl-v2-0-1bd072e3206c@jolla.com>
 <20260713-mt6858-pinctrl-v2-2-1bd072e3206c@jolla.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 15:33:04 +0000
Message-Id: <20260713153305.6278B1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325661-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:nikolai.burov@jolla.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F41BA74D260

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Out-of-bounds array read in `mt6858_pull_type` due to missing VEIN=
T pins.
- [High] NULL Pointer Dereference in `mtk_hw_pin_rsel_lookup` when `mediate=
k,rsel-resistance-in-si-unit` is used.
--

--- Patch [2]: [PATCH v2 2/3] pinctrl: mediatek: Add driver for MT6858 ---
commit 77e15ce1c7cb0516ec8722df8f1589a541d7a5b7
Author: Nikolai Burov <nikolai.burov@jolla.com>

pinctrl: mediatek: Add driver for MT6858

This commit adds a pin controller and gpio driver for the MediaTek MT6858
(Dimensity 7100) SoC.

> diff --git a/drivers/pinctrl/mediatek/pinctrl-mt6858.c b/drivers/pinctrl/=
mediatek/pinctrl-mt6858.c
> new file mode 100644
> index 0000000000000..07f72d9d531f7
> --- /dev/null
> +++ b/drivers/pinctrl/mediatek/pinctrl-mt6858.c
[ ... ]
> +static const unsigned int mt6858_pull_type[] =3D {
> +	MTK_PULL_PU_PD_TYPE, /* 0 */
> +	MTK_PULL_PU_PD_TYPE, /* 1 */
[ ... ]
> +	MTK_PULL_PU_PD_TYPE, /* 195 */
> +	MTK_PULL_PU_PD_TYPE, /* 196 */
> +};

[Severity: High]
This array is sized to 197 elements, but the mtk_pins_mt6858 array defines =
217
pins, which includes the virtual EINT pins at indices 197-216. When generic
pinconf operations evaluate the bias configuration for these VEINT pins (su=
ch
as mtk_pinconf_bias_get_combo() during a debugfs read), won't this result in
an out-of-bounds memory read?

[ ... ]
> +static const struct mtk_pin_soc mt6858_data =3D {
> +	.reg_cal =3D mt6858_reg_cals,
> +	.pins =3D mtk_pins_mt6858,
> +	.npins =3D ARRAY_SIZE(mtk_pins_mt6858),
> +	.ngrps =3D ARRAY_SIZE(mtk_pins_mt6858),
> +	.eint_hw =3D &mt6858_eint_hw,
> +	.eint_pin =3D eint_pins_mt6858,
> +	.nfuncs =3D 16,
> +	.gpio_m =3D 0,
> +	.base_names =3D mt6858_pinctrl_register_base_names,
> +	.nbase_names =3D ARRAY_SIZE(mt6858_pinctrl_register_base_names),
> +	.pull_type =3D mt6858_pull_type,

[Severity: High]
The mt6858_pull_type array configures several pins with the
MTK_PULL_PU_PD_RSEL_TYPE attribute, but the .pin_rsel and .npin_rsel fields
are not initialized in this structure.

If the Device Tree uses the mediatek,rsel-resistance-in-si-unit property,
could this cause a NULL pointer dereference?

The common code in mtk_hw_pin_rsel_lookup() iterates with:

    for (check =3D 0; check <=3D hw->soc->npin_rsel - 1; check++)

Since npin_rsel defaults to 0, 0 - 1 underflows to UINT_MAX. The loop would
then immediately evaluate rsel[check].s_pin, resulting in a kernel panic as
rsel is NULL.

> +	.bias_set_combo =3D mtk_pinconf_bias_set_combo,
> +	.bias_get_combo =3D mtk_pinconf_bias_get_combo,
> +	.drive_set =3D mtk_pinconf_drive_set_rev1,
> +	.drive_get =3D mtk_pinconf_drive_get_rev1,
> +	.adv_drive_get =3D mtk_pinconf_adv_drive_get_raw,
> +	.adv_drive_set =3D mtk_pinconf_adv_drive_set_raw,
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713-mt6858-pin=
ctrl-v2-0-1bd072e3206c@jolla.com?part=3D2

