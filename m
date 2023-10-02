Return-Path: <devicetree+bounces-5139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8467B5634
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 17:23:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 9DE31B20A08
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 15:23:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA07E1C693;
	Mon,  2 Oct 2023 15:23:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A4A619BBE
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 15:23:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D0BCC433C7;
	Mon,  2 Oct 2023 15:23:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696260226;
	bh=J31MH8/2r2BMfbJUBh+R459Cp6pdTI0Bsk+3NWVzrsE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hPStttAfTWc+lyohHbX38wiESvCZgMH8ITKZQzHcHdm8G7UCp7Q5ImGYlldQGDmwi
	 JIh2c8/pTqJ9a5pQ3NhFY5MyAysWRzFmSLK7X6uevHewo8kIHvFqKI3FTqgCgMsYXe
	 tsrNuodOO+IXVlt+OKJEsk+m2tAC3V5suY4SDpR6BRTAfxHVR4q3imCOiGoVS5Lh5G
	 yl9Gr2QCptI3ctd6eYSpy9H/998tREUU18ydMG1t2acp89rKMAtxzSXe5yZ8IFFyMG
	 SK15YA+ffl5SMze3JNikC4t3pYswRTXVrWrQ9z/bqAf/vDpvm3RhKRBW+PJ319123s
	 w4RiwFX/fxsdw==
Received: (nullmailer pid 1752918 invoked by uid 1000);
	Mon, 02 Oct 2023 15:23:43 -0000
Date: Mon, 2 Oct 2023 10:23:43 -0500
From: Rob Herring <robh@kernel.org>
To: Billy Tsai <billy_tsai@aspeedtech.com>
Cc: jdelvare@suse.com, linux@roeck-us.net, krzysztof.kozlowski+dt@linaro.org, joel@jms.id.au, andrew@aj.id.au, corbet@lwn.net, thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de, p.zabel@pengutronix.de, naresh.solanki@9elements.com, linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, linux-pwm@vger.kernel.org, BMC-SW@aspeedtech.com, patrick@stwcx.xyz
Subject: Re: [PATCH v9 1/3] dt-bindings: hwmon: fan: Add fan binding to schema
Message-ID: <20231002152343.GA1747496-robh@kernel.org>
References: <20230918064111.2221594-1-billy_tsai@aspeedtech.com>
 <20230918064111.2221594-2-billy_tsai@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230918064111.2221594-2-billy_tsai@aspeedtech.com>

On Mon, Sep 18, 2023 at 02:41:09PM +0800, Billy Tsai wrote:
> From: Naresh Solanki <naresh.solanki@9elements.com>
> 
> Add common fan properties bindings to a schema.
> 
> Bindings for fan controllers can reference the common schema for the
> fan
> 
> child nodes:
> 
>   patternProperties:
>     "^fan@[0-2]":
>       type: object
>       $ref: fan-common.yaml#
>       unevaluatedProperties: false
> 
> Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
> Signed-off-by: Billy Tsai <billy_tsai@aspeedtech.com>
> ---
>  .../devicetree/bindings/hwmon/fan-common.yaml | 78 +++++++++++++++++++
>  1 file changed, 78 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/hwmon/fan-common.yaml
> 
> diff --git a/Documentation/devicetree/bindings/hwmon/fan-common.yaml b/Documentation/devicetree/bindings/hwmon/fan-common.yaml
> new file mode 100644
> index 000000000000..2bd2f57fc9d9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/hwmon/fan-common.yaml
> @@ -0,0 +1,78 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/hwmon/fan-common.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Common Fan Properties
> +
> +maintainers:
> +  - Naresh Solanki <naresh.solanki@9elements.com>
> +  - Billy Tsai <billy_tsai@aspeedtech.com>
> +
> +properties:
> +  max-rpm:
> +    description:
> +      Max RPM supported by fan.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    maximum: 100000
> +
> +  min-rpm:
> +    description:
> +      Min RPM supported by fan.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    maximum: 1000
> +
> +  pulses-per-revolution:
> +    description:
> +      The number of pulse from fan sensor per revolution.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    maximum: 4
> +
> +  tach-div:
> +    description:
> +      Divisor for the tach sampling clock, which determines the sensitivity of the tach pin.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +
> +  target-rpm:
> +    description:
> +      The default desired fan speed in RPM.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +
> +  fan-driving-mode:
> +    description:
> +      Select the driving mode of the fan.(DC, PWM and so on)
> +    $ref: /schemas/types.yaml#/definitions/uint32

What value corresponds to what mode? I'd do strings instead. 'dc', 
'pwm', etc.

> +
> +  pwms:
> +    description:
> +      PWM provider.
> +    maxItems: 1
> +
> +  "#cooling-cells":
> +    const: 2
> +
> +  cooling-levels:
> +    description: |

Don't need '|'

> +      The control value which correspond to thermal cooling states.
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +
> +  tach-ch:
> +    description:
> +      The tach channel used for the fan.
> +    $ref: /schemas/types.yaml#/definitions/uint8-array
> +
> +  label:
> +    description:
> +      Optional fan label
> +
> +  fan-supply:
> +    description:
> +      Power supply for fan.
> +
> +  reg:
> +    maxItems: 1
> +
> +additionalProperties: true
> +
> +...
> -- 
> 2.25.1
> 

