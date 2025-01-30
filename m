Return-Path: <devicetree+bounces-141968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DBD4A237FB
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 00:38:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E1194166C5C
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 23:38:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDF8F1F237E;
	Thu, 30 Jan 2025 23:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4n146eY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA440139B
	for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 23:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738280288; cv=none; b=mIPfZ3LiooME4GvZC97kLF88AKUm6wRxN9nyXE2VrIpLK4pILJPUgH8U9cELRxBUE+aZDAHURarieVgEiHnlEbCG0xH5FFYROViee8MUlKA8KJMdwV9lDZo/VoGX7etI7skvu5q0AkqXsXOMDVkqnsLOLJjBtA0DtUHm03aHxSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738280288; c=relaxed/simple;
	bh=8yZNBiKUbE5MlUbaWMZLLsW0PfS5yFHCz4qlV3sF6NE=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=AImGenI4CQEzjqeQ2Au0zZjObS5BVoQI5vMD0pRFj4KE2lnQ0Zq19drcGOlYxCalHYdsZMlrxaXx43v7uLPvrFkba3M2uFV3nY+IGivkhgZ/7tH4Y8LQMOvtbkIuqmerYtf+7VIr7yobXSHcOH6PpC7ONb8MGut8X82TKH0OQJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4n146eY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16BFFC4CEE1;
	Thu, 30 Jan 2025 23:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738280288;
	bh=8yZNBiKUbE5MlUbaWMZLLsW0PfS5yFHCz4qlV3sF6NE=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=i4n146eY/eGPBqUTKrH5iQlVsQKVXhOUoINbo2AN1GSD04bIg06Y0FZ38ZgBmfla3
	 Fpfobxkvkoc9aDBb5YYIDL2HXZSDE999v4CasK7XT0p17Z5nP3RsK5AqiiyH8Ai33c
	 LHj21TkIRLBM+NVjWaMcV9QAQQ5bzLkmdzG9gp4iNOE4/yIjag46vmuX2o7Ei7+Q1H
	 BqTA3qZkGZjKV3gyaZodzhSZR/oX2/59IMvuVgp0niqRJDJWeIYUzBaZHs2Cc8iwTT
	 Y65z09AOZJ7WNZhFWIvebgxDCKXVH2gZ8S+62lRTmkpSVklZmqX1fiTfhPjA6THk05
	 R+bHXX8yaJPxQ==
Date: Thu, 30 Jan 2025 17:38:07 -0600
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-rockchip@lists.infradead.org, 
 Kever Yang <kever.yang@rock-chips.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Conor Dooley <conor+dt@kernel.org>
To: Patrick Wildt <patrick@blueri.se>
In-Reply-To: <Z5toOecuMiBXM6aF@windev.fritz.box>
References: <Z5toOecuMiBXM6aF@windev.fritz.box>
Message-Id: <173828013372.1872573.10900756653547163550.robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add MNT Reform 2
 (RCORE)


On Thu, 30 Jan 2025 12:53:29 +0100, Patrick Wildt wrote:
> Document board compatible bindings.
> 
> Signed-off-by: Patrick Wildt <patrick@blueri.se>
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


New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/rockchip/' for Z5toOecuMiBXM6aF@windev.fritz.box:

arch/arm64/boot/dts/rockchip/rk3588-base.dtsi:355.39-358.4: Warning (clocks_property): /display-subsystem: Missing property '#clock-cells' in node /phy@fed60000 or bad phandle (referred from clocks[0])
  also defined at arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dts:200.20-203.3
arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dtb: display-subsystem: 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip-drm.yaml#
arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dtb: rk8602@42: Unevaluated properties are not allowed ('regulator-compatible', 'rockchip,suspend-voltage-selector' were unexpected)
	from schema $id: http://devicetree.org/schemas/regulator/fcs,fan53555.yaml#
arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dtb: rk8603@43: compatible: 'oneOf' conditional failed, one must be fixed:
	['rockchip,rk8602', 'rockchip,rk8603'] is too long
	'rockchip,rk8601' was expected
	'rockchip,rk8603' was expected
	'rockchip,rk8600' was expected
	'rockchip,rk8602' was expected
	from schema $id: http://devicetree.org/schemas/regulator/fcs,fan53555.yaml#
arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dtb: rk8603@43: Unevaluated properties are not allowed ('compatible', 'regulator-compatible', 'rockchip,suspend-voltage-selector' were unexpected)
	from schema $id: http://devicetree.org/schemas/regulator/fcs,fan53555.yaml#
arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dtb: hdmi@fde80000: Unevaluated properties are not allowed ('enable-gpios' was unexpected)
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml#
arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dtb: pmic@0: regulators:dcdc-reg4: Unevaluated properties are not allowed ('regulator-init-microvolt' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk806.yaml#
arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dtb: pmic@0: Unevaluated properties are not allowed ('pmic-reset-func', 'regulators', 'rk806_dvs1_pwrdn', 'rk806_dvs1_rst', 'rk806_dvs1_slp', 'rk806_dvs2_dvs', 'rk806_dvs2_gpio', 'rk806_dvs2_null', 'rk806_dvs2_pwrdn', 'rk806_dvs2_rst', 'rk806_dvs2_slp', 'rk806_dvs3_dvs', 'rk806_dvs3_gpio', 'rk806_dvs3_null', 'rk806_dvs3_pwrdn', 'rk806_dvs3_rst', 'rk806_dvs3_slp' were unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk806.yaml#
arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dtb: codec@1a: Unevaluated properties are not allowed ('port' was unexpected)
	from schema $id: http://devicetree.org/schemas/sound/wlf,wm8960.yaml#






