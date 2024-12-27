Return-Path: <devicetree+bounces-134385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B649FD590
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 16:19:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5084F18899B1
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 15:19:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 315B61F7579;
	Fri, 27 Dec 2024 15:18:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzQ//AxP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8301F7571
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 15:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735312734; cv=none; b=gJQMlh4LVEi0j6dfVI18wPcA97g8PBuTvyaYVhKsvTnd3HSY688V+rwyBXX30AmUGGY5UFEwdzfv1Etqt8jiDqq6sjcpbCf6iyfp3TooymZObml/IFwPg1mQo1hFHjUbxSxk5FbuWv0bv/1y8CZk4O1X/kZ90RAHmpppUcKknM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735312734; c=relaxed/simple;
	bh=tw6ZEAS9faDIB2cEYF9LXc8hyVuu18NNu4FmTjaXFxQ=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=N1ejrAL8jJ2dusC3N2nQVMQW2iciT+mjo4nOwRNh7Q+5PoPLCVHPMWKaZppzF+cAw7bQoxaN02M+VS1waiDhEQa+ingRudrjyuS2qaZ3K+vcoeOpR6045gO9g8n9TxOBk+7/D5uaaybl6tEV7EfZVXNpOFpeagr0ZeMXICX8lzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzQ//AxP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D8CDC4CEDC;
	Fri, 27 Dec 2024 15:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735312733;
	bh=tw6ZEAS9faDIB2cEYF9LXc8hyVuu18NNu4FmTjaXFxQ=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=dzQ//AxPvYQXZITJ8MjJmIp2+gH+tXJnwy0KolFV1/LCZqCZMRjket7I674G1BXpR
	 eRU/+BDUlzVnwTIwGY/kcHjnxF96JS5MuMwa03O3pshO1Cg1HG2+T6RpXBXWWHttwq
	 kTy6/r0ZRs7N5f5ZBU7uLnRed4uJcsPKX42oqLm4PBw4zq5erk13MmCfnkfIOHgBJR
	 i3SSIzJQvfpsfkzpBEoqZUT/KdgjOkpQE4tYJzByjZxGhNz8uTFpMdSEeMWDIsW63o
	 RORY7TdZizPINgDT7vo3SdfPHRWKaDYGZT2yWZp9+/YEEREX3f/Tp2bqcGKHbePjSs
	 rRxbwXm5RPr0g==
Date: Fri, 27 Dec 2024 09:18:51 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: dsimic@manjaro.org, sebastian.reichel@collabora.com, 
 michael.riesch@wolfvision.net, alchark@gmail.com, jonas@kwiboo.se, 
 conor+dt@kernel.org, macromorgan@hotmail.com, dmt.yashin@gmail.com, 
 tim@feathertop.org, heiko@sntech.de, linux-rockchip@lists.infradead.org, 
 inindev@gmail.com, devicetree@vger.kernel.org, krzk+dt@kernel.org, 
 liujianfeng1994@gmail.com, marcin.juszkiewicz@linaro.org, jbx6244@gmail.com
To: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20241226005845.46473-1-naoki@radxa.com>
References: <20241226005845.46473-1-naoki@radxa.com>
Message-Id: <173531253298.3886427.1210602416910073025.robh@kernel.org>
Subject: Re: [PATCH v2 0/2] arm64: dts: rockchip: Add Radxa ROCK 5B+


On Thu, 26 Dec 2024 00:58:42 +0000, FUKAUMI Naoki wrote:
> The Radxa ROCK 5B+ is an upgraded version of the Radxa ROCK 5B.
> 
> This patch series introduces a shared .dtsi that can be used on the
> new Radxa ROCK 5B+, the existing Radxa ROCK 5B, and the upcoming Radxa
> ROCK 5T.
> 
> FUKAUMI Naoki (2):
>   dt-bindings: arm: rockchip: Add Radxa ROCK 5B+
>   arm64: dts: rockchip: Add Radxa ROCK 5B+
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |    5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |    1 +
>  .../boot/dts/rockchip/rk3588-rock-5.dtsi      | 1042 +++++++++++++++++
>  .../boot/dts/rockchip/rk3588-rock-5b-plus.dts |   87 ++
>  4 files changed, 1135 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5.dtsi
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts
> 
> --
> 2.43.0
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3588-rock-5b-plus.dtb' for 20241226005845.46473-1-naoki@radxa.com:

arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dtb: phy@fee80000: 'phy-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/phy/rockchip,pcie3-phy.yaml#
arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dtb: keys-0: 'key-0' does not match any of the regexes: '^button-', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/input/adc-keys.yaml#
arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dtb: keys-1: 'key-1' does not match any of the regexes: '^button-', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/input/adc-keys.yaml#






