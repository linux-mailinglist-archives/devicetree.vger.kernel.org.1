Return-Path: <devicetree+bounces-323644-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ANHsBV2CT2qeiQIAu9opvQ
	(envelope-from <devicetree+bounces-323644-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:13:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 95457730177
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:13:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=gOaqk5SZ;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323644-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-323644-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C6F0F30193BF
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 11:13:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43B073FCB0A;
	Thu,  9 Jul 2026 11:13:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141ED21A95D
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 11:13:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783595605; cv=none; b=UDC3uM7jaQrgGiVJlHdDYtqgfOCOxVhylbeWncIJ7Omy2T03aDZHBq6nqgQ4XdVXQGiXIU5freiUIqcfWn4f24IL8+oZlknucMbez4lL7GyiP2XheitCDJ/n4zGgOvGm2hR0Isetj+9f/oiO7c29lAW4UDn3KALO1ItLXVMt8fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783595605; c=relaxed/simple;
	bh=86xzaO6sEO8/wVv7Cf2/dXTAysUleRJ4TN8sNIHe9kM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=EyJ5iA6CxU49jx9tsLwSl6EHex5+um+dWJZ1ntUn+ccDO8JMTpTz1btjYP4nR4h1kccWLy8rqOVkQJyRpaAekLnvZFoOEFnsUtIkZPSKiKGBpJr/frk2l/k57TMfnTLL8BCxcLJY565iTIp0thDUuSa8vEuHx+E3If798vjVS8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOaqk5SZ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F4201F000E9;
	Thu,  9 Jul 2026 11:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783595603;
	bh=GvxeaAuBQwBrlWJObFxLSKPsg0nbQA9KkijlBGLM4u8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gOaqk5SZ3Rl/01qCCOHzwzamp8YVYK4+lsb9VFtghcjvzx3kAGUdhGGGbrYAkNYrc
	 u+3TG/d7KMdpKC0sc3yH/RyFvt3uKt9ndmqf5BkdG2ajO+d+hG5359BqqNX6+N2hAd
	 eQlnSPSssGHqL5B2EVYqUuYYDe4TeSJ9V3DCV20z24PlHHQ5N9zhv6OtHyDZFrW61O
	 h6aDLlIp6/hskeDZXCrW2IqmPdtXFW4lWg3OBiFT2XrD/rJNo+DzA+3MCCNrM34KGT
	 pMQLN6VNuKy0jBUhBQT8AipNTrAT1+TBHQMkvSTORt1GR0ROAEP2I6sGnhY5FUlPH6
	 bt0lUEJZdvsvw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 07/11] drm/mediatek: mtk_dp: Add support for PHY from
 devicetree
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org
In-Reply-To: <20260709100617.42583-8-angelogioacchino.delregno@collabora.com>
References: <20260709100617.42583-1-angelogioacchino.delregno@collabora.com>
 <20260709100617.42583-8-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 11:13:22 +0000
Message-Id: <20260709111323.6F4201F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-323644-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,collabora.com:email,sashiko.dev:url,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 95457730177

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Double-unregister of the `mediatek-dp-phy` platform device on `dev=
m_phy_get` failure.
--

--- Patch [7]: [PATCH v2 07/11] drm/mediatek: mtk_dp: Add support for PHY f=
rom devicetree ---
commit 21392ccaeb903069c1e4a92500d58612e1669daf
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: drm/mediatek: mtk_dp: Add support for PHY from devicetree

This commit adds support for parsing the DisplayPort PHY from the devicetree
via the phys property. For older devicetrees, it falls back to a legacy
configuration by registering a mediatek-dp-phy platform device and reading
legacy PHY calibration data.

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
Does this code double-unregister the mediatek-dp-phy platform device?

Earlier in mtk_dp_register_phy(), mtk_dp->phy_dev is registered with devres:

	ret =3D devm_add_action_or_reset(dev, mtk_dp_unregister_pdevs,
				       mtk_dp->phy_dev);

If devm_phy_get() fails immediately after the lines modified above:

	mtk_dp->phy =3D devm_phy_get(&mtk_dp->phy_dev->dev, "dp");
	if (IS_ERR(mtk_dp->phy)) {
		platform_device_unregister(mtk_dp->phy_dev);
		return dev_err_probe(dev, PTR_ERR(mtk_dp->phy),
				     "Failed to get phy\n");
	}

It explicitly calls platform_device_unregister() on the failure path. Since
devres will also execute mtk_dp_unregister_pdevs() (which unregisters the
same device) when probe fails, can this lead to a double-free and list
corruption in the driver core?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709100617.4258=
3-1-angelogioacchino.delregno@collabora.com?part=3D7

