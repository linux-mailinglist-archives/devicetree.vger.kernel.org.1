Return-Path: <devicetree+bounces-290444-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8LsdIg8q72n98gAAu9opvQ
	(envelope-from <devicetree+bounces-290444-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 11:19:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 349D846FC1A
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 11:19:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 00773302C904
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 09:14:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D107937C936;
	Mon, 27 Apr 2026 09:14:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 944CF3542F8
	for <devicetree@vger.kernel.org>; Mon, 27 Apr 2026 09:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777281298; cv=none; b=Dr5F95DRYbwQz4wVzPqn63vO2we+UbvkGWEGX4qmFKvhBkel9EIVENxkLOpxqTkOBbi4k1yS3zyytkpbPoX5RCBl3VyiIYpqFsWCCwLcU7Rpd0k4rOGBC6EPT2lykjtlkuysFidEV//vCqMAmUjV8Ju2lPKEuu3TKWhN1EVPBoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777281298; c=relaxed/simple;
	bh=EzPC7nqk9AgFER6/WVv2twNqV5B+PmIayWg4UAsoMyk=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=DcUDsHQk4ZayG+VoNJDfPvt48dTVBTObo+rdAibJ19iejAbwKRr3/XiMiQ60MX5TV0cG2qcJ33XWR2KB4z/6ny0B43i204FSS4zko2jNzZwYjdbnV38pgwl1QWEcB1iaU84u1/Bgeo19c2oKyggpVbGFtvlKAYZk4RKFfH75fKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wHI31-000151-3b; Mon, 27 Apr 2026 11:14:35 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wHI2y-007Sug-0S;
	Mon, 27 Apr 2026 11:14:32 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wHI2y-000000004DH-0Dxa;
	Mon, 27 Apr 2026 11:14:32 +0200
Message-ID: <871996c5a57223294c584c0ff344efd30b3b982b.camel@pengutronix.de>
Subject: Re: [PATCH 2/2] thermal: mediatek: lvts: Add MT8189 support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: mtk36707 <kuanfu.lu@mediatek.com>, "Rafael J . Wysocki"
 <rafael@kernel.org>,  Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui
 <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,  Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,  Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Balsam CHIHI <bchihi@baylibre.com>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, jarried.lin@mediatek.com, 
	vince-wl.liu@mediatek.com, justin.yeh@mediatek.com
Date: Mon, 27 Apr 2026 11:14:31 +0200
In-Reply-To: <20260427065236.1685057-2-kuanfu.lu@mediatek.com>
References: <20260427065236.1685057-1-kuanfu.lu@mediatek.com>
	 <20260427065236.1685057-2-kuanfu.lu@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Queue-Id: 349D846FC1A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-290444-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FREEMAIL_TO(0.00)[mediatek.com,kernel.org,intel.com,arm.com,gmail.com,collabora.com,baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,pengutronix.de:mid]

On Mo, 2026-04-27 at 14:48 +0800, mtk36707 wrote:
> From: Kuanfu Lu <kuanfu.lu@mediatek.com>
>=20
> Add LVTS thermal support for MediaTek MT8189 by adding MT8189-specific
> controller/sensor topology and platform data for the MCU and AP domains.
>=20
> MT8189 differs from previous SoCs in a few aspects, so extend the driver
> to handle these variations:
> - Program the hardware thermal shutdown threshold (tshut) using raw units=
.
> - Add per-SoC feature flags to skip clock gating and reset control when
>   they are not required, and to enable Stage-3 monitor interrupt setup.
> - Pass SoC data into lvts_irq_init() and lvts_ctrl_configure() so the
>   initialization can be configured per platform.
>=20
> This enables monitoring of MT8189 CPU clusters and AP domain sensors
> (SOC/APU/GPU) with the existing LVTS driver.
>=20
> Signed-off-by: Kuanfu Lu <kuanfu.lu@mediatek.com>
> ---
>  drivers/thermal/mediatek/lvts_thermal.c | 142 +++++++++++++++++++++---
>  1 file changed, 129 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/thermal/mediatek/lvts_thermal.c b/drivers/thermal/me=
diatek/lvts_thermal.c
> index a9617d5e0077..9dbd9191e3ba 100644
> --- a/drivers/thermal/mediatek/lvts_thermal.c
> +++ b/drivers/thermal/mediatek/lvts_thermal.c
[...]
> @@ -1470,10 +1482,12 @@ static int lvts_probe(struct platform_device *pde=
v)
>  	if (IS_ERR(lvts_td->base))
>  		return dev_err_probe(dev, PTR_ERR(lvts_td->base), "Failed to map io re=
source\n");
> =20
> -	lvts_td->reset =3D devm_reset_control_get_by_index(dev, 0);

First of all, this should have been:

	lvts_td->reset =3D devm_reset_control_get_exclusive(dev, NULL);

since there is only a single reset control defined in the binding.

> -	if (IS_ERR(lvts_td->reset))
> -		return dev_err_probe(dev, PTR_ERR(lvts_td->reset), "Failed to get rese=
t control\n");
> -
> +	if (!lvts_data->reset_no_need) {
> +		lvts_td->reset =3D devm_reset_control_get_by_index(dev, 0);

So this can be changed to

	lvts_td->reset =3D devm_reset_control_get_optional_exclusive(dev, NULL);

instead. There is no need for the reset_no_need parameter at all.
Whether the reset control is required or not is already specified in
the device tree bindings.

> +		if (IS_ERR(lvts_td->reset))
> +			return dev_err_probe(dev, PTR_ERR(lvts_td->reset),
> +					     "Failed to get reset control\n");
> +	}
>  	irq =3D platform_get_irq(pdev, 0);
>  	if (irq < 0)
>  		return irq;

regards
Philipp

