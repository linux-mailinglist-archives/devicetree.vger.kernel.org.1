Return-Path: <devicetree+bounces-133835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D679FBD44
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 13:28:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6D286188094F
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 12:28:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3D311B6CF6;
	Tue, 24 Dec 2024 12:28:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="zJMnPWxs"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB2F419D074;
	Tue, 24 Dec 2024 12:28:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735043284; cv=none; b=EwCWe5nJ2Dcfbm8ADQFQS18SYxvCK89Xe1DTuhxSldzOPIP4WM5MuvndDbEhGknewydFQHYbmgPAKaWml9lhBW5IM8ZaipDL/ILgrdYu81/A/ewkkGBnoy4bttxpM3ryLl0e9rcdm7aKuIBY4ndsOJb/ZVxhnueVDIstcp7AJKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735043284; c=relaxed/simple;
	bh=jMlF2wD6T0UM8plYKEtVQopdar0C7UDxweX1sIVepUs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=iN0SwI9w38j0CEzptZ3yS+44LLPX3A15dDxDo6tPB+6JjzullBRqNKIpeGCMpHRkkn9heL2HULt2qFvWvJcjqSn1h5HBr2qYg6OfV0kaYcxzCg+/ZJfWhfLvKsrmmZQt3xlJH3krL8yP0vqt9GJT+iu3ts6FWC0SM2Hn/pqcfhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=zJMnPWxs; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=FpgSUxP8zy9z3Ozm+IeXLmSotIQFRVFdlAAn52p9XAk=; b=zJMnPWxsL2xtSkCXoWlGw8VLzA
	hTNv5gQmIrm3nEfhiAXMtjlfwkkLzbXlFq2dLB1LwznnOH+h6+edEo/U4ktfxtvYMIMJfAchIeHcX
	bmG3yfi4h2u+TyyjoSsQcLCz5ITJJyrwVqOaZA98oy/TgQ6/fUq+AqFqizV6yRbO1USJUl9/IjVdN
	lqZKstEV8knrnwD4NqpgDcghDrNGu3Z/HwyWQXJl6XAPlokKzRl5WxcULPddtpbmHVwfiyTHD/42d
	ufO/wrr5mLrTDZTOB+lnPnGfQ3HhWVbhSjr/mOL9gON/l3ToqetmH7kiNzcffRoFqlA84tFzCyIdo
	rhdJBSyw==;
Received: from i5e860d12.versanet.de ([94.134.13.18] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tQ40u-00016A-Dw; Tue, 24 Dec 2024 13:27:52 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org,
 Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-phy@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: rockchip,inno-usb2phy: add rk3562
Date: Tue, 24 Dec 2024 13:27:51 +0100
Message-ID: <1956693.6tgchFWduM@diego>
In-Reply-To: <20241224094240.3817261-1-kever.yang@rock-chips.com>
References: <20241224094240.3817261-1-kever.yang@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Dienstag, 24. Dezember 2024, 10:42:39 CET schrieb Kever Yang:
> Add compatible for the USB2 phy in the Rockchip RK3562 SoC.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
> 
>  .../devicetree/bindings/phy/rockchip,inno-usb2phy.yaml         | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
> index 6a7ef556414c..367297f6f8b5 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
> @@ -19,6 +19,7 @@ properties:
>        - rockchip,rk3328-usb2phy
>        - rockchip,rk3366-usb2phy
>        - rockchip,rk3399-usb2phy
> +      - rockchip,rk3562-usb2phy
>        - rockchip,rk3568-usb2phy
>        - rockchip,rk3576-usb2phy
>        - rockchip,rk3588-usb2phy
> @@ -150,7 +151,6 @@ allOf:
>              enum:
>                - rockchip,rk3568-usb2phy
>                - rockchip,rk3588-usb2phy
> -
>      then:
>        properties:
>          host-port:
> @@ -190,6 +190,7 @@ allOf:
>                - rockchip,rk3328-usb2phy
>                - rockchip,rk3366-usb2phy
>                - rockchip,rk3399-usb2phy
> +              - rockchip,rk3562-usb2phy
>                - rockchip,rk3568-usb2phy
>                - rockchip,rk3588-usb2phy
>                - rockchip,rv1108-usb2phy
> 





