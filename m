Return-Path: <devicetree+bounces-4393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6C47B258E
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 20:52:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id DA2F82824DA
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 18:52:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A38218626;
	Thu, 28 Sep 2023 18:52:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AAE3182C7
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 18:52:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EFFDC433C8;
	Thu, 28 Sep 2023 18:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695927122;
	bh=n3aZdNHw4MpEqxnCX4fjYDB+dJUPetWTFBhMgHS1KU8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Flz0tRnVGo4/Y0PD9nmkCdwWh/N9m61Q8xa2FbhfSXDcp9moHABUQSJFXB+c8ynIN
	 Y+zcjCkLKHVqVx1IatT+ZLBDXX8ylvQSqyrcn9nfUfDVh6aMsTWOVQMqUu2syXsnkU
	 aGhlU7a2VXrA9HW6bebOLy8QCRV0pDLJNl8ns8G02VgFMtSv/KFZ1aNY8IG1js3cEG
	 RrT/+bU02sp7OHJlGaKTnhpJG36yFmUgjssgDEHYwHJVydSaF30Ll22knqO64SQFls
	 xa0hMWoptxs6SHtPCDsJzwC1jMM/IeA80EGhJ8baIu+gOSD+M2VBo0+MAgNmF4iFLQ
	 iVLw/CXpBeL5A==
Received: (nullmailer pid 1052656 invoked by uid 1000);
	Thu, 28 Sep 2023 18:51:59 -0000
Date: Thu, 28 Sep 2023 13:51:59 -0500
From: Rob Herring <robh@kernel.org>
To: Pankaj Gupta <pankaj.gupta@nxp.com>
Cc: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, clin@suse.com, conor+dt@kernel.org, pierre.gondois@arm.com, festevam@gmail.com, linux-imx@nxp.com, davem@davemloft.net, krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, gaurav.jain@nxp.com, alexander.stein@ew.tq-group.com, V.Sethi@nxp.com
Subject: Re: [PATCH v6 02/11] dt-bindings: arm: fsl: add imx-se-fw binding doc
Message-ID: <20230928185159.GA1035361-robh@kernel.org>
References: <20230927175401.1962733-1-pankaj.gupta@nxp.com>
 <20230927175401.1962733-3-pankaj.gupta@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230927175401.1962733-3-pankaj.gupta@nxp.com>

On Wed, Sep 27, 2023 at 11:23:52PM +0530, Pankaj Gupta wrote:
> The NXP's i.MX EdgeLock Enclave, a HW IP creating an embedded
> secure enclave within the SoC boundary to enable features like
> - HSM
> - SHE
> - V2X
> 
> Communicates via message unit with linux kernel. This driver
> is enables communication ensuring well defined message sequence
> protocol between Application Core and enclave's firmware.
> 
> Driver configures multiple misc-device on the MU, for multiple
> user-space applications can communicate on single MU.
> 
> It exists on some i.MX processors. e.g. i.MX8ULP, i.MX93 etc.
> 
> Signed-off-by: Pankaj Gupta <pankaj.gupta@nxp.com>
> ---
>  .../bindings/firmware/fsl,imx-se-fw.yaml      | 73 +++++++++++++++++++
>  1 file changed, 73 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/firmware/fsl,imx-se-fw.yaml
> 
> diff --git a/Documentation/devicetree/bindings/firmware/fsl,imx-se-fw.yaml b/Documentation/devicetree/bindings/firmware/fsl,imx-se-fw.yaml
> new file mode 100644
> index 000000000000..d250794432b3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/firmware/fsl,imx-se-fw.yaml
> @@ -0,0 +1,73 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/firmware/fsl,imx-se-fw.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP i.MX EdgeLock Enclave Firmware (ELEFW)
> +
> +maintainers:
> +  - Pankaj Gupta <pankaj.gupta@nxp.com>
> +
> +description:

Need '|' to preserve formatting.

> +  The NXP's i.MX EdgeLock Enclave, a HW IP creating an embedded
> +  secure enclave within the SoC boundary to enable features like
> +  - HSM
> +  - SHE
> +  - V2X
> +
> +  It uses message unit to communicate and coordinate to pass messages
> +  (e.g., data,  status and control) through its interfaces.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8ulp-se-fw
> +      - fsl,imx93-se-fw

The firmware is not compatible across chips?

> +
> +  mboxes:
> +    description:
> +      All MU channels must be within the same MU instance. Cross instances are
> +      not allowed. Users need to ensure that used MU instance does not conflict
> +      with other execution environments.
> +    items:
> +      - description: TX0 MU channel
> +      - description: RX0 MU channel
> +
> +  mbox-names:
> +    items:
> +      - const: tx
> +      - const: rx
> +
> +  fsl,mu-id:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Identifier to the message-unit among the multiple message-unit that exists on SoC.
> +      Per message-unit, multiple misc-devices are created, that are  used by userspace

Extra space in there.

Wrap lines at 80 unless there's a benefit to going to 100.

> +      application as logical-waiter and logical-receiver.
> +
> +  memory-region:
> +    items:
> +      - description: Reserved memory region that can be accessed by firmware. Used for
> +          exchanging the buffers between driver and firmware.
> +
> +  fsl,sram:

Just the common 'sram' property.

> +    description: Phandle to the device SRAM

Used for what?

> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +
> +required:
> +  - compatible
> +  - mboxes
> +  - mbox-names
> +  - fsl,mu-id

How is memory-region optional?

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    ele_fw: se-fw {

Drop unused labels.

> +      compatible = "fsl,imx8ulp-se-fw";
> +      mbox-names = "tx", "rx";
> +      mboxes = <&s4muap 0 0>, <&s4muap 1 0>;
> +      fsl,mu-id = <2>;
> +    };
> -- 
> 2.34.1
> 

