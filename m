Return-Path: <devicetree+bounces-122497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B90F9D0DAE
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 11:03:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C93B282CE1
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 10:03:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49FC71925B3;
	Mon, 18 Nov 2024 10:03:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF71818E03A
	for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 10:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731924219; cv=none; b=l3CTnf9kjT/DY9g0JWD9QggvGAUHQz4KtvmK1xehXHtdJOHpxyYUPSHwzipCCdZP9Zlhx3T4vrbQcruZavTgw34BhdN9vp6E/PDs4weL7x2FDGk1bvhhInYEnYwlBtQLy7rPs3h0OjjT8XQ/Ibfm3G0dzPQD7VdocnNz6ZOlabo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731924219; c=relaxed/simple;
	bh=GFQSVCl4K37MQjWEzu72cr7MXAs0WnAx4CBpZjgy2LQ=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=HiyN6vEcXYC9FuFp4Ai8JBJc+ZUmlyNSb9UDohH8NECmfe4qGTYfCQsSi4ywY8hnBzwu+4/ZObyR1U+2z8C107999Z6DeK1mc/GtP0c1cpFo/cU1bIkj0ZIe7dXPQ5+GKe3P/mDE3KqAEttLIj2+63jSfNAs6vhPICLQ0fvfAb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tCybF-0007Ds-Nz; Mon, 18 Nov 2024 11:03:17 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tCybE-001NKT-0u;
	Mon, 18 Nov 2024 11:03:16 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tCybE-0004a9-0g;
	Mon, 18 Nov 2024 11:03:16 +0100
Message-ID: <bcb86fdbdc7be8f96a451df2d8e479e123ad8924.camel@pengutronix.de>
Subject: Re: [net-next v2 3/7] net: ftgmac100: Add reset toggling for Aspeed
 SOCs
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Jacky Chou <jacky_chou@aspeedtech.com>, andrew+netdev@lunn.ch, 
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com,  robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, netdev@vger.kernel.org,  devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Mon, 18 Nov 2024 11:03:16 +0100
In-Reply-To: <20241118060207.141048-4-jacky_chou@aspeedtech.com>
References: <20241118060207.141048-1-jacky_chou@aspeedtech.com>
	 <20241118060207.141048-4-jacky_chou@aspeedtech.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
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

On Mo, 2024-11-18 at 14:02 +0800, Jacky Chou wrote:
> Toggle the SCU reset before hardware initialization.
>=20
> Signed-off-by: Jacky Chou <jacky_chou@aspeedtech.com>
> ---
>  drivers/net/ethernet/faraday/ftgmac100.c | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/faraday/ftgmac100.c b/drivers/net/ether=
net/faraday/ftgmac100.c
> index 17ec35e75a65..cae23b712a6d 100644
> --- a/drivers/net/ethernet/faraday/ftgmac100.c
> +++ b/drivers/net/ethernet/faraday/ftgmac100.c
> @@ -9,6 +9,7 @@
>  #define pr_fmt(fmt)	KBUILD_MODNAME ": " fmt
> =20
>  #include <linux/clk.h>
> +#include <linux/reset.h>
>  #include <linux/dma-mapping.h>
>  #include <linux/etherdevice.h>
>  #include <linux/ethtool.h>
> @@ -98,6 +99,7 @@ struct ftgmac100 {
>  	struct work_struct reset_task;
>  	struct mii_bus *mii_bus;
>  	struct clk *clk;
> +	struct reset_control *rst;
> =20
>  	/* AST2500/AST2600 RMII ref clock gate */
>  	struct clk *rclk;
> @@ -1969,10 +1971,29 @@ static int ftgmac100_probe(struct platform_device=
 *pdev)
>  	}
> =20
>  	if (priv->is_aspeed) {
> +		struct reset_control *rst;
> +
>  		err =3D ftgmac100_setup_clk(priv);
>  		if (err)
>  			goto err_phy_connect;
> =20
> +		rst =3D devm_reset_control_get_optional(priv->dev, NULL);

Please use devm_reset_control_get_optional_exclusive() directly.


regards
Philipp

