Return-Path: <devicetree+bounces-253813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9D7D1180F
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:31:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 575ED30178EF
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 09:31:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38F54267B92;
	Mon, 12 Jan 2026 09:31:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ri8XfbKT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1249E25B1DA;
	Mon, 12 Jan 2026 09:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768210306; cv=none; b=dznxiud/2yvWeMXj60Hjd1h791PetroHxNxKc+L2ZWhebvMugM1zy6F+chHUqp/mI9a1Qe93obIohsHn7k7XSd0D2alvEmrzaGXvFCdgyxlWT/pJlBY4V6+kGPLVjU4/U5kEiLLvLQmbcaiCHMf83owXB5LH2q/9izZSGRptIeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768210306; c=relaxed/simple;
	bh=3GNmGGqyfWH8WsMt2SNho52VuOTTGt49kLqkKScSrxw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LiH9eJfHNDN7Quc28E2L/31atZqDFKntCR9U+BV1OcBVgTgs4BAcTam/6Gq3Tc0NQFCfDQgP73kQEASgTqRr38JofQpO2Ax6zmXISLbBWylpCisvxYM4pFn+M9+QX8rkkYO3cKVaTmOQVZuUXxwy2+2hbw3Cvv6V8ISpduSS+dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ri8XfbKT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53911C116D0;
	Mon, 12 Jan 2026 09:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768210305;
	bh=3GNmGGqyfWH8WsMt2SNho52VuOTTGt49kLqkKScSrxw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ri8XfbKTHxf21UiqYPJV032PgIJBURKoC1lIlsevvixvH/MHtRuHHrZs4ZSUyIuM8
	 G6ZE4yrDBKR1vIT4f7s3dtjr77JjQfbWjQGGYCQWi12jPi7Bo7ZSNnefcib74IYwvL
	 NjE+OcZ2AWic1G19rwlF95dclvQWEHrv+2vRZBIhf0iA6luojkgZTiLHPMgiCT646U
	 cTvrbr4+4J9tKe+IClJr1twB0iH+n+vln/ezHe3EGbcePEpFFiJ907FUFSq6WXxO4M
	 eYiGTzkCvvpB89AMSM2E7+pmIlLN38izaFnPIoV9MvwAgD44bWaG+x3qvVbBVXeDnM
	 uaGxi0DIftn+A==
Date: Mon, 12 Jan 2026 10:31:43 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-amlogic@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	adrian.larumbe@collabora.com, steven.price@arm.com, boris.brezillon@collabora.com, 
	robh@kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: gpu: mali-bifrost: Add compatible for
 Amlogic Meson S4
Message-ID: <20260112-quixotic-daft-starfish-5fe914@quoll>
References: <20260110200426.1461575-1-martin.blumenstingl@googlemail.com>
 <20260110200426.1461575-2-martin.blumenstingl@googlemail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260110200426.1461575-2-martin.blumenstingl@googlemail.com>

On Sat, Jan 10, 2026 at 09:04:24PM +0100, Martin Blumenstingl wrote:
> Add a compatible string for the Mali-G31 GPU in the Amlogic Meson S4
> SoC. It has two clock inputs (GPU clock and a bus clock) as well as two
> resets (main GPU reset line and a GPU ABP reset line).
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  .../bindings/gpu/arm,mali-bifrost.yaml        | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> index db49b8ff8c74..85fae7753004 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> @@ -19,6 +19,7 @@ properties:
>            - enum:
>                - allwinner,sun50i-h616-mali
>                - amlogic,meson-g12a-mali
> +              - amlogic,meson-s4-mali
>                - mediatek,mt8183-mali
>                - mediatek,mt8183b-mali
>                - mediatek,mt8186-mali
> @@ -143,6 +144,25 @@ allOf:
>          power-domain-names: false
>        required:
>          - resets
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: amlogic,meson-s4-mali
> +    then:
> +      properties:
> +        power-domains:
> +          maxItems: 1
> +        power-domain-names: false
> +        clocks:
> +          minItems: 2

missing maxItems

Can't this be combined with existing meson entry, *after* fixing it to
include missing clocks?


Best regards,
Krzysztof


