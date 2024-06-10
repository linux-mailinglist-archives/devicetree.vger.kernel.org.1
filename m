Return-Path: <devicetree+bounces-74288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BC6902988
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 21:55:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7CE53B23AB2
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 19:55:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F254D14F9ED;
	Mon, 10 Jun 2024 19:55:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrWNiMoE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE7F214F9E4
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 19:55:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718049315; cv=none; b=XlqwZQCBlKj5TMwBEonoEI7PWymW66gy4EyxxFXd/MVO/2pHEgXygK182ClgzPizhL8llZ6E7yeKIURbIWJUKlwox/GwWESqPV4jf0sasRzQqL4p80eecKU9pYXYyx4puwM2FQT6rGIVO9LLmEI4a2tba1//NZdaGqY3QUpUCKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718049315; c=relaxed/simple;
	bh=LgwfT+NlcekJn/xBU7CuSKhAj48i5B9TsbBtDkPsoEQ=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=teUmWh6KnFrCq0GHTx7cnkKzPpmDeQQc03R2i8aCUIG5C+qzD9MjZfCxs7Koyy9VHHiO297Jqzff1SSzKiOptbPHbSEZJCUvo8vezz/MlyPnC7/JW1evgStfpwE8mAqj/4WD2uo7uAPSik/NyLJPddD6Hk66/EXIG/dpTETbTus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrWNiMoE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A3D9C2BBFC;
	Mon, 10 Jun 2024 19:55:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718049315;
	bh=LgwfT+NlcekJn/xBU7CuSKhAj48i5B9TsbBtDkPsoEQ=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=ZrWNiMoEFb5XzmI0cWBqy9iCFfaZVMo+YT9ESg/t2QqSBX+TAPQYzOPoj3hI0E0iQ
	 rVav7WXcnUMQ5tqHzqQbgn5b8lDUYXbsOy/GzvOshUJYwT4bLqqLlEUPs/geIIQhvX
	 0Mg8XUxRQ2osyy2uOJgXsC2fhJgA5s+bCyoPZNkkKH/Sn12QZqjnRj6GvKABH4HNJy
	 ++vCs08JvYvlon+/T9CpWXjRyIKGEMvTKm/UFxOOB7nM4IqM2vcnkNa2ElMQKEk6a0
	 2o4wagmY2vOz42w9NwpT0shKgvGfesJ05KFYw56obpi+D/lwPtXKBO2ynj21mZBaZ+
	 H45ntW9qJuJtQ==
Date: Mon, 10 Jun 2024 13:55:14 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Conor Dooley <conor.dooley@microchip.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Daire McNamara <daire.mcnamara@microchip.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, 
 Samuel Holland <samuel.holland@sifive.com>, devicetree@vger.kernel.org, 
 conor@kernel.org, linux-riscv@lists.infradead.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
In-Reply-To: <20240610-vertical-frugally-a92a55427dd9@wendy>
References: <20240610-vertical-frugally-a92a55427dd9@wendy>
Message-Id: <171804879964.2984749.10332965123533794635.robh@kernel.org>
Subject: Re: [PATCH v1 0/5] PolarFire SoC Icicle Reference Design PCIe
 ?support?/fixes


On Mon, 10 Jun 2024 12:09:12 +0100, Conor Dooley wrote:
> Hey all,
> 
> Here's some patches that add an Erratum to enable non-coherent DMA
> support for PolarFire SoC. By nature of being an FPGA, and due to the
> PCIe root ports being only 32-bit capable, many bitstreams configure the
> FPGA fabric such that peripherals in the fabric become non-coherent. The
> PCIe root ports on PolarFire SoC are connected to the core-complex via
> the fabric, and therefore can be (and regularly are) made DMA
> non-coherent. The Icicle Kit Reference Design has been configuring the
> PCIe root port in this manner since late 2022 and in a way unsupported
> by mainline since earlier that year. Adding this non-coherent DMA
> support makes PCIe functional on those FPGA designs. Daire did almost all
> the work to figure out how to support these kinds of designs, and this
> series depends on his patches to introduce the required dma-ranges
> handling for the root port driver:
> https://lore.kernel.org/linux-pci/20240531085333.2501399-1-daire.mcnamara@microchip.com/
> 
> The final patch depends on:
> https://lore.kernel.org/linux-pci/20240527-slather-backfire-db4605ae7cd7@wendy/
> 
> I'm not sure if an Erratum is really the right way to go about doing
> this, but I didn't want to make ARCH_MICROCHIP depend on NONPORTABLE.
> An alternative would be to add a menu under drivers/soc like Renesas
> does and allow it to be toggled as an option there instead.
> 
> Thanks,
> Conor.
> 
> CC: Paul Walmsley <paul.walmsley@sifive.com>
> CC: Palmer Dabbelt <palmer@dabbelt.com>
> CC: Conor Dooley <conor.dooley@microchip.com>
> CC: Daire McNamara <daire.mcnamara@microchip.com>
> CC: Rob Herring <robh@kernel.org>
> CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
> CC: Samuel Holland <samuel.holland@sifive.com>
> CC: linux-riscv@lists.infradead.org
> CC: devicetree@vger.kernel.org
> 
> Conor Dooley (5):
>   cache: ccache: allow building for PolarFire
>   cache: ccache: add mpfs to nonstandard cache ops list
>   RISC-V: Add an MPFS erratum for PCIe
>   riscv: dts: microchip: modify memory map & add dma-ranges for pcie on
>     icicle
>   riscv: dts: microchip: update pcie reg properties
> 
>  arch/riscv/Kconfig.errata                     | 19 +++++
>  .../dts/microchip/mpfs-icicle-kit-fabric.dtsi | 77 ++++++++++++-------
>  .../boot/dts/microchip/mpfs-icicle-kit.dts    | 44 +++++++++--
>  .../dts/microchip/mpfs-m100pfs-fabric.dtsi    |  6 +-
>  .../dts/microchip/mpfs-polarberry-fabric.dtsi |  6 +-
>  drivers/cache/Kconfig                         |  2 +-
>  drivers/cache/sifive_ccache.c                 |  2 +
>  7 files changed, 116 insertions(+), 40 deletions(-)
> 
> --
> 2.43.2
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


New warnings running 'make CHECK_DTBS=y microchip/mpfs-icicle-kit.dtb' for 20240610-vertical-frugally-a92a55427dd9@wendy:

arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dtb: pcie@3000000000: reg: [[48, 0, 0, 134217728], [0, 1124106240, 0, 8192], [0, 1124114432, 0, 8192]] is too long
	from schema $id: http://devicetree.org/schemas/pci/microchip,pcie-host.yaml#
arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dtb: pcie@3000000000: reg-names:1: 'apb' was expected
	from schema $id: http://devicetree.org/schemas/pci/microchip,pcie-host.yaml#
arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dtb: pcie@3000000000: reg-names: ['cfg', 'bridge', 'ctrl'] is too long
	from schema $id: http://devicetree.org/schemas/pci/microchip,pcie-host.yaml#
arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dtb: pcie@3000000000: Unevaluated properties are not allowed ('#address-cells', '#interrupt-cells', '#size-cells', 'bus-range', 'device_type', 'dma-noncoherent', 'interrupt-controller', 'interrupt-map', 'interrupt-map-mask', 'interrupt-parent', 'interrupts', 'msi-parent', 'reg', 'reg-names' were unexpected)
	from schema $id: http://devicetree.org/schemas/pci/microchip,pcie-host.yaml#






