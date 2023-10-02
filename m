Return-Path: <devicetree+bounces-5140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 476F47B563C
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 17:28:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E0633281E82
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 15:28:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C9AA1CF83;
	Mon,  2 Oct 2023 15:28:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39425199B2
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 15:28:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99F18C433C8;
	Mon,  2 Oct 2023 15:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696260504;
	bh=cBsXuH+waMnbRb4zU7K8v3UB85/p7ufJUV9Y1AvcxRI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VdKIGKKOTx6RCCphHOtVS/Dr/s/B5hcvTW3AukByt1zrZOIpZJw0DS+x9GQjStAVx
	 C77Au3XeTTzvbiNUtG824gBmuwqXxgloskfVs+S8AN5nOCfpzi9SbnZlU1arCJREee
	 DcvqT5Ki92KBnFv/YHTsXVpzOQEybww5AmVYUGhwoKPQ5htUUorEwjW05u5sy0w48M
	 cmePtZHUeuyQERcJBWGnU1Khdvf0qyCeiccLQFn6c4n+YyfyBtj3BKI1MIZMT/iA2i
	 7MpJXE3H6AmIGBwDLUkrn6GiJIO50tbZga685E62N1w/+R8n+l0CWpro5kNA+Rijku
	 EJNvViksJFWgw==
Received: (nullmailer pid 1757850 invoked by uid 1000);
	Mon, 02 Oct 2023 15:28:19 -0000
Date: Mon, 2 Oct 2023 10:28:19 -0500
From: Rob Herring <robh@kernel.org>
To: Billy Tsai <billy_tsai@aspeedtech.com>
Cc: jdelvare@suse.com, linux@roeck-us.net, krzysztof.kozlowski+dt@linaro.org, joel@jms.id.au, andrew@aj.id.au, corbet@lwn.net, thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de, p.zabel@pengutronix.de, naresh.solanki@9elements.com, linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, linux-pwm@vger.kernel.org, BMC-SW@aspeedtech.com, patrick@stwcx.xyz
Subject: Re: [PATCH v9 2/3] dt-bindings: hwmon: Support Aspeed g6 PWM TACH
 Control
Message-ID: <20231002152819.GB1747496-robh@kernel.org>
References: <20230918064111.2221594-1-billy_tsai@aspeedtech.com>
 <20230918064111.2221594-3-billy_tsai@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230918064111.2221594-3-billy_tsai@aspeedtech.com>

On Mon, Sep 18, 2023 at 02:41:10PM +0800, Billy Tsai wrote:
> Document the compatible for aspeed,ast2600-pwm-tach device, which can
> support up to 16 PWM outputs and 16 fan tach input.
> 
> Signed-off-by: Billy Tsai <billy_tsai@aspeedtech.com>
> ---
>  .../bindings/hwmon/aspeed,g6-pwm-tach.yaml    | 69 +++++++++++++++++++
>  1 file changed, 69 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/hwmon/aspeed,g6-pwm-tach.yaml
> 
> diff --git a/Documentation/devicetree/bindings/hwmon/aspeed,g6-pwm-tach.yaml b/Documentation/devicetree/bindings/hwmon/aspeed,g6-pwm-tach.yaml
> new file mode 100644
> index 000000000000..5a679f4ad2fa
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/hwmon/aspeed,g6-pwm-tach.yaml
> @@ -0,0 +1,69 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2023 Aspeed, Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/hwmon/aspeed,g6-pwm-tach.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ASPEED G6 PWM and Fan Tach controller device driver

This is binding for the h/w, not a 'device driver'.

> +
> +maintainers:
> +  - Billy Tsai <billy_tsai@aspeedtech.com>
> +
> +description: |
> +  The ASPEED PWM controller can support up to 16 PWM outputs.
> +  The ASPEED Fan Tacho controller can support up to 16 fan tach input.
> +  They are independent hardware blocks, which are different from the
> +  previous version of the ASPEED chip.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - aspeed,ast2600-pwm-tach
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  "#pwm-cells":
> +    const: 3
> +
> +patternProperties:
> +  "^fan-[0-9a-f]+$":

foo-<index> naming is decimal, not hex. (unit-addresses are hex)

But if 0 and 1 correspond to something in the h/w, then you should 
probably be using 'reg' instead (which means a unit-address too).

> +    $ref: fan-common.yaml#
> +    unevaluatedProperties: false
> +    required:
> +      - tach-ch
> +
> +required:
> +  - reg
> +  - clocks
> +  - resets
> +  - "#pwm-cells"
> +  - compatible
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/aspeed-clock.h>
> +    pwm_tach: pwm-tach-controller@1e610000 {
> +      compatible = "aspeed,ast2600-pwm-tach";
> +      reg = <0x1e610000 0x100>;
> +      clocks = <&syscon ASPEED_CLK_AHB>;
> +      resets = <&syscon ASPEED_RESET_PWM>;
> +      #pwm-cells = <3>;
> +
> +      fan-0 {
> +        tach-ch = /bits/ 8 <0x0>;

What about the PWM connection?

> +      };
> +
> +      fan-1 {
> +        tach-ch = /bits/ 8 <0x1 0x2>;
> +      };
> +    };
> -- 
> 2.25.1
> 

