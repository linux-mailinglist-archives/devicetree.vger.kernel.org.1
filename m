Return-Path: <devicetree+bounces-317908-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dFNjMQngQ2p9kwoAu9opvQ
	(envelope-from <devicetree+bounces-317908-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 17:26:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8466E5EA9
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 17:26:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=j10Hiek9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317908-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317908-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A11B4309833F
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:24:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36047372ED5;
	Tue, 30 Jun 2026 15:24:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F35AD370AE9
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 15:24:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782833071; cv=none; b=K0If/AMXDP86Q1KWMZ9WPo0NRHARRTFhaQEAaENapw/bA9LCSoR8KAHzsap6p1Gg6oH49rDtTfWWiBeCMFW5H5l7D4I07k774T7mJOdD1gOC2+SDU6lOlMyfV7fB3KBaKhL+Mh9FuKesI7zW4Rb06+CEortKqbI2noM3sZkFT9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782833071; c=relaxed/simple;
	bh=lZ9E/FQUkhpeJzcTLKdE5j4DFyD3FWlxY2VgpxoxL8Q=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=na5W8awZyR/HzL3k2KiV5IsE6QJQ5hmP/+x9NePUHnAAHe/zKuDIKyKZljrNRZR1P0y6OOQfVBWWiMfT2dGLJumKGIeZmfsiqm+wQNYyqA9NtSFEAEweiOTKZqh0v/a62DC2/6Q9bhYeyn1V9a6b9n70qaaCxjkizDawHyYEhDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j10Hiek9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85D651F00A3D;
	Tue, 30 Jun 2026 15:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782833069;
	bh=FsZ2el5JFJ5nghC9BGQcu7g5xf2oQcqmu1i/3cPwLOU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=j10Hiek9ev6RpUi5F8k8Due1V7rdK1xJBKvL5AfJY4PxfuRTQBssYPWEQBpjk3TGm
	 ucFHFyaa+8M9QZCOaveL6xS7n8laugxEh5gMtAJxBDdD0nAvN1tBeQjxmobIkT4dsq
	 2nu20ObQMetGQpzlCQP872tHBW34Sbgwusxfk3LzbXCLu+hQOUtR///5xDGCqTsMAh
	 hJaW60mS2zwcWn2LZxMC0Tt5nFpBOXiq7XA97jfw/EvZxlf6HpkpiyjyMywsFbsiHg
	 PobuVsYvSFmNQ943MxU80aMKJzWxWVgjLNPUy2ccMtWIZyFScgRt6AXifbtWeUo/WJ
	 /q7XKgbdTQ9/Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v2 4/8] net: mdio: realtek-rtl9300: Configure
 hardware polling during probing
Reply-To: sashiko-reviews@lists.linux.dev
To: "Markus Stockhausen" <markus.stockhausen@gmx.de>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260629152336.2239826-5-markus.stockhausen@gmx.de>
References: <20260629152336.2239826-1-markus.stockhausen@gmx.de>
 <20260629152336.2239826-5-markus.stockhausen@gmx.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 15:24:29 +0000
Message-Id: <20260630152429.85D651F00A3D@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317908-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmx.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:markus.stockhausen@gmx.de,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,gmx.de:email,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5A8466E5EA9

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The `init_polling` callback signature is missing a context point=
er, preventing it from accessing hardware registers.
- [Medium] Calling `tune_polling` and `init_polling` while holding `priv->l=
ock` risks a recursive mutex deadlock.
--

commit 164e86ce081c60921e2d359e6eef598a0a2bea6e
Author: Markus Stockhausen <markus.stockhausen@gmx.de>

net: mdio: realtek-rtl9300: Configure hardware polling during probing

During PHY probing and configuration complex configuration sequences
might be issued and firmware might be loaded. Hardware polling can
interfere badly with that. E.g. a hardware polling MMD c45 over c22
request might break an ongoing firmware loading sequence.

