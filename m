Return-Path: <devicetree+bounces-7293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B231C7BFED1
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 16:13:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 626CA280E6B
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 14:13:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8363F24C82;
	Tue, 10 Oct 2023 14:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEHObZT7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6649624C7A
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 14:13:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7137C433C8;
	Tue, 10 Oct 2023 14:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696947214;
	bh=KIqXX4dScRrMHwDEzF9HKKvrsZlOHXBbgzmnWEUCjS8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XEHObZT75+L1jmoh5G9m7XnfTcOOAxhRfyMvP8nP2AhwGLM2Z3nWi+bqPqyXYDZIF
	 MOMAaN4RmzkhT5Mo20ctRVu2rFHPLt82ZTsWdCPfCQVpXEJyZW0+SsjZx5nlj54fM5
	 tLM6psgJmcYdHFtKo4s5xqFHB4vj172dtJVNp9Oe3zMqmEXd7yKBqNn3XzsoJ2saSS
	 WuiP+dWTz2DdKnYD4uLzfAKqXcYSIiLZugwFURwEPedTAfB9RnHluNTOEJmsOIQdub
	 /In7pR8xpziE4b+EKSX7EhdurOLxkXEZULdYhUQVZSynXEhp4WJu72kmXXRuWZZBnI
	 k1D9a2w45nFwg==
Received: (nullmailer pid 762988 invoked by uid 1000);
	Tue, 10 Oct 2023 14:13:32 -0000
Date: Tue, 10 Oct 2023 09:13:32 -0500
From: Rob Herring <robh@kernel.org>
To: Dmitry Rokosov <ddrokosov@salutedevices.com>
Cc: lee@kernel.org, pavel@ucw.cz, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, andy.shevchenko@gmail.com, kernel@sberdevices.ru, rockosov@gmail.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org
Subject: Re: [PATCH v1 04/11] dt-bindings: leds: aw200xx: introduce optional
 hwen-gpio property
Message-ID: <20231010141332.GA756597-robh@kernel.org>
References: <20231006160437.15627-1-ddrokosov@salutedevices.com>
 <20231006160437.15627-5-ddrokosov@salutedevices.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231006160437.15627-5-ddrokosov@salutedevices.com>

On Fri, Oct 06, 2023 at 07:04:30PM +0300, Dmitry Rokosov wrote:
> Property 'awinic,hwen-gpio' is optional, it can be used by the board
> developer to connect AW200XX LED controller with appropriate poweron
> GPIO pad.
> 
> Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
> ---
>  Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml b/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> index 73b81f7a7258..e3ad11fc7a84 100644
> --- a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> +++ b/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> @@ -41,6 +41,9 @@ properties:
>      description:
>        Leds matrix size
>  
> +  awinic,hwen-gpio:
> +    maxItems: 1

We have standard 'enable-gpios' or 'powerdown-gpios'. Those don't work 
here?

Note that *-gpio is deprecated in favor of *-gpios.


> +
>  patternProperties:
>    "^led@[0-9a-f]+$":
>      type: object
> @@ -90,12 +93,15 @@ additionalProperties: false
>  
>  examples:
>    - |
> +    #include <dt-bindings/gpio/gpio.h>
>      #include <dt-bindings/leds/common.h>
>  
>      i2c {
>          #address-cells = <1>;
>          #size-cells = <0>;
>  
> +        awinic,hwen-gpio = <&gpio 3 GPIO_ACTIVE_HIGH>;
> +
>          led-controller@3a {
>              compatible = "awinic,aw20036";
>              reg = <0x3a>;
> -- 
> 2.36.0
> 

