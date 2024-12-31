Return-Path: <devicetree+bounces-134931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0BD9FEF68
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 13:57:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C6393A2D0A
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 12:57:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B69419AD48;
	Tue, 31 Dec 2024 12:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dj8dUZsu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3997B1990DE;
	Tue, 31 Dec 2024 12:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735649844; cv=none; b=Baqi53+T/RU/LZx27fA+CtN6WHSt4Xp+uzGVpVTCZUgtMFpjf9aChqZ0rfOAc957Uc6gFbsvyxVLTNVhNfHcmNwzgmI59raHf+xWUDZem0ddvUaewhqj5yvKdi+cttq/Erf1JtgRpYN2ZYh7mU4efqBDL1oVGbSSduuNgdSRqyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735649844; c=relaxed/simple;
	bh=DaJywbsTA8NGdYwIFXUSu9T2zpzn+s7K/k0e2i6sSeQ=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=Rt3O+Lxx6eJO/UTtKsrEDS3PFznD3JDS4yWUhwckxcrIHteIfvZtDbqEF5BxIX31LOwXyUGrdMVTbch3C2UN46yDsBY2/tUwSrU+55JvxiMK++OKCgpXFqnkp3oElY3SXb7qdufDDjCMo/UbG2QOpsHb3/Zu8ZRFqlJHLSIHDY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dj8dUZsu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7502DC4CED2;
	Tue, 31 Dec 2024 12:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735649843;
	bh=DaJywbsTA8NGdYwIFXUSu9T2zpzn+s7K/k0e2i6sSeQ=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=Dj8dUZsuOn8uA2TksktkcC1mV4tZ6+oxYppAnFUZlWONHYtst6GKGAT+WeZ8Fb0Tu
	 kxrnoBtRXPC4SKNu05FUYkl55iFgkfpp+SpwE7bpAy7ocYI5zTaGvsVd7G+ck3Kn6u
	 xjwoNKaOrtOYiTNP+bZzQhG8aq2eiKc0JeYKri2qh0WcKDd8G4AvqcZftJQwEy8lzX
	 tZkqTrkYzCN67Kq6C2wP8ZQsfWjJ2serUjBZ5adtdQRF18qSkEhoREWQxvTJqvvnkS
	 /gl02vWbI3uOL7642Z9p9n2DhBd/kljU4EK4Fl1D6w3QLHKkAOtidou/JRmNxRz/zG
	 CVP0BW3X9lMBg==
Date: Tue, 31 Dec 2024 06:57:21 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, detlev.casanova@collabora.com, 
 linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, 
 krzk+dt@kernel.org, linux-kernel@vger.kernel.org
To: Andy Yan <andyshrk@163.com>
In-Reply-To: <20241231095728.253943-1-andyshrk@163.com>
References: <20241231095728.253943-1-andyshrk@163.com>
Message-Id: <173564980410.21979.2947276365464229762.robh@kernel.org>
Subject: Re: [PATCH v3 0/3] Add display subsystem dt node on rk3576


On Tue, 31 Dec 2024 17:57:17 +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> 
> As the VOP[0] and HDMI[1] driver have already been submitted for review.
> This series enable hdmi display on sige5 board.
> 
> [0] https://lore.kernel.org/linux-rockchip/20241231090802.251787-1-andyshrk@163.com/T/#t
> [1] https://lore.kernel.org/linux-rockchip/20241231094425.253398-1-andyshrk@163.com/T/#t
> 
> Changes in v3:
> - Split from https://lore.kernel.org/linux-rockchip/3330586.aeNJFYEL58@diego/T/#t
> 
> Andy Yan (3):
>   arm64: dts: rockchip: Add vop for rk3576
>   arm64: dts: rockchip: Add hdmi for rk3576
>   arm64: dts: rockchip: Enable hdmi display on sige5
> 
>  .../boot/dts/rockchip/rk3576-armsom-sige5.dts |  47 +++++++
>  arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 126 ++++++++++++++++++
>  2 files changed, 173 insertions(+)
> 
> --
> 2.34.1
> 
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y rockchip/rk3576-armsom-sige5.dtb' for 20241231095728.253943-1-andyshrk@163.com:

arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dtb: /soc/syscon@26032000: failed to match any schema with compatible: ['rockchip,rk3576-hdptxphy-grf', 'syscon']
arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dtb: /soc/vop@27d00000: failed to match any schema with compatible: ['rockchip,rk3576-vop']
arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dtb: iommu@27d07e00: compatible: 'oneOf' conditional failed, one must be fixed:
	['rockchip,rk3576-iommu', 'rockchip,rk3568-iommu'] is too long
	'rockchip,rk3576-iommu' is not one of ['rockchip,iommu', 'rockchip,rk3568-iommu']
	'rockchip,rk3576-iommu' is not one of ['rockchip,rk3588-iommu']
	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dtb: /soc/iommu@27d07e00: failed to match any schema with compatible: ['rockchip,rk3576-iommu', 'rockchip,rk3568-iommu']
arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dtb: /soc/hdmi@27da0000: failed to match any schema with compatible: ['rockchip,rk3576-dw-hdmi-qp']
arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dtb: hdmiphy@2b000000: compatible:0: 'rockchip,rk3576-hdptx-phy' is not one of ['rockchip,rk3588-hdptx-phy']
	from schema $id: http://devicetree.org/schemas/phy/rockchip,rk3588-hdptx-phy.yaml#
arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dtb: hdmiphy@2b000000: compatible: ['rockchip,rk3576-hdptx-phy', 'rockchip,rk3588-hdptx-phy'] is too long
	from schema $id: http://devicetree.org/schemas/phy/rockchip,rk3588-hdptx-phy.yaml#
arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dtb: hdmiphy@2b000000: resets: [[17, 428], [17, 450], [17, 451], [17, 452]] is too short
	from schema $id: http://devicetree.org/schemas/phy/rockchip,rk3588-hdptx-phy.yaml#
arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dtb: hdmiphy@2b000000: reset-names:0: 'phy' was expected
	from schema $id: http://devicetree.org/schemas/phy/rockchip,rk3588-hdptx-phy.yaml#
arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dtb: hdmiphy@2b000000: reset-names:1: 'apb' was expected
	from schema $id: http://devicetree.org/schemas/phy/rockchip,rk3588-hdptx-phy.yaml#
arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dtb: hdmiphy@2b000000: reset-names:2: 'init' was expected
	from schema $id: http://devicetree.org/schemas/phy/rockchip,rk3588-hdptx-phy.yaml#
arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dtb: hdmiphy@2b000000: reset-names:3: 'cmn' was expected
	from schema $id: http://devicetree.org/schemas/phy/rockchip,rk3588-hdptx-phy.yaml#
arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dtb: hdmiphy@2b000000: reset-names: ['apb', 'init', 'cmn', 'lane'] is too short
	from schema $id: http://devicetree.org/schemas/phy/rockchip,rk3588-hdptx-phy.yaml#
arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dtb: /soc/hdmiphy@2b000000: failed to match any schema with compatible: ['rockchip,rk3576-hdptx-phy', 'rockchip,rk3588-hdptx-phy']






