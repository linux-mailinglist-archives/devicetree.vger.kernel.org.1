Return-Path: <devicetree+bounces-22363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09668807365
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 16:09:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 39F671C209F1
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 15:09:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 837093FB0A;
	Wed,  6 Dec 2023 15:09:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43877B5;
	Wed,  6 Dec 2023 07:09:30 -0800 (PST)
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-1fa37df6da8so3861097fac.2;
        Wed, 06 Dec 2023 07:09:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701875369; x=1702480169;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Enp8JXit3bBPLB9zYnFqXf4hRKchGtxRg8vIuYER+tc=;
        b=wjcRctI1pu5qEdzHPY1s/52jWJwWq3BK+5kZl1Z2FNN2Ib+nC7AxpbhXWCkNdpmnQE
         CgZ96luaa/f3+Rhv1W3VdiKm8Uj29MFy8Iga7rv6ry9978E2CyPjAvvEDnlLT5JyqlFO
         wHTYYFLiAJGjcVKkVxV8dR25rcV5bG2gBprKtL1QsMaphru/OMCQQ0JTM8TpvALhUbMW
         Fy+zPT7adwU9tRQfqKw6Yh9HAH9fx8jcbInpiN9lA0b5O0tv6wNjtqNqZ5OlHHsMnDcB
         iZjTjdy8yXxqKme0MsxZe1FXe3LfQAKcXbrFJ8LZWrPwfXvkxXwH/7/f+UeRXCQ6244f
         FoUw==
X-Gm-Message-State: AOJu0Yxlzj81jhN/Re9Rl9aZD7e/fiMDfCuaqWXw/mfcH3QGtC6sd2U0
	166BHgaho06f0erCxItdQw==
X-Google-Smtp-Source: AGHT+IEwsXmkr3xemv+wydJVOjenVj40+xrIWeWEDjwNZfQ+hY1bLHiVjfI5NIh7ve9NW8FJXFSqnQ==
X-Received: by 2002:a05:6871:729c:b0:1fa:f7de:6c71 with SMTP id mm28-20020a056871729c00b001faf7de6c71mr1142858oac.29.1701875369471;
        Wed, 06 Dec 2023 07:09:29 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id z13-20020a05683010cd00b006c4f7ced5d2sm2597349oto.70.2023.12.06.07.09.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Dec 2023 07:09:28 -0800 (PST)
Received: (nullmailer pid 2169863 invoked by uid 1000);
	Wed, 06 Dec 2023 15:09:27 -0000
Date: Wed, 6 Dec 2023 09:09:27 -0600
From: Rob Herring <robh@kernel.org>
To: Tanmay Shah <tanmay.shah@amd.com>
Cc: jassisinghbrar@gmail.com, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, shubhrajyoti.datta@amd.com, michal.simek@amd.com, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, ben.levinsky@amd.com
Subject: Re: [PATCH] dt-bindings: mailbox: add Versal IPI bindings
Message-ID: <20231206150927.GA2140113-robh@kernel.org>
References: <20231130011936.3753814-1-tanmay.shah@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231130011936.3753814-1-tanmay.shah@amd.com>

On Wed, Nov 29, 2023 at 05:19:36PM -0800, Tanmay Shah wrote:
> Add documentation for AMD-Xilinx Versal platform Inter Processor Interrupt
> controller. These bindings are different from previous
> xlnx,zynqmp-ipi-mailbox bindings and hence introduced in separate file.
> However, same existing driver will be extended for devices that are based
> on Versal bindings.

Looks to me like the binding doc could be shared.

> 
> Signed-off-by: Tanmay Shah <tanmay.shah@amd.com>
> ---
>  .../mailbox/xlnx,versal-ipi-mailbox.yaml      | 174 ++++++++++++++++++
>  1 file changed, 174 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/xlnx,versal-ipi-mailbox.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/xlnx,versal-ipi-mailbox.yaml b/Documentation/devicetree/bindings/mailbox/xlnx,versal-ipi-mailbox.yaml
> new file mode 100644
> index 000000000000..4408b59d392d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mailbox/xlnx,versal-ipi-mailbox.yaml
> @@ -0,0 +1,174 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mailbox/xlnx,versal-ipi-mailbox.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Xilinx IPI(Inter Processor Interrupt) mailbox controller
> +
> +description: |
> +  The Xilinx IPI(Inter Processor Interrupt) mailbox controller is to manage
> +  messaging between two IPI agents. Each IPI agent owns registers used for
> +  notification and buffers for message.
> +
> +               +-------------------------------------+
> +               | Xilinx IPI Controller               |
> +               +-------------------------------------+
> +    +--------------------------------------------------+
> +  TF-A                   |                     |
> +                         |                     |
> +                         |                     |
> +    +--------------------------+               |
> +                         |                     |
> +                         |                     |
> +    +--------------------------------------------------+
> +              +------------------------------------------+
> +              |  +----------------+   +----------------+ |
> +  Hardware    |  |  IPI Agent     |   |  IPI Buffers   | |
> +              |  |  Registers     |   |  (optional)    | |
> +              |  |                |   |                | |
> +              |  +----------------+   +----------------+ |
> +              |                                          |
> +              | Xilinx IPI Agent Block                   |
> +              +------------------------------------------+
> +
> +maintainers:
> +  - Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
> +
> +properties:
> +  compatible:
> +    const: xlnx,versal-ipi-mailbox
> +
> +  method:
> +    description: |
> +      The method of calling the PM-API firmware layer.
> +      Permitted values are.
> +      - "smc" : SMC
> +      - "hvc" : HVC

