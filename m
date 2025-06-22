Return-Path: <devicetree+bounces-188205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D67DAE3298
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 23:55:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ECC4F169ED1
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 21:55:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88EB21EF38E;
	Sun, 22 Jun 2025 21:55:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pcx2mxr6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638FBBE5E
	for <devicetree@vger.kernel.org>; Sun, 22 Jun 2025 21:55:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750629345; cv=none; b=ZCshLq3Q7kRcxBL0M81rOR5qu/W3SgQaSczjEKfI1VBhlRMs+EZpozlO5wLgKdrfWyQfKz9oAY4pKybF4tKS27z1XrhKfyyzg6q26G2PbIM3oibkd7/BaZQgqOIZzWnGWBK4N6Wx0jASmLfLHv/lxMD0Uy7Ld544NcpLy6iyu58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750629345; c=relaxed/simple;
	bh=jiuhgLENIQgL1DZ3JyPGXXXfm+RL76gQc5U47Dtv4XI=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=Mtl6Ba1CakRIVhPx3PaWoo5/lI3Rj8tN0OnMuBV8NdaC1sZ7pPSVua4/H2J5i6QTLujp98ZYeH4uBvss1gGCKzl8wgfYiEabLPxtn47rXO6eT8n1OwZF+SYzk+a5gmO99EnCQO9vCWttp1bSRtGapVrR3V+tCmJ7ifXmlZpzGf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pcx2mxr6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E27A4C4CEE3;
	Sun, 22 Jun 2025 21:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750629345;
	bh=jiuhgLENIQgL1DZ3JyPGXXXfm+RL76gQc5U47Dtv4XI=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=Pcx2mxr6N8oX14abDc96806sG6qzSV9oSft2+ez6xFBIqkt5p7UXLlcar96m0ZsiB
	 hrDUJ8JgFr0Dqt4LNH/ajgT9OSBaNaCMvoI66ifVubUwjxoiEhNLRAmato/2gOfqPh
	 XVD23kEEwa//6I5eu6Cc/XYxyONEEhrx8SGknVC9n7K5KnZZ7/7LWCZYgvu7l7SqdE
	 /Cqf4VBUT2br2OZTntzN4V/Vgn4Qnxg1xgjOCgGi8BfLvTrbLNLCcChyVANYlblYv7
	 I6Yh9hYOQbT73TZ/PBcdCkI0wh6glOqWDLYKTKpu1JGEPSzIuAytKKchJa4NEhVEuz
	 DCQcqpuQUQ6YA==
Date: Sun, 22 Jun 2025 16:55:44 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: krzysztof.kozlowskii+dt@linaro.org, devicetree@vger.kernel.org, 
 conor+dt@kernel.org, robh+dt@kernel.org
To: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20250621034401.586780-1-dinguyen@kernel.org>
References: <20250621034401.586780-1-dinguyen@kernel.org>
Message-Id: <175062934408.5147.9042081711517025234.robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: net: convert socfpga-dwmac.txt to DT
 schema


On Fri, 20 Jun 2025 22:44:01 -0500, Dinh Nguyen wrote:
> Convert the socfpga-dwmac.txt to yaml.
> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
>  .../bindings/net/altr,dwmac-socfpga.yaml      | 152 ++++++++++++++++++
>  .../devicetree/bindings/net/socfpga-dwmac.txt |  57 -------
>  2 files changed, 152 insertions(+), 57 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/altr,dwmac-socfpga.yaml
>  delete mode 100644 Documentation/devicetree/bindings/net/socfpga-dwmac.txt
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/renesas,rzn1-gmac.example.dtb: ethernet@44000000 (renesas,r9a06g032-gmac): 'pcs-handle', 'power-domains', 'snps,perfect-filter-entries' do not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/net/altr,dwmac-socfpga.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/renesas,rzn1-gmac.example.dtb: ethernet@44000000 (renesas,r9a06g032-gmac): compatible:0: 'renesas,r9a06g032-gmac' is not one of ['altr,socfpga-stmmac', 'altr,socfpga-stmmac-a10-s10']
	from schema $id: http://devicetree.org/schemas/net/altr,dwmac-socfpga.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/renesas,rzn1-gmac.example.dtb: ethernet@44000000 (renesas,r9a06g032-gmac): interrupt-names: ['macirq', 'eth_wake_irq', 'eth_lpi'] is too long
	from schema $id: http://devicetree.org/schemas/net/altr,dwmac-socfpga.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/renesas,rzn1-gmac.example.dtb: ethernet@44000000 (renesas,r9a06g032-gmac): interrupts: [[0, 34, 4], [0, 36, 4], [0, 35, 4]] is too long
	from schema $id: http://devicetree.org/schemas/net/altr,dwmac-socfpga.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.example.dtb: ethernet@c9410000 (amlogic,meson-gxbb-dwmac): clock-names: ['stmmaceth', 'clkin0', 'clkin1', 'timing-adjustment'] is too long
	from schema $id: http://devicetree.org/schemas/net/altr,dwmac-socfpga.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.example.dtb: ethernet@c9410000 (amlogic,meson-gxbb-dwmac): clocks: [[4294967295], [4294967295], [4294967295], [4294967295]] is too long
	from schema $id: http://devicetree.org/schemas/net/altr,dwmac-socfpga.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.example.dtb: ethernet@c9410000 (amlogic,meson-gxbb-dwmac): compatible:0: 'amlogic,meson-gxbb-dwmac' is not one of ['altr,socfpga-stmmac', 'altr,socfpga-stmmac-a10-s10']
	from schema $id: http://devicetree.org/schemas/net/altr,dwmac-socfpga.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.example.dtb: ethernet@c9410000 (amlogic,meson-gxbb-dwmac): reg: [[3376480256, 65536], [3364046144, 8]] is too long
	from schema $id: http://devicetree.org/schemas/net/altr,dwmac-socfpga.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/thead,th1520-gmac.example.dtb: ethernet@e7070000 (thead,th1520-gmac): 'mdio', 'phy-handle', 'reg-names', 'snps,axi-config', 'snps,fixed-burst', 'snps,pbl' do not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/net/altr,dwmac-socfpga.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/thead,th1520-gmac.example.dtb: ethernet@e7070000 (thead,th1520-gmac): compatible:0: 'thead,th1520-gmac' is not one of ['altr,socfpga-stmmac', 'altr,socfpga-stmmac-a10-s10']
	from schema $id: http://devicetree.org/schemas/net/altr,dwmac-socfpga.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/thead,th1520-gmac.example.dtb: ethernet@e7070000 (thead,th1520-gmac): phy-mode:0: 'rgmii-id' is not one of ['rgmii', 'gmii', 'mii']
	from schema $id: http://devicetree.org/schemas/net/altr,dwmac-socfpga.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/thead,th1520-gmac.example.dtb: ethernet@e7070000 (thead,th1520-gmac): reg: [[3875995648, 8192], [3959435264, 4096]] is too long
	from schema $id: http://devicetree.org/schemas/net/altr,dwmac-socfpga.yaml#

doc reference errors (make refcheckdocs):
Warning: MAINTAINERS references a file that doesn't exist: Documentation/devicetree/bindings/net/socfpga-dwmac.txt
MAINTAINERS: Documentation/devicetree/bindings/net/socfpga-dwmac.txt

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250621034401.586780-1-dinguyen@kernel.org

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


