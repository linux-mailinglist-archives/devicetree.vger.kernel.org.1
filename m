Return-Path: <devicetree+bounces-7348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CD97C0244
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 19:09:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 941751C20B40
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 17:09:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD02E2FE3E;
	Tue, 10 Oct 2023 17:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ruqW2Zr8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F6D42FE2A
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 17:09:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B46DBC433C7;
	Tue, 10 Oct 2023 17:09:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696957784;
	bh=Y2GJaXEmATXSOAs1w4/uRVF75owSZfnEiR+SMO4RBUQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ruqW2Zr8/jlIWOUabxnj2OS92e0THzDLaSWi7UMI8yv6+6+HM/NzGkJjFclQmKPjI
	 ABJrNpXfwsb4gJ0ZohTRrPLHTzJVzmudiGmegddSVk37gJURjs4eMdXF69FnCbc6/N
	 N7fvt92ZevOhWzknchJbi/gG8CNIiB6jyIXLVhI/Imitvkzf+lFdkv5cdzH4rDXQ3v
	 PltmTSazDzpuC6/xntUO1lByAG9lcmDohqK55vz5kF7/2C1y064xelkKBZAaEItS+r
	 axYUaOmGOJ5OnrA3ATGou/tV19YZ4DtUrNpjhK6QmFBapZcuWpusLMYkH5DCWhh7RR
	 qWGqIDYufOhOA==
Received: (nullmailer pid 1063818 invoked by uid 1000);
	Tue, 10 Oct 2023 17:09:41 -0000
Date: Tue, 10 Oct 2023 12:09:41 -0500
From: Rob Herring <robh@kernel.org>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, "Paul J. Murphy" <paul.j.murphy@intel.com>, Daniele Alessandrelli <daniele.alessandrelli@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/5] media: dt-bindings: media: imx335: Add supply
 bindings
Message-ID: <20231010170941.GA1061525-robh@kernel.org>
References: <20231010005126.3425444-1-kieran.bingham@ideasonboard.com>
 <20231010005126.3425444-2-kieran.bingham@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231010005126.3425444-2-kieran.bingham@ideasonboard.com>

On Tue, Oct 10, 2023 at 01:51:22AM +0100, Kieran Bingham wrote:
> Add the bindings for the supply references used on the IMX335.
> 
> Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> ---
>  .../bindings/media/i2c/sony,imx335.yaml          | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx335.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx335.yaml
> index a167dcdb3a32..1863b5608a5c 100644
> --- a/Documentation/devicetree/bindings/media/i2c/sony,imx335.yaml
> +++ b/Documentation/devicetree/bindings/media/i2c/sony,imx335.yaml
> @@ -32,6 +32,15 @@ properties:
>      description: Clock frequency from 6 to 27 MHz, 37.125MHz, 74.25MHz
>      maxItems: 1
>  
> +  avdd-supply:
> +    description: Analog power supply (2.9V)
> +
> +  ovdd-supply:
> +    description: Interface power supply (1.8V)
> +
> +  dvdd-supply:
> +    description: Digital power supply (1.2V)
> +
>    reset-gpios:
>      description: Reference to the GPIO connected to the XCLR pin, if any.
>      maxItems: 1
> @@ -60,6 +69,9 @@ required:
>    - compatible
>    - reg
>    - clocks
> +  - avdd-supply
> +  - ovdd-supply
> +  - dvdd-supply

New required properties are an ABI break. That's fine only if you can 
explain no one is using this binding.

>    - port
>  
>  additionalProperties: false
> @@ -79,6 +91,10 @@ examples:
>              assigned-clock-parents = <&imx335_clk_parent>;
>              assigned-clock-rates = <24000000>;
>  
> +            avdd-supply = <&camera_vdda_2v9>;
> +            ovdd-supply = <&camera_vddo_1v8>;
> +            dvdd-supply = <&camera_vddd_1v2>;
> +
>              port {
>                  imx335: endpoint {
>                      remote-endpoint = <&cam>;
> -- 
> 2.34.1
> 

