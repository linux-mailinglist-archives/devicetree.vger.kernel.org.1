Return-Path: <devicetree+bounces-7235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE847BFD33
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:21:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 41A20281966
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:21:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EF8C45F51;
	Tue, 10 Oct 2023 13:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hijm2yoz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD468BFA
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 13:21:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E8C8C433C7;
	Tue, 10 Oct 2023 13:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696944113;
	bh=CgSS8Lt/YFvUeBBHoPK36uAJxFiiRquBNnr5VmqVfMQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hijm2yozjMDOmRdLMLGdqw/D23+voz/gLKCJ1kdZdcELcII+FlkURluz8un56uk95
	 WvFD362ukK7KpNIl7GWnKnNWDam6vYT9S+owWZjCqkI4RYOPdtDjhZdnAO+6LYK2oy
	 NYJY8LQtj1L1l+w7e7bfji474lIQ9EXIn4LOaEW/eQbzQfBQVn60k32Pdcn+7qAQlX
	 NfW0iesmLNMC0e5EMItHAbJcyr7c/zaAuGDRZNoBWRo+jYkGnqnMEyiBrTn1qx+OQY
	 6hGROv3vYL7SFa8SWiSKiL0Q0g5XdTGYmcUyZyjZm8Py+ZkUlvxNMTGQDi7pZR93NB
	 ls2v8+WQvhy3g==
Received: (nullmailer pid 620779 invoked by uid 1000);
	Tue, 10 Oct 2023 13:21:51 -0000
Date: Tue, 10 Oct 2023 08:21:51 -0500
From: Rob Herring <robh@kernel.org>
To: Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, Jerome Brunet <jbrunet@baylibre.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kevin Hilman <khilman@baylibre.com>, Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Chuan Liu <chuan.liu@amlogic.com>
Subject: Re: [PATCH V2 1/4] dt-bindings: clock: add Amlogic C3 PLL clock
 controller bindings
Message-ID: <20231010132151.GA557938-robh@kernel.org>
References: <20231010062917.3624223-1-xianwei.zhao@amlogic.com>
 <20231010062917.3624223-2-xianwei.zhao@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231010062917.3624223-2-xianwei.zhao@amlogic.com>

On Tue, Oct 10, 2023 at 02:29:14PM +0800, Xianwei Zhao wrote:
> Add the C3 PLL clock controller dt-bindings for Amlogic C3 SoC family
> 
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
> V1 -> V2: Fix errors when check dtbinding use "make dt_binding_check"

Your patches aren't bisectable. It's fine if you want to combine patch 1 
and 2 into 1 patch. Or just use the raw numbers here instead of the 
header.

> ---
>  .../bindings/clock/amlogic,c3-pll-clkc.yaml   | 59 +++++++++++++++++++
>  .../dt-bindings/clock/amlogic,c3-pll-clkc.h   | 42 +++++++++++++
>  2 files changed, 101 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/amlogic,c3-pll-clkc.yaml
>  create mode 100644 include/dt-bindings/clock/amlogic,c3-pll-clkc.h
> 
> diff --git a/Documentation/devicetree/bindings/clock/amlogic,c3-pll-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,c3-pll-clkc.yaml
> new file mode 100644
> index 000000000000..a646992917b7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/amlogic,c3-pll-clkc.yaml
> @@ -0,0 +1,59 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2022-2023 Amlogic, Inc. All rights reserved
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/amlogic,c3-pll-clkc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Amlogic C3 serials PLL Clock Controller

s/serials/Serials/

> +
> +maintainers:
> +  - Chuan Liu <chuan.liu@amlogic.com>
> +
> +properties:
> +  compatible:
> +    const: amlogic,c3-pll-clkc
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +    items:
> +      - description: input pll_in
> +      - description: input mclk_pll_in
> +
> +  clock-names:
> +    minItems: 1
> +    items:
> +      - const: pll_in
> +      - const: mclk_pll_in
> +
> +  "#clock-cells":
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - "#clock-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/amlogic,c3-peripherals-clkc.h>
> +    apb {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        clkc_pll: clock-controller@8000 {

Drop unused labels.

> +          compatible = "amlogic,c3-pll-clkc";

Your indentation is not consistent.

> +          reg = <0x0 0x8000 0x0 0x1a4>;
> +          clocks = <&clkc_periphs CLKID_PLL_IN>,
> +                   <&clkc_periphs CLKID_MCLK_PLL_IN>;
> +          clock-names = "pll_in", "mclk_pll_in";
> +          #clock-cells = <1>;
> +        };
> +    };
> diff --git a/include/dt-bindings/clock/amlogic,c3-pll-clkc.h b/include/dt-bindings/clock/amlogic,c3-pll-clkc.h
> new file mode 100644
> index 000000000000..aa731e8fae29
> --- /dev/null
> +++ b/include/dt-bindings/clock/amlogic,c3-pll-clkc.h
> @@ -0,0 +1,42 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR MIT) */
> +/*
> + * Copyright (c) 2023 Amlogic, Inc. All rights reserved.
> + * Author: Chuan Liu <chuan.liu@amlogic.com>
> + */
> +
> +#ifndef _DT_BINDINGS_CLOCK_AMLOGIC_C3_PLL_CLKC_H
> +#define _DT_BINDINGS_CLOCK_AMLOGIC_C3_PLL_CLKC_H
> +
> +#define CLKID_FIXED_PLL_DCO			0
> +#define CLKID_FIXED_PLL				1
> +#define CLKID_FCLK_DIV40_DIV			2
> +#define CLKID_FCLK_DIV40			3
> +#define CLKID_FCLK_DIV2_DIV			4
> +#define CLKID_FCLK_DIV2				5
> +#define CLKID_FCLK_DIV2P5_DIV			6
> +#define CLKID_FCLK_DIV2P5			7
> +#define CLKID_FCLK_DIV3_DIV			8
> +#define CLKID_FCLK_DIV3				9
> +#define CLKID_FCLK_DIV4_DIV			10
> +#define CLKID_FCLK_DIV4				11
> +#define CLKID_FCLK_DIV5_DIV			12
> +#define CLKID_FCLK_DIV5				13
> +#define CLKID_FCLK_DIV7_DIV			14
> +#define CLKID_FCLK_DIV7				15
> +#define CLKID_GP0_PLL_DCO			16
> +#define CLKID_GP0_PLL				17
> +#define CLKID_HIFI_PLL_DCO			18
> +#define CLKID_HIFI_PLL				19
> +#define CLKID_MCLK_PLL_DCO			20
> +#define CLKID_MCLK_PLL				21
> +#define CLKID_MCLK_PLL_CLK			22
> +#define CLKID_MCLK0_SEL				23
> +#define CLKID_MCLK0_SEL_OUT			24
> +#define CLKID_MCLK0_DIV				25
> +#define CLKID_MCLK0				26
> +#define CLKID_MCLK1_SEL				27
> +#define CLKID_MCLK1_SEL_OUT			28
> +#define CLKID_MCLK1_DIV				29
> +#define CLKID_MCLK1				30
> +
> +#endif  /* _DT_BINDINGS_CLOCK_AMLOGIC_C3_PLL_CLKC_H */
> 
> base-commit: 57b55c76aaf1ba50ecc6dcee5cd6843dc4d85239
> -- 
> 2.37.1
> 

