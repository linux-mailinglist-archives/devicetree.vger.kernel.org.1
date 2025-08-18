Return-Path: <devicetree+bounces-205755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 473F6B29F8D
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 12:50:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 15ED27A8E34
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 10:48:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 721DB2765F9;
	Mon, 18 Aug 2025 10:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JODImVgo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E031258ED3
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 10:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755514167; cv=none; b=r/sgz3whypHAdRbOR4DXOiAkv7pgI/gaKo9wNWOa44kTA0EW8ik0J8Efs0jqzJbjkOyJWnq2haNi+BUyDW1ajNuJRctLGcarzmfND7egjjv9vxH6+EwoWSGBncV3gUXfN9UowRgSn/FzLoJdhS3VR+bWKL84hRWv4Wa4O3Lmqfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755514167; c=relaxed/simple;
	bh=3tpDuu2kPY5wbA/+5sAi2GLONH1UuFC4z5Uynztubsw=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=mz3O6IqhhA+08QeGsjOhyVsdHof+gxWCRP/k1a7Ra4G+Gwgn7dyxgxgXX5w8ed/73xE6gmixntixanK53pptY17TzbTgJOR3RmTw8jgydhdAGmPeF40oy5dKuTdQpvirepZStLjmFZk3yJgWRI64Ma7pITv0vcjmZ+ROSH5PDfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JODImVgo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01200C4CEEB;
	Mon, 18 Aug 2025 10:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755514167;
	bh=3tpDuu2kPY5wbA/+5sAi2GLONH1UuFC4z5Uynztubsw=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=JODImVgojE0pSHb4s1QKDxDJSO6mgzqbtB+m31lizzxTUEGgE+R2z7keOZ5NCLC7f
	 NKVZZc/9JdKAL710xVaia64OifkaKFIfSMHe3pWSPCUQ4PtgyCcKCYXKjWHhO8EGji
	 JSR/l4Ljg28Snc2hjXNiqznSIifVfEgu6jYLQqRT57d2QcR/HxYknvJQoYX9/KqE3w
	 nRyyWQRe0VcAWSY9qAW2aI82OpTaVXdFcSuHpxpiA4I/86i9uvCTBIN7ZvHMRH7S50
	 kNSquBWmoQ1zjpB9eDpxTr1KBOUwA2gAh4TUK0Z8yZiJTkjqP0a+pDxj58QTtN+4rI
	 xn8VcAZf8DkYg==
Date: Mon, 18 Aug 2025 05:49:26 -0500
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: krzk+dt@kernel.org, vigneshr@ti.com, linux-mtd@lists.infradead.org, 
 miquel.raynal@bootlin.com, conor+dt@kernel.org, richard@nod.at, 
 devicetree@vger.kernel.org
To: Markus Stockhausen <markus.stockhausen@gmx.de>
In-Reply-To: <20250818092725.1977105-2-markus.stockhausen@gmx.de>
References: <20250818092725.1977105-1-markus.stockhausen@gmx.de>
 <20250818092725.1977105-2-markus.stockhausen@gmx.de>
Message-Id: <175551416618.518415.14194098883265282853.robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: mtd: Add realtek,rtl9301-ecc


On Mon, 18 Aug 2025 05:27:24 -0400, Markus Stockhausen wrote:
> Add a dtschema for the ECC engine on the Realtek RTL93xx SoCs.
> The engine supports BCH6 and BCH12 parity for 512 byte blocks.
> 
> Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
> ---
>  .../bindings/mtd/realtek,rtl9301-ecc.yaml     | 35 +++++++++++++++++++
>  1 file changed, 35 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/realtek,rtl9301-ecc.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/mtd/realtek,rtl9301-ecc.example.dts:24.17-38: Warning (reg_format): /example-0/soc/ecc@1a600:reg: property has invalid length (8 bytes) (#address-cells == 2, #size-cells == 2)
Documentation/devicetree/bindings/mtd/realtek,rtl9301-ecc.example.dtb: Warning (pci_device_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/mtd/realtek,rtl9301-ecc.example.dtb: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/mtd/realtek,rtl9301-ecc.example.dtb: Warning (simple_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/mtd/realtek,rtl9301-ecc.example.dtb: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/mtd/realtek,rtl9301-ecc.example.dtb: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/realtek,rtl9301-ecc.example.dtb: soc: ecc@1a600:reg:0: [108032, 84] is too short
	from schema $id: http://devicetree.org/schemas/reg.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250818092725.1977105-2-markus.stockhausen@gmx.de

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


