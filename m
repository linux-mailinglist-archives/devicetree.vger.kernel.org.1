Return-Path: <devicetree+bounces-132559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 63AA09F773E
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 09:28:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4C1337A04AB
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 08:28:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7509A21CFF4;
	Thu, 19 Dec 2024 08:28:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F55218ADB;
	Thu, 19 Dec 2024 08:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734596887; cv=none; b=L9CfPWQz4bVXxOwpZq0JJZAP3dxzPhcTOeSYKhUB+1kBIuDQhEj7WNVkjE7FBMUA/ZY8Olpq6y55C57UwfH97YhELimyxLuhj6zSrUdCATqIpkTuOzstJKpACjhVD6SoPs2BA6ueRX90lhHKhHOCXiGpujjnoFrNt+NdZwEGj8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734596887; c=relaxed/simple;
	bh=JF+MsHJkaRukKyJk8NLSeh28Xax7CyrJIxDgHUiLpic=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ix9mmNK6HS2Q1ATHX2MCVEX499/t0AQLyOoqOGGSpzdgPKKnVSPNwrxalL89FAw3obiDu+4xxKROvLBRmhZmhxUFCj6tag3Q/ak0ZmmWKCKWx1kyqItcIp+Xf+dJ5fxEYWk6tEBCLUJwxPF0NhNpoDtI0ds95i8fRgiY9FTLdl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 446BCC4CECE;
	Thu, 19 Dec 2024 08:28:05 +0000 (UTC)
Date: Thu, 19 Dec 2024 09:28:03 +0100
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 02/15] dt-bindings: display: rockchip: analogix-dp:
 Add support for RK3588
Message-ID: <tdhs45ac2ivdke7idrzxrhlgsqlnswkb2maorau3guzrrwpce3@emdq7xx6cpwz>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-3-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241219080604.1423600-3-damon.ding@rock-chips.com>

On Thu, Dec 19, 2024 at 04:05:51PM +0800, Damon Ding wrote:
> Compared with RK3288/RK3399, the HBR2 link rate support is the main
> improvement of RK3588 eDP TX controller, and there are also two
> independent eDP display interfaces on RK3588 Soc.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Drop, patch was very different.

> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - Add the main defferences of the RK3588 eDP and the previous versions
>   in commit message
> 
> Changes in v3:
> - expand the property clock-names, resets and reset-names

Adding new properties invalidates reviews. The patch is entirely, really
significantly different so keeping the review is not acceptable.

> ---
>  .../display/rockchip/rockchip,analogix-dp.yaml     | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
> index 60dedf9b2be7..4f84e8849876 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
> @@ -15,6 +15,7 @@ properties:
>      enum:
>        - rockchip,rk3288-dp
>        - rockchip,rk3399-edp
> +      - rockchip,rk3588-edp
>  
>    clocks:
>      minItems: 2
> @@ -25,16 +26,23 @@ properties:
>      items:
>        - const: dp
>        - const: pclk
> -      - const: grf
> +      - enum:
> +          - grf
> +          - spdif

No, this cannot be flexible for existing variants.

>  
>    power-domains:
>      maxItems: 1
>  
>    resets:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2

No, you must list the items.

>  
>    reset-names:
> -    const: dp
> +    minItems: 1
> +    items:
> +      - const: dp
> +      - enum:
> +          - apb

I don't understand what happened here but all this is NAK. Why suddenly
existing variants became different/changed? Nothing in commit msg
explains this.

Best regards,
Krzysztof


