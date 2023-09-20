Return-Path: <devicetree+bounces-1920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F74C7A8FC2
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 01:13:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A0562818D4
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 23:13:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D66023F4B7;
	Wed, 20 Sep 2023 23:13:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C230A15AF6
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 23:13:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55F65C433C7;
	Wed, 20 Sep 2023 23:13:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695251592;
	bh=ZEI4SVLYeit9sUP9UceEuIC9X68j7JR0VvUzYcFHvME=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=PFGN6D4oIABqPzWAYWdJodphvnoW5Z5oqIO32HPOb7Wsww0jfjDnaFqG2xzrMI7Yo
	 HmT8BRQIVzz1PORN9IjaZhI7rVALAXByEMUe+IrqHXyru02mmYXsSdnJp+2LtGOs7r
	 t/ENeLheHudxN6Ws/TTjM7Rnp6HpHoAmt2fUBKiotYVlt+opqAc8GmDugLCj2SE9M1
	 jFeziWFi1brvoYzlcSPospd02P0p2U+yq5dMqD3N1NdANo9vqV3zAWxFdRqHLp6YM1
	 Zrqup/gPAbqHwVuog1N8ZcgHmT4iC5aLe0n1ZQuS/IdVhn0akN5zYdliqkE9BZAHBd
	 p5X1QbATOLGPw==
Received: (nullmailer pid 3189600 invoked by uid 1000);
	Wed, 20 Sep 2023 23:13:10 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: jirislaby@kernel.org, conor+dt@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org, robh+dt@kernel.org, hvilleneuve@dimonoff.com
In-Reply-To: <20230920152015.1376838-5-hugo@hugovil.com>
References: <20230920152015.1376838-1-hugo@hugovil.com>
 <20230920152015.1376838-5-hugo@hugovil.com>
Message-Id: <169525159032.3189577.8595445478621843850.robh@kernel.org>
Subject: Re: [PATCH 4/4] dt-bindings: sc16is7xx: convert to YAML
Date: Wed, 20 Sep 2023 18:13:10 -0500


On Wed, 20 Sep 2023 11:20:15 -0400, Hugo Villeneuve wrote:
> From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> 
> Convert binding from text format to YAML.
> 
> Additions to original text binding:
>   - add rs485 reference.
> 
> Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> ---
>  .../bindings/serial/nxp,sc16is7xx.txt         | 118 ----------------
>  .../bindings/serial/nxp,sc16is7xx.yaml        | 126 ++++++++++++++++++
>  2 files changed, 126 insertions(+), 118 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/serial/nxp,sc16is7xx.txt
>  create mode 100644 Documentation/devicetree/bindings/serial/nxp,sc16is7xx.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/serial/nxp,sc16is7xx.example.dts:27.13-26: Warning (reg_format): /example-0/serial@51:reg: property has invalid length (4 bytes) (#address-cells == 1, #size-cells == 1)
Documentation/devicetree/bindings/serial/nxp,sc16is7xx.example.dts:37.13-26: Warning (reg_format): /example-0/serial@53:reg: property has invalid length (4 bytes) (#address-cells == 1, #size-cells == 1)
Documentation/devicetree/bindings/serial/nxp,sc16is7xx.example.dts:48.13-26: Warning (reg_format): /example-0/serial@54:reg: property has invalid length (4 bytes) (#address-cells == 1, #size-cells == 1)
Documentation/devicetree/bindings/serial/nxp,sc16is7xx.example.dtb: Warning (pci_device_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/serial/nxp,sc16is7xx.example.dtb: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/serial/nxp,sc16is7xx.example.dtb: Warning (simple_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/serial/nxp,sc16is7xx.example.dtb: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/serial/nxp,sc16is7xx.example.dtb: Warning (spi_bus_reg): Failed prerequisite 'reg_format'

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230920152015.1376838-5-hugo@hugovil.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


