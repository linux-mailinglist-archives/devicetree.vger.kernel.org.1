Return-Path: <devicetree+bounces-135928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D8CA03097
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 20:28:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B941188557A
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 19:28:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCAF31DFE1D;
	Mon,  6 Jan 2025 19:28:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgRlgU8G"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A52401DFE14;
	Mon,  6 Jan 2025 19:28:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736191680; cv=none; b=rWG+pwaoO45QUX/yFzTDRqSck5dD5VSEoe5g7XAzbfKVqMXNhah5u5qEXdnQM8sbqMa63lgRufpMEFJTmg7KzGU4/r5Kxq0MbpaynDG3b3WHMGqAtT4znOx00U0tr+5RWVDhgwO2ASMYgYaxaBTICXW0vjFGIqiHLZaTf0K4ShE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736191680; c=relaxed/simple;
	bh=5tsX07eTkRoFq5Nm38qev6WjEZVcUzeCa6oqpna7Ed8=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=NVXGwFbdAsxryoHrCHhyJHGvRT9Yi3O3a3MqMdHMda8cLfrfhwtHtH8iAmyUOxoEUWhZpSDT7X6xHxL2uy44qnCCnkgDiBBiO3OU/KE7d9nODkkiZdfIRlgcXU2Jx/UqNnqcpmN8JvSwueUo/4iBZNd1KLsIq6oGtTP8wGm95jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgRlgU8G; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3CAEC4CED6;
	Mon,  6 Jan 2025 19:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736191680;
	bh=5tsX07eTkRoFq5Nm38qev6WjEZVcUzeCa6oqpna7Ed8=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=kgRlgU8GU1TddcQJm0LiALzx0MqBz6jPBo89Q7e/Hkl+AJZc3RVrJtwjodqAkU3c4
	 Y3lftu93fHXW79FbIhDfGSXri633ulM9+eXy+anXy3iXQuyECl3EeM6zbw+v+F5RVP
	 mPFJqdHUPyqX9LFROjM3icAhY0LkhsvtrvsFBFA8XxCrXhp1Tl/OjUtmCG7DZEyBjo
	 /zmLu2XcCTfmEwInaUb2F4tx1hOOQN9LqVpLic3BysOkyjM3/IeH1hlP93jQzdnMjJ
	 ZJuiw3fhZqGEE7oF+mA4NsdZuTTortuiquR9MF+TuzxGHgAuRnlhaLDTMZVhq/KymB
	 6suevT9PiD80g==
Date: Mon, 06 Jan 2025 13:27:59 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 linux-rockchip@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>
To: Alexey Charkov <alchark@gmail.com>
In-Reply-To: <20250106-rk3588-h96-max-v58-v1-0-d25255f851fc@gmail.com>
References: <20250106-rk3588-h96-max-v58-v1-0-d25255f851fc@gmail.com>
Message-Id: <173619154694.838812.1604486663887944578.robh@kernel.org>
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: Add H96 Max V58 (RK3588
 based TV box)


On Mon, 06 Jan 2025 01:07:16 +0400, Alexey Charkov wrote:
> H96 Max V58 is a compact TV box based on Rockchip RK3588 SoC [1]
> that ships with Android by default. Add support for it.
> 
> Note that there is no publicly available hardware documentation,
> nor vendor sources to be used as a reference, so this implementation
> is best effort based on poking around my board and staring at the
> decompiled stock DTB. It works for me, but improvement suggestions
> are very much welcome.
> 
> HDMI output is not tested, but expected to work.
> 
> SPDIF output is not enabled (base RK3588 .dtsi needs amendment)
> 
> Auxiliary LED display is not enabled (no mainline driver available).
> The controller used is FD6551 connected to GPIO3 RK_PC7 (clk) and
> GPIO3 RK_PD0 (data), which happen to be the right pins for
> i2c5m0_xfer pinctrl config, and thus might potentially be used with
> the hardware I2C5 controller (to be verified). Out of tree userspace
> driver is available at [2].
> 
> [1] https://www.h96tvbox.com/product/h96max-v58/
> [2] https://github.com/arthur-liberman/linux_openvfd/blob/master/driver/controllers/fd650.c
> 
> Signed-off-by: Alexey Charkov <alchark@gmail.com>
> ---
> Alexey Charkov (2):
>       dt-bindings: arm: rockchip: Add H96 Max V58 TV box
>       arm64: dts: rockchip: Add H96 Max V58 TV Box based on RK3588 SoC
> 
>  .../devicetree/bindings/arm/rockchip.yaml          |   5 +
>  arch/arm64/boot/dts/rockchip/Makefile              |   1 +
>  .../arm64/boot/dts/rockchip/rk3588-h96-max-v58.dts | 785 +++++++++++++++++++++
>  3 files changed, 791 insertions(+)
> ---
> base-commit: af349ca4d3f8659d84abc667125c826fda155109
> change-id: 20240618-rk3588-h96-max-v58-c2c1bf8e6996
> 
> Best regards,
> --
> Alexey Charkov <alchark@gmail.com>
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3588-h96-max-v58.dtb' for 20250106-rk3588-h96-max-v58-v1-0-d25255f851fc@gmail.com:

arch/arm64/boot/dts/rockchip/rk3588-h96-max-v58.dtb: syscon@fd5d0000: usb2phy@0:otg-port: 'vbus-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/soc/rockchip/grf.yaml#
arch/arm64/boot/dts/rockchip/rk3588-h96-max-v58.dtb: usb2phy@0: otg-port: 'vbus-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/phy/rockchip,inno-usb2phy.yaml#
arch/arm64/boot/dts/rockchip/rk3588-h96-max-v58.dtb: regulator-3v3-pcie: gpios: [[267, 1, 0], [187, 20, 0]] is too long
	from schema $id: http://devicetree.org/schemas/regulator/fixed-regulator.yaml#
arch/arm64/boot/dts/rockchip/rk3588-h96-max-v58.dtb: regulator-3v3-pcie: Unevaluated properties are not allowed ('gpios' was unexpected)
	from schema $id: http://devicetree.org/schemas/regulator/fixed-regulator.yaml#






