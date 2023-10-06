Return-Path: <devicetree+bounces-6501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A567BB8FC
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 15:23:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 00D36282245
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 13:23:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D66B20B15;
	Fri,  6 Oct 2023 13:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oCjiFyOm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CB11F959
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 13:23:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA3CFC433C7;
	Fri,  6 Oct 2023 13:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696598628;
	bh=B5o5NNQIfkr6liManrK89c7NchW+ByGMGplOuW+1c2o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oCjiFyOmXoWq3MA4CNJ+zEgduCs4d26hrjyoHn7LLeI9sF6+/Z5vTEFwq8lCvuxjM
	 iuFq5551BnQ10fTpmhKix2oNhTNHaLXHfNg7kYrRjJstvS2U96pcB7dnG3qLg9TUzS
	 K2UpH5JlOVzNpBTCb0RknN2QvU8/RbYQ4hj+RShZUWbDDS2Jp1uGpi7HOkgBiRmFaY
	 AeWA1/GOeNSl0q8m9cEmT9rbdLSwDn3ZXBP4xXZQUv9Ck8ZgbXyKT4A3WN152GPnWP
	 IqVrBFyrQijwrLy4WmGLFuhUwKWXpqlXtejm6NSy0ZAEeo0IMsCzkWwv855Gaa8RA9
	 MYsXgmqROF++Q==
Received: (nullmailer pid 3467386 invoked by uid 1000);
	Fri, 06 Oct 2023 13:23:46 -0000
Date: Fri, 6 Oct 2023 08:23:46 -0500
From: Rob Herring <robh@kernel.org>
To: AKASHI Takahiro <takahiro.akashi@linaro.org>
Cc: sudeep.holla@arm.com, cristian.marussi@arm.com, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, linus.walleij@linaro.org, Oleksii_Moisieiev@epam.com, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Subject: Re: [RFC v2 5/5] dt-bindings: gpio: Add bindings for pinctrl based
 generic gpio driver
Message-ID: <20231006132346.GA3426353-robh@kernel.org>
References: <20231005025843.508689-1-takahiro.akashi@linaro.org>
 <20231005025843.508689-6-takahiro.akashi@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231005025843.508689-6-takahiro.akashi@linaro.org>

On Thu, Oct 05, 2023 at 11:58:43AM +0900, AKASHI Takahiro wrote:
> A dt binding for pin controller based generic gpio driver is defined in
> this commit. One usable device is Arm's SCMI.

You don't need a "generic" binding to have a generic driver. Keep the 
binding specific and then decide in the OS to whether to use a generic 
or specific driver. That decision could change over time, but the 
binding can't. For example, see simple-panel.


> 
> Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
> ---
> RFC v2 (Oct 5, 2023)
> * rename the binding to pin-control-gpio
> * add the "description"
> * remove nodename, hog properties, and a consumer example
> RFC (Oct 2, 2023)
> ---
>  .../bindings/gpio/pin-control-gpio.yaml       | 55 +++++++++++++++++++
>  1 file changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpio/pin-control-gpio.yaml
> 
> diff --git a/Documentation/devicetree/bindings/gpio/pin-control-gpio.yaml b/Documentation/devicetree/bindings/gpio/pin-control-gpio.yaml
> new file mode 100644
> index 000000000000..bc935dbd7edb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/pin-control-gpio.yaml
> @@ -0,0 +1,55 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpio/pin-control-gpio.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Pin control based generic GPIO controller
> +
> +description:
> +  The pin control-based GPIO will facilitate a pin controller's ability
> +  to drive electric lines high/low and other generic properties of a
> +  pin controller to perform general-purpose one-bit binary I/O.
> +
> +maintainers:
> +  - AKASHI Takahiro <akashi.takahiro@linaro.org>
> +
> +properties:
> +  compatible:
> +    const: pin-control-gpio
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
> +
> +    required:
> +      - gpio-hog
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
> +    gpio0: gpio@0 {
> +        compatible = "pin-control-gpio";
> +        gpio-controller;
> +        #gpio-cells = <2>;
> +        gpio-ranges = <&scmi_pinctrl 0 10 5>,
> +                      <&scmi_pinctrl 5 0 0>;
> +        gpio-ranges-group-names = "",
> +                                  "pinmux_gpio";
> +    };
> -- 
> 2.34.1
> 

