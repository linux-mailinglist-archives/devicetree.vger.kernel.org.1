Return-Path: <devicetree+bounces-80231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC32918249
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 15:25:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3D96F1F22E1F
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 13:25:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8122A181D07;
	Wed, 26 Jun 2024 13:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5AF3cWM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57735181CE3
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 13:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719408313; cv=none; b=JcAZFEi6Ikl2Aks/vLVnbh98ZyHw5JVk5BVq0zZVgcAa3Kkd9eDc4mX7iZki/vwmtwPrsnOr3po/OG1/YE1vierlOS5zVJ8P6s+/BUtjSAFMvQxOg9j3hBQabyBPAlr5HQW+tB+qILocWbEgLXApS6dN20mbgQ07jQ9+o6oro2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719408313; c=relaxed/simple;
	bh=QmsuC8jN8Omew9b99dXKTzKG2pjGmCB6a1Jqa2GTJe0=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=pseW57/F13fkVP83N7cYOsw9EgvjgU5AIQZyqBM3j37pcWst4yO8nUsYWo0jYI4XBViOEz+soGD/z6CAR3xnhc3ix5O5m+KAceC/Lzpd6Y95MtEma+ebZSV0MkKV3kCnmwIsC8iePfa4Ct9uimCBzjt5kvcl8yv/Z7Lv8AGsLx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5AF3cWM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B31EC4AF07;
	Wed, 26 Jun 2024 13:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719408313;
	bh=QmsuC8jN8Omew9b99dXKTzKG2pjGmCB6a1Jqa2GTJe0=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=I5AF3cWMOPhUZyFXdF4BfnaEEDWY6TtzoicM6K0AbGFCqahYl7SGGEysS5IIXTp/6
	 bNhHRQgA15IMFugRaQF+Bq64tRfrBh/+l7ignallUkmtXHsYyqsyKIA1oa5JBc1Aj9
	 rtqDaGo3g3MOaTUh/nnXs55HVOBOm6fMC/OMDn9HbUAEEqdcOi678pY4WjgZvCO6Kd
	 rql0f90JKZMBvSrs105CHleiHeTGAYPpIp4E+5APkZseUzPVO/yiyTcMtfExTyQk5E
	 LsZ7Rp07d6W5d1lxuM7uBIjEpyxSZWmSEZ2ccPy/EU4JKx6A0z7Lm6EkVqcWK4Y5T0
	 fjzlnudtnZCpA==
Date: Wed, 26 Jun 2024 07:25:12 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Heiko Stuebner <heiko@sntech.de>, Sugar Zhang <sugar.zhang@rock-chips.com>, 
 Conor Dooley <conor+dt@kernel.org>, inux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
In-Reply-To: <20240623090116.670607-1-knaerzche@gmail.com>
References: <20240623090116.670607-1-knaerzche@gmail.com>
Message-Id: <171940790685.2950756.7239158796460093682.robh@kernel.org>
Subject: Re: [PATCH v2 0/4] Add LBA3368 board


On Sun, 23 Jun 2024 11:01:12 +0200, Alex Bee wrote:
> This series aims to add support for RK3368 based LBA3368 industrial board
> form Neardi. The device tree currently only contains entries for which both
> bindings and linux driver exists and is expected to be exended in future.
> 
> NB: checkpatch throws me a warning that no venddor-prefix for "usb5e3"
> exists - which is true - but "usb5e3,610" has a valid binding.
> 
> Changes in v2:
>  - board DT property re-ordering / fixes
> 
> Link to v1:
>  https://lore.kernel.org/all/20240621134030.243646-1-knaerzche@gmail.com/
> 
> Alex Bee (4):
>   dt-bindings: vendor-prefixes: Add Neardi Technology
>   dt-bindings: arm: rockchip: Add Neardi LBA3368
>   arm64: dts: rockchip: Add sound-dai-cells for RK3368
>   arm64: dts: rockchip: Add Neardi LBA3368 board
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3368-lba3368.dts      | 661 ++++++++++++++++++
>  arch/arm64/boot/dts/rockchip/rk3368.dtsi      |   3 +
>  5 files changed, 672 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3368-lba3368.dts
> 
> --
> 2.45.2
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3368-lba3368.dtb' for 20240623090116.670607-1-knaerzche@gmail.com:

arch/arm64/boot/dts/rockchip/rk3368-lba3368.dtb: /i2c@ff660000/codec@1c: failed to match any schema with compatible: ['realtek,rt5640']
arch/arm64/boot/dts/rockchip/rk3368-lba3368.dtb: /mbox@ff6b0000: failed to match any schema with compatible: ['rockchip,rk3368-mailbox']






