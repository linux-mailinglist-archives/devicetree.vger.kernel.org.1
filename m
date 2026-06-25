Return-Path: <devicetree+bounces-315821-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4zqCKIBsPWoZ3AgAu9opvQ
	(envelope-from <devicetree+bounces-315821-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 19:59:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3705A6C8118
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 19:59:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=nUgsh5uC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315821-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315821-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 05079300D321
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 17:59:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60CAC3ED5A3;
	Thu, 25 Jun 2026 17:59:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99DA23ED3BA
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 17:59:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782410364; cv=none; b=o+3ACDXpfJ5yzxCdARPImFLI/FA96zASCdhtp1whPhuT7buitRXW/YwzBuaMLneppgFMd1Hy/BYkQFWfwrHfCNSymKzH70bYWkHbmkbKMzito+p9q0JVkvVBlaytCeQNbR7vqVzJxBZDcN8WQB6p/FSDgZ5BMvak7lx5Khj91gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782410364; c=relaxed/simple;
	bh=CI6/ZAoNCu3lb8HLI2uybReZ1Qc0/rh3S3ClQbqYdvs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hKiIjCX0xX6A3VX8vAe3yH4fHrqzRtofWIcyamluXm6LA69Eh2dBonYwrO1ibqqcIfeyaqZZarPKcrldPypjp6Cl+MFsZ4udVFEs1VvjSjZnM98QUB8axA2zCBEHujS1qbixczor7f64jli5N1xVlpshd3ITVvE5N8a3jKF5vhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nUgsh5uC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CFBE1F000E9;
	Thu, 25 Jun 2026 17:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782410362;
	bh=wNRKfGbwkykkeTi6JG/YbfzW+5TXwQKAO2rb8s1JP0w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nUgsh5uCqvrBlQNa2u1oK1uN6OhjR+/mYkoX4vdwFYIxKTFaLtLPNZojeamVuuHKE
	 xB3YBo9iBzF2mU4JOjD9aBpy4J6tR94LfFrtHIRLktTSlc8lwwRU8pcBOa+y2wt96e
	 h2HQQOsT6WqfqmaiXdvcfThuZRgg2ejledILkvejF4O9wv0QymI5cZBBZjVQq0GN7m
	 rVSEK/B9hf9XOoEwrRxcJmCXWVhP6RDolIEyDDBLfNs66jW9bFrqBQE+M06tHNnm1q
	 xUZfVrG6BpqsWKR3bOfltpwnJJQejXnsyloJfgN3N1xcfbM5LL5dh8Smu8AZmlDvdp
	 hCxLb+cTH3NnQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 05/27] phy: rockchip: usbdp: Handle missing
 clock-names DT property gracefully
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org
In-Reply-To: <20260625-rockchip-usbdp-cleanup-v7-5-38eb3cf654fd@collabora.com>
References: <20260625-rockchip-usbdp-cleanup-v7-0-38eb3cf654fd@collabora.com>
 <20260625-rockchip-usbdp-cleanup-v7-5-38eb3cf654fd@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Jun 2026 17:59:21 +0000
Message-Id: <20260625175922.1CFBE1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315821-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:robh@kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:devicetree@vger.kernel.org,m:linux-phy@lists.infradead.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,vger.kernel.org,lists.infradead.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,collabora.com:email,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3705A6C8118

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Unchecked NULL pointer dereference when comparing clock IDs from n=
on-compliant Device Trees.
--

commit be75e70030d6a112304beae15bcbe8b9d870c214
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Handle missing clock-names DT property gracefully

This patch adds a check to ensure the clock id string is present before
comparing it, preventing a null pointer dereference when parsing a
non-compliant device tree.

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index 2845a012eafcc..3fc8222fcaec2 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -432,6 +432,9 @@ static int rk_udphy_clk_init(struct rk_udphy *udphy, =
struct device *dev)
> =20
>  	/* used for configure phy reference clock frequency */
>  	for (i =3D 0; i < udphy->num_clks; i++) {
> +		if (!udphy->clks[i].id)
> +			continue;
> +

[Severity: High]
This isn't a bug introduced by this patch, but since you are fixing the
missing clock-names behavior here, could this same vulnerability be
present in other drivers?

Looking at the tree, several other drivers also iterate over clocks
returned by devm_clk_bulk_get_all() and pass the id field directly to
strcmp() or strncmp() without checking if it is null.

For example, in drivers/phy/rockchip/phy-rockchip-inno-usb2.c:
rockchip_usb2phy_clk480m_register() does:

    if (!strncmp(rphy->clks[i].id, "phyclk", 6)) {

Similarly, in drivers/phy/rockchip/phy-rockchip-naneng-combphy.c:
rockchip_combphy_parse_dt() does:

    if (!strncmp(priv->clks[i].id, "ref", 3)) {

There appear to be similar unchecked usages in:
drivers/pci/controller/dwc/pci-imx6.c:imx_pcie_setup_phy()
drivers/spi/spi-rzv2h-rspi.c:rzv2h_rspi_probe()
drivers/crypto/rockchip/rk3288_crypto.c:rk_crypto_get_clks()
drivers/media/platform/nxp/imx8mq-mipi-csi2.c:imx8mq_mipi_csi_find_esc_clk()

Should these be audited and patched similarly to prevent a panic when
handling malformed device trees?

>  		if (!strncmp(udphy->clks[i].id, "refclk", 6)) {
>  			udphy->refclk =3D udphy->clks[i].clk;
>  			break;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260625-rockchip-u=
sbdp-cleanup-v7-0-38eb3cf654fd@collabora.com?part=3D5

