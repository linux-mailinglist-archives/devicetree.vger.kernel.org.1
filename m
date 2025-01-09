Return-Path: <devicetree+bounces-136936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 965F2A0705E
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 09:54:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C9CA53A6F92
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 08:54:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17FAA1F8EF5;
	Thu,  9 Jan 2025 08:54:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpzT/UaH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1FB32F2D;
	Thu,  9 Jan 2025 08:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736412884; cv=none; b=esz779usymijE4e3TidRiDfPa1kOTv1+WlG9oQUzZ+VHaHqNXptoMykpnWNjoQifwpqdR5c7bn2lM3pU4fELhVtg0QDrSx6xJWH8yEB9GFmagO/KGowtoQRMv/9dKk0peWMd+1QRSbe4BCJImogfvOwa1FBYoUO5vQTOwxKM6Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736412884; c=relaxed/simple;
	bh=LombH1FD70xGrzs2x51pntDQW6o2Z1wYpa9hFitkHlE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XLFgXOcaTxKuNtVQEKrcjbjFhK+Nt7apF2dfrlmzQwWUAebUiorSapKfX6Zv9MlfCmdYtUCNBP/HvzuiKamvontHelby+JA8iE71z3jGycmatpump4S4AACvlbY6MV2cYP+uFb2kiJRfusuS9OIBMLEzxh9h3cTrYH0A6A2X6uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpzT/UaH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18D48C4CED2;
	Thu,  9 Jan 2025 08:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736412883;
	bh=LombH1FD70xGrzs2x51pntDQW6o2Z1wYpa9hFitkHlE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LpzT/UaHrYznnPqZq03T5+rn1MsO3ikIHjM++A+fSpNYpveoizqxWcg1FM7AARFy+
	 uFTDL9ym1zgSHu1Go5E0lNhq+YjNmAVRRAwQ5bHn+/EvsjxrQdaInuFa5FA815DPST
	 12BQgzy84zAw308jBjHtERr+wafzu9ujZLlmrfuNpRlwtJRl2KrtrYAaGW2R5VMMYR
	 zPiSQLoN3HLnQt0dnqdhL/8MAhj5MR27OPBFch0W76lnS9enoxZEPcRt7z+h5eVd0U
	 v0HmSl+a49k/GhFBnUAd475JIsgqZUGKDYHOIjpCYgqbo/fRMfxorrloywtbUx/zAC
	 Pw9Qiqf64Lifg==
Date: Thu, 9 Jan 2025 09:54:40 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	dmitry.baryshkov@linaro.org, andy.yan@rock-chips.com, hjc@rock-chips.com, 
	algea.cao@rock-chips.com, kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 13/20] dt-bindings: display: rockchip: analogix-dp:
 Add support for RK3588
Message-ID: <gmwmnjc4pzyzzstyozlfcdaw2ntfxg6ixofio2j746hmixhblc@sjbcvwcgitmy>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-14-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250109032725.1102465-14-damon.ding@rock-chips.com>

On Thu, Jan 09, 2025 at 11:27:18AM +0800, Damon Ding wrote:
> Compared with RK3288/RK3399, the HBR2 link rate support is the main
> improvement of RK3588 eDP TX controller, and there are also two
> independent eDP display interfaces on RK3588 Soc.
> 
> The newly added 'apb' reset is to ensure the APB bus of eDP controller
> works well on the RK3588 SoC.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - Add the main defferences of the RK3588 eDP and the previous versions
>   in commit message
> 
> Changes in v3:
> - Expand the property clock-names, resets and reset-names
> 
> Changes in v4:
> - Remove 'spdif' clock which added in v3
> - Add the comment of newly added 'apb' reset in commit message
> 
> Changes in v5:
> - Put the differences between RK3288/RK3399 and RK3588 into 'allOf'
> ---
>  .../rockchip/rockchip,analogix-dp.yaml        | 37 ++++++++++++++++---
>  1 file changed, 31 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
> index eaf4e67e232e..3cdea9e63522 100644
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
> @@ -30,12 +31,6 @@ properties:
>    power-domains:
>      maxItems: 1
>  
> -  resets:
> -    maxItems: 1
> -
> -  reset-names:
> -    const: dp

Widest constraints are always here. You only needed to add allOf.

https://elixir.bootlin.com/linux/v6.11-rc6/source/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml

Best regards,
Krzysztof


