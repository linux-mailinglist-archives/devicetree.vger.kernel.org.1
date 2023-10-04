Return-Path: <devicetree+bounces-5864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C19E07B834B
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 17:14:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 779DB2814B0
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 15:14:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3CE218E1C;
	Wed,  4 Oct 2023 15:14:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1CF915ACB
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 15:14:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88E00C433CA;
	Wed,  4 Oct 2023 15:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696432475;
	bh=sVb1k0yUWZmIiRmLsr5E7KWlOhVNJ9j/Nl1LiNAAiwc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Tw8k4DLhwzdNCnsX5ets8V40gPrPSpiB2WspgLXxhl8zyr0Qft+YioawNU8w4YJE9
	 jEhKUKy7qWsjEd758xXKDjFZD99EooG3xGnYrd1o4SsJvimeDj/l/GIhAaGEq3ckix
	 h+aMJg0QuIg9x2K80WOAgsCEiq6rDq0thaA+IxOCnbRKlTeIRaXgs6GRK9JNbTi9Rf
	 lxVC7AR34IDtnDgS5jYzvsZz0N+5/UWumnWfNjeb3o3lRT/LM0XL31jnlS8G4xMK4K
	 NOTfzn5iK/VMy0O73nJ1kc4FPzaU1a6CulL907FDsPbDKMFYdq6GFZrl+4pdZp3OLI
	 kVaNYY31PQNJw==
Received: (nullmailer pid 3147925 invoked by uid 1000);
	Wed, 04 Oct 2023 15:14:33 -0000
Date: Wed, 4 Oct 2023 10:14:33 -0500
From: Rob Herring <robh@kernel.org>
To: Naresh Solanki <naresh.solanki@9elements.com>
Cc: broonie@kernel.org, zev@bewilderbeest.net, Liam Girdwood <lgirdwood@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: regulator: regulator-output: Multiple
 supplies
Message-ID: <20231004151433.GA3145438-robh@kernel.org>
References: <20231004120529.1155700-1-naresh.solanki@9elements.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231004120529.1155700-1-naresh.solanki@9elements.com>

On Wed, Oct 04, 2023 at 02:05:26PM +0200, Naresh Solanki wrote:
> Add support for multiple supplies.

Why?

> 
> Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
> ---
>  .../devicetree/bindings/regulator/regulator-output.yaml  | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/regulator/regulator-output.yaml b/Documentation/devicetree/bindings/regulator/regulator-output.yaml
> index 078b37a1a71a..6d077f123729 100644
> --- a/Documentation/devicetree/bindings/regulator/regulator-output.yaml
> +++ b/Documentation/devicetree/bindings/regulator/regulator-output.yaml
> @@ -21,13 +21,13 @@ properties:
>    compatible:
>      const: regulator-output
>  
> -  vout-supply:
> +patternProperties:
> +  ".*-supply":
>      description:
>        Phandle of the regulator supplying the output.
>  
>  required:
>    - compatible
> -  - vout-supply
>  
>  additionalProperties: false
>  
> @@ -37,3 +37,8 @@ examples:
>            compatible = "regulator-output";
>            vout-supply = <&output_reg>;
>        };
> +      output1 {
> +          compatible = "regulator-output";
> +          sw0-supply = <&output_reg0>;
> +          sw1-supply = <&output_reg2>;
> +      };
> 
> base-commit: f9a1d31874c383f58bb4f89bfe79b764682cd026
> -- 
> 2.41.0
> 

