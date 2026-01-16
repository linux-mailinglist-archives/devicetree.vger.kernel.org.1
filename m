Return-Path: <devicetree+bounces-256177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C29D33652
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 17:08:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 860083009C2A
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 16:04:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98EE633CE88;
	Fri, 16 Jan 2026 16:04:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVAzZ7pp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C4333A03F;
	Fri, 16 Jan 2026 16:04:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768579475; cv=none; b=mTCNqZbRsAEf9V4Ao1doT73e0jvi4lMdn41LL5bSg14LB8xL+88Y/9Wvaf/Vda/TRX6uVRVkBo9FaagOjUG66GlpZD/zIa7QlSdLeRo4SEH5ON4wFpnIgn7/tlEd2kc2tbPCIxKAuUmpMSoCBomnYGU+8zB2olyTcYFP4LS7wjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768579475; c=relaxed/simple;
	bh=ttcLGoy6Pppi8jgSrT1nrrQBOZdRJct+QTPqLSs7aZE=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Ujhbg1OiF71lovL1pCgRLai37Lm43aeWZEw4jOp4dcrO2Vy+w8rEsA1ydBmpEdB3Tgl6qKqNgTM1mCZRWOaf9ohzMkOHRtCV3ZUppfw+8Ct+BQQakDF8f+e92JjFF+2RR0FYwyvaMGDfmTS9liDo0aq42FNNVJXXRNRGLSoKS4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVAzZ7pp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD988C116C6;
	Fri, 16 Jan 2026 16:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768579475;
	bh=ttcLGoy6Pppi8jgSrT1nrrQBOZdRJct+QTPqLSs7aZE=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=hVAzZ7ppDsycKD9sHJN/9YxvsA6LIMwTDUhBpDZzJilUScNa1XkriDYWarNtPs46P
	 Dcr1AufWh8Vc/qASLh2UBz9ANSIKf7WRXhyXEc6Ter/znpKaLiYwbN+SghijXS+UIZ
	 UpoaG0FsbxEEJTkmdovrBEo3q53/RKwLE/9TXX1Ds6FAFUYAdnzx5QzhAm++PKzMNk
	 Mk4+uw/SDAE1D8A4CkR5nzQmu3/AH6LkgZgHBvSF0UVXSe97Ny80Ip5AYE1R4mzDVc
	 3B+OzQ660mC/zW31ImKiJQUpHG1L97OazgJwx3ZO3g0J+hdgvulyvLgsE0ttYI5PDd
	 i2qVll86a3Eww==
Message-ID: <a5645b54-7e12-4a42-aac6-9fa517c45ecc@kernel.org>
Date: Fri, 16 Jan 2026 17:04:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: mux: gpio-mux: add enable-gpios
 support
To: Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Srinivas Kandagatla <srini@kernel.org>,
 Bartosz Golaszewski <brgl@kernel.org>, David Lechner
 <dlechner@baylibre.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260116152621.75205-1-antoniu.miclaus@analog.com>
 <20260116152621.75205-2-antoniu.miclaus@analog.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <20260116152621.75205-2-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 16/01/2026 16:26, Antoniu Miclaus wrote:
> Add support for an optional enable GPIO that allows the multiplexer
> to be disabled before changing address lines and re-enabled after,
> preventing glitches during channel transitions.
> 
> This is useful for devices like the Analog Devices ADG2404 (4:1 mux)
> that benefit from enable control to ensure clean channel switching.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
> Changes in v4:
>  * Add ADG2404 to binding description for discoverability
>  * Add dedicated ADG2404 example showing enable-gpios usage
>  * Update commit message to reference ADG2404 as use case
> 
> ---
>  .../devicetree/bindings/mux/gpio-mux.yaml     | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mux/gpio-mux.yaml b/Documentation/devicetree/bindings/mux/gpio-mux.yaml
> index ef7e33ec85d4..2d9f32012127 100644
> --- a/Documentation/devicetree/bindings/mux/gpio-mux.yaml
> +++ b/Documentation/devicetree/bindings/mux/gpio-mux.yaml
> @@ -17,6 +17,9 @@ description: |+
>    multiplexer GPIO pins, where the first pin is the least significant
>    bit. An active pin is a binary 1, an inactive pin is a binary 0.
>  
> +  This binding supports GPIO-controlled multiplexers such as the Analog
> +  Devices ADG2404 (4:1 mux with enable control).
> +
>  properties:
>    compatible:
>      const: gpio-mux
> @@ -25,6 +28,13 @@ properties:
>      description:
>        List of gpios used to control the multiplexer, least significant bit first.
>  
> +  enable-gpios:
> +    description:
> +      Optional GPIO to enable the multiplexer. When present, the mux will be
> +      disabled before changing address lines and re-enabled after to prevent
> +      glitches. Required for MUX_IDLE_DISCONNECT idle-state.
> +    maxItems: 1
> +
>    mux-supply:
>      description:
>        Regulator to power on the multiplexer.
> @@ -100,4 +110,19 @@ examples:
>              };
>          };
>      };
> +
> +  - |
> +    /* Analog Devices ADG2404 4:1 multiplexer with enable control */
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    mux-controller {

I did not ask for this. I asked for upstreamed DTS. DTS is a format and
a file - see arch/*/boot/dts/. When I say - upstream DTS - it means you
should make your or any board using this hardware accepted by respective
maintainer. We do not add new examples per every new property, so just
add enable-gpios into existing example.



Best regards,
Krzysztof

