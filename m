Return-Path: <devicetree+bounces-61297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC2F8AC368
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 06:21:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 739D01F217BE
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 04:21:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CD63111AD;
	Mon, 22 Apr 2024 04:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxRhtJxi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FF810962
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 04:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713759670; cv=none; b=dL5gc9dkBEDseR2I6eQInApJXOuv5NeQCR65bAKPoYuVsANR+FTsgECz8tlB70BdC2GCW+4u7+v7JutEmvJExa6v4+trdsiy/aLrKoHl7MRmenqPpuxx4JqcEV5CaelieFrL/KxI+hPuTAHyA7FqRZKXYX4mTkMFox5cgXbAQdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713759670; c=relaxed/simple;
	bh=ozpBxBgCJmqupdB7H8gj0pkGoEsWtf9/ZsRSpCcvC+8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dHiYVDBQZmUVI+TBzvsiRXXkllUWAhGTbZfPKf5wqcOElYssAABYImZf36PGeF6l0CksDCTIEWZuJxKxkgqNNbBpsRWqd+0jdGVfKbM82IjELl0wq0CJX8GPM8XvaZuIOpc/fid+egV36HPeNQFtogcG+YnfarMVimPwnHoEGEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxRhtJxi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68A14C113CC;
	Mon, 22 Apr 2024 04:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713759670;
	bh=ozpBxBgCJmqupdB7H8gj0pkGoEsWtf9/ZsRSpCcvC+8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=BxRhtJxi0aOSSshzokmo3OeuPpVERC0LWHK1HnpNq6CvwP45Xz2ckYfkUJJPv/y8b
	 QquXQ2AAcUUxu6DkNNfK1EZ+pR2wVZzhYOwU3vu2tvBKUTyAelU//u0rI2wABiPRRI
	 dJmzhtZELiV+uDYcpUuXNaLYFp0Jv438esiP0nbt+/uN60ya0GOP7O5FTakULEj1w5
	 aAdbpnQt3lnf/4XOYvztGhHFyFmGIzvXsf6d5hAdpFiVfP0yWFEABGweOSnkTH/Rl2
	 Ir7Yhe2W92kdI6bI+QuKanA2D/KY/ZBDrYGgfPddRgipwJAjd5s75g3dKWIf4Sk9Yr
	 e+QeRypPjkF5w==
Message-ID: <f02c63b3-d6e1-495d-a73a-493e39e40b2e@kernel.org>
Date: Mon, 22 Apr 2024 06:21:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/20] dt-bindings: arm: stm32: Add compatible string for
 DH electronics STM32MP13xx DHCOR DHSBC board
To: Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc: =?UTF-8?Q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Andre Przywara <andre.przywara@arm.com>, Conor Dooley <conor+dt@kernel.org>,
 Dario Binacchi <dario.binacchi@amarulasolutions.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Rob Herring <robh@kernel.org>,
 Sean Nyekjaer <sean@geanix.com>, Steffen Trumtrar
 <s.trumtrar@pengutronix.de>, devicetree@vger.kernel.org,
 kernel@dh-electronics.com, linux-stm32@st-md-mailman.stormreply.com
References: <20240422002006.243687-1-marex@denx.de>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20240422002006.243687-1-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 22/04/2024 02:19, Marek Vasut wrote:
> Add DT compatible string for DH electronics STM32MP13xx DHCOR SoM and
> DHSBC carrier board. This stm32mp135f-dhcor-dhsbc board is a stack of
> DHCOR SoM based on STM32MP135F SoC (900MHz / crypto capabilities)
> populated on DHSBC carrier board.
> 
> The SoM contains the following peripherals:
> - STPMIC (power delivery)
> - 512MB DDR3L memory
> - eMMC and SDIO WiFi module
> 
> The DHSBC carrier board contains the following peripherals:
> - Two RGMII Ethernet ports
> - USB-A Host port, USB-C peripheral port, USB-C power supply plug
> - Expansion connector
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: "Leonard Göhrs" <l.goehrs@pengutronix.de>
> Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Andre Przywara <andre.przywara@arm.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Sean Nyekjaer <sean@geanix.com>
> Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Cc: devicetree@vger.kernel.org
> Cc: kernel@dh-electronics.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> ---
>  Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> index bc2f43330ae42..7f61223b8ef24 100644
> --- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> +++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> @@ -59,6 +59,12 @@ properties:
>                - prt,prtt1s   # Protonic PRTT1S
>            - const: st,stm32mp151
>  
> +      - description: DH STM32MP135 DHCOR SoM based Boards
> +        items:
> +          - const: dh,stm32mp135f-dhcor-dhsbc
> +          - const: dh,stm32mp131a-dhcor-som
> +          - const: st,stm32mp135

The entries look ordered by last compatible, so this breaks the order.

Best regards,
Krzysztof


