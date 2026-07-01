Return-Path: <devicetree+bounces-318606-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id o671Hr4SRWrz6QoAu9opvQ
	(envelope-from <devicetree+bounces-318606-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:14:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2936EDED0
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:14:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Lz1gDrWu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318606-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-318606-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C76CF30F6489
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 13:04:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F2CA48167D;
	Wed,  1 Jul 2026 13:02:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED09F423170
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 13:02:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782910946; cv=none; b=sbrl+9qw8ThVZhKr/TxaqTg1vfl32V8pojEQq78bs8JI3YvRL3TR4hCIURwljcMrbJ2VxPXQkvtx1o5qVS45DK1ZktsfSVHEgyvmqHCFNcYqQj95/9w6ZK00oJESMsfL2oT2/An/b4iDFgrclLXdDGJP0a/8ybIOGU/0WXxX6e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782910946; c=relaxed/simple;
	bh=uUC1WmkP4cTdvVBfKE7KC4sXb5c+EGptrAWVF8sclKk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=c2Cjk1RLiS45vey0QPNfgYUIJ6RuGing83ikwvdd/J//O7PllcJTovDYLWHw47WtNuEuBLpyBdq4MyifxAYekxVd1a92KRkn/DMyal4cdWGY6cPiZWU8roS/OXT5h63fJ1iWZ11jlZT063YOMmiuin4ZKfRhFeLDMHZlPeAgoDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lz1gDrWu; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF9691F000E9;
	Wed,  1 Jul 2026 13:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782910944;
	bh=MwYg1YAoI39wRvoAcBgzLbmYQlvcrl66/3NbKVGwuEs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Lz1gDrWuY7UOVKIkxILFqALu51y6JTcV/9buRhmroPW4pGCAPcUE+f9aYm+YPm92q
	 1GKDQQEG7H+O8j43TGoh9XBtaEawZII+CCPYw1gWCCpMALUfyCgObNrPmpxcQg2xpB
	 YKPhQIbnByUWEmtlHLU3w8zkc1jSC5/JEh/WSXC3Kzsj6uDsjGPmC4/iKGv1E1j/yb
	 YDx+P2Mbz2HuOQQHv1zgeeUqdtfMtHUCo7VaWDhkvwPzTB9SMtfIze9d8f9aATEq6P
	 4ITVzYEud6ZUwVppjR15Ed0WMkGZLI613ljY8AYG78XUi9vCJXm2Wbh3HhkHOn7jZ9
	 DhxWy/FXAOjNQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 10/12] phy: phy-mtk-dp: Add bitrate register val
 definitions to SoC data
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, vkoul@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, neil.armstrong@linaro.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260701122008.19509-11-angelogioacchino.delregno@collabora.com>
References: <20260701122008.19509-1-angelogioacchino.delregno@collabora.com>
 <20260701122008.19509-11-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 13:02:23 +0000
Message-Id: <20260701130223.CF9691F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318606-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:vkoul@kernel.org,m:conor+dt@kernel.org,m:linux-phy@lists.infradead.org,m:olteanv@gmail.com,m:neil.armstrong@linaro.org,m:dri-devel@lists.freedesktop.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,lists.infradead.org,gmail.com,linaro.org,lists.freedesktop.org];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp,collabora.com:email,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2F2936EDED0

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] mtk_dp_phy_disable_all_lanes loop executes undefined behavior when=
 val is 0, and incorrectly clears lane bits using the lane index instead of=
 a bitmask.
--

commit 25cdd51bd1ac4d69a49e77d93a6b1374ba46dd3c
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

phy: phy-mtk-dp: Support set_lanes in configure and properly cleanup

Add support for enabling a specifically requested number of lanes in the
configure callback, and disable all lanes in power off and reset
callbacks for proper hardware cleanup.

> diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy=
-mtk-dp.c
> index 586e727956332..a2cd22b9da066 100644
> --- a/drivers/phy/mediatek/phy-mtk-dp.c
> +++ b/drivers/phy/mediatek/phy-mtk-dp.c
[ ... ]
> @@ -261,6 +267,35 @@ static int mtk_dp_phy_power_on(struct phy *phy)
>  	return 0;
>  }
> =20
> +static int mtk_dp_phy_disable_all_lanes(struct mtk_dp_phy *dp_phy)
> +{
> +	const struct mtk_dp_phy_pdata *pdata =3D dp_phy->pdata;
> +	const u8 *regs =3D pdata->regs_dig_glb;
> +	int ret;
> +	u32 val;
> +
> +	ret =3D regmap_read(dp_phy->regmap, pdata->off_dig_glb + regs[DP_PHYD_T=
X_CTL_0], &val);
> +	if (ret)
> +		return ret;
> +
> +	/* Get mask of currently enabled lane */
> +	val =3D FIELD_GET(PHYD_TX_LN_EN, val);
> +
> +	/* Disable all lanes (needs to be done one by one, from last to first) =
*/
> +	do {
> +		u32 lane_num =3D fls(val) - 1;

[Severity: High]
If no lanes are currently enabled, val will be 0. Does this cause fls(0) - 1
to underflow, leading to undefined behavior when computing BIT(lane_num)?

> +		val &=3D ~BIT(lane_num);
> +
> +		ret =3D regmap_clear_bits(dp_phy->regmap,
> +					pdata->off_dig_glb + regs[DP_PHYD_TX_CTL_0],
> +					FIELD_PREP(PHYD_TX_LN_EN, lane_num));

[Severity: High]
Does this incorrectly clear bits using the lane index instead of a bitmask?

For example, if lane 3 is being disabled (lane_num =3D=3D 3), this passes 3=
 to
FIELD_PREP instead of BIT(3). This would clear lanes 0 and 1 (3 << 4) while
leaving lane 3 enabled. Should this use BIT(lane_num) instead?

> +		if (ret)
> +			return ret;
> +	} while (val);
> +
> +	return 0;
> +}
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701122008.1950=
9-1-angelogioacchino.delregno@collabora.com?part=3D10

