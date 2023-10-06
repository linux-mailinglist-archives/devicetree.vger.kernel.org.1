Return-Path: <devicetree+bounces-6559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 636FC7BBCBA
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 18:30:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 93C8C1C209D5
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 16:30:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A00CD1173F;
	Fri,  6 Oct 2023 16:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgPQyIRU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 840E028E1F
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 16:30:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51776C433C8;
	Fri,  6 Oct 2023 16:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696609856;
	bh=q+LkTZ3kRNksRx5zPKLolASfAnEed8JZw5Y217f8E/c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TgPQyIRU7Vf6SIA0Ux7qV6+hi5EX79radiijlfGtiqnqIrTIMuRS2AMUuanZgNwrD
	 KFuvGN6/PSC2hbS6PN5yNoDpD+CI/icPhigNVuwQosN897nO45UtgBnwGTYkIt38Si
	 21VAvTi1pSlbCzAkJ9h+IXSLuNbdX1bCPbtOUZD00D12DJeUtZHCH+Ja9kQzDy8FoC
	 Xe++Nkg/hWoejUcPH+kuITzL6QoGzba3XKs/lQbtUVSKMAjJHvpR02LDcj/ptbqFw0
	 xLl72YAe3Eofm760rDUdSaLdyFhdONV927fMf6aqgNRKusbmZ2H/anum2kW064RH/+
	 ha7L1Njo+qBSQ==
Received: (nullmailer pid 4038357 invoked by uid 1000);
	Fri, 06 Oct 2023 16:30:54 -0000
Date: Fri, 6 Oct 2023 11:30:54 -0500
From: Rob Herring <robh@kernel.org>
To: Naresh Solanki <naresh.solanki@9elements.com>
Cc: broonie@kernel.org, zev@bewilderbeest.net, Liam Girdwood <lgirdwood@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: regulator: regulator-output:
 Multiple supplies
Message-ID: <20231006163054.GA4037413-robh@kernel.org>
References: <20231004121010.1192344-1-naresh.solanki@9elements.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231004121010.1192344-1-naresh.solanki@9elements.com>

On Wed, Oct 04, 2023 at 02:10:07PM +0200, Naresh Solanki wrote:
> Add support for multiple supplies.

Again, why?

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

