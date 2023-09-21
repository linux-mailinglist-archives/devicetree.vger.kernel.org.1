Return-Path: <devicetree+bounces-2183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FCD7A9C30
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:12:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 631AD282A44
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:12:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C4419CA4E;
	Thu, 21 Sep 2023 18:44:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0CAD9CA41
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:44:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAB9FC433C8;
	Thu, 21 Sep 2023 18:44:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695321853;
	bh=8Ky5HU9QsWtwK565KZVC73jkJBv6z9hSJThMalkX6wk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cc9HJs80jcQb27Yue8ri7NXdOPVbGkkCWLuAEvqjUUuolg/M8IMK2u1XB2/H1GCrZ
	 bxJ6SgG/uLmE6tkfF/Yyft2qwUaK9hy2cNijKxB3ofO5IsceHyG4nxmpeUphKjl5h+
	 3aQNvJ1Vyu0Ta4W2Shgej9Ce99Q2ZOOGlvaaIUPMMKD1PaRd2xdXVN8tuqpxr/BQGR
	 PV8Ur1oeHs+zlLc1ytu89RGDwyTNVzdONIQG40S1weEDOaTMedWVTvLoeSGZX9XDH8
	 6IEjm5/pOb4pJ4Djwanbh1PMhvQ3tDvytZFo6Wfz4XeWbzkVaVFy4xF9xGxZqZqg8+
	 EfrEtkJwKhETA==
Received: (nullmailer pid 788465 invoked by uid 1000);
	Thu, 21 Sep 2023 18:44:11 -0000
Date: Thu, 21 Sep 2023 13:44:11 -0500
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Linus Walleij <linusw@kernel.org>, Imre Kaloz <kaloz@openwrt.org>, Krzysztof Halasa <khalasa@piap.pl>, Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] gpio: Rewrite IXP4xx GPIO bindings in schema
Message-ID: <20230921184411.GA784095-robh@kernel.org>
References: <20230921-ixp4xx-gpio-clocks-v1-0-574942bf944a@linaro.org>
 <20230921-ixp4xx-gpio-clocks-v1-1-574942bf944a@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921-ixp4xx-gpio-clocks-v1-1-574942bf944a@linaro.org>

On Thu, Sep 21, 2023 at 12:23:45AM +0200, Linus Walleij wrote:
> This rewrites the IXP4xx GPIO bindings to use YAML schema,
> and adds two new properties to enable fixed clock output on
> pins 14 and 15.
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  .../devicetree/bindings/gpio/intel,ixp4xx-gpio.txt | 38 ------------
>  .../bindings/gpio/intel,ixp4xx-gpio.yaml           | 70 ++++++++++++++++++++++
>  MAINTAINERS                                        |  2 +-
>  3 files changed, 71 insertions(+), 39 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/gpio/intel,ixp4xx-gpio.txt b/Documentation/devicetree/bindings/gpio/intel,ixp4xx-gpio.txt
> deleted file mode 100644
> index 8dc41ed99685..000000000000
> --- a/Documentation/devicetree/bindings/gpio/intel,ixp4xx-gpio.txt
> +++ /dev/null
> @@ -1,38 +0,0 @@
> -Intel IXP4xx XScale Networking Processors GPIO
> -
> -This GPIO controller is found in the Intel IXP4xx processors.
> -It supports 16 GPIO lines.
> -
> -The interrupt portions of the GPIO controller is hierarchical:
> -the synchronous edge detector is part of the GPIO block, but the
> -actual enabling/disabling of the interrupt line is done in the
> -main IXP4xx interrupt controller which has a 1:1 mapping for
> -the first 12 GPIO lines to 12 system interrupts.
> -
> -The remaining 4 GPIO lines can not be used for receiving
> -interrupts.
> -
> -The interrupt parent of this GPIO controller must be the
> -IXP4xx interrupt controller.
> -
> -Required properties:
> -
> -- compatible : Should be
> -  "intel,ixp4xx-gpio"
> -- reg : Should contain registers location and length
> -- gpio-controller : marks this as a GPIO controller
> -- #gpio-cells : Should be 2, see gpio/gpio.txt
> -- interrupt-controller : marks this as an interrupt controller
> -- #interrupt-cells : a standard two-cell interrupt, see
> -  interrupt-controller/interrupts.txt
> -
> -Example:
> -
> -gpio0: gpio@c8004000 {
> -	compatible = "intel,ixp4xx-gpio";
> -	reg = <0xc8004000 0x1000>;
> -	gpio-controller;
> -	#gpio-cells = <2>;
> -	interrupt-controller;
> -	#interrupt-cells = <2>;
> -};
> diff --git a/Documentation/devicetree/bindings/gpio/intel,ixp4xx-gpio.yaml b/Documentation/devicetree/bindings/gpio/intel,ixp4xx-gpio.yaml
> new file mode 100644
> index 000000000000..bb1fc393bd8c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/intel,ixp4xx-gpio.yaml
> @@ -0,0 +1,70 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpio/intel,ixp4xx-gpio.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Intel IXP4xx XScale Networking Processors GPIO Controller
> +
> +description: This GPIO controller is found in the Intel IXP4xx
> +  processors. It supports 16 GPIO lines.
> +  The interrupt portions of the GPIO controller is hierarchical.
> +  The synchronous edge detector is part of the GPIO block, but the
> +  actual enabling/disabling of the interrupt line is done in the
> +  main IXP4xx interrupt controller which has a 1-to-1 mapping for
> +  the first 12 GPIO lines to 12 system interrupts.
> +  The remaining 4 GPIO lines can not be used for receiving
> +  interrupts.
> +  The interrupt parent of this GPIO controller must be the
> +  IXP4xx interrupt controller.
> +  GPIO 14 and 15 can be used as clock outputs rather than GPIO,
> +  and this can be enabled by a special flag.

Do you care about the formatting here? If so, you are missing a '|'. If 
not, you have strange line breaks.

> +
> +maintainers:
> +  - Linus Walleij <linus.walleij@linaro.org>
> +
> +properties:
> +  compatible:
> +    const: intel,ixp4xx-gpio
> +
> +  reg:
> +    maxItems: 1
> +
> +  gpio-controller: true

Blank line between DT properties

> +  "#gpio-cells":
> +    const: 2
> +
> +  interrupt-controller: true

Blank line

> +  "#interrupt-cells":
> +    const: 2

Otherwise, with those nits fixed:

Reviewed-by: Rob Herring <robh@kernel.org>

