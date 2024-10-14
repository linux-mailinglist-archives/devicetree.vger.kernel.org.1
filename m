Return-Path: <devicetree+bounces-111071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FD499CC23
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 16:05:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 245022842E8
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 14:05:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C063719F12A;
	Mon, 14 Oct 2024 14:05:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIVqJVur"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A3ED1D555
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 14:05:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728914724; cv=none; b=JHy9PZKqI0eTwJkSH2M479UjstwdBKU0t+Z8RzkD/tE4HJCZzS/0IrWCpuP+JhP7FWCH9D98Ey6MUq9R5mg3+4zmIDaQoXVXnY7N5srsxpxpNtqkeEhaPYmCBcww9LvZGsiifjfOhrYwyM9jS7qoVsjNQosEZLAbRUzhK3Lnaqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728914724; c=relaxed/simple;
	bh=Pj9/4PkRaHRqqgnCS5NCGbSSlIpME8YScS5iR28NNqE=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=ksUH8KoyJJb5HC8y/H7Un/eKvuMW8lcxFaTzO+fd6yekrNVpTLL9AsbqbpXhs2vDbZHIyjMz9VMo115MlbXZNocoDGzY1eLavjEw5xASXvlNFK5P3ZqufhKzonEUzHQiMHJrALZIxNJnqDfTq3Rh70zHrfSDWD4teTINtvqCowE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIVqJVur; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E297AC4CEC3;
	Mon, 14 Oct 2024 14:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728914724;
	bh=Pj9/4PkRaHRqqgnCS5NCGbSSlIpME8YScS5iR28NNqE=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=lIVqJVurCJvCB+GDxaLyXoPhQNJ8HY/Vn/G0TovyTB8/WgDqLQTZrNbHW/UWHZ+yH
	 7/PCMt/fZvTuAW4d5urIAbIfY3hRPZ26W1IqgzSoVIwDJzoEMSsmhgqyq43sKr/Xa+
	 Soj6mnzBr9fhKE6AD82pIjm3eFnuOUmbuDslxexM+cWj/5EHNFT8QhH1uEMrFM+/YK
	 rcW8kmr2II3x92GtMHBDSwtqJ2+/m9d8YMVXWIwGFiz9YcMlJvMdUtvXZdx/SdZkI0
	 pjkR0esYMih0RRqbNPKIOJy+AFUATJZYQx16cTmjJJ5PXTOqPTtDEpSvTqCW57KSTx
	 1stndNTY4otqw==
Date: Mon, 14 Oct 2024 09:05:22 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: devicetree@vger.kernel.org, Anand Gore <anand.gore@broadcom.com>, 
 linux-arm-kernel@lists.infradead.org, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 William Zhang <william.zhang@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, Conor Dooley <conor+dt@kernel.org>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
In-Reply-To: <20241011-genexis-xg6846b-base-v1-0-f04d6f6f93ce@linaro.org>
References: <20241011-genexis-xg6846b-base-v1-0-f04d6f6f93ce@linaro.org>
Message-Id: <172891443201.1126738.3246481461079996052.robh@kernel.org>
Subject: Re: [PATCH 0/8] ARM: dts: Add some BCM6846 device tree


On Fri, 11 Oct 2024 00:06:58 +0200, Linus Walleij wrote:
> This adds some silicon blocks to the BCM6846 DTSI file and
> adds a device tree for the Genexis XG6846B device that
> make use of it.
> 
> This is mainly so as to get this off my hard drive and
> share the basics with others who want to work on the
> BCM6846.
> 
> I think most of the DTSI changes can be just copied verbatim
> to the rest of the BCMBCA family (maybe extracted into a
> common bcbca.dtsi?) but let's think about that later.
> This will do for now.
> 
> The XG6846B device tree uses the new shift register bits
> property of the BCM63138 LEDs, which is ACKed by the
> DT maintainers albeit not yet merged in the LED tree.
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> Linus Walleij (8):
>       ARM: dts: bcm6846: Add iproc rng
>       ARM: dts: bcm6846: Enable watchdog
>       ARM: dts: bcm6846: Add GPIO blocks
>       ARM: dts: bcm6846: Add MDIO control block
>       ARM: dts: bcm6846: Add LED controller
>       dt-bindings: vendor-prefixes: Add Genexis
>       dt-bindings: arm: bcmbca: Add Genexis XG6846B
>       ARM: dts: broadcom: Add Genexis XG6846B DTS file
> 
>  .../devicetree/bindings/arm/bcm/brcm,bcmbca.yaml   |   1 +
>  .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
>  arch/arm/boot/dts/broadcom/Makefile                |   1 +
>  .../boot/dts/broadcom/bcm6846-genexis-xg6846b.dts  | 244 +++++++++++++++++++++
>  arch/arm/boot/dts/broadcom/bcm6846.dtsi            | 107 +++++++++
>  5 files changed, 355 insertions(+)
> ---
> base-commit: 9852d85ec9d492ebef56dc5f229416c925758edc
> change-id: 20241010-genexis-xg6846b-base-ef3fbec0be01
> 
> Best regards,
> --
> Linus Walleij <linus.walleij@linaro.org>
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


New warnings running 'make CHECK_DTBS=y broadcom/bcm6846-genexis-xg6846b.dtb' for 20241011-genexis-xg6846b-base-v1-0-f04d6f6f93ce@linaro.org:

arch/arm/boot/dts/broadcom/bcm6846-genexis-xg6846b.dtb: gpio@508: 'ngpios' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-mmio.yaml#
arch/arm/boot/dts/broadcom/bcm6846-genexis-xg6846b.dtb: mdio@2060: #address-cells: 1 was expected
	from schema $id: http://devicetree.org/schemas/net/brcm,unimac-mdio.yaml#
arch/arm/boot/dts/broadcom/bcm6846-genexis-xg6846b.dtb: mdio@2060: #size-cells: 0 was expected
	from schema $id: http://devicetree.org/schemas/net/brcm,unimac-mdio.yaml#
arch/arm/boot/dts/broadcom/bcm6846-genexis-xg6846b.dtb: mdio@2060: Unevaluated properties are not allowed ('#address-cells', '#size-cells', 'ethernet-phy@1', 'ethernet-phy@2', 'ethernet-phy@21', 'ethernet-phy@3', 'ethernet-phy@4' were unexpected)
	from schema $id: http://devicetree.org/schemas/net/brcm,unimac-mdio.yaml#
arch/arm/boot/dts/broadcom/bcm6846-genexis-xg6846b.dtb: mdio@2060: #address-cells: 1 was expected
	from schema $id: http://devicetree.org/schemas/net/mdio.yaml#
arch/arm/boot/dts/broadcom/bcm6846-genexis-xg6846b.dtb: mdio@2060: #size-cells: 0 was expected
	from schema $id: http://devicetree.org/schemas/net/mdio.yaml#






