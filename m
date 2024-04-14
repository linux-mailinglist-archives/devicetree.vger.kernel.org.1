Return-Path: <devicetree+bounces-59031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B39E8A410A
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 09:50:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9F5F9B20F71
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 07:50:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B95CD20B34;
	Sun, 14 Apr 2024 07:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jookia.org header.i=@jookia.org header.b="n5lnPeDO"
X-Original-To: devicetree@vger.kernel.org
Received: from out-187.mta1.migadu.com (out-187.mta1.migadu.com [95.215.58.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DDBB20B0F
	for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 07:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.187
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713081028; cv=none; b=bbNMPFJqxyCDA83jzu1ALzvsbC108djpjzbG0xoanD3F1kRgvDQuzr0UVQt0DpK+eAghAONDjnUyMv/N3KZCZYvEsNNeXIWQwWs1xRq0xkoZx/ioqQnYixQp+qzvj6MR0Q8nBgaPQTtzkE1kuSTHB0E1/aEn3CWU5A/v9gRZa/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713081028; c=relaxed/simple;
	bh=H6YxuLS+vZ0hRD16s9B8CTjoNeJwNOk13H0hiFdVO9E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NRxHQe7bE+NytZiKxApQ0tuq/iJp1NannQlhpOy644aXt3lZoU7pL5udsJTI97Gyw4fBBRF32tCTSgGBZ4+w6R4Kzte5vIrqW0WJXoGYUoDrIJL8Sx46Ge74/cVGhw63U4SiXVzCN7nCT87tWsz52JXn74Ttb/X6i/yCJIbGm4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jookia.org; spf=none smtp.mailfrom=jookia.org; dkim=pass (2048-bit key) header.d=jookia.org header.i=@jookia.org header.b=n5lnPeDO; arc=none smtp.client-ip=95.215.58.187
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jookia.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=jookia.org
Date: Sun, 14 Apr 2024 17:47:20 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1713081023;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=3yhLFCQy32BOv7cF34Aar9r4ve2JL48C66WEtWuJpyQ=;
	b=n5lnPeDOqPTrY6qQxN6kQTaIgV5/eCaBTV7UQE7s+5fMmtz7YMgq+MokQlnmucfARmtwvE
	3FlkHdTRSt9N0a5OYOUxYQoiw4kq9jB2Us1biwpyRgf6lRvgTM7wX3LOlfzyIRDg/r4T2b
	8/BmDBLobhdQ+8TEM4a6dUA7NWOThjXdS22qrJNzfCT7BdW6FGsgw63SOPUw11H2DapsKA
	S9dMFrXdnKRW+xVQkS0IVB2ccYQxqjDNszis5Y2yyLdJIaKgWSCr6+Da3c7rIDPZhUatgl
	qEoh/cXkurUi6X+dbYYxt1Dl9yDLq8EO0QNr91V1v0ov8Ds0YSLkzPIFW5X/NQ==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Chen-Yu Tsai <wens@csie.org>, Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Ryan Walklin <ryan@testtoast.com>,
	Chris Morgan <macroalpha82@gmail.com>
Subject: Re: [PATCH 3/4] mfd: axp20x: AXP717: Add support for boost regulator
Message-ID: <ZhuKCCGGWQINQWAv@titan>
References: <20240329235033.25309-1-andre.przywara@arm.com>
 <20240329235033.25309-4-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240329235033.25309-4-andre.przywara@arm.com>
X-Migadu-Flow: FLOW_OUT

On Fri, Mar 29, 2024 at 11:50:32PM +0000, Andre Przywara wrote:
> The AXP717 also contains a boost regulator, to provide the 5V USB VBUS
> rail when running on battery.
> 
> Add the registers to the MFD description to be able to use them from the
> regulator driver.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Hi,

This patch looks correct to me- checked against the AXP717 datasheet.

John.

Reviewed-by: John Watts <contact@jookia.org>

> ---
>  drivers/mfd/axp20x.c       | 2 ++
>  include/linux/mfd/axp20x.h | 2 ++
>  2 files changed, 4 insertions(+)
> 
> diff --git a/drivers/mfd/axp20x.c b/drivers/mfd/axp20x.c
> index 48ce6ea693cea..62f3dd254d57b 100644
> --- a/drivers/mfd/axp20x.c
> +++ b/drivers/mfd/axp20x.c
> @@ -209,6 +209,8 @@ static const struct regmap_access_table axp313a_volatile_table = {
>  };
>  
>  static const struct regmap_range axp717_writeable_ranges[] = {
> +	regmap_reg_range(AXP717_MODULE_EN_CONTROL, AXP717_MODULE_EN_CONTROL),
> +	regmap_reg_range(AXP717_BOOST_CONTROL, AXP717_BOOST_CONTROL),
>  	regmap_reg_range(AXP717_IRQ0_EN, AXP717_IRQ4_EN),
>  	regmap_reg_range(AXP717_DCDC_OUTPUT_CONTROL, AXP717_CPUSLDO_CONTROL),
>  };
> diff --git a/include/linux/mfd/axp20x.h b/include/linux/mfd/axp20x.h
> index 8c0a33a2e9ce2..4dad54fdf67ee 100644
> --- a/include/linux/mfd/axp20x.h
> +++ b/include/linux/mfd/axp20x.h
> @@ -115,6 +115,8 @@ enum axp20x_variants {
>  #define AXP313A_IRQ_STATE		0x21
>  
>  #define AXP717_ON_INDICATE		0x00
> +#define AXP717_MODULE_EN_CONTROL	0x19
> +#define AXP717_BOOST_CONTROL		0x1e
>  #define AXP717_IRQ0_EN			0x40
>  #define AXP717_IRQ1_EN			0x41
>  #define AXP717_IRQ2_EN			0x42
> -- 
> 2.35.8
> 

