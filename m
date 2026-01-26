Return-Path: <devicetree+bounces-259492-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6J2FKwZod2nCfQEAu9opvQ
	(envelope-from <devicetree+bounces-259492-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:11:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 575B888A15
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:11:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6C0103004936
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 13:11:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AE413382D9;
	Mon, 26 Jan 2026 13:11:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7447832C93B
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 13:11:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769433092; cv=none; b=q5qR/4k9QkcQU71IgLAYwDb39a8uPowYDuRUsY7EJpwwlF3L+XFC4r4ggsdgVTN5yxyCCn/bhQQg9bSK3VIsFUo9KesW5kunNT++AIxXOohR/c5NpRUrVSpe32QF3Fc+biMkom2+tFuT6px92vxdvNHvsf3BHXpHzdluFseNaXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769433092; c=relaxed/simple;
	bh=wEBwofd7CenFPqiOuE08b6AudcffkxCplShblrIEfzg=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=UfzLhSabircXNMl6DH6G1eKxtAZ/u2jx/h0XY6VUJBOhS7btqqwuP+rkDHfT+wEjj9AbdceArdyWMkz37drfIfo9QJ4m4dITS9pzr2+fDUKBm+YP+IaR2M8q6vBf4nLm78UwDLEDBNhGYCVCkb9mY7nKjZSl/r6nXSr2ZMj1yxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vkMNA-0001ii-9C; Mon, 26 Jan 2026 14:11:16 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vkMNA-002aPy-1F;
	Mon, 26 Jan 2026 14:11:15 +0100
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vkMN9-000000009mq-2b88;
	Mon, 26 Jan 2026 14:11:15 +0100
Message-ID: <69592713b7bd419e23df458734ca78070a83e8ac.camel@pengutronix.de>
Subject: Re: [PATCH 2/4] phy: s32g: Add serdes subsystem phy
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Vincent Guittot <vincent.guittot@linaro.org>, vkoul@kernel.org, 
	neil.armstrong@linaro.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	ciprianmarian.costea@oss.nxp.com, s32@nxp.com, linux@armlinux.org.uk, 
	ghennadi.procopciuc@nxp.com, bogdan-gabriel.roman@nxp.com,
 Ionut.Vicovan@nxp.com, 	alexandru-catalin.ionita@nxp.com,
 linux-phy@lists.infradead.org, 	devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org
Cc: Frank.li@nxp.com
Date: Mon, 26 Jan 2026 14:11:15 +0100
In-Reply-To: <20260126092159.815968-3-vincent.guittot@linaro.org>
References: <20260126092159.815968-1-vincent.guittot@linaro.org>
	 <20260126092159.815968-3-vincent.guittot@linaro.org>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259492-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,linaro.org:email,pengutronix.de:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 575B888A15
X-Rspamd-Action: no action

On Mo, 2026-01-26 at 10:21 +0100, Vincent Guittot wrote:
> s32g SoC family includes 2 serdes subsystems which are made of one PCIe
> controller, 2 XPCS and one Phy. The Phy got 2 lanes that can be configure
> to output PCIe lanes and/or SGMII.
>=20
> Implement PCIe phy support
>=20
> Co-developed-by: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> Signed-off-by: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> Co-developed-by: Alexandru-Catalin Ionita <alexandru-catalin.ionita@nxp.c=
om>
> Signed-off-by: Alexandru-Catalin Ionita <alexandru-catalin.ionita@nxp.com=
>
> Co-developed-by: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
> Signed-off-by: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
> Co-developed-by: Ionut Vicovan <Ionut.Vicovan@nxp.com>
> Signed-off-by: Ionut Vicovan <Ionut.Vicovan@nxp.com>
> Co-developed-by: Bogdan Roman <bogdan-gabriel.roman@nxp.com>
> Signed-off-by: Bogdan Roman <bogdan-gabriel.roman@nxp.com>
> Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
> ---
>  drivers/phy/freescale/Kconfig               |   9 +
>  drivers/phy/freescale/Makefile              |   1 +
>  drivers/phy/freescale/phy-nxp-s32g-serdes.c | 569 ++++++++++++++++++++
>  3 files changed, 579 insertions(+)
>  create mode 100644 drivers/phy/freescale/phy-nxp-s32g-serdes.c
>=20
[...]
> diff --git a/drivers/phy/freescale/phy-nxp-s32g-serdes.c b/drivers/phy/fr=
eescale/phy-nxp-s32g-serdes.c
> new file mode 100644
> index 000000000000..8336c868c8dc
> --- /dev/null
> +++ b/drivers/phy/freescale/phy-nxp-s32g-serdes.c
> @@ -0,0 +1,569 @@
[...]
> +static int s32g_serdes_get_ctrl_resources(struct platform_device *pdev, =
struct s32g_serdes *serdes)
> +{
[...]
> +	ctrl->rst =3D devm_reset_control_get(dev, "serdes");

Please use devm_reset_control_get_exclusive() directly.

[...]
> +static int s32g_serdes_get_pcie_resources(struct platform_device *pdev, =
struct s32g_serdes *serdes)
> +{
[...]
> +	pcie->rst =3D devm_reset_control_get(dev, "pcie");

Same here.

regards
Philipp

