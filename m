Return-Path: <devicetree+bounces-56537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0397089995F
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 11:25:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 26C2A1C21332
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 09:25:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6644F15FCE2;
	Fri,  5 Apr 2024 09:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRrLEON+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42846145B09
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 09:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712309096; cv=none; b=UCLhpNzZlJaS+/hg6uSAIXnYvRKjbI9G2BA7goRSj4Uqs38ckdpwDq3gMXHZp9nbyxst9WbZkhOZop9US+NO2gWSfgBeT0Oeyb46wRn9OJ3wwj1EmYCiJ2fJHqu1PukzPiSjwqLqWnaGaCbawg4zoT194zUfkvRIYXTuQO9+eQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712309096; c=relaxed/simple;
	bh=sDdTc5KSp5x7mO32KE7XDawEfDMaaS0TiU2cePEV8dQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bYcxRRCIwmchu/W/mxTQt6qhovvft9FHNRU1+weQPiuZtrXNvtKMZhFWovOoQo3rWU6Zp4DZay6a5KaehkPpTKxmoYUacKMFw2HoUFuE8CKbLF/l9NVLQJoFGD7MkXSBmYAb5vBDYUynI9VtwrtdccDVNxZ5tMOfHO9fqrqERSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRrLEON+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7324DC433F1;
	Fri,  5 Apr 2024 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712309096;
	bh=sDdTc5KSp5x7mO32KE7XDawEfDMaaS0TiU2cePEV8dQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=uRrLEON+LoVUHSZjljgcaJaN4W1NRdZHn1Ov0TJAGb8hJSqd2OPBmxQql1yg9Hfll
	 V3HF++e4Zm+Olz5EHShYW8bsshBQ6dzozGAbu7PyD8Nh63MhVarr4a2q3Ry3c5hChy
	 AVAVDU6a3MpTbynAh6rhJMcY/c2169xPm2lmAkq2am7mkR7XZFMQ2cpbdyyg757OPY
	 zyP0zpyVXp24r3bSXGAk1cK6UtLA8N0j+m4LBRie0qhlYkEHHxAR8HiF5/ELmFEjTN
	 noiWsU47k0hiMtek9o1J2vLm4glYmvE6m3pru2HPCFqQHowaPbhhr443H3gM3m7CRU
	 j72odvXsXVeDw==
Message-ID: <714fa88b-2abd-4485-bacf-b8dada683d08@kernel.org>
Date: Fri, 5 Apr 2024 11:24:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: extcon: ptn5150: Document the 'port' node
To: Fabio Estevam <festevam@gmail.com>, cw00.choi@samsung.com
Cc: myungjoo.ham@samsung.com, robh@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, marex@denx.de, Fabio Estevam <festevam@denx.de>
References: <20240404022943.528293-1-festevam@gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzk@kernel.org>
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20240404022943.528293-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 04/04/2024 04:29, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Doument the port node to link the PTN5150 to a TypeC controller.
> 
> This fixes the following dt-schema warnings:
> 
> imx8mp-dhcom-pdk3.dtb: typec@3d: 'port' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	from schema $id: http://devicetree.org/schemas/extcon/extcon-ptn5150.yaml#

Your patch ends up in spam. Probably
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  .../devicetree/bindings/extcon/extcon-ptn5150.yaml    | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml b/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml
> index d5cfa32ea52d..3472c69056ac 100644
> --- a/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml
> +++ b/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml
> @@ -36,6 +36,11 @@ properties:
>      description:
>        GPIO pin (output) used to control VBUS. If skipped, no such control
>        takes place.

Missing blank line.

> +  port:
> +    $ref: /schemas/graph.yaml#/$defs/port-base

Why not "$ref: /schemas/graph.yaml#/properties/port"?

But more important, what about USB C connector?

> +    description:
> +      A port node to link the PTN5150 to a TypeC controller.
> +    unevaluatedProperties: false
>  
>  required:
>    - compatible
> @@ -58,5 +63,11 @@ examples:
>              interrupt-parent = <&msmgpio>;
>              interrupts = <78 IRQ_TYPE_LEVEL_HIGH>;
>              vbus-gpios = <&msmgpio 148 GPIO_ACTIVE_HIGH>;
> +
> +            port {
> +              ptn5150_out_ep: endpoint {
> +                 remote-endpoint = <&dwc3_0_ep>;
> +              };

Messed indentation. Just compare the indentation with what is around. It
seems you repeat the same mistake in your recent bindings patches.


> +           };
>          };
>      };

Best regards,
Krzysztof


