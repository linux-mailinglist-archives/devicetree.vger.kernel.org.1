Return-Path: <devicetree+bounces-252220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0157BCFC8AC
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 09:14:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 327123081E44
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 08:09:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CAC027FD59;
	Wed,  7 Jan 2026 08:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRKfMx6v"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72FEC275B15;
	Wed,  7 Jan 2026 08:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767773395; cv=none; b=bSXfsP5APhXWEqtAV97ItW6zA99Huf9IJIWAJicS7Y0ZInFeI7Ph7enrouakADwsL4FSxcOZyxnuoE8fJqHlPjBtmzrFFqmxCebiTyps1tMfjRdsv86SCW4g4Rn9dAlviiN1LdHMcZdN3M7AJWSHL5ugkiXnauXs8RXEn0yqSzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767773395; c=relaxed/simple;
	bh=ajQh5xwyIUiPk6njRYV0Vzjv0iajQSfQ2ZGc3atANlE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OUFGGA9OFvPLO/tBVQV+qxxcp3k2ONqXkzE6MRU2d7xhITybeCLptwTqk5RaoehAa0PUpjRJipyTl9/MpAYO6NqlAsXjDymikB3emBZz/mTjv6bf+D7HpXZoisuH22YvOHpopFiNYBtyfZd8kVfaIjy+anlUKznCo/lUZ9jri1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRKfMx6v; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 832A8C19421;
	Wed,  7 Jan 2026 08:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767773395;
	bh=ajQh5xwyIUiPk6njRYV0Vzjv0iajQSfQ2ZGc3atANlE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VRKfMx6vjOo9h9yhZpDZqZdJSD70uRbJ3GK7RNu+8rRz1c6riOdQ1tix5PE6CImPj
	 7oLxRouZI+GcNIsdW5o1SXm/WlHKFOaISXFKYwGLlcj7xgf0tDR5Ye5vh7ZgAlu2Zl
	 TRP7bSm52duRKcVQHOy9g9bedtmCWrySS09hBjC3Ed3Yue0ERduiWTtfyTmIS/hJ2o
	 KuG9FTddpis3C5DfcRWRBmV+jvyHG9tx1VJI9m1DX/HYuSnMHnWMJxluomPcSAxMFn
	 6ghN6ZUGQbRIA6GMiiYijFt37KmXzJtKD4KhhD5ktbezENAT5hMP56zDQ8BPpOyRog
	 QuJffmEZQfi7g==
Date: Wed, 7 Jan 2026 09:09:52 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, 
	Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Michael Walle <mwalle@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh@kernel.org>, Simona Vetter <simona@ffwll.ch>, 
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 2/3] dt-bindings: ili9806e: add Rocktech
 RK050HR345-CT106A display
Message-ID: <20260107-remarkable-wildebeest-of-maturity-0aac66@quoll>
References: <20260106154446.2735701-1-dario.binacchi@amarulasolutions.com>
 <20260106154446.2735701-3-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260106154446.2735701-3-dario.binacchi@amarulasolutions.com>

On Tue, Jan 06, 2026 at 04:43:15PM +0100, Dario Binacchi wrote:
> @@ -29,12 +30,29 @@ properties:
>  required:
>    - compatible
>    - reg
> -  - vdd-supply
> -  - vccio-supply
>    - reset-gpios
>    - backlight
>    - port
>  
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - rocktech,rk050hr345-ct106a
> +then:
> +  $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +  properties:
> +    spi-max-frequency: true

This two lines are not needed.

> +
> +  required:
> +    - spi-max-frequency

How does it work without any supplies?

> +else:
> +  required:
> +    - vdd-supply
> +    - vccio-supply

Best regards,
Krzysztof


