Return-Path: <devicetree+bounces-311431-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WrG4E96QLmqqzgQAu9opvQ
	(envelope-from <devicetree+bounces-311431-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 13:30:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F37A680E98
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 13:30:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YeJTEqvI;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311431-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311431-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DD09E3002B2B
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 11:30:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E434539DBD0;
	Sun, 14 Jun 2026 11:30:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0C12D7DC6
	for <devicetree@vger.kernel.org>; Sun, 14 Jun 2026 11:30:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781436634; cv=none; b=d0uMXezKMGfoGkhWtsOqVSfgNI4IIdKHw1a2wxmTfbwNxY9mLkiZ438aYuhlH+9xrIlK2gs4HQIlzW5ttTDKRiMYLcm6fTbr4RiQo+luP5gYu1d2Ue9486Nms0w0aKfLn2iWbdWl6Ihnjfg+cl1jpQ2VlfvIACE3Iw3v178aw5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781436634; c=relaxed/simple;
	bh=57pBh363bE3D/p+6VtAcfb+x/dcyufvtrKjEubLayY4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=h+sjfQk/drcYo0V1ExkiULt/WeViUvyJPeKJi/FU4AUt/YZKvfqBEYykwxHCWD0dkVyBd8f0p+EZ2yh7ax9qt2VNXo9+wrZlC+PfBB4LVucPNldj4bZYoeBW6BnRztUye1lHGBHWWpHu8tRmVwP55JulAPxzpZk6Ey6hxztx4cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YeJTEqvI; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D9A61F000E9;
	Sun, 14 Jun 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781436633;
	bh=vP14ozLFm+3C87Js+0czwr16uFw61hw5tc82h+DhPMY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YeJTEqvIV/tNG8oIoRugA/dzjfOGeCtTIjXMI23+pvdk+9Bkemx737pqo3FfU1JT1
	 /kCjzD0/+zhpxDto8IzNzPhME93xWIly+vCtlO5Wgg094Z0pZATBMmHQxBHTOgF1+b
	 rg4INOOmrKzQ+j95jPStRS8/9dU5VrwaFkSJLrO/wzmsvL/R9pfAa34Z9Z36LT5dmT
	 F+hhfiBPNjsphSbSABkY6yK/eXPMe6plpvVOP8QnqcWwrpwzRAAPFP6PATieWMbbX9
	 xieHNU2Dhp/Pgh+89wLpZSPvKwtjN8/AMGgwfYt+IFV9GAbjQMSxdaCcF95yFG1pTK
	 5gkCWWYI0Z7Ng==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next 5/8] net: mdio: realtek-rtl9300: Add c45 over
 c22 mitigation
Reply-To: sashiko-reviews@lists.linux.dev
To: "Markus Stockhausen" <markus.stockhausen@gmx.de>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260613112946.1071411-6-markus.stockhausen@gmx.de>
References: <20260613112946.1071411-6-markus.stockhausen@gmx.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 14 Jun 2026 11:30:32 +0000
Message-Id: <20260614113033.2D9A61F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311431-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmx.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:markus.stockhausen@gmx.de,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,gmx.de:email,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9F37A680E98

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] State Machine Desynchronization and Hardware Polling Corruption on=
 MDIO Error
--

commit 6336036b9a3d5d0b25bcff57860a0355d0dabd49
Author: Markus Stockhausen <markus.stockhausen@gmx.de>

net: mdio: realtek-rtl9300: Add c45 over c22 mitigation
   =20
Enhances the RTL9300 MDIO driver to detect the 4-step c45-over-c22 MMD
sequence. Disables hardware polling during the sequence to prevent concurre=
nt
access from breaking the kernel's read/writes. Adds a state machine to track
sequence progress.

