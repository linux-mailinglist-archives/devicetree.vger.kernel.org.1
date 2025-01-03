Return-Path: <devicetree+bounces-135312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DC643A007CE
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 11:26:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6E9087A1AE7
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 10:26:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 867C81F5435;
	Fri,  3 Jan 2025 10:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="hzi0Mp/5"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4691B0F15
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 10:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735899980; cv=none; b=joPknyu1S+ehV6vqstVX7bcT/Mrj6clnpIORFUG3zMkQJN0sWVoZ+HTBhIKh77QpFZ+DUU2UUbnwQAlxZccuskmroW029/iFEbBv+ubXlgHpCIxf5l3BBqcKFZnFqtZ88aw08hyzVtQiO7Q1J0X5CAaF1UUne3L4L96ACyl79zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735899980; c=relaxed/simple;
	bh=PbJY1lUQgd5hIJWSj57dhICBQXS7jVWlpWl8A7yCgL0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=eS9l43spH76kFQwzh1oPO5O5oQkgbEoWzyTyK2Gvx2sk+hk6VjXUtqlakAkas9h0/5Y7WRrj6wtAoFzP6m6rmCdmw+b5R25kGEwINmO8xmNjGEgfFQeyFvEEexK7/jIBgHlEmwnd0XZnxpAuy6UyGuJKVg2v2HjHohF0vjv2nFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=hzi0Mp/5; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=qydpwgXPz9Wixx3t9KzK1lAYRqTDBTbteo+7OTMSSa8=; b=hzi0Mp/5MraSm51723Uoi4XXGt
	LFeYt4p8WgnT+UX7sMDnDgvrW3xnzmJ/Vn3StkGRanW58a20sPd14dGjYKjULnbuOxNM56ByphzeB
	9CoxaVNc4ttuisdqKm8t0wUkUtm7z26OrreHvCkQUI8CKCVAoWb7eeHcVwRjCu3Xl7fg4GET9rKdh
	snxAF4nHDBW0bgKcrQDI3oYvcgTjTCW9zN/bcB3C0Oq3+OBQHnIsaV3rEj80PusglNU41R4RF2bFV
	vTnW7eJuHh/BD3uo5PvuBlm4dJ55n/oC3k2RuBnX0fqbX+iN58KqZki2ZY5GgBpi1dXNTkpHgoNuw
	KOUw1m/Q==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tTesc-0005uk-LE; Fri, 03 Jan 2025 11:26:10 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: jonas@kwiboo.se, Chukun Pan <amadeus@jmu.edu.cn>
Cc: amadeus@jmu.edu.cn, conor+dt@kernel.org, devicetree@vger.kernel.org,
 kishon@kernel.org, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 liujianfeng1994@gmail.com, p.zabel@pengutronix.de, robh@kernel.org,
 vkoul@kernel.org
Subject:
 Re: [PATCH 1/2] arm64: dts: rockchip: rk3568: add reset-names for combphy
Date: Fri, 03 Jan 2025 11:26:09 +0100
Message-ID: <4647350.cEBGB3zze1@diego>
In-Reply-To: <20250103033016.79544-1-amadeus@jmu.edu.cn>
References:
 <688c8fb6-68f7-45f1-98fc-8b3252b3ecbf@kwiboo.se>
 <20250103033016.79544-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

Am Freitag, 3. Januar 2025, 04:30:16 CET schrieb Chukun Pan:
> > The other patch in this series:
> > arm64: dts: rockchip: rk3568: add reset-names for combphy
> > is missing in v6.13-rc5, which will break pcie2 of rk3568
> > because the phy driver has changed.
> 
> I don't know why the dts patch hasn't been merged into the mainline yet.

because it was christmas ;-) .

> Maybe the merge window is different. Can you test the following patch?

But in any case, the driver _must_ stay compatible with old devicetrees.
I.e. requiring a DT update is a general no-go.


> ```
> --- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> @@ -325,6 +325,10 @@ static int rockchip_combphy_parse_dt(struct device *dev, struct rockchip_combphy
>  	priv->ext_refclk = device_property_present(dev, "rockchip,ext-refclk");
>  
>  	priv->phy_rst = devm_reset_control_get(dev, "phy");
> +	/* fallback to old behaviour */
> +	if (IS_ERR_OR_NULL(priv->phy_rst))
> +		priv->phy_rst = devm_reset_control_array_get_exclusive(dev);
> +

This looks like a reasonable fallback

>  	if (IS_ERR(priv->phy_rst))
>  		return dev_err_probe(dev, PTR_ERR(priv->phy_rst), "failed to get phy reset\n");


Heiko



