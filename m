Return-Path: <devicetree+bounces-85732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C099313BC
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 14:12:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D02528152B
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 12:12:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0386618C173;
	Mon, 15 Jul 2024 12:12:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3+BXvZf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34EE23BF
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 12:12:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721045566; cv=none; b=FXvqQArtOyOHekS/KSBeDdoLdWRVfmjPB2VFEfiZR88feKIJWsk8C9fPFuVN5rQqBIlfb5ubHfSJ1miAWW1gA/YkKiQSYabmu841Ih9C9W/n953Ho5KrVBYEtP7aaJfTqXspAXrDSH+exr47ZECfxJ5Q8aacpehAfClDqwYzmu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721045566; c=relaxed/simple;
	bh=eSRyMi/rWxbizFibd+EiCGWMUiUN42/Uz6PKhxUBSco=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=MskXEtvWoJ4vgxnQX+hqWDQnourMMgYi8+PjFrzlqWKq/XQ/C9DE2Ev37lA0QUjNMFuQOIgzVUOFtypxncd7Qwbr5uhWOPP15W+5pUfBFE8C+Wr08EaU6R/39VGLs+iJc30vHgegpIJG32+UfPfFSlxnzFNOKuJiO2iCDUmUPJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3+BXvZf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44BB3C4AF1B;
	Mon, 15 Jul 2024 12:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721045565;
	bh=eSRyMi/rWxbizFibd+EiCGWMUiUN42/Uz6PKhxUBSco=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=S3+BXvZfFWDpHpU111bKMQS+25S2lsBw8d3TJOfdG5wXJVtm4BZyOvzvim87CTDIc
	 i351FmIfObKVakC/xPVkfh30UOvDxwwNV3gNDTwLA8fHdrZQ7k/ieJDBuFq0myPAdx
	 LST7g4QWD9x0nexmCBy0slFP/OSgxON3lpYItdysaiVre6p0xpJcVTPc0s6O4Roo51
	 xOnPlbsVowwANQ2yKMmkwN/WGuOE/7EWai0hrmARC5p7AST/svBhaY+9qjQQCioalY
	 uymWrd6ZYLPsb8YYp6fruABGDTH3ta5NKaSWK55dzy6qEoC6ax1VDkMocOfkhxc1tv
	 UmN5IreTEIt6A==
Date: Mon, 15 Jul 2024 06:12:43 -0600
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
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, heiko@sntech.de, 
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20240712215300.720113-1-naoki@radxa.com>
References: <20240712215300.720113-1-naoki@radxa.com>
Message-Id: <172104541069.3725239.3048756738341305722.robh@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: add support for
 Radxa ROCK Pi E v3.0


On Sat, 13 Jul 2024 06:52:59 +0900, FUKAUMI Naoki wrote:
> Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
> RK3328 chip.
> 
> [1] https://radxa.com/products/rockpi/pie
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3328-rock-pi-e-v3.dtb rockchip/rk3328-rock-pi-e.dtb' for 20240712215300.720113-1-naoki@radxa.com:

arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: hdmi@ff3c0000: interrupts: [[0, 35, 4], [0, 71, 4]] is too long
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /phy@ff430000: failed to match any schema with compatible: ['rockchip,rk3328-hdmi-phy']
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']






