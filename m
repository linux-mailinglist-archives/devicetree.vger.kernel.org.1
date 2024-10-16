Return-Path: <devicetree+bounces-112071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 767329A0E94
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 17:38:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A8B371C21D3D
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 15:38:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C2B920F5BB;
	Wed, 16 Oct 2024 15:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqjmKnTo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C3220F5B3
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 15:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729093115; cv=none; b=IZlwu2Z+Kg1yrb9phshFe3noO5PFuVLC9gsbao1lJO5nhwVvEf4h9TXB6gFPYbiBm1aj3LbzlKeuTQF4Jp1yjbjoDmYDxoW6uqJ/4uyK4EvTpbejvvwnr8ccoZS2yxf0T7oD1tHzU4cLmfVLs95TNSg+jyvo6bwyHtC/Y37BbZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729093115; c=relaxed/simple;
	bh=LiJ79jN2TmlQgUBk1FG8JumW/gNgFJ2x7cU3gTfTUnM=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=D5F6EnaxW5XDL4wSGp91aejkkDnVCKNxVer0tz0sopdp877Bxge4oLofrn3QZXfa/VcD47vByt3RYSB1j5fkkgL5MOjUdnxFunZ6o8fjvbKSAJN7T6k0Sq+2BnCCh3uq/C3ONKMrXeSaPqtG54dvM+jszB/ak8Vyoz2ceVqFqF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqjmKnTo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DD77C4CED4;
	Wed, 16 Oct 2024 15:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729093114;
	bh=LiJ79jN2TmlQgUBk1FG8JumW/gNgFJ2x7cU3gTfTUnM=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=FqjmKnTopadPWqx5pMOdtE35QYY31UbXYULIcgeI3hR9SY8MepzVhGuytQoXUxF0d
	 IvYliHIskkhqNUjLpjGPovuTwPm8Qc9BIm0RTTksqoIjxGPiufTyRT60bdS6ZZ7S93
	 EZM48vFw7SNV9yy4vcl0AKhUFTqVjae/w3OU76NWJhS2ovfFWtdvJ5MuGFitcof+KV
	 eW3Pf2JvzWyPTcUN4Pm2+7p61mBDTSPdkAP0TVD/IJYdnBGofG8G7saGz5ZFojt0SU
	 +V0I5dW0p4XnBVl+d4tsccclObJxo0OEcu0VK9S6gI8Vlb7gAiIKV78TO5idU3WKPp
	 RpsMUvZU9PQqg==
Date: Wed, 16 Oct 2024 10:38:33 -0500
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
Cc: William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, devicetree@vger.kernel.org, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Benjamin Larsson <benjamin.larsson@genexis.eu>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
In-Reply-To: <20241016-genexis-xg6846b-base-v2-0-6a7cc2ee57eb@linaro.org>
References: <20241016-genexis-xg6846b-base-v2-0-6a7cc2ee57eb@linaro.org>
Message-Id: <172909289207.1676420.4308278194478234300.robh@kernel.org>
Subject: Re: [PATCH v2 0/9] ARM: dts: Add some BCM6846 device tree


On Wed, 16 Oct 2024 08:41:00 +0200, Linus Walleij wrote:
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
> Changes in v2:
> - Use the new "brcm,bcm6846-mdio" compatible for the MDIO block. (Merged
>   to the netdev tree).
> - Add the ARM PrimeCell PL081 DMA controller block.
> - Link to v1: https://lore.kernel.org/r/20241011-genexis-xg6846b-base-v1-0-f04d6f6f93ce@linaro.org
> 
> ---
> Linus Walleij (9):
>       ARM: dts: bcm6846: Add iproc rng
>       ARM: dts: bcm6846: Enable watchdog
>       ARM: dts: bcm6846: Add GPIO blocks
>       ARM: dts: bcm6846: Add MDIO control block
>       ARM: dts: bcm6846: Add LED controller
>       ARM: dts: bcm6846: Add ARM PL081 DMA block
>       dt-bindings: vendor-prefixes: Add Genexis
>       dt-bindings: arm: bcmbca: Add Genexis XG6846B
>       ARM: dts: broadcom: Add Genexis XG6846B DTS file
> 
>  .../devicetree/bindings/arm/bcm/brcm,bcmbca.yaml   |   1 +
>  .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
>  arch/arm/boot/dts/broadcom/Makefile                |   1 +
>  .../boot/dts/broadcom/bcm6846-genexis-xg6846b.dts  | 244 +++++++++++++++++++++
>  arch/arm/boot/dts/broadcom/bcm6846.dtsi            | 120 ++++++++++
>  5 files changed, 368 insertions(+)
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


New warnings running 'make CHECK_DTBS=y broadcom/bcm6846-genexis-xg6846b.dtb' for 20241016-genexis-xg6846b-base-v2-0-6a7cc2ee57eb@linaro.org:

arch/arm/boot/dts/broadcom/bcm6846-genexis-xg6846b.dtb: gpio@508: 'ngpios' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-mmio.yaml#
arch/arm/boot/dts/broadcom/bcm6846-genexis-xg6846b.dtb: mdio@2060: #address-cells: 1 was expected
	from schema $id: http://devicetree.org/schemas/net/mdio.yaml#
arch/arm/boot/dts/broadcom/bcm6846-genexis-xg6846b.dtb: mdio@2060: #size-cells: 0 was expected
	from schema $id: http://devicetree.org/schemas/net/mdio.yaml#
arch/arm/boot/dts/broadcom/bcm6846-genexis-xg6846b.dtb: /bus@ff800000/mdio@2060: failed to match any schema with compatible: ['brcm,bcm6846-mdio']






