Return-Path: <devicetree+bounces-133311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D119FA463
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 07:38:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7431F166B00
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 06:38:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC36816C684;
	Sun, 22 Dec 2024 06:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETQExCuc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91CEC567D;
	Sun, 22 Dec 2024 06:38:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734849508; cv=none; b=c5eKXHrHKK8W1atmMpIAfdGUOKcDgTKqAkOMX9M66wBEgCdSpQ0xzJ8yVioZbjKz6tiLueELuzU9PB6djM/hd2RbNX68w84IyyJAzzjlXX7h/Sf2AEmHy1De0PdMhIKUb6AlaDJZzsQsQISEudzcpmifypHOg8EVlwnbkGhkhwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734849508; c=relaxed/simple;
	bh=m92kMbMIGZ8ojgXMDxE1mIEmPbxrkQehi0RQi1blXTs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H695TgK83HMYRvxbR2YB9CmCtPrKtp4I6PfdwfwbNrSjlM2KW8NeirdbsoOy64+Bq3MoOt7sGhknaxt6OA/LcJ2wkz1/5jdfzEw7DdRLWeTG+Cf+divVQQcCfaSMooCje9L6pNgYpwrwy1xe2ZMMASVcKWYKCpE4WUmwicVHD1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETQExCuc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA9A2C4CEDC;
	Sun, 22 Dec 2024 06:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734849506;
	bh=m92kMbMIGZ8ojgXMDxE1mIEmPbxrkQehi0RQi1blXTs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ETQExCuc1M1yrvKZDgB+Elyvetv0TQO+K5otx0ZbP1F2s3U8jZquFtDXQAt0oBqjL
	 bQpFUNLkK58bC9Z8VkB1Hl9uc9p0T2V5IxjIClZtb7HDtedkCQnE9C1J3vPntj1EDm
	 6Um2rIJyubB9m18Dev6GTBvD9l/vGbltBNfYKqqPOu+xmHs3U5rriOOKZfj35rm1oO
	 TvMaKOIdIAKqh4c1EhiX/YRs8aDWERmj8YMtoBcXw0H5XlrLCgYdDTB246TmlObN+/
	 yhsKVgat6zqVUXahPPxoaaZEj0B0OvPG3F8AfbmiciHzeopBjsA/KlG5HGGHxS22V+
	 Kb3JwhqIiqzrA==
Date: Sun, 22 Dec 2024 07:38:23 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Finley Xiao <finley.xiao@rock-chips.com>, Frank Wang <frank.wang@rock-chips.com>, 
	Rob Herring <robh@kernel.org>, Liang Chen <cl@rock-chips.com>, 
	Detlev Casanova <detlev.casanova@collabora.com>, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Elaine Zhang <zhangqing@rock-chips.com>, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 3/7] dts: arm64: rockchip: Add rk3576 pcie nodes
Message-ID: <i54jjqt7uaxrurdapsyxwmb5iokiwzgm5cvlaamlggycrpyd3v@azhmfwgetrzm>
References: <20241220101551.3505917-1-kever.yang@rock-chips.com>
 <20241220101551.3505917-4-kever.yang@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241220101551.3505917-4-kever.yang@rock-chips.com>

On Fri, Dec 20, 2024 at 06:15:47PM +0800, Kever Yang wrote:
> rk3576 has two pcie controller, both are pcie2x1 used with
> naneng-combphy.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---

Please use subject prefixes matching the subsystem. You can get them for
example with 'git log --oneline -- DIRECTORY_OR_FILE' on the directory
your patch is touching. For bindings, the preferred subjects are
explained here:
https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patches.html#i-for-patch-submitters


> 
> Changes in v2:
> - Update clock and reset names and sequence to pass DTB check
> 
>  arch/arm64/boot/dts/rockchip/rk3576.dtsi | 109 +++++++++++++++++++++++
>  1 file changed, 109 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> index a147879da501..df7dfe702221 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> @@ -1016,6 +1016,115 @@ qos_npu_m1ro: qos@27f22100 {
>  			reg = <0x0 0x27f22100 0x0 0x20>;
>  		};
>  
> +		pcie0: pcie@2a200000 {
> +			compatible = "rockchip,rk3576-pcie", "rockchip,rk3568-pcie";
> +			bus-range = <0x0 0xf>;

Follow DTS coding style in properties order and everything around here.

Best regards,
Krzysztof


