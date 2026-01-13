Return-Path: <devicetree+bounces-254718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F76D1B354
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 21:31:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6FB3D3004EDD
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 20:31:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFCCE50094C;
	Tue, 13 Jan 2026 20:31:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b="iMQZzVmE"
X-Original-To: devicetree@vger.kernel.org
Received: from vps.xff.cz (vps.xff.cz [195.181.215.36])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D21EEBB;
	Tue, 13 Jan 2026 20:31:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.181.215.36
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768336270; cv=none; b=roETaReQ0/7VnyvoDDgMOMofFulre7ThiY+Wx+ISojMH9mzyJXC/CFTo/S8b1oZ0eVOVuPVzd2HvDY/lMmClkaZSZL+EM6mB7P/zrvZCK0bs8jg7nVUy/3xGXdtpqMrjw+2Sj4aG8rHUtR60BIKD9v8EkKXvmC5IcfW38nx/0Js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768336270; c=relaxed/simple;
	bh=4qRB3n1SAwl6RtI0sIa55a0VepVkx8uJIqy5veReaWg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eI1E74yozi8ZDOC6wYw3tsg6Qhd5ZI8+Yn4UH7Avn8+fnBaMNGrrnhvKNPDMpm2+LN2lFMe6FMi6Yu95w+p7MihCBfcef+AzEFyIU7ymOTKh9+H3VgKnHsa9WpafHNyDfpvj+h48nICM7BL1E6qUVRQ0CH7SL439ZVATlCrdNPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=xff.cz; spf=pass smtp.mailfrom=xff.cz; dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b=iMQZzVmE; arc=none smtp.client-ip=195.181.215.36
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=xff.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=xff.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1768335657; bh=4qRB3n1SAwl6RtI0sIa55a0VepVkx8uJIqy5veReaWg=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=iMQZzVmEAPqwtnWIOrfBvjn78MLlUP45stGFjZBJOjL14mg5xgw24Fgce+Jm4CEm2
	 Y8g4jgebc+b9Te1t/g5sFm8ivP6vGfwOw1IqpeeQaoXFhekYK4vyROH+jsgf+PRfOY
	 x/Q3ToYiyAp9ipXF5lsQQDQSd2LBoeol7R1REkMU=
Date: Tue, 13 Jan 2026 21:20:57 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: guptarud@gmail.com
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>, Martijn Braam <martijn@brixit.nl>
Subject: Re: [PATCH 2/3] mfd: rk8xx-core: Configure `rk808-clkout2` function
Message-ID: <w7vj2nkvxmledeptr7gd5twa6nxtgmaleenkdqjay22ppxba6t@z66nt7k5qi6q>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	guptarud@gmail.com, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>, Martijn Braam <martijn@brixit.nl>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20260112-ppp_connectivity-v1-0-284d6e83b212@gmail.com>
 <20260112-ppp_connectivity-v1-2-284d6e83b212@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260112-ppp_connectivity-v1-2-284d6e83b212@gmail.com>

On Mon, Jan 12, 2026 at 10:42:25PM -0800, Rudraksha Gupta via B4 Relay wrote:
> From: Kamil Trzciński <ayufan@ayufan.eu>
> 
> While the Wifi and Bluetooth chip are defined in the Pinephone Pro's
> DTS, it actually isn't able to be used. Let's define rk808-clkout2 so
> that userspace can actually interact with Wifi and Bluetooth
> 
> Co-developed-by: Martijn Braam <martijn@brixit.nl>
> Signed-off-by: Martijn Braam <martijn@brixit.nl>
> Signed-off-by: Kamil Trzciński <ayufan@ayufan.eu>
> Signed-off-by: Ondrej Jirman <megi@xff.cz>

Hi Rudraksha, I don't belong here. Semi-original patch from 5 yrs ago is here:
  
  https://codeberg.org/megi/linux/commit/75be96faf939504d0fd5112846e73e437573f716

thanks,
	o.

> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---
>  drivers/mfd/rk8xx-core.c  | 1 +
>  include/linux/mfd/rk808.h | 2 ++
>  2 files changed, 3 insertions(+)
> 
> diff --git a/drivers/mfd/rk8xx-core.c b/drivers/mfd/rk8xx-core.c
> index def4587fdfb8..602218694334 100644
> --- a/drivers/mfd/rk8xx-core.c
> +++ b/drivers/mfd/rk8xx-core.c
> @@ -282,6 +282,7 @@ static const struct rk808_reg_data rk818_pre_init_reg[] = {
>  	{ RK818_H5V_EN_REG,	  BIT(0),	    RK818_H5V_EN },
>  	{ RK808_VB_MON_REG,	  MASK_ALL,	    VB_LO_ACT |
>  						    VB_LO_SEL_3500MV },
> +	{ RK808_CLK32OUT_REG, CLK32KOUT2_FUNC_MASK, CLK32KOUT2_FUNC },
>  };
>  
>  static const struct regmap_irq rk805_irqs[] = {
> diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
> index 28170ee08898..077fe2e15b78 100644
> --- a/include/linux/mfd/rk808.h
> +++ b/include/linux/mfd/rk808.h
> @@ -934,6 +934,8 @@ enum rk806_dvs_mode {
>  
>  #define VOUT_LO_INT	BIT(0)
>  #define CLK32KOUT2_EN	BIT(0)
> +#define CLK32KOUT2_FUNC		(0 << 1)
> +#define CLK32KOUT2_FUNC_MASK	BIT(1)
>  
>  #define TEMP105C			0x08
>  #define TEMP115C			0x0c
> 
> -- 
> 2.52.0
> 
> 

