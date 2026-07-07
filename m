Return-Path: <devicetree+bounces-322143-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ipGfOnEVTWo2uwEAu9opvQ
	(envelope-from <devicetree+bounces-322143-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 17:04:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4E271CFA3
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 17:04:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="PCS4s/rT";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322143-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322143-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 26CD8334F562
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 14:34:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03FBD42982C;
	Tue,  7 Jul 2026 14:34:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C987442253D
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 14:34:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783434845; cv=none; b=KTFhVEeYjmcRfzxJymAPcetXs6y/oCzt8ProuJIMM8n4yn+tnM7isAbmBSqlzdvQpjp6P836dIzCz4rzldQnnlKuFB0EmaD7DK4Zz9nmzTzOZKqUsg9ims1nRKVtXJ9QFLebGu+ui7+8hviHu+TM7Kz1gM+DCkowAoGnej+ZNBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783434845; c=relaxed/simple;
	bh=FXW0ZQAR/HjOPW3bCqIDtjmq7ejZgfxyURrdwS0AZ3M=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Ksd746SmUcx9Jnt1jq06Dgj7sbDJgBpTv6UtSeGCVQAioe1+fV8gPMQrvKviQFOspky8uEdY6wbhJqDshDkz0aBNwwzFopRs4cfHFdK33mu8xrlF9FtC47Rs1aW+Ilzb6KllaKv7jt2tbgU6JDyVI14gGuMSjFjKWbgIPQ2+kU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PCS4s/rT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA05D1F000E9;
	Tue,  7 Jul 2026 14:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783434844;
	bh=qPPLFALCz8NXXZOTdxsis98fvVnKcnAHTN9imvn7xk4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PCS4s/rTRQ+a8cNa8Nteawau5Lr+JrTiaM6VmA88+sza4mEnr1QJGnfYGiHoQvNWr
	 LU51Brvxvoh9zmgdQw+SU7m+PRVfHAn4EuSsTzZ6FEHwtO055ujhN3wM1F3cNgKEx7
	 8ZLN12/KQlG+2+gS4RJNAulBn+WWOPXUHK6icBi3QLlOzCX8mXqaDzDFKpXuKhsOKo
	 moxUNqBitsqJYgEn63nmVCwJf8DRLXWq/kqOlnxti1pEbY+sj1crb/PIVN041vhhgd
	 MeCjXrUWx4sKIthh4n3NpgnYkuieJP2EfWTIh0mBys/dqPPCyN7tR7KVi5fRBD0ron
	 dyBGlB5B4IKKQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 06/12] phy: phy-mtk-dp: Support set_lanes in
 configure and properly cleanup
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: olteanv@gmail.com, robh@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260707141931.191172-7-angelogioacchino.delregno@collabora.com>
References: <20260707141931.191172-1-angelogioacchino.delregno@collabora.com>
 <20260707141931.191172-7-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 14:34:03 +0000
Message-Id: <20260707143403.EA05D1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-322143-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:olteanv@gmail.com,m:robh@kernel.org,m:linux-phy@lists.infradead.org,m:vkoul@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,lists.infradead.org,lists.freedesktop.org,vger.kernel.org,linaro.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4A4E271CFA3

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Missing NULL check on device_get_match_data() result leads to pote=
ntial NULL pointer dereference.
- [Low] Undeclared variable 'ret' causes a build failure.
--

--- Patch [6]: [PATCH v2 06/12] phy: phy-mtk-dp: Support set_lanes in confi=
gure and properly cleanup ---
commit 564fc9b179c0513c9ad23d3689aaf0c8211c61c3
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

phy: phy-mtk-dp: Support set_lanes in configure and properly cleanup

Add support for enabling a specifically requested number of lanes
in the .configure() callback and disable all lanes in power off
and reset callbacks for proper hardware cleanup.

> diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy=
-mtk-dp.c
> --- a/drivers/phy/mediatek/phy-mtk-dp.c
> +++ b/drivers/phy/mediatek/phy-mtk-dp.c

[ ... ]

> +static int mtk_dp_phy_probe(struct platform_device *pdev)
> +{
> +	struct device *dev =3D &pdev->dev;
> +	struct phy_provider *provider;
> +	struct mtk_dp_phy *dp_phy;
> +	void __iomem *base;
> +	struct phy *phy;
> +
> +	dp_phy =3D devm_kzalloc(dev, sizeof(*dp_phy), GFP_KERNEL);
> +	if (!dp_phy)
> +		return -ENOMEM;
> +
> +	dp_phy->dev =3D dev;
> +
> +	/* If there's no devicetree, go for legacy pdev probe */
> +	if (!dev->of_node)
> +		return mtk_dp_phy_legacy_probe(pdev, dp_phy);
> +
> +	base =3D devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(base))
> +		return PTR_ERR(base);
> +
> +	dp_phy->regmap =3D devm_regmap_init_mmio(dev, base, &mtk_dp_phy_regmap_=
cfg);
> +	if (IS_ERR(dp_phy->regmap))
> +		return PTR_ERR(dp_phy->regmap);
> +
> +	dp_phy->pdata =3D device_get_match_data(dev);
> +
> +	phy =3D devm_phy_create(dev, NULL, &mtk_dp_phy_dev_ops);

[Severity: High]
Can dp_phy->pdata be NULL here if the driver is bound manually?

If a user writes the driver name to 'driver_override' in sysfs for an
unrelated platform device, device_get_match_data() will return NULL since
the compatible string won't match.

The probe will succeed, but subsequent PHY framework calls to .init or
.configure will unconditionally dereference dp_phy->pdata, which could lead
to a kernel panic.

Would it be safer to verify the result of device_get_match_data() before
proceeding?

> +	if (IS_ERR(phy))
> +		return dev_err_probe(dev, PTR_ERR(phy),
> +				     "Failed to create DP PHY\n");
> +
> +	phy_set_drvdata(phy, dp_phy);
> +
> +	provider =3D devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> +	if (IS_ERR(provider))
> +		return PTR_ERR(provider);
> +
> +	ret =3D devm_pm_runtime_enable(dev);

[Severity: Low]
Is the variable 'ret' missing a declaration in this function?

It appears 'ret' is assigned and checked here, but it wasn't declared in
the variable block at the start of mtk_dp_phy_probe(), which will cause a
build failure.

> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707141931.1911=
72-1-angelogioacchino.delregno@collabora.com?part=3D6

