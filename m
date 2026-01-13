Return-Path: <devicetree+bounces-254469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23170D18629
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 12:14:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 023843041C78
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:05:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9621338B7B1;
	Tue, 13 Jan 2026 11:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="caCPIhWU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 739A825A2A2;
	Tue, 13 Jan 2026 11:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768302290; cv=none; b=s9ekH7OSBDZfIEiLoQ6rmKu94kpfYnps+SBNurVAkpRa66bqADflykfes4GdtELieBL/6lENoPIvnW8dYAGy7MANq8W40rVahRxnY9Xo8+3Fc4Z6yqqn22nB72I+svkMo0nIHJqf+zLGQVShx7u8b7sY05F4IdOLfMqJsiZNUMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768302290; c=relaxed/simple;
	bh=wOormaL9PD1DYwYJHqWiopjDekcsEFD3wPQ8gHBL2cw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eg3UXyt4NEyOyLkR9kHqdd1PBRD6x81r+pLjwNQQtNjHitDjClvCcPSjK6Pp0gY9ph7PFnZtr6alghdWPpozuyOUaI9mll/L0DUdLX4ZBAPq6BnvAbE9LubHFqCLIrOcXBuWpn7FSvB+kVQpnTXbDJqi4mCPa5Bs95og3l8sPeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=caCPIhWU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63185C116C6;
	Tue, 13 Jan 2026 11:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768302290;
	bh=wOormaL9PD1DYwYJHqWiopjDekcsEFD3wPQ8gHBL2cw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=caCPIhWUJaaWLRUhsVIf6sJpFdGESi270guP9LIaFZ4qr0jAh0mRMI7ntyHpCB7Y0
	 YNVrWfB5Hy5jXNmtaOCcVoFsLjJ0OoOM2cQnSHH0hLwsMB8nmH7urYJONXD9PuUKGl
	 Y952TiVZ/KfWRlYUIrQ+4ZdKfTK9NB2VJeXnXQJK5vmkYAVwM4ra2SEXLnVulhiuYs
	 3UntSOeR+olyVNb1s0b1TdsMV00SzGdWImf2XZ6J3whYDx7vUHXVmGBzbx3sfkxGOh
	 pGC9jmRyLZQB6F9/AazKgBWT5/e9z1+ZpHNN1NGIB7qgn7/0wm46tsC+ahU+kCUDeU
	 Wlc2WyKPCxOKQ==
Date: Tue, 13 Jan 2026 11:04:44 +0000
From: Lee Jones <lee@kernel.org>
To: guptarud@gmail.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>,
	Martijn Braam <martijn@brixit.nl>, Ondrej Jirman <megi@xff.cz>
Subject: Re: [PATCH 2/3] mfd: rk8xx-core: Configure `rk808-clkout2` function
Message-ID: <20260113110444.GD1902656@google.com>
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

On Mon, 12 Jan 2026, Rudraksha Gupta via B4 Relay wrote:

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
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>

This is a bonkers amount of SoBs for a 3-line change.

What on earth is going on here?

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

-- 
Lee Jones [李琼斯]

