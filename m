Return-Path: <devicetree+bounces-322212-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Q+T5BxQkTWoBvwEAu9opvQ
	(envelope-from <devicetree+bounces-322212-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 18:06:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5928471DA9E
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 18:06:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VCiVWpHf;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322212-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322212-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5C1BD30566B8
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 16:04:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0FFF432BD2;
	Tue,  7 Jul 2026 16:03:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87E12431E50
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 16:03:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783440238; cv=none; b=XTN8UOCu3Xs/gCcgeDg9vSLTjR23lGE8Zq3oH6kDIXO9F/xn9xhUH4K7fZoH+Gs/hfxzLTaKHK3q0LaZsi0kVjYHKUMhUHFKb1sywpWb/w7aAT9QaA9Co8vOh19hG7eC+1RU2AbH6IKskO3YS9sFkIwtvJT3mgawU7cpyW9R/CI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783440238; c=relaxed/simple;
	bh=3ubmPGmTvJWcVOQtm28+wla/W0tpfYLtuZfrQKAZN8E=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jYNjld70BiTRE59iWupJe+5lJ4Fbq2M86dUf5W9cT9xn4DQMUXE76OZzTGBJhu5CE2FNwuiX9Qry7pYT7wypombieb5j8f6RWRM7D4pw+IH1WPX7vaqlDtqJnMt7/YinDw5O4neDtnMfWJwDkrHoxWJMOW25rIEF5ZXmCorLGo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCiVWpHf; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D22321F000E9;
	Tue,  7 Jul 2026 16:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783440237;
	bh=1RK/+oLFm7CJC0cfU5xLjI11OdM/Hz5v5vnIbkPsQ8M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VCiVWpHfEEkeVSx1TtM+RZuZeidryVWyFhtWrLRrIHyhYG+OdwFTuNkFb4gJ8P0Tl
	 QpxM2nmG0DczhMzBUuZZ2NAfW9AU8GbrY+t/XKHCNRSDSOp4649o2piw9AUoaRDlA9
	 MGiWMq0O4eqQrgVc7LxmxIRs/MFeg45wA3ggVO3AV5oboOp3wo62Kx+GtRtyyKB0MO
	 x6aaG5Bv77BMRFHbBZ1baWiuDwRxns4+FqFSb/mydjS+gMNu5NiE2/owiD54ui02Gi
	 EkhO5OO3tF+UPvGhegpMbH13ESQN12/KcP1/3dQJC3gMAdfVNAEm1WFresNLMZr1oU
	 ezUxu7YRIkefQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 08/12] phy: phy-mtk-dp: Add support for digital and
 analog calibration
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: conor+dt@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260707154245.198361-9-angelogioacchino.delregno@collabora.com>
References: <20260707154245.198361-1-angelogioacchino.delregno@collabora.com>
 <20260707154245.198361-9-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 16:03:56 +0000
Message-Id: <20260707160356.D22321F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322212-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:linux-phy@lists.infradead.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,lists.freedesktop.org,vger.kernel.org,linaro.org,gmail.com,lists.infradead.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url,collabora.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5928471DA9E

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [Medium] Unconditional `dev_err` logging in `mtk_dp_phy_get_one_cal_para(=
)` causes log spam for expected fallback cases (missing eFuses) and probe d=
eferrals.

Pre-existing issues:
- [High] Unconditional dereference of `dev->platform_data` in legacy probe =
before validating it is non-NULL.
--

--- Patch [8]: [PATCH v3 08/12] phy: phy-mtk-dp: Add support for digital an=
d analog calibration ---
commit 637b7b00f751ea110c4b395e4e951eecc2ab535e
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

phy: phy-mtk-dp: Add support for digital and analog calibration

Add support for reading the calibration values from eFuse: if
present, write those - otherwise, rely on the defaults from
SoC-specific data. This also adds support for writing the calibration
values for the analog part of the PHY.

> diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy=
-mtk-dp.c
> index c87e9fa710a40..f59a415b401c5 100644
> --- a/drivers/phy/mediatek/phy-mtk-dp.c
> +++ b/drivers/phy/mediatek/phy-mtk-dp.c
[ ... ]
> @@ -422,6 +541,111 @@ static const struct phy_ops mtk_dp_phy_dev_ops =3D {
>  	.owner =3D THIS_MODULE,
>  };
> =20
> +static void mtk_dp_phy_get_default_cal_data(struct mtk_dp_phy *dp_phy)
[ ... ]
> +static int mtk_dp_phy_get_one_cal_para(struct device *dev, const char *n=
ame, u8 max_val)
> +{
> +	u8 buf_byte;
> +	u16 buf;
> +	int ret;
> +
> +	/*
> +	 * All of the calibrations are always max 8 bits long, but some may
> +	 * be split between two different 8-bits cells: handle this corner
> +	 * case by retrying reading as u16.
> +	 */
> +	ret =3D nvmem_cell_read_u8(dev, name, &buf_byte);
> +	if (ret)
> +		ret =3D nvmem_cell_read_u16(dev, name, &buf);
> +	else
> +		buf =3D buf_byte;
> +
> +	if (ret) {
> +		dev_err(dev, "Cannot get calibration data for %s: %d\n", name, ret);
> +		return ret;
> +	};

[Severity: Medium]
Will this unconditionally log an error when calibration data is intentional=
ly
omitted or when the nvmem provider returns -EPROBE_DEFER?

If the calibration data is missing, nvmem_cell_read_u8() returns -ENOENT,
which is later handled gracefully by the caller by falling back to defaults.
However, printing dev_err() here will cause log spam and false-positive
errors in dmesg. Could this be silenced for -ENOENT and -EPROBE_DEFER cases?

> +
> +	if (buf =3D=3D 0) {
[ ... ]
> @@ -453,6 +677,13 @@ static int mtk_dp_phy_legacy_probe(struct platform_d=
evice *pdev, struct mtk_dp_p
>  				     "Failed to create DP PHY\n");
> =20
>  	phy_set_drvdata(phy, dp_phy);

[Severity: High]
This is a pre-existing issue, but earlier in mtk_dp_phy_legacy_probe(),
does the code unconditionally dereference dev->platform_data before checking
if it is NULL?

drivers/phy/mediatek/phy-mtk-dp.c:mtk_dp_phy_legacy_probe() {
    ...
	dp_phy->regmap =3D *(struct regmap **)dev->platform_data;
	if (!dp_phy->regmap)
		return dev_err_probe(dev, -EINVAL, "No platform data available\n");
    ...
}

If the platform device is instantiated without platform data,
*(struct regmap **)NULL results in an immediate kernel panic, making the
subsequent check dead code.

> +
> +	/*
> +	 * Set default calibration data before exposing the PHY.
> +	 * For legacy probe, mtk_dp will set calibrations from eFuse, if found.
> +	 */
> +	mtk_dp_phy_get_default_cal_data(dp_phy);
> +
>  	ret =3D phy_create_lookup(phy, "dp", dev_name(dev));
>  	if (ret)
>  		return ret;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707154245.1983=
61-1-angelogioacchino.delregno@collabora.com?part=3D8

