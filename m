Return-Path: <devicetree+bounces-294664-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qN+6HHw9/mlmoQAAu9opvQ
	(envelope-from <devicetree+bounces-294664-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 21:46:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C3AB04FB3C5
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 21:46:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 802D13009010
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 19:46:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAFD433343B;
	Fri,  8 May 2026 19:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8S0xYrH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7B8923E342
	for <devicetree@vger.kernel.org>; Fri,  8 May 2026 19:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778269560; cv=none; b=pxRT4RoAY6BK3tDbeDD+H3s57Xzo5gXUkgScr5eEpTE8R4BHDmHQ/kNssd8qXZhOjOFlktzidp9Uz6Q4nCUI5F9xYRMqh9ePa7xQp0LjQ7XFatnkpSLoAXTWBCb7Dt2+SwoUUrXQo900ZPbGSMIjf8zIag3LQAF9Si0O8nTav1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778269560; c=relaxed/simple;
	bh=QTzjAGLFuZppnsewwOA8geYDk1/5KP3mTZCAgVNOIys=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hs7nsSUQN0wCgOWWatH08qYKe62kHYtR0zUNrbmvYnDoevMOludGvvDSKqMh7bkWatpdH35O5bKUp2prKSr5tY2jEIYszYme0FM7hLqvDj28C8fOdB/dPs4pUGTkIbxykdXprTTag9OcCy21PgjR+YQDzaUnkUUx3lLU1TbBhUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8S0xYrH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD8D0C2BCB0;
	Fri,  8 May 2026 19:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778269560;
	bh=QTzjAGLFuZppnsewwOA8geYDk1/5KP3mTZCAgVNOIys=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=u8S0xYrHJldlpjBQMZxL6Uyx6pqob7rJ4EoHVuToOPxIn4alZml6XAY8jlsFyiUSk
	 1FU8Xwy9muBnmEZPp6yrgZnknCJrICKVuCbRgcqsE8ZjeGuFHiCQb4Y7wc6LG076D2
	 r0TtWgJ/dpaXdSZgJ9g0HJwAQX807PGaUVH6bJyvnUELZ7LviHv0Rv3uGhUy6/S9Qr
	 4YPOjSBl8ktjPNYLBeC3QySP7dR7tu+3m2mi+WOQIhKbaVyeJVSEcY7Xx99vj8EY1l
	 Kojx9c8rwsgved03egGSoCmYtxVUG0BzHV/ukA50zaJoqgkodbhQAitJHqyKKcLC17
	 56vQ+EXXulxCg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 07/15] can: grcan: add FD capability detection and
 nominal bit-timing
Reply-To: sashiko@lists.linux.dev
To: "Arun Muthusamy" <arun.muthusamy@gaisler.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260508070121.6918-8-arun.muthusamy@gaisler.com>
References: <20260508070121.6918-8-arun.muthusamy@gaisler.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 08 May 2026 19:45:59 +0000
Message-Id: <20260508194559.DD8D0C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: C3AB04FB3C5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-294664-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Missing assignment of `priv->can.do_set_bittiming` breaks hardware=
 bit-timing configuration.
- [Medium] Missing NULL check on `device_get_match_data()` leads to potenti=
al kernel panic.
--

commit 37c33b36466e8784c1911d95ae987b6dfff15154
Author: Arun Muthusamy <arun.muthusamy@gaisler.com>

can: grcan: add FD capability detection and nominal bit-timing

This commit adds CAN FD capability detection and structures for setting
nominal bit-timing for standard CAN FD. It also updates the device tree
match table and Kconfig for GRCANFD support.

> diff --git a/drivers/net/can/grcan.c b/drivers/net/can/grcan.c
> index 8ba21d94e87df..c9175a6a013fc 100644
> --- a/drivers/net/can/grcan.c
> +++ b/drivers/net/can/grcan.c

[ ... ]

> @@ -1567,14 +1646,14 @@ static int grcan_setup_netdev(struct platform_dev=
ice *ofdev,
>  	priv->dev =3D dev;
>  	priv->ofdev_dev =3D &ofdev->dev;
>  	priv->regs =3D base;
> -	priv->can.bittiming_const =3D &grcan_bittiming_const;
> -	priv->can.do_set_bittiming =3D grcan_set_bittiming;
> +	priv->can.bittiming_const =3D hwcap->bt_const;

Will the hardware bit-timing still be configured correctly without this
callback?

It appears the assignment to priv->can.do_set_bittiming was removed but not
replaced with hwcap->set_bittiming. If this is left as NULL, the CAN
framework will skip programming the hardware's bit-timing registers and
return 0. This could cause the hardware to attempt transmissions using
uninitialized registers, potentially leading to continuous error frames on
the bus.

[ ... ]

> @@ -1619,22 +1698,29 @@ static int grcan_probe(struct platform_device *of=
dev)
>  {
>  	struct device_node *np =3D ofdev->dev.of_node;
>  	struct device_node *sysid_parent;
> +	const struct grcan_hwcap *hwcap;
>  	struct clk *clk;
>  	u32 sysid, ambafreq;
>  	int irq, err;
>  	void __iomem *base;
>  	bool txbug =3D true;
> =20
> +	hwcap =3D device_get_match_data(&ofdev->dev);
> +
>  	/* Compare GRLIB version number with the first that does not
>  	 * have the tx bug (see start_xmit)
>  	 */
> -	sysid_parent =3D of_find_node_by_path("/ambapp0");
> -	if (sysid_parent) {
> -		err =3D of_property_read_u32(sysid_parent, "systemid", &sysid);
> -		if (!err && ((sysid & GRLIB_VERSION_MASK) >=3D
> -			     GRCAN_TXBUG_SAFE_GRLIB_VERSION))
> -			txbug =3D false;
> -		of_node_put(sysid_parent);
> +	if (!hwcap->txbug_possible) {

Could this cause a regression if device_get_match_data() returns NULL?

If the driver is instantiated via a platform device match (matching the
driver string) rather than through Open Firmware, device_get_match_data()
will return NULL. Dereferencing hwcap immediately could result in a NULL
pointer dereference. Is a fallback or check needed here before accessing
hwcap->txbug_possible?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260508070121.6918=
-1-arun.muthusamy@gaisler.com?part=3D7