The schema already says this, no need to do so twice.

> +
> +    $ref: /schemas/types.yaml#/definitions/string
> +    enum:
> +      - smc
> +      - hvc
> +    default: smc
> +
> +  '#address-cells':
> +    const: 2
> +
> +  '#size-cells':
> +    const: 2
> +
> +  reg:
> +    minItems: 1
> +    items:
> +      - description: Host IPI agent control registers
> +      - description: Host IPI agent optional message buffers
> +
> +  reg-names:
> +    minItems: 1
> +    items:
> +      - const: ctrl
> +      - const: msg
> +
> +  xlnx,ipi-id:
> +    description: |
> +      Remote Xilinx IPI agent ID of which the mailbox is connected to.
> +    $ref: /schemas/types.yaml#/definitions/uint32

Any value 0-2^32 is valid?

Place vendor properties last.

> +
> +  interrupts:
> +    maxItems: 1
> +
> +  ranges: true
> +
> +patternProperties:
> +  '^mailbox@[0-9a-f]+$':
> +    description: Internal ipi mailbox node
> +    type: object
> +
> +    properties:
> +
> +      compatible:
> +        const: xlnx,versal-ipi-dest-mailbox
> +
> +      xlnx,ipi-id:
> +        description:
> +          Remote Xilinx IPI agent ID of which the mailbox is connected to.
> +        $ref: /schemas/types.yaml#/definitions/uint32

Any value 0-2^32 is valid?

> +
> +      '#mbox-cells':
> +        const: 1
> +        description:
> +          It contains tx(0) or rx(1) channel IPI id number.
> +
> +      reg:
> +        minItems: 1
> +        items:
> +          - description: Host IPI agent control registers
> +          - description: Host IPI agent optional message buffers

Same description as the parent? But the parent is not a mailbox (No 
#mbox-cells)? 

> +
> +      reg-names:
> +        minItems: 1
> +        items:
> +          - const: ctrl
> +          - const: msg
> +
> +    additionalProperties: false
> +
> +    required:
> +      - compatible
> +      - reg
> +      - reg-names
> +      - xlnx,ipi-id
> +      - "#mbox-cells"
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - interrupts
> +  - '#address-cells'
> +  - '#size-cells'
> +  - reg
> +  - reg-names
> +  - xlnx,ipi-id

Same order as 'properties'.

> +
> +examples:
> +  - |
> +    #include<dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    amba {

bus {

> +      #address-cells = <0x2>;
> +      #size-cells = <0x2>;
> +      zynqmp-mailbox@ff300000 {
> +        compatible = "xlnx,versal-ipi-mailbox";
> +        interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
> +        xlnx,ipi-id = <0>;
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +        reg = <0x0 0xff300000 0x0 0x1000>,
> +              <0x0 0xff990000 0x0 0x1ff>;
> +        reg-names = "ctrl", "msg";
> +        ranges;
> +
> +        /* buffered IPI */
> +        mailbox@ff340000 {
> +          compatible = "xlnx,versal-ipi-dest-mailbox";
> +          reg = <0x0 0xff340000 0x0 0x1000>,
> +                <0x0 0xff990400 0x0 0x1ff>;
> +          reg-names = "ctrl", "msg";
> +          #mbox-cells = <1>;
> +          xlnx,ipi-id = <4>;
> +        };
> +
> +        /* bufferless IPI */
> +        mailbox@ff370000 {
> +          compatible = "xlnx,versal-ipi-dest-mailbox";
> +          reg = <0x0 0xff370000 0x0 0x1000>;
> +          reg-names = "ctrl";
> +          #mbox-cells = <1>;
> +          xlnx,ipi-id = <7>;
> +        };
> +      };
> +    };
> +
> +...
> 
> base-commit: 2cc14f52aeb78ce3f29677c2de1f06c0e91471ab
> -- 
> 2.25.1
> 