> diff --git a/drivers/net/mdio/mdio-realtek-rtl9300.c b/drivers/net/mdio/m=
dio-realtek-rtl9300.c
> index a7fd075947b67..e206ee3e2b1cc 100644
> --- a/drivers/net/mdio/mdio-realtek-rtl9300.c
> +++ b/drivers/net/mdio/mdio-realtek-rtl9300.c
[ ... ]
> @@ -254,6 +257,43 @@ static int otto_emdio_set_port_polling(struct otto_e=
mdio_priv *priv, int port, b
>  				  BIT(port % 32), active);
>  }
> =20
> +static int otto_emdio_mmd_prefix(struct otto_emdio_priv *priv, int port,=
 int regnum)
> +{
> +	u8 newstate, *state =3D &priv->mmd_state[port];
> +	int expected, ret =3D 0;
> +
[ ... ]
> +	expected =3D (*state & 1) ? MII_MMD_DATA : MII_MMD_CTRL;
> +	newstate =3D regnum =3D=3D expected ? *state + 1 : 0;
> +
> +	if (newstate =3D=3D 1 || newstate < *state)
> +		ret =3D otto_emdio_set_port_polling(priv, port, !newstate);
> +	*state =3D newstate;
> +
> +	return ret;
> +}
> +
> +static int otto_emdio_mmd_postfix(struct otto_emdio_priv *priv, int port=
, int regnum)
> +{
> +	if (priv->mmd_state[port] !=3D 4)
> +		return 0;
> +
> +	priv->mmd_state[port] =3D 0;
> +
> +	return otto_emdio_set_port_polling(priv, port, true);
> +}
> +
[ ... ]
> @@ -463,7 +503,15 @@ static int otto_emdio_read_c22(struct mii_bus *bus, =
int phy_id, int regnum)
>  		if (regnum =3D=3D 31)
>  			return priv->page[port];
> =20
> +		ret =3D otto_emdio_mmd_prefix(priv, port, regnum);
> +		if (ret)
> +			return ret;
> +
>  		ret =3D priv->info->read_c22(bus, port, regnum, &value);
> +		if (ret)
> +			return ret;

[Severity: High]
If priv->info->read_c22() returns an error, the function returns early and
skips otto_emdio_mmd_postfix(), leaving priv->mmd_state[port] in an
intermediate state.

If an error occurs on the final step, the state is left at 4. A new MMD
sequence starting with register 13 will match the expected register logic
in otto_emdio_mmd_prefix() and increment the state to 5, then 6, etc.

Since otto_emdio_mmd_postfix() only re-enables polling when the state is
exactly 4, will hardware polling remain permanently disabled for this port
if an error occurs mid-sequence?

> +
> +		ret =3D otto_emdio_mmd_postfix(priv, port, regnum);
>  	}
> =20
>  	return ret ? ret : value;
> @@ -472,7 +520,7 @@ static int otto_emdio_read_c22(struct mii_bus *bus, i=
nt phy_id, int regnum)
>  static int otto_emdio_write_c22(struct mii_bus *bus, int phy_id, int reg=
num, u16 value)
>  {
>  	struct otto_emdio_priv *priv =3D otto_emdio_bus_to_priv(bus);
> -	int port;
> +	int port, ret;
> =20
>  	port =3D otto_emdio_phy_to_port(bus, phy_id);
>  	if (port < 0)
> @@ -487,7 +535,15 @@ static int otto_emdio_write_c22(struct mii_bus *bus,=
 int phy_id, int regnum, u16
>  			return 0;
>  		}
> =20
> -		return priv->info->write_c22(bus, port, regnum, value);
> +		ret =3D otto_emdio_mmd_prefix(priv, port, regnum);
> +		if (ret)
> +			return ret;
> +
> +		ret =3D priv->info->write_c22(bus, port, regnum, value);
> +		if (ret)
> +			return ret;

[Severity: High]
Similarly, does returning early here on error skip otto_emdio_mmd_postfix()
and desynchronize the state machine?

> +
> +		return otto_emdio_mmd_postfix(priv, port, regnum);
>  	}
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260613112946.1071=
411-1-markus.stockhausen@gmx.de?part=3D5

