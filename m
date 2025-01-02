Return-Path: <devicetree+bounces-135207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E92C4A000E8
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 22:53:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0FEFE1883606
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 21:53:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9538149E00;
	Thu,  2 Jan 2025 21:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ko9Xe3+c"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2CB98F7D
	for <devicetree@vger.kernel.org>; Thu,  2 Jan 2025 21:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735854791; cv=none; b=pt4XfkYUHG6C/9VJ37kRQtwD/u+wxGy0xAy8AFnGXorK3pQ9daWck/uI8dUEI4nx72ljHE0e2Cl4om2JvcUrtNZ/tuP3+NwbPRFiuX5sO8xrmLsW2K9xUOifCMQ9n20YoLQvIsXTPYDBW4WmAx4MX0IG5clwYL6RQ3Z0aNFd3i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735854791; c=relaxed/simple;
	bh=LKTc6/sATowwzTd72kbpfKRHreyAr4MLhR803zIVUD4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l9/cWP8sdQEbvJKnN/g59Mg7FeRjB5lALMPWz0IsHKa7+zxlRxOGSHBN15H4hqWkYKLyS41WoRsSGtfj7zSIbK1yR+tMRGWcf2vB3PCY4DrBesiEpxPYP9Fpu161vUNDYiQPzoISNwSoDxnup0L9S9cQ0fh1MMACxJzZwER0Gao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ko9Xe3+c; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAFAEC4CED0;
	Thu,  2 Jan 2025 21:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735854791;
	bh=LKTc6/sATowwzTd72kbpfKRHreyAr4MLhR803zIVUD4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ko9Xe3+c2+oYnvo3KrLpFiKWwx5Teb2uSAo0DPzjtK6QNGW33BiFdLbWezqBGGAvq
	 CODqugAzl6lZzIB7HtZxVRoNiGUvBEgIiMMJQzediAOM2OgdB6c4reLyl0tq8e2LSS
	 MOdlZx6Djz2COKShZ8dHo4prMZCpgQkY2IrD+daSgE55S1U3pZ7gudZfW1oq3GjLoE
	 9kt5cctJ4GHt1hUm4HEgTbF88Z8GPFs/D1AWJzlqh/EiWKpdZunhF26vD32l6egRLK
	 cN1mkfZhvZWMvZ5kMSQfvQa1cziwtBsQVCbaxa84dZddTflz1cqtl3yK6ICFQ7wuE4
	 8prn0mt2mUSGw==
Date: Thu, 2 Jan 2025 15:53:08 -0600
From: Rob Herring <robh@kernel.org>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Ondrej Jirman <megi@xff.cz>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [RFC 4/7] dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5
 Ultra
Message-ID: <20250102215308.GA636148-robh@kernel.org>
References: <20241229184256.1870-2-honyuenkwun@gmail.com>
 <20241229184256.1870-8-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241229184256.1870-8-honyuenkwun@gmail.com>

On Sun, Dec 29, 2024 at 12:41:31PM -0600, Jimmy Hon wrote:
> Add devicetree binding for the Xunlong Orange Pi 5 Ultra board.

Why RFC? Looks fine to me.

However, you should have 'v4' on every patch in the series if this is 
v4.

> 
> The Orange Pi 5 Ultra is a single board computer powered by the Rockchip
> RK3588 with similar board layout as the 5 Max but with the HDMI0 swapped
> for HDMI IN.
> 
> Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 2a141d99c533..9dd424265826 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -1075,11 +1075,12 @@ properties:
>            - const: xunlong,orangepi-3b
>            - const: rockchip,rk3566
>  
> -      - description: Xunlong Orange Pi 5 Max/Plus
> +      - description: Xunlong Orange Pi 5 Max/Plus/Ultra
>          items:
>            - enum:
>                - xunlong,orangepi-5-max
>                - xunlong,orangepi-5-plus
> +              - xunlong,orangepi-5-ultra
>            - const: rockchip,rk3588
>  
>        - description: Xunlong Orange Pi R1 Plus / LTS
> -- 
> 2.47.1
> 

