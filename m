Return-Path: <devicetree+bounces-61513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EAA8AD04B
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 17:09:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6D7C1B258C5
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 15:09:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AE77153572;
	Mon, 22 Apr 2024 15:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fiuLOtpt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162B015356D
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 15:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713798492; cv=none; b=ZZeVDcoC+8fUtMPfxqxEVxfRTZnzPZ9mKArAGH1XnNF74N5TsNYRkltE+9gSSQE917khv29R1btOYFBtoD65vejVNwtmekGYPJWeih71evnFNoQIcd8CTyuDVVoCJQpBsjgk3T6o3VwDbUATNGfwGW14QUf+Wdg4WnrZx9XO4LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713798492; c=relaxed/simple;
	bh=QNpTh7SSEKm5aEurHWCD45AQgT9MI90Hn8igWPVhotQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k4h7eL7IzLu/SfPiQsMtABhFY5uFg5zYe1Z2h+rRLb8LgWm/KtUy299q9ajS2YJm5MTzmSeCsgMqkP8LWJunnwgnCW9qfS3/5KSeQ2LRiFXpPbGiSZg6sTl6yges0y05Ywzvc31W93MkrvE6JlV62XOpZOPcJcQxuWQIt9LvJSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fiuLOtpt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53CF3C4AF09;
	Mon, 22 Apr 2024 15:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713798491;
	bh=QNpTh7SSEKm5aEurHWCD45AQgT9MI90Hn8igWPVhotQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fiuLOtptFHLOeefhxmjlT4jLTL4HLwYlkSOHlscuaJQ+xo5tFcFazaW1VER9jI1Ga
	 MQXi2Ez2VvHvIQTReJZ2qhza4NQ7kfKeeUw+Eppv2MaIpMIAoFVywHHHXAfLXs1YSI
	 MNI9S+vRySYhe61Tm0h+eGElxBF1Sv5TtQYl5b2VvPIXqozvz7KGwpVMB8rY1ce9dq
	 dRdbz0BYE/XbXBbHnysZmT2WSCJbRgj1voHfXDQDZ5svax42zwGxQ57NlfRbaNwOK0
	 9DRjm+OUjyYV1PnbP25xMqCjpaOnI9hFtd+eUf6xRTBLLryWnmsppKQ8AUiBbRSafr
	 HHvONsJGedWBA==
Date: Mon, 22 Apr 2024 10:08:09 -0500
From: Rob Herring <robh@kernel.org>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org,
	Leonard =?iso-8859-1?Q?G=F6hrs?= <l.goehrs@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andre Przywara <andre.przywara@arm.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Sean Nyekjaer <sean@geanix.com>,
	Steffen Trumtrar <s.trumtrar@pengutronix.de>,
	devicetree@vger.kernel.org, kernel@dh-electronics.com,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH 01/20] dt-bindings: arm: stm32: Add compatible string for
 DH electronics STM32MP13xx DHCOR DHSBC board
Message-ID: <20240422150809.GA1265252-robh@kernel.org>
References: <20240422002006.243687-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240422002006.243687-1-marex@denx.de>

On Mon, Apr 22, 2024 at 02:19:15AM +0200, Marek Vasut wrote:
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

Either this or your dts is wrong. Either way, please test your dts files 
against the schemas.

> +          - const: st,stm32mp135
> +
>        - description: DH STM32MP151 DHCOR SoM based Boards
>          items:
>            - const: dh,stm32mp151a-dhcor-testbench
> -- 
> 2.43.0
> 

