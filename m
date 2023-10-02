Return-Path: <devicetree+bounces-5126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3757B555C
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 16:42:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 0146E28260E
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 14:41:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07DDD1A29B;
	Mon,  2 Oct 2023 14:41:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2DE19BC3
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 14:41:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8579DC433CA;
	Mon,  2 Oct 2023 14:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696257717;
	bh=GQnhUpmMgw8sX1nuRCzsnvWq4YgyhgyCIT55QkUE9Wg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QRm6xAGE2epBNfQ+962kJul1GehdZN0MR6MN7xQcSe17NO4t4ovKRMRlV6f7mlzoG
	 dopNTSrT2dzXQ/Zre0z4yWGuLzBeH2/cTAXylzH2wRmvm2FDLK6y51XGyPIJezTCff
	 cuA3ZPSkUGvY6kLB/qnXNu1Sdv5HEcRUXNFx4kwiVZxDhCW9a3p7dHd5YztKVDLFnA
	 DI46SEv3YddU1BOloIHOzb5J3YqVONBl3w7vhrCnMGs/1JnYST0+1Fhb8CfP4E4YqS
	 HgxnniEZ4t8o8rCKZq/lXGFgcloNfhaGSE53KRtfXWQV0rbbaknTmUEpVVgKvY2CcZ
	 OdfY7ha9Ix5IQ==
Received: (nullmailer pid 1680786 invoked by uid 1000);
	Mon, 02 Oct 2023 14:41:55 -0000
Date: Mon, 2 Oct 2023 09:41:55 -0500
From: Rob Herring <robh@kernel.org>
To: AKASHI Takahiro <takahiro.akashi@linaro.org>
Cc: sudeep.holla@arm.com, cristian.marussi@arm.com, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, linus.walleij@linaro.org, Oleksii_Moisieiev@epam.com, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Subject: Re: [RFC 4/4] dt-bindings: gpio: Add bindings for SCMI pinctrl based
 gpio
Message-ID: <20231002144155.GA1675188-robh@kernel.org>
References: <20231002021602.260100-1-takahiro.akashi@linaro.org>
 <20231002021602.260100-5-takahiro.akashi@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231002021602.260100-5-takahiro.akashi@linaro.org>

On Mon, Oct 02, 2023 at 11:16:02AM +0900, AKASHI Takahiro wrote:
> A dt binding for SCMI pinctrl based gpio driver is defined in this
> commit. It basically conforms to generic pinctrl-gpio mapping framework.

What is "generic pinctrl-gpio mapping framework"? DT doesn't have 
frameworks.

> 
> Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
> ---
>  .../bindings/gpio/arm,scmi-gpio.yaml          | 71 +++++++++++++++++++
>  1 file changed, 71 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpio/arm,scmi-gpio.yaml
> 
> diff --git a/Documentation/devicetree/bindings/gpio/arm,scmi-gpio.yaml b/Documentation/devicetree/bindings/gpio/arm,scmi-gpio.yaml
> new file mode 100644
> index 000000000000..2601c5594567
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/arm,scmi-gpio.yaml
> @@ -0,0 +1,71 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpio/arm,scmi-gpio.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: SCMI pinctrl based generic GPIO controller
> +
> +maintainers:
> +  - AKASHI Takahiro <akashi.takahiro@linaro.org>
> +
> +properties:
> +  $nodename:
> +    pattern: "^scmi_gpio(@[0-9a-f]+)$"

Not the correct name.

> +
> +  compatible:
> +    const: arm,scmi-gpio-generic

What makes it generic? No such thing. Just drop '-generic'.

> +
> +  gpio-controller: true
> +
> +  "#gpio-cells":
> +    const: 2
> +
> +  gpio-ranges: true
> +
> +  gpio-ranges-group-names: true
> +
> +patternProperties:
> +  "^.+-hog(-[0-9]+)?$":
> +    type: object
> +    properties:
> +      gpio-hog: true
> +      gpios: true
> +      input: true
> +      output-high: true
> +      output-low: true
> +      line-name: true
> +
> +    required:
> +      - gpio-hog
> +      - gpios

You don't need all this just 'required: [ gpio-hog ]'. Then the hog 
schema will check the rest.

> +
> +    additionalProperties: false
> +
> +required:
> +  - compatible
> +  - gpio-controller
> +  - "#gpio-cells"
> +  - gpio-ranges
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    scmi_gpio_0: scmi_gpio@0 {

gpio {

But doesn't SCMI have protocol numbers?

> +        compatible = "arm,scmi-gpio";
> +        gpio-controller;
> +        #gpio-cells = <2>;
> +        gpio-ranges = <&scmi_pinctrl 0 10 5>,
> +                      <&scmi_pinctrl 5 0 0>;
> +        gpio-ranges-group-names = "",
> +                                  "pinmux_gpio";
> +    };
> +
> +    // Consumer:

Outside the scope of this binding. Drop this node.

> +    sdhci0_pwrseq {
> +        compatible = "mmc-pwrseq-emmc";
> +        reset-gpios = <&scmi_gpio_0 0 GPIO_ACTIVE_LOW>;
> +    };
> -- 
> 2.34.1
> 

