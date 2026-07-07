Return-Path: <devicetree+bounces-322142-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id B7r4LI4RTWpCugEAu9opvQ
	(envelope-from <devicetree+bounces-322142-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:47:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC6571CD30
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:47:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="iV9s10U/";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322142-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322142-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 68D9330EBE38
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 14:33:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB13D429825;
	Tue,  7 Jul 2026 14:33:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 919E42110E
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 14:33:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783434818; cv=none; b=bHDO/ZVsv4uyVhTsrQAEbgDV2gsY0GetcljiTeUctiG8mxKWgax15YJm9alkWNJRpG1s/XReZ8GSxyvYDN9fPjuNXgQuyk1K8lGk3X+zQlQ10S38ufX1L0aQXBlswxbvypb5hpOZKdbHV3ClbzFy9zuGfHXriWXl8+p4nNgKaCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783434818; c=relaxed/simple;
	bh=juTCYo1LPCwFxMHp7fcZhcpmje/Mbwld79DStdUQdfQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=TgjEAVFXDwFR7kYvKvf/IcxZcRFvZHemUuJwx8XRaoxBBzpI5+UKPwqoIwViOwUBiqrNIm8FUdxTk1w2PbEXUnUmhpDxF1YJlCtpUFGD/Cf70PraQdZs7oeOH042xSz1SSwuxJhbGU1f+5jJlrQ6Nob1DhNLEazXyYmRDyv354M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iV9s10U/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D977E1F000E9;
	Tue,  7 Jul 2026 14:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783434817;
	bh=AlxPMQrsqVhCEj9Pg9ZvOqNkVUHqUdIxpTTtVw0F45E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=iV9s10U/wvFtMcM2as83miqm3h9Hp4yRdamO3bmQzXNql/LUUFZAQPLpypnIJtYxd
	 Hs/6o76KCR4bGOG84YLP/ZYXFHaEySocoUUxZBquuXzbv8yH9MShkusWvsJMpKA0T4
	 r0ZNP0bYVyGPvyi++uVcDt9VJjnOAyF8TLpLEfgyozpf0e9lhb9nFxlTJNymmAqxD/
	 5Ju8qCdnU4U5UcX+6dgCRfVPevGAc9jl9ylJUGc/154Q136vWbGwClVUaOASgub1xS
	 RU7w6MPJE5y83N1TX/expkL3tj6nRRF7IXPFAjxrK2/+wgwQlq5vE4rKiAy+5HaplF
	 gQtPvSoYNACwg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 07/12] phy: phy-mtk-dp: Support setting volt swing
 and preemphasis values
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: vkoul@kernel.org, robh@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, olteanv@gmail.com
In-Reply-To: <20260707141931.191172-8-angelogioacchino.delregno@collabora.com>
References: <20260707141931.191172-1-angelogioacchino.delregno@collabora.com>
 <20260707141931.191172-8-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 14:33:36 +0000
Message-Id: <20260707143336.D977E1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322142-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:vkoul@kernel.org,m:robh@kernel.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:neil.armstrong@linaro.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:olteanv@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,lists.infradead.org,vger.kernel.org,linaro.org,lists.freedesktop.org,gmail.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1BC6571CD30

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Analog PHY driving parameters are written to the wrong register of=
fsets, misaligning signal driving settings.
- [Low] Compilation error due to undeclared variable `ret` in `mtk_dp_phy_p=
robe`.
--

--- Patch [7]: [PATCH v2 07/12] phy: phy-mtk-dp: Support setting volt swing=
 and preemphasis values ---
commit 83b16a974d2259d5e6f2e7cfa570e7b31e4ec7e5
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

phy: phy-mtk-dp: Support setting volt swing and preemphasis values

This commit adds support for setting voltage swing and preemphasis values
in the DP PHY .configure() callback by honoring the set_voltages request.
It also ensures proper hardware cleanup by resetting both values in the
.reset() callback.

> diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy=
-mtk-dp.c
> index 2f3ec3fa384df..270825f130a95 100644
> --- a/drivers/phy/mediatek/phy-mtk-dp.c
> +++ b/drivers/phy/mediatek/phy-mtk-dp.c
[ ... ]
> @@ -101,6 +106,7 @@ enum mtk_dp_phya_ana_glb_regidx {
>  };
> =20
>  enum mtk_dp_phyd_dig_lane_regidx {
> +	DP_PHYD_LAN_DRIVING_FORCE,
>  	DP_PHYD_LAN_DRIVING_PARAM_0,
>  	DP_PHYD_LAN_MAX
>  };

[Severity: High]
Are the analog PHY driving parameters being written to the wrong register
offsets, misaligning the signal driving settings?

The base offset for initializing the analog PHY driving parameters appears =
to
have shifted from PARAM_3 (0x1138) to PARAM_0 (0x112c), but the
driving_params array still contains the 6 default values meant for PARAM_3
through PARAM_8:

drivers/phy/mediatek/phy-mtk-dp.c:mtk_dp_phy_init() {
    ...
	const u32 reg =3D pdata->regs_dig_lane[DP_PHYD_LAN_DRIVING_PARAM_0];
	static const u32 driving_params[] =3D {
		DRIVING_PARAM_3_DEFAULT,
		DRIVING_PARAM_4_DEFAULT,
		DRIVING_PARAM_5_DEFAULT,
		DRIVING_PARAM_6_DEFAULT,
		DRIVING_PARAM_7_DEFAULT,
		DRIVING_PARAM_8_DEFAULT
	};
    ...
	for (i =3D 0; i < MTK_DP_PHY_MAX_LANES; i++) {
		ret =3D regmap_bulk_write(dp_phy->regmap,
					pdata->off_dig_lane[i] + reg,
					driving_params,
					ARRAY_SIZE(driving_params));
    ...
}

Writing the defaults for params 3-8 into params 0-5 would leave params 6-8
uninitialized and corrupt the settings for params 0-5, which could lead to
incorrect link training.

[Severity: Low]
Is there a missing declaration for the variable ret in mtk_dp_phy_probe()?

drivers/phy/mediatek/phy-mtk-dp.c:mtk_dp_phy_probe() {
    ...
	provider =3D devm_of_phy_provider_register(dev, of_phy_simple_xlate);
	if (IS_ERR(provider))
		return PTR_ERR(provider);

	ret =3D devm_pm_runtime_enable(dev);
	if (ret)
		return ret;

	return 0;
}

This causes a compilation error because ret is used without being declared.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707141931.1911=
72-1-angelogioacchino.delregno@collabora.com?part=3D7

