Return-Path: <devicetree+bounces-93697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D2A951F09
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 17:48:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 739D31C21F8E
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 15:48:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 734211B86E2;
	Wed, 14 Aug 2024 15:48:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfoWNAgT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDDD1B86DD
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 15:48:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723650486; cv=none; b=O2/0kQgUH6+MNPKARIs+3K27OlvbscNBTBzQ7Ecmw4URfkupDV3qcoDMk+DV3H5A/Tcv6zyFJFj2BfjppweA//Zqn/vZNp5XIBSe4lWuY7iMcpMTgjaS3q9r7UBIU1ZRkbK7DoDKOYx9CSJmIxBOUf4pB0fTe0535UyFtF7N+34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723650486; c=relaxed/simple;
	bh=6Fp5R5GA9ImgtseA1YQkWyI7ugw4FOB2zpNPHuLaTZc=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=ioYPbRB/T7/QafMjQYxGm9KfVgbs0ikEj8mZmbCj/RiW5CZdnbuykdv8Us2w8ms7tPXkcScAkXF2FL+nmB8N+E3dyyTw+EhJETRMei36GfMFpsOVpdBuwYvM7HnCfPAQkbCopf2arkr1MbMh16CS6SIoHqvwwNrbc8lbUHxv2nY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfoWNAgT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D44FC4AF0F;
	Wed, 14 Aug 2024 15:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723650485;
	bh=6Fp5R5GA9ImgtseA1YQkWyI7ugw4FOB2zpNPHuLaTZc=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=AfoWNAgTIfBxNR8ziRq5QcKOvRlPDvprKuq48am8dx6/4JH7w9V+r++7P8hoUKQd8
	 H5Wo+PnRVJwrKJaAp3GnjJhtK7wlARFVe9GOdG1tehv0c+kWA5B7hojI5IO9b6EGOw
	 6AKvWphCFlT5NZJQlfMMUaSaoq7GbnQaRwxC2z0mUR4sOMwmrsjpMyHDNLjL2wOWtw
	 5fRSIz033+ltyrOOOna/0Tb9xpbHk8PM7oVMpNU7pke/sexNU1NDXv/LQ50v9OBFgm
	 5wq9xspQQlT6AbuCtavh7mNXkFXqprRmgrCDI/H7ZC8J9m8UYGgIoyxYamB7U1U5x+
	 +JleI14PPj6uw==
Date: Wed, 14 Aug 2024 09:48:04 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 heiko@sntech.de, krzk+dt@kernel.org, conor+dt@kernel.org
In-Reply-To: <20240814095727.1662908-1-naoki@radxa.com>
References: <20240814095727.1662908-1-naoki@radxa.com>
Message-Id: <172365034737.2714484.13216385355869923576.robh@kernel.org>
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: rockchip: add support for
 Radxa ROCK Pi E v3.0


On Wed, 14 Aug 2024 18:57:26 +0900, FUKAUMI Naoki wrote:
> Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
> RK3328 chip.
> 
> [1] https://radxa.com/products/rockpi/pie
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v4:
> - update compatible string for OpenWrt
> - drop A-b tag
> Changes in v3:
> - collect A-b tag
> Changes in v2:
> - fix typo in commit message
> - add missing --- in commit message
> - add new section instead of new item in rockchip.yaml
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3328-rock-pi-e-v3.dtb rockchip/rk3328-rock-pi-e.dtb' for 20240814095727.1662908-1-naoki@radxa.com:

arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: hdmi@ff3c0000: interrupts: [[0, 35, 4], [0, 71, 4]] is too long
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /phy@ff430000: failed to match any schema with compatible: ['rockchip,rk3328-hdmi-phy']
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']






