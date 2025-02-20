Return-Path: <devicetree+bounces-149127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 84619A3E691
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 22:30:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5E36619C2A9A
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 21:29:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D196264FAF;
	Thu, 20 Feb 2025 21:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kYuEG6U9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494EA264FA7
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 21:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740086958; cv=none; b=hBtYHu8XFBsgAAs3E+6a4lapo9AMkmWzl/vTkA6uaoRG/BKOhm5jzN6npikamsNxx7VvCE7Pqt4tXj9yB3x06y8duQ3MIbQYKYoVt/Oy+wO6Uu5EPGgIRHNJXjYtqaO0+yMxnYFC6gzdXDql5/f6fKn4Z6z3GHBVjzIQ4g1+710=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740086958; c=relaxed/simple;
	bh=o4LaBJ1mlUFGKGc3X7gcmlB3bIu31yuYd8HE2LaaG4s=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=PtIA/t68orGEvgQNxc1RTVxkxbgV83xUubC7k90Pjp25LCBnOqtBSBZQK7FhcuH0Zx0Juf+jRIBJtwbiVYVJTx7W/2XGOopYD5CyRy5Nx2csXqIHEIejk2TwQs0ONIp3TWOhjyRZnfAUVKb9TflEb9fU8eDe6EtbOhwsBOTjJeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kYuEG6U9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67874C4CED1;
	Thu, 20 Feb 2025 21:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740086957;
	bh=o4LaBJ1mlUFGKGc3X7gcmlB3bIu31yuYd8HE2LaaG4s=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=kYuEG6U9xkXVk681gFmum04PkrEJUuhvj8FrHHF9dTpRLk7IIa2bNZf1HjAb/BBc/
	 vMFRbzL2kHKCQ65eG6l1N7b4SCFIvEC52cllKwfpz2Ss1is1cmYr9Y/8lue3SDIjaL
	 04GB+GJ+XDG4trY1eZWZordlEYXvlyUMT7MVaYuawNg7tH8iv3NsVDKANOlXijnnu9
	 jNPnMsF9egazD9E298YfJBzwnWfL6QLY6IbiBXOZhz6VJgJNOhxmcTaT8BX/C4gWFz
	 xeg0PgwDtRuy7jk/5nRKQan5W8mxoTGdj4Pr8D3GU/Ik9TJ3J4cYcw1WWq9VXPUtu2
	 3jSIWj7h1U7oA==
Date: Thu, 20 Feb 2025 15:29:16 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, krzk+dt@kernel.org, 
 devicetree@vger.kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, 
 Fabio Estevam <festevam@denx.de>
To: Fabio Estevam <festevam@gmail.com>
In-Reply-To: <20250220130345.2375204-1-festevam@gmail.com>
References: <20250220130345.2375204-1-festevam@gmail.com>
Message-Id: <174008661713.4046746.867347616355576496.robh@kernel.org>
Subject: Re: [PATCH] ARM: dts: imx31: Use nand-controller as node name


On Thu, 20 Feb 2025 10:03:45 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> According to mxc-nand.yaml, the correct node name must be
> 'nand-controller'.
> 
> Change it accordingly to fix the following dt-schema warning:
> 
> $nodename:0: 'nand@b8000000' does not match '^nand-controller(@.*)?'
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  arch/arm/boot/dts/nxp/imx/imx31.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
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


New warnings running 'make CHECK_DTBS=y for arch/arm/boot/dts/nxp/' for 20250220130345.2375204-1-festevam@gmail.com:

arch/arm/boot/dts/nxp/imx/imx31-bug.dtb: nand-controller@b8000000: #size-cells: 0 was expected
	from schema $id: http://devicetree.org/schemas/mtd/mxc-nand.yaml#
arch/arm/boot/dts/nxp/imx/imx31-bug.dtb: nand-controller@b8000000: compatible:0: 'fsl,imx27-nand' was expected
	from schema $id: http://devicetree.org/schemas/mtd/mxc-nand.yaml#
arch/arm/boot/dts/nxp/imx/imx31-bug.dtb: nand-controller@b8000000: compatible: ['fsl,imx31-nand', 'fsl,imx27-nand'] is too long
	from schema $id: http://devicetree.org/schemas/mtd/mxc-nand.yaml#
arch/arm/boot/dts/nxp/imx/imx31-bug.dtb: nand-controller@b8000000: #size-cells: 0 was expected
	from schema $id: http://devicetree.org/schemas/mtd/nand-controller.yaml#
arch/arm/boot/dts/nxp/imx/imx31-bug.dtb: /soc/emi@b8000000/nand-controller@b8000000: failed to match any schema with compatible: ['fsl,imx31-nand', 'fsl,imx27-nand']
arch/arm/boot/dts/nxp/imx/imx31-lite.dtb: nand-controller@b8000000: #size-cells: 0 was expected
	from schema $id: http://devicetree.org/schemas/mtd/mxc-nand.yaml#
arch/arm/boot/dts/nxp/imx/imx31-lite.dtb: nand-controller@b8000000: compatible:0: 'fsl,imx27-nand' was expected
	from schema $id: http://devicetree.org/schemas/mtd/mxc-nand.yaml#
arch/arm/boot/dts/nxp/imx/imx31-lite.dtb: nand-controller@b8000000: compatible: ['fsl,imx31-nand', 'fsl,imx27-nand'] is too long
	from schema $id: http://devicetree.org/schemas/mtd/mxc-nand.yaml#
arch/arm/boot/dts/nxp/imx/imx31-lite.dtb: nand-controller@b8000000: Unevaluated properties are not allowed ('#address-cells', '#size-cells', 'clocks', 'compatible', 'dma-names', 'dmas', 'nand-bus-width', 'nand-ecc-mode', 'nand-on-flash-bbt' were unexpected)
	from schema $id: http://devicetree.org/schemas/mtd/mxc-nand.yaml#
arch/arm/boot/dts/nxp/imx/imx31-lite.dtb: nand-controller@b8000000: #size-cells: 0 was expected
	from schema $id: http://devicetree.org/schemas/mtd/nand-controller.yaml#
arch/arm/boot/dts/nxp/imx/imx31-lite.dtb: /soc/emi@b8000000/nand-controller@b8000000: failed to match any schema with compatible: ['fsl,imx31-nand', 'fsl,imx27-nand']






