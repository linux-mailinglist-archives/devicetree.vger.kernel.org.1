Return-Path: <devicetree+bounces-240743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A72C74D73
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 16:18:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 195194E8A15
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 15:06:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1295F34D4C6;
	Thu, 20 Nov 2025 15:03:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AC6pR3ZW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB382D1F5E;
	Thu, 20 Nov 2025 15:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763651026; cv=none; b=Bm8yznCGu/6bYG1AkATH++ZZmMFjoyylqGsiaFkY9mHHY2MCmg9WQHkqpL7lgbgwqK8q22R7WxB62r60M8RhuGlJqHhvZ0Jq7kfd6tKeNO6WHtFjeTNlCC3iwr0ISEpbnmVwZ0vCWZ4nENkjVsW+Q7G9nrJk/6lCa4844go/6ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763651026; c=relaxed/simple;
	bh=pfOB+M7ex+fP/RluyCcJ2YvWmOHgbeDNJ44F7gcziKM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qEQs9s+adMPMYwBxi8t/6zsAL/3Nkf6Y5CAZM1lExkvRGAEfXO4T6rd2XcZiW1M3RlKEqc6txTROd3sIVTOqFAh57RBvGw0T0+rqWzBYXiLyzHSwR6o8AbRvGGnVXwO89qGICMJxqfDLF1eY/SA/hVyDJZIc8J1TBKN2MJTqCDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AC6pR3ZW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6974DC4CEF1;
	Thu, 20 Nov 2025 15:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763651024;
	bh=pfOB+M7ex+fP/RluyCcJ2YvWmOHgbeDNJ44F7gcziKM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AC6pR3ZWDb2M0PIxmSNgFIw79OENm7Y4I9e29LuBfhy7MQWisUYLvavroXo6ZYiO4
	 iW5pRRbeSFFRLEDmozpTX3EOgUbLDQ8jxJRlA/aq5HncPJwlRxElr3sy0ZYw9JdH4n
	 jWRaPNIITuWujpINkM2tNWPN6/rdtil/u4gjcfeYN/d999b/k+GTt0Ssvpc5tddqrQ
	 0naxD9+fz3XoLESnMla+XAxX+tVYh8BaGHWb+TixY1NiDXRnWtcfh+Gez5UB4O1q55
	 /HPmI9bIWQyqSG0aQIPLvk+zQt5cgPFQC2jPw9OdYQIiWv1HIYREkr+F3ig7f0XG2G
	 hfUzk63nen0Mw==
Date: Thu, 20 Nov 2025 09:03:43 -0600
From: Rob Herring <robh@kernel.org>
To: Joan-Na-adi <joan.na.devcode@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, Joan Na <joan.na@analog.com>
Subject: Re: [PATCH v6 1/2] regulator: dt-bindings: Add MAX77675 regulator
Message-ID: <20251120150343.GA1256330-robh@kernel.org>
References: <20251120125449.26530-1-joan.na@analog.com>
 <20251120125449.26530-2-joan.na@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251120125449.26530-2-joan.na@analog.com>

On Thu, Nov 20, 2025 at 09:54:48PM +0900, Joan-Na-adi wrote:
> From: Joan Na <joan.na@analog.com>
> 
> Add device tree binding YAML schema for the Maxim MAX77675 PMIC regulator.
> 
> Signed-off-by: Joan Na <joan.na@analog.com>
> ---
>  .../bindings/regulator/adi,max77675.yaml      | 188 ++++++++++++++++++
>  1 file changed, 188 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/regulator/adi,max77675.yaml
> 
> diff --git a/Documentation/devicetree/bindings/regulator/adi,max77675.yaml b/Documentation/devicetree/bindings/regulator/adi,max77675.yaml
> new file mode 100644
> index 000000000000..54cbbd59ff5b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/adi,max77675.yaml
> @@ -0,0 +1,188 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/regulator/adi,max77675.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Maxim MAX77675 PMIC Regulator
> +
> +maintainers:
> +  - Joan Na <joan.na@analog.com>
> +
> +description:
> +  The MAX77675 is a Power Management IC providing four switching buck
> +  regulators (SBB0–SBB3) accessible via I2C. It supports configuration
> +  of output voltages and enable controls for each regulator.
> +
> +allOf:
> +  - $ref: /schemas/input/input.yaml
> +  - $ref: /schemas/pinctrl/pincfg-node.yaml
> +
> +properties:
> +  compatible:
> +    const: adi,max77675
> +
> +  reg:
> +    maxItems: 1
> +
> +  reset-time-sec:
> +    description: Manual reset time in seconds
> +    enum: [4, 8, 12, 16]
> +    default: 4
> +
> +  bias-disable:
> +    type: boolean
> +    description: Disable internal pull-up for EN pin
> +    default: false

'default' does not make sense for boolean properties. default is how 
should the s/w handle the property not being present. That's always 
false for booleans and can't possibly be true as you have below.

With those dropped everywhere,

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

