Return-Path: <devicetree+bounces-6843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A237BD174
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 02:40:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F1E43281478
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 00:40:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 037E5A49;
	Mon,  9 Oct 2023 00:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TaduiPvw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D558939B
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 00:40:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A52EDC433C8;
	Mon,  9 Oct 2023 00:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696812021;
	bh=J0GRDxm080uPCD8Am8KeUyA7JKGTDkfvRl5M8xldpxw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=TaduiPvw4uewX3e7GiHqNWuI+H0eTaDAhLngRqTzr4/1KPmzqP9zCPAxH/lieIm7X
	 v9XTWRvZwIW1I0OTQ27eYokYRysoDYMlOUDdxL+RMQGS+R9nvguwvx2BmS7jK1mJQW
	 RG/bET3ZJgw9NmlpkLm8+TbygS7cV6sgKPGLP02/VL8jntA3bY7Vbv78MukH66EZcV
	 wZpImZdqRyTSzXfyiGTSlbOsaYdDKU+1RKaNaFS4hXdOsVRAsUccU9mP7o78385F20
	 w+a2DyAC9eK/egYLXpMEgdG9d0r+26DueE/IPOhGbQXl/Lj7GORjKntVkSFfn+jhhD
	 yTeHH58wdPrWQ==
Message-ID: <d33cadd3-4432-44c7-8570-1a28e5669939@kernel.org>
Date: Mon, 9 Oct 2023 09:40:16 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 20/26] dt-bindings: devfreq: event: convert Rockchip
 DFI binding to yaml
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Robin Murphy <robin.murphy@arm.com>,
 Vincent Legoll <vincent.legoll@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Rob Herring <robh@kernel.org>
References: <20230704093242.583575-1-s.hauer@pengutronix.de>
 <20230704093242.583575-21-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20230704093242.583575-21-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23. 7. 4. 18:32, Sascha Hauer wrote:
> Convert the Rockchip DFI binding to yaml.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v4:
>     
>     - Revert to state of v3 (changes were lost in v4)
> 
>  .../bindings/devfreq/event/rockchip,dfi.yaml  | 61 +++++++++++++++++++
>  .../bindings/devfreq/event/rockchip-dfi.txt   | 18 ------
>  .../rockchip,rk3399-dmc.yaml                  |  2 +-
>  3 files changed, 62 insertions(+), 19 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
>  delete mode 100644 Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt
> 
> diff --git a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> new file mode 100644
> index 0000000000000..7a82f6ae0701e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> @@ -0,0 +1,61 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/devfreq/event/rockchip,dfi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip DFI
> +
> +maintainers:
> +  - Sascha Hauer <s.hauer@pengutronix.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3399-dfi
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: pclk_ddr_mon
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  reg:
> +    maxItems: 1
> +
> +  rockchip,pmu:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the syscon managing the "PMU general register files".
> +
> +required:
> +  - compatible
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/rk3308-cru.h>
> +
> +    bus {
> +      #address-cells = <2>;
> +      #size-cells = <2>;
> +
> +      dfi: dfi@ff630000 {
> +        compatible = "rockchip,rk3399-dfi";
> +        reg = <0x00 0xff630000 0x00 0x4000>;
> +        interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH 0>;
> +        rockchip,pmu = <&pmugrf>;
> +        clocks = <&cru PCLK_DDR_MON>;
> +        clock-names = "pclk_ddr_mon";
> +      };
> +    };
> diff --git a/Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt b/Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt
> deleted file mode 100644
> index 148191b0fc158..0000000000000
> --- a/Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt
> +++ /dev/null
> @@ -1,18 +0,0 @@
> -
> -* Rockchip rk3399 DFI device
> -
> -Required properties:
> -- compatible: Must be "rockchip,rk3399-dfi".
> -- reg: physical base address of each DFI and length of memory mapped region
> -- rockchip,pmu: phandle to the syscon managing the "pmu general register files"
> -- clocks: phandles for clock specified in "clock-names" property
> -- clock-names : the name of clock used by the DFI, must be "pclk_ddr_mon";
> -
> -Example:
> -	dfi: dfi@ff630000 {
> -		compatible = "rockchip,rk3399-dfi";
> -		reg = <0x00 0xff630000 0x00 0x4000>;
> -		rockchip,pmu = <&pmugrf>;
> -		clocks = <&cru PCLK_DDR_MON>;
> -		clock-names = "pclk_ddr_mon";
> -	};
> diff --git a/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml b/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
> index fb4920397d08e..aba8649aaeb10 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
> +++ b/Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
> @@ -18,7 +18,7 @@ properties:
>      $ref: /schemas/types.yaml#/definitions/phandle
>      description:
>        Node to get DDR loading. Refer to
> -      Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt.
> +      Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml.
>  
>    clocks:
>      maxItems: 1

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