[1] https://github.com/openwrt/openwrt/blob/main/target/linux/realtek/files=
-6.18/drivers/net/mdio/mdio-realtek-otto.c#L818
[2] https://lore.kernel.org/netdev/680696024a8648535ce6dee771fe4de67802e0e8=
.1769053496.git.daniel@makrotopia.org/

> diff --git a/drivers/net/mdio/mdio-realtek-rtl9300.c b/drivers/net/mdio/m=
dio-realtek-rtl9300.c
> index 616edcde15d95..a8e9a497a0dc5 100644
> --- a/drivers/net/mdio/mdio-realtek-rtl9300.c
> +++ b/drivers/net/mdio/mdio-realtek-rtl9300.c

[ ... ]

> @@ -210,6 +213,9 @@ struct otto_emdio_info {
>  	u8 num_buses;
>  	u8 num_ports;
>  	u16 num_pages;
> +	u32 poll_ctrl;
> +	int (*init_polling)(int port);

[Severity: Medium]
Will future implementations of this callback need access to the driver's
private data?

The init_polling() callback only takes an integer port parameter, meaning a=
ny
implementation won't have access to the driver's private data context (priv)
or regmap. Will this prevent it from actually interacting with the hardware
registers?

> +	int (*tune_polling)(struct phy_device *phydev);
>  	int (*setup_controller)(struct otto_emdio_priv *priv);
>  	int (*read_c22)(struct mii_bus *bus, int port, int regnum, u32 *value);
>  	int (*read_c45)(struct mii_bus *bus, int port, int dev_addr, int regnum=
, u32 *value);

[ ... ]

> @@ -588,6 +602,49 @@ static int otto_emdio_9310_setup_controller(struct o=
tto_emdio_priv *priv)
>  	return 0;
>  }
> =20
> +static int otto_emdio_notify_phy_attach(struct phy_device *phydev)
> +{
> +	struct otto_emdio_priv *priv =3D otto_emdio_bus_to_priv(phydev->mdio.bu=
s);
> +	int port =3D otto_emdio_phy_to_port(phydev->mdio.bus, phydev->mdio.addr=
);
> +	int ret;
> +
> +	if (port < 0)
> +		return port;
> +
> +	if (test_bit(port, priv->phy_poll))
> +		return 0;
> +
> +	scoped_guard(mutex, &priv->lock) {
> +		if (priv->info->tune_polling) {
> +			ret =3D priv->info->tune_polling(phydev);

[Severity: Medium]
Does invoking tune_polling() while holding priv->lock risk a recursive mutex
deadlock?

In otto_emdio_notify_phy_attach(), priv->lock is acquired via scoped_guard.
If a future implementation of tune_polling() calls standard PHY APIs like
phy_read(), the call would eventually route down to otto_emdio_read_c22(),
which attempts to blindly acquire priv->lock again, potentially deadlocking
the thread.

> +			if (ret)
> +				return ret;
> +		}
> +
> +		ret =3D otto_emdio_set_port_polling(priv, port, true);
> +		if (!ret)
> +			__set_bit(port, priv->phy_poll);
> +	}
> +
> +	return ret;
> +}

[ ... ]

> @@ -733,6 +793,27 @@ static int otto_emdio_map_ports(struct device *dev)
>  	return err;
>  }
> =20
> +static int otto_emdio_init_polling(struct otto_emdio_priv *priv)
> +{
> +	int err;
> +
> +	scoped_guard(mutex, &priv->lock) {
> +		for (int port =3D 0; port < priv->info->num_ports; port++) {
> +			err =3D otto_emdio_set_port_polling(priv, port, false);
> +			if (err)
> +				return err;
> +
> +			if (priv->info->init_polling) {
> +				err =3D priv->info->init_polling(port);

[Severity: Medium]
Does invoking init_polling() while holding priv->lock also risk a recursive
mutex deadlock, similar to tune_polling() above?

> +				if (err)
> +					return err;
> +			}
> +		}
> +	}
> +
> +	return 0;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629152336.2239=
826-1-markus.stockhausen@gmx.de?part=3D4

