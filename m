Return-Path: <devicetree+bounces-80232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C1891824C
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 15:25:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 64323B26B04
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 13:25:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58663183098;
	Wed, 26 Jun 2024 13:25:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HryVjBQ9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E9B1822F3
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 13:25:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719408315; cv=none; b=mkIxNoHEVOfjLdYgKbiXItwbGU65lp3dLuEdYdDru0b/VrSICeBrL9UkGMC+KZ2IpEwgo6hdmqgG9xhG/4lNO8BVOfzP3224SUXxjNCiFraVldHJkQrIenWA49d5V3satkwHbUt6fug5ugxuQWN4cVr836L/hlh6kmkswSV0e18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719408315; c=relaxed/simple;
	bh=cSDPpTMcDEC2j8uQwxtBCGBjo3Lk1dGBNRAzKOx07Xw=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=elpvE4XS2B5ybgQ6qHb1jOdA9uyS8ONMkh+pWaRFPkQDNRTJLhRomFzSh74/BRc1nELdBewg2P4zi7e0o+CKezj42Liz1q8UneBZq6Mq/c4Hb8X8q7lSxH4Mh+xy8vgH5d8PcSH35W5KHpUJ3S+/Q7qfrVEMwckBVbSN80bW7NM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HryVjBQ9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 811FFC2BD10;
	Wed, 26 Jun 2024 13:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719408314;
	bh=cSDPpTMcDEC2j8uQwxtBCGBjo3Lk1dGBNRAzKOx07Xw=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=HryVjBQ9WTLc4ViiTTMguJigtEDUnEcofSwoss3Pz9nOYoOowz39fjk/f8AqgzhYi
	 pyrLWo1Z6HDbpQRYs5ucLkobYtbJb6t6Zshxmy6vI6MIoJYmBoF3b1+zwXwjDzcLOF
	 E/UpVaNCL/qp5OPPrX1uufQCfcer72i2cqHKuKgLQOcMsL5Lz4M88q1RVBT34ys651
	 hZRIp0T0KEQSH0KZ5mVNQR/SWOHp9MtJ2kOTx/zm0j9BUM922//y3uOLH+wkU/N9ip
	 Y048XXV7OajniVJK7pq17pX9RTuXioOLjEuqIDBAQzELsl8UHf4PUh9esLaHSG7Tan
	 Aj5Sm4NanvJsQ==
Date: Wed, 26 Jun 2024 07:25:13 -0600
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
Cc: linux-rockchip@lists.infradead.org, krzk+dt@kernel.org, heiko@sntech.de, 
 conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20240623201415.3205-1-naoki@radxa.com>
References: <20240623201415.3205-1-naoki@radxa.com>
Message-Id: <171940790949.2950908.11858258280996418792.robh@kernel.org>
Subject: Re: [PATCH v3 1/3] dt-bindings: arm: rockchip: Add Radxa ROCK Pi E
 v3.0


On Mon, 24 Jun 2024 05:14:13 +0900, FUKAUMI Naoki wrote:
> Add devicetree binding for the Radxa ROCK Pi E v3.0 board.
> 
> Radxa ROCK Pi E v3.0 is a single-board computer based on the Rockchip
> RK3328 SoC with a compact form factor.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> 
> Changes in v3:
> - none
> Changes in v2:
> - none
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3328-rock-pi-e-v3.dtb rockchip/rk3328-rock-pi-e.dtb' for 20240623201415.3205-1-naoki@radxa.com:

arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: hdmi@ff3c0000: interrupts: [[0, 35, 4], [0, 71, 4]] is too long
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /phy@ff430000: failed to match any schema with compatible: ['rockchip,rk3328-hdmi-phy']
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: ethernet@ff540000: Unevaluated properties are not allowed ('snps,rxpbl', 'snps,txpbl' were unexpected)
	from schema $id: http://devicetree.org/schemas/net/rockchip-dwmac.yaml#
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: ethernet@ff550000: Unevaluated properties are not allowed ('snps,txpbl' was unexpected)
	from schema $id: http://devicetree.org/schemas/net/rockchip-dwmac.yaml#






