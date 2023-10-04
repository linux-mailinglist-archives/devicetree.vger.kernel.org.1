Return-Path: <devicetree+bounces-5711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C67D37B78F2
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 09:45:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 25193281460
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 07:45:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84E5CD307;
	Wed,  4 Oct 2023 07:45:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CD17483
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 07:45:02 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 062AE9B;
	Wed,  4 Oct 2023 00:44:59 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id DE763E0010;
	Wed,  4 Oct 2023 07:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696405498;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VBA0XNaTJ/GmTYAgKn/HyRrIiXhJIs4Y4o8burTOcdA=;
	b=eHmtNjrgLvEZb0H5aTAt5rVWa9YJ34C6Zk+y1qUhwwnyX8RGB7xwNdigpW5TDuseT1ErJC
	O2TLcu1Q13w9Xz+cZrreXdX2AwAl8hLZHTmdpF2e/fx7B9lWB9gEGjS2SQxfcQ30MPIxpZ
	C+mLSLLb/Yfs+xNtNGphamBiHOMkRgZ+qlc2VGIlNk2RGDoEIOpHisxUyax0FGggLP4d2J
	AkE2jAP2msO8fl3FV8x+FynJUx36e0tixmwC/C83AuzOp4eevww3/YUbic9MJXNLeAF7Lc
	HASsplzEoE3dpkjvQxp9v9kUiXMBhf99j4zO6WUPgzTpHKS4M2cY+u385RPqhg==
Date: Wed, 4 Oct 2023 09:44:55 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: niravkumar.l.rabara@intel.com
Cc: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra
 <vigneshr@ti.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mtd: cadence: convert
 cadence-nand-controller.txt to yaml
Message-ID: <20231004094455.1a6a19e1@xps-13>
In-Reply-To: <20231004061214.17176-1-niravkumar.l.rabara@intel.com>
References: <20231004061214.17176-1-niravkumar.l.rabara@intel.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: miquel.raynal@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello,

niravkumar.l.rabara@intel.com wrote on Wed,  4 Oct 2023 14:12:14 +0800:

> From: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
>=20
> Convert cadence-nand-controller.txt to yaml format.

Looks good to me, one question below.

> Signed-off-by: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
> ---
>  .../devicetree/bindings/mtd/cadence,nand.yaml | 73 +++++++++++++++++++
>  .../bindings/mtd/cadence-nand-controller.txt  | 53 --------------
>  2 files changed, 73 insertions(+), 53 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mtd/cadence,nand.ya=
ml
>  delete mode 100644 Documentation/devicetree/bindings/mtd/cadence-nand-co=
ntroller.txt
>=20
> diff --git a/Documentation/devicetree/bindings/mtd/cadence,nand.yaml b/Do=
cumentation/devicetree/bindings/mtd/cadence,nand.yaml
> new file mode 100644
> index 000000000000..781812ac702f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/cadence,nand.yaml
> @@ -0,0 +1,73 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mtd/cadence,nand.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cadence NAND controller
> +
> +maintainers:
> +  - Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
> +
> +allOf:
> +  - $ref: nand-controller.yaml
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: cdns,hp-nfc
> +
> +  reg:
> +    items:
> +      - description: Address and length of the controller register set
> +      - description: Address and length of the Slave DMA data port
> +
> +  reg-names:
> +    items:
> +      - const: reg
> +      - const: sdma
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  dmas:
> +    maxItems: 1
> +
> +  cdns,board-delay-ps:
> +    description: |
> +      Estimated Board delay. The value includes the total round trip
> +      delay for the signals and is used for deciding on values associated
> +      with data read capture. The example formula for SDR mode is the
> +      following.
> +      board delay =3D RE#PAD delay + PCB trace to device + PCB trace fro=
m device
> +      + DQ PAD delay
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - interrupts
> +  - clocks
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +      nand-controller@10b80000 {
> +        compatible =3D "cdns,hp-nfc";
> +        reg =3D <0x10b80000 0x10000>,
> +            <0x10840000 0x10000>;
> +        reg-names =3D "reg", "sdma";
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +        interrupts =3D <0 97 4>;
> +        clocks =3D <&nf_clk>;
> +        cdns,board-delay-ps =3D <4830>;
> +
> +        nand@0 {
> +            reg =3D <0>;
> +        };
> +      };
> diff --git a/Documentation/devicetree/bindings/mtd/cadence-nand-controlle=
r.txt b/Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt
> deleted file mode 100644
> index d2eada5044b2..000000000000
> --- a/Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt
> +++ /dev/null
> @@ -1,53 +0,0 @@
> -* Cadence NAND controller
> -
> -Required properties:
> -  - compatible : "cdns,hp-nfc"
> -  - reg : Contains two entries, each of which is a tuple consisting of a
> -	  physical address and length. The first entry is the address and
> -	  length of the controller register set. The second entry is the
> -	  address and length of the Slave DMA data port.
> -  - reg-names: should contain "reg" and "sdma"
> -  - #address-cells: should be 1. The cell encodes the chip select connec=
tion.
> -  - #size-cells : should be 0.
> -  - interrupts : The interrupt number.
> -  - clocks: phandle of the controller core clock (nf_clk).
> -
> -Optional properties:
> -  - dmas: shall reference DMA channel associated to the NAND controller
> -  - cdns,board-delay-ps : Estimated Board delay. The value includes the =
total
> -    round trip delay for the signals and is used for deciding on values
> -    associated with data read capture. The example formula for SDR mode =
is
> -    the following:
> -    board delay =3D RE#PAD delay + PCB trace to device + PCB trace from =
device
> -    + DQ PAD delay
> -
> -Child nodes represent the available NAND chips.

This is not fully pictured in the current schema, by referencing
nand-controller.yaml I believe you allow all kind of direct
partitioning (which is legacy, and not supposed to be supported here).
Can you try to define a partition directly within the controller node
in the example and see whether it still passes the checks?

Thanks,
Miqu=C3=A8l

