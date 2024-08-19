Return-Path: <devicetree+bounces-94887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 019F8957163
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 19:03:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B00C4284169
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 17:03:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB7A34965C;
	Mon, 19 Aug 2024 17:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nj1CWxvl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A74508BFC
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 17:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724086965; cv=none; b=RQEGGv7hz73YGpjpZCbxzo/bMWbJNt7Pwqg3IZ5sAf1/I7N5QELaTKNKjJ5nbEFMCMUPcLHbNa+bE025uTKIZ0U4WREqs+3STFR9V3RsYvKjcRWEPXnyss+UfBWuXCFEm6cQ4b+5RJCXKOx1MnNe8FCp6vY+ChQY9iyeUTMEgPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724086965; c=relaxed/simple;
	bh=Q1xW/0nBXIW/86VsGilfh+HMuH2E4QdrIJgAob+KTVE=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=BkiL/YuMMKz8c2HgPk5j9Sl8f06tXLa5ll+2NiJlnQwSdFPDyIn6CRbEhEtntIxr59F+uQzSPVbWJwLg4tjuOwj7tx9SRS798TlPMMxoj7VNFp8W1q4DN3G6/uFL/mwzRKkCFSkKcs518eQmzRbxWETGtLIelnkpa1ojuDLy+8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nj1CWxvl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB0B9C32782;
	Mon, 19 Aug 2024 17:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724086965;
	bh=Q1xW/0nBXIW/86VsGilfh+HMuH2E4QdrIJgAob+KTVE=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=nj1CWxvlBRYiNVii5vPO/kdnZO/7ga67Q5mk00xptcXTV6SPxYeQpyScNFEED+DA/
	 81xXlYENgmyUK73KHwv4Org1LvOO5z/muerXrHc4zLDKdF8mYy6ENq0uhT7dRmUsQh
	 cPgPT3bFVidZ4WmLtMU5wMRXyZzyL2osU1dgTbRoEjz9Gw9z073XxlVsMvIvjRh5K5
	 w6QScWrHXc+d+Jj9bA6tjcpVMaOvAv3TNXVV3LJDUKHby2NSAN6SgtWfNPLYieyEDp
	 hrF6khnPUGgKDFzicM4qbEyVQ+V8cDW6X5r4ib92mI87pnFVFpjlNOIynv/te1y0Mu
	 fZd0kJ/GoiObQ==
Date: Mon, 19 Aug 2024 11:02:43 -0600
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
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de
In-Reply-To: <20240816213429.1093-1-naoki@radxa.com>
References: <20240816213429.1093-1-naoki@radxa.com>
Message-Id: <172408433165.1619643.7928785825448507704.robh@kernel.org>
Subject: Re: [PATCH v5 1/2] dt-bindings: arm: rockchip: add support for
 Radxa ROCK Pi E v3.0


On Sat, 17 Aug 2024 06:34:28 +0900, FUKAUMI Naoki wrote:
> Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
> RK3328 chip.
> 
> [1] https://radxa.com/products/rockpi/pie
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v5:
> - revert compatible string
> - describe rockchip.yaml properly
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
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3328-rock-pi-e-v3.dtb rockchip/rk3328-rock-pi-e.dtb' for 20240816213429.1093-1-naoki@radxa.com:

arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: hdmi@ff3c0000: interrupts: [[0, 35, 4], [0, 71, 4]] is too long
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /phy@ff430000: failed to match any schema with compatible: ['rockchip,rk3328-hdmi-phy']
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']






