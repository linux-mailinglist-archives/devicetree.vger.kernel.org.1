Return-Path: <devicetree+bounces-251714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4550DCF5D01
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 23:22:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B5F97300C371
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 22:22:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC7382E7165;
	Mon,  5 Jan 2026 22:22:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FA0w3Rzi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9398A4400;
	Mon,  5 Jan 2026 22:22:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767651724; cv=none; b=eyWVwLtJoRWUYZAxzJtpuR6K6hgSlzOtoabtCPy1kdzpPsy+zFbin27ahmv4TScw+n632NRS3rFwWpGUKTr7cJt4KHEywSRL97k8Zp9+XVid3Sejrkb3gl6GRbOVLm+/O6tZMP+dOLb1tJ1DDqcrxdRzZhDCIKpMGzOL4k5cO9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767651724; c=relaxed/simple;
	bh=Rq6g/l9utXxueKr4jKBRBLc6p6iXOMwYYJrHMGcfRpY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Qc8zvB3rQ17YdfVYgZOxPiIL5OuwVVKryIJe5qpbD1pgJHMmkqv8xz1E9iVdwxEmC7GuTxlyvVCF43csVF003oGk/vNeyCWyYr7yw2O3l/5a21g2nyGR9EyhZ2MGcGuK1lIc+fiPcw/hmA3mCmPJU1sDloOdCt/E+S5oROq8SlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FA0w3Rzi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A28FC116D0;
	Mon,  5 Jan 2026 22:22:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767651724;
	bh=Rq6g/l9utXxueKr4jKBRBLc6p6iXOMwYYJrHMGcfRpY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FA0w3RziFQZSrAKNxno9GZIZiUbz+WNTw0Oe/g0DlQYqoTyww3K+2pwJ+DyhrF1/J
	 UUtnymDpyI+S0deJTDUwCv0zthhPD7qrOJvgVA8T75oSxjnMDGX/EVNg2j66/Re4+P
	 QHtrkFQNsKiwRPFDfU6FF2WOd5KMpLbNQfMepUaHeibhWAVGikCVFJWs5ZMfcRG/Yh
	 H4zq8puVfbyBcz/DHDyRwQBWxPpeho13zIbUPoeYidZd2pvCAkLfqgFGvLflIYwOf9
	 1JfORXqcYOIB0F1IxLJEfECuld00A/gIfnVcoUqzNWxU7PkZ32GgT4unBK+iTyl3cp
	 qPS4LRiklC6Vg==
Date: Mon, 5 Jan 2026 16:22:03 -0600
From: Rob Herring <robh@kernel.org>
To: Akhila YS <akhilayalmati@gmail.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mtd: st,spi-fsm: convert to DT schema
Message-ID: <20260105222203.GA3627973-robh@kernel.org>
References: <20260105-st-fsm-v1-1-d1dd935ccee4@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260105-st-fsm-v1-1-d1dd935ccee4@gmail.com>

On Mon, Jan 05, 2026 at 04:07:59PM +0000, Akhila YS wrote:
> Convert STMicroelectronics SPI FSM Serial NOR Flash Controller binding
> to YAML format.

s/YAML/DT Schema/

> 
> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
> ---
>  .../devicetree/bindings/mtd/st,spi-fsm.yaml        | 72 ++++++++++++++++++++++
>  Documentation/devicetree/bindings/mtd/st-fsm.txt   | 25 --------
>  2 files changed, 72 insertions(+), 25 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/st,spi-fsm.yaml b/Documentation/devicetree/bindings/mtd/st,spi-fsm.yaml
> new file mode 100644
> index 000000000000..f374c6aaa185
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/st,spi-fsm.yaml
> @@ -0,0 +1,72 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mtd/st,spi-fsm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics SPI FSM Serial NOR Flash Controller
> +
> +maintainers:
> +  - Miquel Raynal <miquel.raynal@bootlin.com>
> +  - Richard Weinberger <richard@nod.at>

This should be someone with this h/w, not the subsystem maintainers.

> +
> +description:
> +  The STMicroelectronics Fast Sequence Mode (FSM) controller is a dedicated
> +  hardware accelerator integrated in older STiH4xx/STiDxxx set-top box SoCs
> +  (such as STiH407, STiH416, STiD127). It connects directly to a single
> +  external serial flash device used as the primary boot device. The FSM
> +  executes hard-coded or configurable instruction sequences in hardware,
> +  providing low-latency reads suitable for execute-in-place (XIP) boot
> +  and high read bandwidth.
> +
> +properties:
> +  compatible:
> +    const: st,spi-fsm
> +
> +  reg:
> +    maxItems: 1
> +
> +  reg-names:
> +    const: spi-fsm
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  pinctrl-0:
> +    maxItems: 1

Drop. pinctrl properties are implicit.

> +
> +  st,syscfg:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: Phandle to the system configuration registers used for boot-device selection.
> +
> +  st,boot-device-reg:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: Offset of the boot-device register within the st,syscfg node.
> +
> +  st,boot-device-spi:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: Expected boot-device value when booting from this SPI controller.
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - interrupts
> +  - pinctrl-0
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    spifsm@fe902000 {
> +        compatible = "st,spi-fsm";
> +        reg = <0xfe902000 0x1000>;
> +        reg-names = "spi-fsm";
> +        interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
> +        pinctrl-0 = <&pinctrl_fsm>;
> +        st,syscfg = <&syscfg_rear>;
> +        st,boot-device-reg = <0x958>;
> +        st,boot-device-spi = <0x1a>;
> +    };
> +...
> diff --git a/Documentation/devicetree/bindings/mtd/st-fsm.txt b/Documentation/devicetree/bindings/mtd/st-fsm.txt
> deleted file mode 100644
> index 54cef9ef3083..000000000000
> --- a/Documentation/devicetree/bindings/mtd/st-fsm.txt
> +++ /dev/null
> @@ -1,25 +0,0 @@
> -* ST-Microelectronics SPI FSM Serial (NOR) Flash Controller
> -
> -Required properties:
> -  - compatible : Should be "st,spi-fsm"
> -  - reg        : Contains register's location and length.
> -  - reg-names  : Should contain the reg names "spi-fsm"
> -  - interrupts : The interrupt number
> -  - pinctrl-0  : Standard Pinctrl phandle (see: pinctrl/pinctrl-bindings.txt)
> -
> -Optional properties:
> -  - st,syscfg          : Phandle to boot-device system configuration registers
> -  - st,boot-device-reg : Address of the aforementioned boot-device register(s)
> -  - st,boot-device-spi : Expected boot-device value if booted via this device
> -
> -Example:
> -	spifsm: spifsm@fe902000{
> -	        compatible         = "st,spi-fsm";
> -	        reg                =  <0xfe902000 0x1000>;
> -	        reg-names          = "spi-fsm";
> -	        pinctrl-0          = <&pinctrl_fsm>;
> -		st,syscfg	   = <&syscfg_rear>;
> -	        st,boot-device-reg = <0x958>;
> -	        st,boot-device-spi = <0x1a>;
> -	};
> -
> 
> ---
> base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
> change-id: 20251231-st-fsm-84b343517035
> 
> Best regards,
> -- 
> Akhila YS <akhilayalmati@gmail.com>
> 

