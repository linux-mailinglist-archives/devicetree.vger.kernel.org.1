Return-Path: <devicetree+bounces-135058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 725969FF902
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 12:57:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 671EF3A2945
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 11:57:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6757F1A38E3;
	Thu,  2 Jan 2025 11:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="YIeI3qCH"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF111191F94;
	Thu,  2 Jan 2025 11:57:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735819025; cv=none; b=Cu5NLmbHdOAUQff1fsVMkhH6oZEVnCTJYnf2euY1ANo/pnS3J/yHcwjuvoHl6VC3lpXT5X2HPP7unVO/UrAOQQeAq78JNo+59RuZ0GIIiYBCbZAtBaQshL13LPAdjO7caXrRR0nBOTRMsI3mNQSJeIlgRO2utIjoxHf/gyIyRMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735819025; c=relaxed/simple;
	bh=rdrukPNaQlmroAeSXFNhKckgh2maM/3AU1P2HvXmLuM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=i1s5lp0HcEdDF7SnKbhkABFM7k2J/vglQQwJ/rZXHzEEgmsv6fWsrzJtfPBBWeIFc+6wkSlYRUs9f728iFWP61+Kp591ZkpvmrzhSHey5FReCko6+tvVoStbAv94CUMB9Cvm5F+jMrsI6/FAyCMF6vyHDJ+4P6gbQ1TTW+I+S20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=YIeI3qCH; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=j9BRYqtU1/upqh8/+Oi84LPuS1gHyWF/MWynsZDnmsI=; b=YIeI3qCH5MGj7bJGccxx3mZoYZ
	tyrZ+UeWV1Yz1LAvt0YJLRqpxWMflvnA9fEWguGwPda7GTs4zUt+waTidGWxa1hYWmZnRyWvXbsmG
	ybecqROk8igzdkLkShtoNPGwCnqjcZvIAOD2SMrND5QKmjFCXCxMQSYDXTt1vq5pumbeWbTWN9DjZ
	A91+2EwTPjnT0meDoGRe0Gq6vMIPCoK6axxlSUXYOLtNXpbrQPK0ps029ffIW13hc5lSMUXnb+/6e
	puxeAU7lbZ/kGCjrQLkFgJOEj4T7EbOyD4EsUQ0KZKcbzflN+eJ2s8G5M4PqgTf1OmZgTrumrY6rn
	M5UQx5Kg==;
Received: from i5e860d14.versanet.de ([94.134.13.20] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tTJou-0007jf-8O; Thu, 02 Jan 2025 12:56:56 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: cristian.ciocaltea@collabora.com, krzk+dt@kernel.org, mripard@kernel.org,
 hjc@rock-chips.com, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 3/3] drm/rockchip: Add basic RK3576 HDMI output support
Date: Thu, 02 Jan 2025 12:56:55 +0100
Message-ID: <15367137.tv2OnDr8pf@diego>
In-Reply-To: <20241225103741.364597-4-andyshrk@163.com>
References:
 <20241225103741.364597-1-andyshrk@163.com>
 <20241225103741.364597-4-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Mittwoch, 25. Dezember 2024, 11:37:31 CET schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The HDMI on RK3576 shares the same IP block (PHY and Controller)
> with rk3588.
> However, there are some control bits scattered in different GRF.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> Tested-by: Detlev Casanova <detlev.casanova@collabora.com>

The attribution is strange. Where does the Signed-off from Detlev come
from?

At that position it would mean that he's the sender, but that's obviously
not the case.

I guess it's either just the Tested-by ... or you need an additional
Co-Developed-by if Detlev contributed to this patch.


> ---
> 
>  .../gpu/drm/rockchip/dw_hdmi_qp-rockchip.c    | 143 +++++++++++++++++-
>  1 file changed, 141 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> index b21e868e7c16..bd9216e45e74 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
[...]
> @@ -287,8 +422,12 @@ static const struct rockchip_hdmi_qp_cfg rk3588_hdmi_cfg = {
>  };
>  
>  static const struct of_device_id dw_hdmi_qp_rockchip_dt_ids[] = {
> -	{ .compatible = "rockchip,rk3588-dw-hdmi-qp",
> -	  .data = &rk3588_hdmi_cfg },
> +	{ .compatible = "rockchip,rk3576-dw-hdmi-qp",
> +	  .data = &rk3576_hdmi_cfg
> +	}, {
> +	  .compatible = "rockchip,rk3588-dw-hdmi-qp",
> +	  .data = &rk3588_hdmi_cfg
> +	},

nit: please keep consistent styling between the listentries. Right now the
rk3576 and changed rk3588 entries use different styles.


Heiko



