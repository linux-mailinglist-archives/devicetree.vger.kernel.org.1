Return-Path: <devicetree+bounces-311492-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id C6iHOgXxLmpO6QQAu9opvQ
	(envelope-from <devicetree+bounces-311492-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 20:20:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B34681DD7
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 20:20:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=XvpfgFkT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311492-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311492-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0BF593007AC4
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 18:20:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93F0F235C01;
	Sun, 14 Jun 2026 18:20:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D017739DBF2
	for <devicetree@vger.kernel.org>; Sun, 14 Jun 2026 18:20:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781461251; cv=none; b=DG9QpypciGyLcPx+TGNLpBrumY/fW1UNQS9ndNF7uHpKbayiVc66BuYhscdZ8qr/cj0OnYH1RLa4urbP2QkO2Ck2slI99mZn/rSd/U3cMcdirNZJ0BX/r4eW9yxpJ4JdXNn6Lmc3VxnMiIyo3usDT1rKCl4L+Vz2M0TiyL75d3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781461251; c=relaxed/simple;
	bh=AIsLjdCsM2GoiXHc+rekibdAjQkBdwv7JuRFsYzyLUQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=cbDq0udCjAzlHyjA0anbN66pX+PHWpFO1G/6mLgETrGHSna0qxTPiX/SbjmYzvsA02c6hkvLrFudYNrEKYpeOdDjjrXOwqkIKchpMmNa3lLj5uU8453k1a9K5df1m6pTa4beHBtkhuwD1U2+C/3fE2IBDRUoD5NXMsaY0ecVxkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvpfgFkT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2788F1F00A3A;
	Sun, 14 Jun 2026 18:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781461249;
	bh=BJNM7oEOww6vyIMPSDYROGmHsvSjTaIqzhcGJzq7P4o=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XvpfgFkTz5MMKrmkTwQohdVodGcRtz2dZnDuV+c04xb/nUPjKTrf/cI+p1dqAEAwm
	 zrlcU/cxVLyrRwyX1qkfjoy+7qgQR3AS3rQn20xaJN/HsFsI9yepB8N7e66Ka+oW5f
	 DWs1wlXasERbEP7CN7B1hmVZnleQoSlxnJfLnxoQwYPDOwhUGpwPIy5cfni4FEvj/c
	 P5ilapmmJlTulrvC69IWHOKGsOvzNTUfoJgtyRE/yVbXz8bHPjk9XHYtgEhUdwoAxp
	 Jx+amsud6E8+KaVNSNjScy+6ZE4IWZI7Tn6qwGZkKXD8L8DDFzA9+4X960a4IcX8f6
	 eZoMjBT2RcHqw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v5 4/4] net: dsa: initial support for MT7628
 embedded switch
Reply-To: sashiko-reviews@lists.linux.dev
To: "Joris Vaisvila" <joey@tinyisr.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260613181845.111877-5-joey@tinyisr.com>
References: <20260613181845.111877-5-joey@tinyisr.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 14 Jun 2026 18:20:48 +0000
Message-Id: <20260614182049.2788F1F00A3A@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311492-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:joey@tinyisr.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,vger.kernel.org:from_smtp,tinyisr.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 39B34681DD7

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Using devres (devm_) memory allocation and registration inside the=
 DSA .setup callback causes a memory leak and duplicate sysfs name failure =
upon dynamic DSA tree teardown and setup.
- [Medium] The Kconfig entry fails to select REGMAP_MMIO and depends on HAS=
_IOMEM, leading to runtime failures.
--

commit 43985d7959e86c4777c7631d696ad0d94372a424
Author: Joris Vaisvila <joey@tinyisr.com>

net: dsa: initial support for MT7628 embedded switch

Add support for the MT7628 embedded switch. The switch has 5 built-in 100Mb=
ps
user ports and one 1Gbps CPU port. It uses a 16 entry VLAN table for
forwarding.

> diff --git a/drivers/net/dsa/Kconfig b/drivers/net/dsa/Kconfig
> index 4ab567c5bbafc..daa1d3d4ba609 100644
> --- a/drivers/net/dsa/Kconfig
> +++ b/drivers/net/dsa/Kconfig
> @@ -63,6 +63,14 @@ config NET_DSA_MT7530_MMIO
>  	  are directly mapped into the SoCs register space rather than being
>  	  accessible via MDIO.
> =20
> +config NET_DSA_MT7628
> +	tristate "MediaTek MT7628 Embedded Ethernet switch support"
> +	select NET_DSA_TAG_MT7628
> +	select MEDIATEK_FE_SOC_PHY

[Severity: Medium]
Does this Kconfig entry need to select REGMAP_MMIO and depend on HAS_IOMEM?

The driver uses devm_regmap_init_mmio(), which requires CONFIG_REGMAP_MMIO
to be enabled. If it is disabled, the stub function will return -EINVAL and
cause the driver probe to fail unconditionally.

> +	help
> +	  This enables support for the built-in Ethernet switch found
> +	  in the MT7628 SoC.
> +

[ ... ]

> diff --git a/drivers/net/dsa/mt7628.c b/drivers/net/dsa/mt7628.c
> new file mode 100644
> index 0000000000000..cedf063ad749c
> --- /dev/null
> +++ b/drivers/net/dsa/mt7628.c

[ ... ]

> +static int mt7628_setup_internal_mdio(struct dsa_switch *ds)
> +{
> +	struct mt7628_esw *esw =3D ds->priv;
> +	struct device *dev =3D ds->dev;
> +	struct mii_bus *bus;
> +
> +	bus =3D devm_mdiobus_alloc(dev);
> +	if (!bus)
> +		return -ENOMEM;
> +
> +	bus->name =3D "MT7628 internal MDIO bus";
> +	snprintf(bus->id, MII_BUS_ID_SIZE, "%s-mii", dev_name(dev));
> +	bus->priv =3D esw;
> +	bus->read =3D mt7628_mii_read;
> +	bus->write =3D mt7628_mii_write;
> +	bus->parent =3D dev;
> +
> +	ds->user_mii_bus =3D bus;
> +	bus->phy_mask =3D ~ds->phys_mii_mask;
> +
> +	return devm_mdiobus_register(dev, bus);
> +}

[Severity: High]
Can this memory leak and fail on dynamic DSA tree setups?

Since mt7628_setup_internal_mdio() is called from the DSA .setup callback
via mt7628_setup(), it can be invoked multiple times during the device's
lifetime (for example, if the conduit or master network device is unbound
and later rebound).

Because the MDIO bus is allocated and registered using the devm_ variants
tied to the physical device, won't the bus remain allocated after .teardown=
()
runs? If .setup() is called again, this would leak the previous allocation
and cause devm_mdiobus_register() to fail with a sysfs name conflict.

Should the MDIO bus be allocated in the probe function instead, or use the
non-devm variants here with explicit cleanup in .teardown()?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260613181845.1118=
77-1-joey@tinyisr.com?part=3D4

