Return-Path: <devicetree+bounces-134381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E899FD582
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 16:18:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F1B53A462D
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 15:18:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1021C1F3D55;
	Fri, 27 Dec 2024 15:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIKZPbLc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEAE9F9D6
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 15:18:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735312726; cv=none; b=HjicHCusldchTdrY1tBiOgMX6169jSRpBNlQ47nr2hkoE1J5LkNgbH1WXzIsHUPkiuKVQq7oEAzP96eMOTRjGPxPglmL4VD927xHXcyixb/dPs6QzqtgPWzUT4VE+48H7Gtdtk9torzUa5aE9oa57C97+fM1uHDhNC6ETiZTAj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735312726; c=relaxed/simple;
	bh=7MZK9pGM0C6a9RgTon/RXiHnSmnoT6GggO0jezi5nUI=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=Bh9IHrFxulxMkNbfRceRhU1maXkQO3yHh5qkQJcVmGyG/dQLZJ8/f9LjGgC6wuf2IESZJLNXgd8AjeBM1dN5afsxGF6AJaAOPhjqHodFdP1Rjjnm+9iB/1vvr16qg95BCUef5YNKU/+bjgFvJmeY0ENJiR+n7+zb5gkOtPTxZG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIKZPbLc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A51BC4CED0;
	Fri, 27 Dec 2024 15:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735312725;
	bh=7MZK9pGM0C6a9RgTon/RXiHnSmnoT6GggO0jezi5nUI=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=rIKZPbLco4M7mx3R21yzC3KOqqlZTJvuQymfjU71PPBlP+7oAXlkPyqii3fwgVFlu
	 JB1UTEY2wqgCBXIpiVnYjWuqTej46CNi7N2+QnpujM7LAJC881cycFtR3xGZpMwYe8
	 gWozI5gRSqXaSqpUm47gYTH0WysBYMajIJZoeU5uzzxUdU+WmF+jL4gnaYONKJ9U6e
	 mcCnIiPOoD1eVQdzZ09+oxEhT+sIPJxeP4E5Xy7kzf2TKN64QXB1cOWRzGK+P7rNWG
	 GpmfsBODpDWuJW58gGTDzpdDfFhOa+FYs8mp7UIpankuez9lCEDhYBLufXH/Vrdzfy
	 +BdmO7vzrAP7g==
Date: Fri, 27 Dec 2024 09:18:43 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: dsimic@manjaro.org, heiko@sntech.de, linux-rockchip@lists.infradead.org, 
 krzk+dt@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
To: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20241223013926.1134-1-naoki@radxa.com>
References: <20241223013926.1134-1-naoki@radxa.com>
Message-Id: <173531252904.3886220.13460367625900532878.robh@kernel.org>
Subject: Re: [PATCH v6 0/7] arm64: dts: rockchip: Refine dts for Radxa ROCK
 5C


On Mon, 23 Dec 2024 01:39:19 +0000, FUKAUMI Naoki wrote:
> This patch series includes fixes for improvements, trivial changes,
> etc for Radxa ROCK 5C.
> 
> FUKAUMI Naoki (7):
>   arm64: dts: rockchip: Change the function of the blue LED for Radxa
>     ROCK 5C
>   arm64: dts: rockchip: Use a longer PWM period for the fan on Radxa
>     ROCK 5C
>   arm64: dts: rockchip: Remove the RTC and related nodes for Radxa ROCK
>     5C
>   arm64: dts: rockchip: Add cd-gpios for sdmmc for Radxa ROCK 5C
>   arm64: dts: rockchip: Fix the properties of the PMIC regulators for
>     Radxa ROCK 5C
>   arm64: dts: rockchip: Trivial changes for Radxa ROCK 5C
>   arm64: dts: rockchip: Sort nodes for Radxa ROCK 5C
> 
>  .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 239 ++++++++----------
>  1 file changed, 107 insertions(+), 132 deletions(-)
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3588s-rock-5c.dtb' for 20241223013926.1134-1-naoki@radxa.com:

arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dtb: ethernet-phy: 'reg' is a required property
	from schema $id: http://devicetree.org/schemas/net/ethernet-phy.yaml#






