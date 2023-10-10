Return-Path: <devicetree+bounces-7371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3237C032C
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 20:13:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 19CFD281BA8
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 18:13:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 220F7225C4;
	Tue, 10 Oct 2023 18:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEAQjv4a"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01853225A3
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 18:13:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A951BC433C8;
	Tue, 10 Oct 2023 18:13:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696961631;
	bh=Y0jSZ418VJCO23r2Ek0he1ittaMBBbZlWHmICY7boL0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qEAQjv4aEejMBWqYn38S2+3PR80PHRXRWNK1Dx95Y5A6yom9zyOIeEF6cFo+twTeq
	 uZ4/xPF99dXObMnNONMVZoSxJwoA39XBiL1bCmTfF7slAs4HyYifhsmeFnYGsmHpOJ
	 z7/17TuRZorVYQyesRcajWcQHAsB6VFr7hJtS0qLbwFqHn9wKhMZTktuM92okWRKr6
	 2Zueo5eY/OjrQhpsTfGqH+9d9G3BHTukY6l1RSWt5sUADUIiz1OZMkUEohNOrbR8eI
	 V7zLxZIQ+SQnZhH1PfuXb3EBG9SLb0BSZpzLkQA3cz/+4wuRiIl4glNLZz2CnBS2s7
	 Oea/EP+68pMbA==
Received: (nullmailer pid 1210705 invoked by uid 1000);
	Tue, 10 Oct 2023 18:13:49 -0000
Date: Tue, 10 Oct 2023 13:13:49 -0500
From: Rob Herring <robh@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, kernel@pengutronix.de, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v1 1/3] regulator: dt-bindings: fixed-regulator: Add
 under-voltage interrupt support
Message-ID: <20231010181349.GA1183365-robh@kernel.org>
References: <20231010085906.3440452-1-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231010085906.3440452-1-o.rempel@pengutronix.de>

On Tue, Oct 10, 2023 at 10:59:04AM +0200, Oleksij Rempel wrote:
> Add under-voltage interrupt support. This can be used with simple
> regulators having no other way to communicate an under-voltage event
> except as by toggling some GPIO line.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> 
> diff --git a/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml b/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml
> index ac0281b1cceb..0f8760ed2fb1 100644
> --- a/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml
> +++ b/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml
> @@ -100,6 +100,14 @@ properties:
>    vin-supply:
>      description: Input supply phandle.
> 
> +  interrupts:
> +    maxItems: 1
> +    description:
> +      Under-voltage interrupt
> +
> +  interrupt-names:
> +    const: under-voltage

No need for a name. If there's ever a 2nd, it should be a specific 
binding, not fixed-regulator.

> +
>  required:
>    - compatible
>    - regulator-name
> ---
>  .../devicetree/bindings/regulator/fixed-regulator.yaml    | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml b/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml
> index ac0281b1cceb..0f8760ed2fb1 100644
> --- a/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml
> +++ b/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml

I think you've got some problems with your setup...

> @@ -100,6 +100,14 @@ properties:
>    vin-supply:
>      description: Input supply phandle.
>  
> +  interrupts:
> +    maxItems: 1
> +    description:
> +      Under-voltage interrupt
> +
> +  interrupt-names:
> +    const: under-voltage
> +
>  required:
>    - compatible
>    - regulator-name
> -- 
> 2.39.2
> 

