Return-Path: <devicetree+bounces-323635-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 32i9Lft+T2qoiAIAu9opvQ
	(envelope-from <devicetree+bounces-323635-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:59:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF1372FF8D
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:59:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="kmB/dkru";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323635-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-323635-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 28B35301DC48
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 10:57:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AC5B411675;
	Thu,  9 Jul 2026 10:56:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A915413255
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 10:55:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783594563; cv=none; b=ODxzlyH5/lmdWQlWZU3KYP2d+ciglGKyiuWLRwsf1RN/M+Mt/OGSKAhZl8vZFwg9d/B7AUYnOhpFdH1QxCfj1e10t/xgLk8xDKfrL1iXb8a547pjG5CymJI3lnuoBGzx9MTIgh3VmaQgSOxgwWlmT0GnmU72k8yeH3fg1i5lZmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783594563; c=relaxed/simple;
	bh=JMUc2CtYa5YEzii3lDmvUINsJVeP5vAeEXITMEO1KAk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=U/3yBaFr4RHPsQ7jtXr4EHYixlcnAqD2QA2liG/tEePAaCZWF7mQNG2d5VoqIPKAYINvxQMi2jPdRZhlY+Ac3olf8a4s6hPIRt3F4GayjE9nAI7fhF9MbinuX98uX6fR7lLM++F7rv6/DuXzfzlGAqLPFMoa2uNLd1YDOqm5RsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmB/dkru; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9096C1F000E9;
	Thu,  9 Jul 2026 10:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783594558;
	bh=2X1PitPO16swJpGXR4Ylf1gJYaJBEkZV8itpiOkhNzo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kmB/dkruhVSAUuWPuT4Hniwf/0abzRlbQcvrB2+eOVOyKOBCs0VVOFoWhdNA6TjRs
	 BpWZpfnuGnFiJfRkCU3uqNwZs4+zRj9UH4nh64mWxkm8zrQOPO+L/wfRMxOWkg6EHa
	 hYp+vVjbix2596fhNAZo2SABfZZiOWHmMnOD4ps1FQ9Yqfs+nxkVsMzURIwkGVwgyt
	 wzZ5WwMFtjrtsD+JmA1xWKphevZ0IY1bGoJ5AU/7WjN64NXOfxtXTz4GcQmd3DHhht
	 JvZA7MXhtsPLF8KPPgq2j5GRUg4lvodDNubaD5tPek64NIZV4nbwjQ1lcjsXjSTVKG
	 sTsmFYgAWS/PA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 07/11] drm/mediatek: mtk_dp: Add support for PHY from
 devicetree
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260709103431.46616-8-angelogioacchino.delregno@collabora.com>
References: <20260709103431.46616-1-angelogioacchino.delregno@collabora.com>
 <20260709103431.46616-8-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 10:55:57 +0000
Message-Id: <20260709105558.9096C1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-323635-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,collabora.com:email,smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4CF1372FF8D

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Double unregister of the PHY platform device in the error path of =
`mtk_dp_register_phy()`.
- [High] `phy_power_on()` is called before `phy_init()` during eDP probe on=
 new devicetrees.
--

--- Patch [7]: [PATCH v3 07/11] drm/mediatek: mtk_dp: Add support for PHY f=
rom devicetree ---
commit 325a8fa9ebb5392753c0df0c9aa94be702f67e6e
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

drm/mediatek: mtk_dp: Add support for PHY from devicetree

This commit adds support for passing a displayport PHY handle from the
devicetree. It introduces a check for the phys property to support newer
configurations while maintaining legacy fallback behavior.

> diff --git a/drivers/gpu/drm/mediatek/mtk_dp.c b/drivers/gpu/drm/mediatek=
/mtk_dp.c
> index b4cb1996a3314..cabfc833c0a80 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dp.c

[ ... ]

> @@ -2754,6 +2775,7 @@ static int mtk_dp_register_phy(struct mtk_dp *mtk_d=
p)
>  		return dev_err_probe(dev, ret,
>  				     "Failed to add phy unregister devm action");
> =20
> +	/* PHY calibration data is in mtk_dp only for legacy devicetree */
>  	mtk_dp_get_calibration_data(mtk_dp);
> =20
>  	mtk_dp->phy =3D devm_phy_get(&mtk_dp->phy_dev->dev, "dp");

[Severity: High]
Could this error path trigger a double-free of the PHY platform device?

In mtk_dp_register_phy(), we register a devres action to unregister the
platform device via mtk_dp_unregister_pdevs(). If devm_phy_get() fails
and we return an error (like -EPROBE_DEFER), the explicit call to
platform_device_unregister() in the error path will free the device. When
the devres cleanup runs later, it will execute mtk_dp_unregister_pdevs()
and call platform_device_unregister() a second time on the same pointer.

[ ... ]

> @@ -2857,9 +2884,18 @@ static int mtk_dp_probe(struct platform_device *pd=
ev)
>  					     "Failed to register audio driver\n");
>  	}
> =20
> -	ret =3D mtk_dp_register_phy(mtk_dp);
> -	if (ret)
> -		return ret;
> +	if (!mtk_dp->legacy_regoff) {
> +		mtk_dp->phy =3D devm_phy_get(dev, NULL);
> +		if (IS_ERR(mtk_dp->phy))
> +			return dev_err_probe(dev, PTR_ERR(mtk_dp->phy),
> +					     "Failed to get phy\n");
> +
> +		mtk_dp->phy_dev =3D NULL;

[Severity: High]
Are we calling phy_power_on() before phy_init() for eDP displays on new
devicetrees?

During mtk_dp_probe() for eDP connectors, the driver calls
mtk_dp_power_enable() to read the EDID before the bridge is attached.
With the new PHY model, this executes phy_power_on(mtk_dp->phy):

mtk_dp_probe()
  mtk_dp_power_enable()
    phy_power_on(mtk_dp->phy);

However, phy_init() is not called until mtk_dp_bridge_attach() via
mtk_dp_poweron(). Violating the PHY API contract by powering on before
initialization can cause hardware initialization failures, as clocks
or regulators managed by phy_init() are not yet enabled.

> +	} else {
> +		ret =3D mtk_dp_register_phy(mtk_dp);
> +		if (ret)
> +			return ret;
> +	}
> =20
>  	mtk_dp->bridge.of_node =3D dev->of_node;
>  	mtk_dp->bridge.type =3D mtk_dp->data->bridge_type;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709103431.4661=
6-1-angelogioacchino.delregno@collabora.com?part=3D7

