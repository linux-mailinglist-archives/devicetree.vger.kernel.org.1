Return-Path: <devicetree+bounces-134550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B719FDE94
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 11:28:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 157441881CBD
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 10:28:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E863713959D;
	Sun, 29 Dec 2024 10:28:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRReA6gA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B61B27083F;
	Sun, 29 Dec 2024 10:28:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735468130; cv=none; b=PY/YFCm8ug6tqiP2uiS27f++oPlpkR8TK1tYVIcayBAdV0BFqYTI1CTM0kGjqREEehVhMN8muo1puqihtNbj4RpEXvFfXDBLlKsPBCjtWWZashCjV8HeC3d0VUi2anqfEjmg7ipd0XlK3VcYbQvQm1dMC0J4w5Yai0INuOWQuGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735468130; c=relaxed/simple;
	bh=ig4iN1Yr9gJWPJqwhCorg9Cn3LvqNba//d1GZVxk2TU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NMYKGbfuTRU85nThZwqLl8V5NlDdVyhNNJD5j/Cir0fFW9DMONadNBj+y0i64UMbwZ1weB0Q1ZOpQueTtDrw+mPzA+mqCgVFxVJlU0YRNNG1xr/8YpqLAgW6raU4yZDgsDUfxHz9+apQ3Wh1MXDgkE4fwKnITeSdrGzDv+sAMsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRReA6gA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90694C4CED1;
	Sun, 29 Dec 2024 10:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735468130;
	bh=ig4iN1Yr9gJWPJqwhCorg9Cn3LvqNba//d1GZVxk2TU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NRReA6gAA8A2Q9nv9sACUKVAbYDprVe5i53s/cPkX6ioODKCFKnGUsuRCpuQAfDaw
	 uVfCj1/fZA9r8vq+2FakhM+ugIS+G7cyEG1DCTysYa01fp4c6r3C544gCmrELe4xku
	 /f1COgf+Hgby3zxI2VbSecF16nwEcaHQ9BKonC5qLaYPUc4uiDetr9lLGsVYETpzC4
	 MnNCy3GiZLWYmRD8UMMF+XA2mKSWhv9gUHpBoyUsSz4SCD61H5UnVJ+qVd1JH0b+Al
	 32Df9qz/AL3KDt6FWWJAUSH+yVMlyNCNk/S4owAdbkDcqNBVXCgeHkGu1RArpSySu2
	 seeHmR8btxPcw==
Date: Sun, 29 Dec 2024 11:28:47 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, 
	Abel Vesa <abelvesa@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Fabio Estevam <festevam@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Peng Fan <peng.fan@nxp.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, Stephen Boyd <sboyd@kernel.org>, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v7 10/23] dt-bindings: clock: imx8m-clock: add phandle to
 the anatop
Message-ID: <rua4s52moqfxxv7qozs2ef4os4huyfsb3knhfzdwxl6rjo4noh@atq6ipuwj7xd>
References: <20241227165719.3902388-1-dario.binacchi@amarulasolutions.com>
 <20241227165719.3902388-11-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241227165719.3902388-11-dario.binacchi@amarulasolutions.com>

On Fri, Dec 27, 2024 at 05:56:13PM +0100, Dario Binacchi wrote:
> Adding the phandle to the anatop node will break the ABI but will allow
> for a better description of the clock generation hardware, making the
> dependency of CCM on anatop explicit. Indeed, the CCM receives the PLLs
> generated by anatop as inputs, which, together with the oscillators,
> are used to generate the clocks for the on-chip peripherals.

I don't get this. If this device (CCM?) receives PLLs, then these are
clock inputs, not a phandle.

> 
> By doing this, it will also be possible to generalize the CCM driver
> code, which will no longer require the platform's compatible string to
> retrieve the anatop device node.
> 
> Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> 
> ---
> 
> Changes in v7:
> - New
> 
>  .../devicetree/bindings/clock/imx8m-clock.yaml         | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/clock/imx8m-clock.yaml b/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
> index c643d4a81478..b23e639e6389 100644
> --- a/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
> +++ b/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
> @@ -43,12 +43,20 @@ properties:
>        ID in its "clocks" phandle cell. See include/dt-bindings/clock/imx8m-clock.h
>        for the full list of i.MX8M clock IDs.
>  
> +  fsl,anatop:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      The phandle to the anatop module that outputs the PLLs, which,
> +      along with the oscillators, are used to generate the clocks for
> +      the on-chip peripherals.

Explain how this is used by this device. If the explanation is "PLLs",
then it is wrong: PLLs are clock inputs.

Best regards,
Krzysztof


