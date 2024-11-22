Return-Path: <devicetree+bounces-123675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E209D5A8A
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 09:01:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17E60283ADA
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 08:01:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46D2718A6D8;
	Fri, 22 Nov 2024 08:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="ldO9/HYB"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC5F96CDBA
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 08:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732262483; cv=none; b=MxE8RnVngEnvDFfLn37Vh46XpsHbAGOqmZnYP/TxLReOxB7rvhUHj+M2SpoEGa80amznKEWBNJyxOL++/VASEM7wbeyvo7N7lr0FQ9t0JerF0uz41I6WMsyFR6wdTpfkBt8xTE4Pk6SOCGnSE9+aqMt7h0h8LYPT+LfbQzx6+4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732262483; c=relaxed/simple;
	bh=iAvr2Kst5wwqZlFlovgRr/mOTnzTWxAP78yHOhggA3U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pSj87ffP75P/tKhqtUpHz7kjkpEg+OVqfFH8HqXvEBBbVLcrm2fM+y0qIxlxeIl6tw7KwIwV8uSD+rWQmraXvHBmAjjBHO3rTnDtYE9LgZ61VApr13dYftB11jNIBmKP+0khiDZHZmWm9rl+T+21mW2C68FI++GsaMNgUhsDez8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=ldO9/HYB; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=OMD2mdjlpFqaHKrkK26yzFTEcmuAs55YSaXgREhafHw=; b=ldO9/HYBBQJ0Obh5Yeds+F34kQ
	wmUmZWEyvRzrKAlLf2IF3xED6dzrS34N6BGQeVACHNQvkgFWzsDJVcWyCdLrO30NHJABnHILB20hq
	AcBToaqK84O1dDrlJCPVALnOilxNUmAAQiW0MTe318MDs9m95sOy7rFrpSpqQbzIDJL425Tskazxu
	tlFQcEX7iiWL7kU5RK4bZaD9plyyUVL5DSAczRW3K4s/GmA5lO3wKG84Vz5X65kle2ZcTnbHP41gY
	L8DDbXMFX8kmJgEg0XcGgC7cZC3DvmqUntVdfKd++6qlW8uZl+1HVlPKCr5oRmLM8rXlWRVgfZKX7
	PuwYAq0g==;
Received: from [185.156.123.69] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tEObJ-0004J3-G4; Fri, 22 Nov 2024 09:01:13 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Chukun Pan <amadeus@jmu.edu.cn>,
 FUKAUMI Naoki <naoki@radxa.com>,
 Michael Zimmermann <sigmaepsilon92@gmail.com>
Subject: Re: [PATCH 2/2] phy: rockchip: naneng-combphy: fix phy reset
Date: Fri, 22 Nov 2024 09:01:12 +0100
Message-ID: <6110148.lOV4Wx5bFT@phil>
In-Reply-To: <20241122073006.99309-2-amadeus@jmu.edu.cn>
References:
 <20241122073006.99309-1-amadeus@jmu.edu.cn>
 <20241122073006.99309-2-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Freitag, 22. November 2024, 08:30:06 CET schrieb Chukun Pan:
> Currently, the USB port via combophy on the RK3528/RK3588 SoC is broken.
> 
>   usb usb8-port1: Cannot enable. Maybe the USB cable is bad?
> 
> This is due to the combphy of RK3528/RK3588 SoC has multiple resets, but
> only "phy resets" need assert and deassert, "apb resets" don't need.
> So change the driver to only match the phy resets, which is also what
> the vendor kernel does.
> 
> Fixes: 7160820d742a ("phy: rockchip: add naneng combo phy for RK3568")
> Cc: FUKAUMI Naoki <naoki@radxa.com>
> Cc: Michael Zimmermann <sigmaepsilon92@gmail.com>
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> index 0a9989e41237..2eb3329ca23f 100644
> --- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> @@ -309,7 +309,7 @@ static int rockchip_combphy_parse_dt(struct device *dev, struct rockchip_combphy
>  
>  	priv->ext_refclk = device_property_present(dev, "rockchip,ext-refclk");
>  
> -	priv->phy_rst = devm_reset_control_array_get_exclusive(dev);
> +	priv->phy_rst = devm_reset_control_get(dev, "phy");
>  	if (IS_ERR(priv->phy_rst))
>  		return dev_err_probe(dev, PTR_ERR(priv->phy_rst), "failed to get phy reset\n");

That reset-control is deasserted in the driver in a place where
already parts of the phy are supposed to be configured, so it
wiggling the apb_reset at those places (i.e. after running
priv->cfg->combphy_cfg()) probably causes strange effects, so

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



