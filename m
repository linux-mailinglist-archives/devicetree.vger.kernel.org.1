Return-Path: <devicetree+bounces-305663-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hu3oCcPZHmq2WAAAu9opvQ
	(envelope-from <devicetree+bounces-305663-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 15:25:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF7D62E74F
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 15:25:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=aW5xJGjv;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305663-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-305663-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 20C9A303075E
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 13:19:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2EED3264DA;
	Tue,  2 Jun 2026 13:19:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 767C41DF73C
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 13:19:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780406364; cv=none; b=tgxHo9pYBnGNJ2W7mNEscBc5+xZ9FuV0LElL4RdPapH1PeqvfFANrD+uPDdjDioGdgy3E68JEbF65R/sAMORv6Z/d0WByqzLn4nwT/5AtH3sIHVXrad1uKPA268+ba+nnP7hbbkIT7rVQ3DBh48m4EwJqtdrRREj7kC7+GOXI3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780406364; c=relaxed/simple;
	bh=o3d1bHFw56gmF0ju75wNfx8s6SgffzgLZu0PLHaqi5A=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=EP5p2yNqG8dHrTi5C6wXWt9bVxmWf17xPxL1MTQWtPYVBPtl1auOCjTPaSx9qy0W5juu5E+OkgQUflcifs8w1vpGd8wm8YMPrDKpE2njtn5V4T7AnmwP8UIGIMvf2iRST4DzPsCUItuIsgJ5d7e8jYidaSJBRMOJFJy4MiI4V5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aW5xJGjv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBF3C1F0089A;
	Tue,  2 Jun 2026 13:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780406363;
	bh=qjKwJjnPjclKRv6ciOxVYAUR7Joywo8ZaUuK8ISG5ak=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=aW5xJGjv6NM4hVwIp+YQKFXyvjr05UIJVY0HJCgOOaVXuwtxsiZtCEkIxNYoFXOOu
	 G1aQgdNtKsSy3xNEFDyGMyiZSZtjKliQPixzEEzbLWDmskRvEEj5VF0M4I3hXnIemc
	 IYFmpPtEABdap9aYXsX6oUfiUyAAnLeG80utQLZtqQ6lBOVoKQ4NGnIZ2Yg6bLJVpL
	 XVwlLs1Vkwe8M7KHQK53P3sSbyNXH4Nj3omcdjj+0zIxkpC3bVRIJKXkel3MRmcoFt
	 bQWFeCdYEOGbxuZvhJS4OI/eR7g3lvYulS7ZgArQjHJZOahU7UiK5IbqhOZlkv1C/W
	 yp40wQkRw0Idw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/3] net: phy: qca,at803x: add RX and TX clock
 management for IPQ5018 PHY
Reply-To: sashiko-reviews@lists.linux.dev
To: "George Moussalem via B4 Relay" <devnull+george.moussalem.outlook.com@kernel.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260601-ipq5018-gephy-clocks-v1-3-2df8287712c3@outlook.com>
References: <20260601-ipq5018-gephy-clocks-v1-3-2df8287712c3@outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 02 Jun 2026 13:19:22 +0000
Message-Id: <20260602131922.DBF3C1F0089A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-305663-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+george.moussalem.outlook.com@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,george.moussalem.outlook.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[outlook.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8AF7D62E74F

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Unbalanced clock reference counting causing CCF underflow warnings
--

commit 05a5fab6d0a0c9ba1c5e411c7e94bc9ff8040850
Author: George Moussalem <george.moussalem@outlook.com>

net: phy: qca,at803x: add RX and TX clock management for IPQ5018 PHY

This patch acquires and enables the RX and TX clocks for the IPQ5018
PHY datapath. It also gates these clocks upon link state changes to
improve power management.

> diff --git a/drivers/net/phy/qcom/at803x.c b/drivers/net/phy/qcom/at803x.c
> index 63726cf98cd42..b7361a14220d8 100644
> --- a/drivers/net/phy/qcom/at803x.c
> +++ b/drivers/net/phy/qcom/at803x.c

[ ... ]

> @@ -1062,6 +1065,16 @@ static int ipq5018_config_init(struct phy_device *=
phydev)
> =20
>  static void ipq5018_link_change_notify(struct phy_device *phydev)
>  {
> +	struct ipq5018_priv *priv =3D phydev->priv;
> +
> +	if (phydev->link) {
> +		clk_enable(priv->rx_clk);
> +		clk_enable(priv->tx_clk);
> +	} else {
> +		clk_disable(priv->rx_clk);
> +		clk_disable(priv->tx_clk);
> +	}
> +

[Severity: High]
Will this lead to unbalanced clock reference counts and Common Clock
Framework (CCF) underflow warnings?

Because ipq5018_link_change_notify() is invoked on every PHY state
transition, it can be called multiple times consecutively while
phydev->link remains false (for example, transitioning from PHY_NOLINK
to PHY_HALTED). This would result in multiple calls to clk_disable()
without corresponding clk_enable() calls.

>  	/*
>  	 * Reset the FIFO buffer upon link disconnects to clear any residual da=
ta
>  	 * which may cause issues with the FIFO which it cannot recover from.

[ ... ]

> @@ -1084,6 +1097,16 @@ static int ipq5018_probe(struct phy_device *phydev)
>  	priv->set_short_cable_dac =3D of_property_read_bool(dev->of_node,
>  							  "qcom,dac-preset-short-cable");
> =20
> +	priv->rx_clk =3D devm_clk_get_enabled(dev, "rx");
> +	if (IS_ERR(priv->rx_clk))
> +		return dev_err_probe(dev, PTR_ERR(priv->rx_clk),
> +				     "failed to get and enable RX clock\n");
> +

[Severity: High]
If the driver unbinds while the link is down, won't the unconditional
cleanup registered by devm_clk_get_enabled() trigger another CCF
underflow warning?

The initial devm_clk_get_enabled() sets the enable count to 1. If the
link goes down, the count drops to 0. When devres cleans up on unbind,
it will attempt to disable the clock again. Should state tracking be
added, or should this use devm_clk_get() instead if the clock state
is going to be managed dynamically?

> +	priv->tx_clk =3D devm_clk_get_enabled(dev, "tx");
> +	if (IS_ERR(priv->tx_clk))
> +		return dev_err_probe(dev, PTR_ERR(priv->tx_clk),
> +				     "failed to get and enable TX clock\n");
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260601-ipq5018-ge=
phy-clocks-v1-0-2df8287712c3@outlook.com?part=3D3

