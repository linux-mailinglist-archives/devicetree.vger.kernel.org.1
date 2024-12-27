Return-Path: <devicetree+bounces-134383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DCB9FD588
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 16:19:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E64B818899BB
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 15:19:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A5A61F709B;
	Fri, 27 Dec 2024 15:18:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ImqICU/+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14EFC1F7098
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 15:18:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735312730; cv=none; b=SSGOsfl2QMarHB1VR41TNjTf7Gz1ZNycmMcSm5jY2jVbiG7wz14dWzmKTP1yewgOPJWLXgTPgS/Cio6bKae4268q0ETlGUrDkj5B9x80gWI/HokCCF/s3Wlprmj41eKgxLZN0winGD3v9/Rvsp3O0cBIZ2hylaTGcFmKjo2/9Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735312730; c=relaxed/simple;
	bh=wVxyvbnFJZJpZORXATHZaQIcy63/CTEGuy++U49qP0E=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=h267RW8L2gN+lL+MuHjOrZ4yPYKujRQsaK0bybqH2Pt9LNYOlYJlNOG/wVcHkRs+Cxm8kKL7bmtJ63f4Q1smRhj14549PeM05pfuDu/JiXlrXRYh1baV1MQeYacMkTfOSJjFRR9M1+JMLVkMHFKBkRb81Q0utYKjGb+qlpyMCn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ImqICU/+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40479C4CED0;
	Fri, 27 Dec 2024 15:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735312729;
	bh=wVxyvbnFJZJpZORXATHZaQIcy63/CTEGuy++U49qP0E=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=ImqICU/+xtaEuyrHD24eI/xTjIFwgs+oAxI80yKUqS0ig+V0gaN9LVudFMt6YeDM0
	 sx6m+Gzpmurdv5N0Dau9ixAisAANqbPXiOTqpZnUYOadZ1ac86MfdwiZl/tbOxsi4S
	 fWiWJ/jc5VKOrjUxpQNBU+X0wtgZB+WRDmfbaw5BbiYY14J8Wo1f+P5UZwvFsaE7jb
	 +79Q0OqMpIGMkvcnSrKuBSOxjDlHCHRsazQAGgW/xRos2sylQoiISk2WXBknTMaZUL
	 +P8GYthL8H3FZgvnaMoR79QxIi5fjBly6PSttLOTEVI0sAOBtOL9YEXDwfoBG/1PAP
	 bf4k/MYjq2VfQ==
Date: Fri, 27 Dec 2024 09:18:47 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: alchark@gmail.com, sebastian.reichel@collabora.com, jonas@kwiboo.se, 
 marcin.juszkiewicz@linaro.org, liujianfeng1994@gmail.com, 
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, 
 tim@feathertop.org, conor+dt@kernel.org, michael.riesch@wolfvision.net, 
 heiko@sntech.de, dmt.yashin@gmail.com, dsimic@manjaro.org, 
 macromorgan@hotmail.com, krzk+dt@kernel.org, 
 cristian.ciocaltea@collabora.com, inindev@gmail.com, 
 devicetree@vger.kernel.org
To: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20241224210912.2121-1-naoki@radxa.com>
References: <20241224210912.2121-1-naoki@radxa.com>
Message-Id: <173531253192.3886371.4374836627027233294.robh@kernel.org>
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Add Radxa ROCK 5B+ and
 rebase Radxa ROCK 5B


On Tue, 24 Dec 2024 21:09:09 +0000, FUKAUMI Naoki wrote:
> The Radxa ROCK 5B+ is an upgraded version of the Radxa ROCK 5B.
> 
> This patch series introduces a shared .dtsi that can be used on the
> new Radxa ROCK 5B+, the existing Radxa ROCK 5B, and the upcoming Radxa
> ROCK 5T.
> 
> This patch series includes "arm64: dts: rockchip: Add USB-C support to
> ROCK 5B" by Sebastian Reichel[1].
> 
> [1] https://patchwork.kernel.org/project/linux-rockchip/patch/20241210163615.120594-1-sebastian.reichel@collabora.com/
> 
> FUKAUMI Naoki (3):
>   dt-bindings: arm: rockchip: Add Radxa ROCK 5B+
>   arm64: dts: rockchip: Add Radxa ROCK 5B+
>   arm64: dts: rockchip: Convert Radxa ROCK 5B to use shared .dtsi
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |    5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |    1 +
>  ...{rk3588-rock-5b.dts => rk3588-rock-5.dtsi} |  555 +++++----
>  .../boot/dts/rockchip/rk3588-rock-5b-plus.dts |   97 ++
>  .../boot/dts/rockchip/rk3588-rock-5b.dts      | 1026 ++---------------
>  5 files changed, 549 insertions(+), 1135 deletions(-)
>  copy arch/arm64/boot/dts/rockchip/{rk3588-rock-5b.dts => rk3588-rock-5.dtsi} (71%)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts
>  rewrite arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts (93%)
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3588-rock-5b-plus.dtb rockchip/rk3588-rock-5b.dtb' for 20241224210912.2121-1-naoki@radxa.com:

arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtb: phy@fee80000: 'phy-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/phy/rockchip,pcie3-phy.yaml#
arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dtb: phy@fee80000: 'phy-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/phy/rockchip,pcie3-phy.yaml#






