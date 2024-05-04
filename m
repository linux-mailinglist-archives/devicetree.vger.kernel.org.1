Return-Path: <devicetree+bounces-64962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E43518BBD6A
	for <lists+devicetree@lfdr.de>; Sat,  4 May 2024 19:20:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8C2C11F21B8F
	for <lists+devicetree@lfdr.de>; Sat,  4 May 2024 17:20:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99DE45CDE6;
	Sat,  4 May 2024 17:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EcLL5XDE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254B63FE5D
	for <devicetree@vger.kernel.org>; Sat,  4 May 2024 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714843195; cv=none; b=DPTtx+0vjlNfkuq+0C8EoDy3OLNZV3aNx+YmeyqSA8Crh3NbaT/Nv0h5TaEVmcaLLYtyDPZIKi4/JGAqKehMe6w7pLbjpOjyBW01XDJBDseW93TFtNP7BDKVpbyV+YohOKOOfahYv1VzKLJ2ME8BUZlxJtheAuYVacFHlZwSclg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714843195; c=relaxed/simple;
	bh=QcZecfv5O2PCXalZZt/AJoJw0w690b8cnjLjC5ZXLxw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pT8PYR1BBYAGeocUjE+oslAyIxDOKHxEAaJoYt8QSNbGxdUYTzRzWiQeqhNj4+cZYprkwxYsXM2aFiM52cbD6VEKYCxYdn0Ie/QiLhmVTTYn1P9HvJHTm0mM+PEfDlbF7xRvwXK5QLiUiNP5IO7W+mMfQmaynqmpjYsR2sjj8h0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EcLL5XDE; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-6f4178aec15so587112b3a.0
        for <devicetree@vger.kernel.org>; Sat, 04 May 2024 10:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714843193; x=1715447993; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QPT0FiQAGgPquvop9IMIOlSx0gcl6L1N8v+sEDetyx8=;
        b=EcLL5XDEg+HRhZtmmOXtv9QGG7fpPEhv86Px0BCN6FkAnjJDoDKLKhnIBagPjWFiNn
         89PtSChMNaSyWFKxJtvX09SB2QS0aEe4t3rBztIWXotSB5+rJMRYHRyQrc/T6Hhm1/kn
         nX+H7N1OkcJ/BNMnqng0VuWwS988ULRdqpFvwU47fAKZ39z+8XwTFqDVaoQkZoUuIgZI
         jHLKfv+KXOdDn+elWqb5ruw8+QW1IMyE6HZmMEq3qu1zNIUuZjtOR37x1e/uznH7EVWT
         12mvn8zU9vqyQNIcnKcQIP8PeHFFxV9GYjYqP/lwn6kbbEnf/6zItHEP4ymytjadntzm
         wK+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714843193; x=1715447993;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QPT0FiQAGgPquvop9IMIOlSx0gcl6L1N8v+sEDetyx8=;
        b=XPv8xuMWPtYwjmIHoitmsuRb1u7iq5SI9EGtVT6BtkIHJIM/v6qqhPRfCr0oLv9GQU
         RYpsGjsCPG1iJZki0vazTVlr5ZaZ3Wiw8vT5reZ8C+bX9OCs41wE5+i+Cpq1sFOMB4fZ
         Itw7s4JxlDj2PhvyiLXFz/J8K8XQ/OkAF+tUltX+gjy7oeLJRUVAW5zOBd++3HWFDfEB
         YEn5t/dBBGaoIyo6mJB0gZMUOGDBBuCz7Ia3dbIIEyVNZU7XziuaOWmJJ2+IHCSfM2DW
         tu9U8WEPUStXXYtHFXMwYC50r/jmllIQwUR/sJCfOah7OB1GSu0HRjNIi9Kxrbly6nyG
         BECQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4ZOX4H6t7cxIUF0Etk9IkN3bbDi9ZMVe7aekeUULYDkUFE7NTmn/hnHFCwFPIBEwrds9u7C5D/i3RS6FwawRgGZdRygt+BgpLVw==
X-Gm-Message-State: AOJu0YyqqB4PBnO5mO6snX+IhtoaCTNCxE35TgPZOOWeTJ+vm4a5j7+D
	V39t68og2SPzeZfH2uR5b+F/+ZVvVb5GRyJ3HcpFYid2FpyQwINdqHY4MBbjCA==
X-Google-Smtp-Source: AGHT+IGplHkYwzi+l22LCVcmkw49e67JxhbbLGaL/5wDHQNXDiHfmKQIXxi2afvNuzMmBKanrbZXWQ==
X-Received: by 2002:a05:6a00:3a20:b0:6ec:ebf4:3e8a with SMTP id fj32-20020a056a003a2000b006ecebf43e8amr6736256pfb.15.1714843193155;
        Sat, 04 May 2024 10:19:53 -0700 (PDT)
Received: from thinkpad ([220.158.156.237])
        by smtp.gmail.com with ESMTPSA id a5-20020aa78e85000000b006f4688c89b0sm541771pfr.120.2024.05.04.10.19.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 May 2024 10:19:52 -0700 (PDT)
Date: Sat, 4 May 2024 22:49:46 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 09/14] PCI: dw-rockchip: Refactor the driver to
 prepare for EP mode
Message-ID: <20240504171946.GF4315@thinkpad>
References: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
 <20240430-rockchip-pcie-ep-v1-v2-9-a0f5ee2a77b6@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240430-rockchip-pcie-ep-v1-v2-9-a0f5ee2a77b6@kernel.org>

On Tue, Apr 30, 2024 at 02:01:06PM +0200, Niklas Cassel wrote:
> This refactors the driver to prepare for EP mode.
> Add of-match data to the existing compatible, and explicitly define it as
> DW_PCIE_RC_TYPE. This way, we will be able to add EP mode in a follow-up
> patch in a much less intrusive way, which makes the follup-up patches
> much easier to review.
> 

Same comment as previous patch.

> No functional change intended.
> 
> Signed-off-by: Niklas Cassel <cassel@kernel.org>
> ---
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 72 +++++++++++++++++++++------
>  1 file changed, 57 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> index 4023fd86176f..f985539fb00a 100644
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -58,6 +58,11 @@ struct rockchip_pcie {
>  	struct gpio_desc		*rst_gpio;
>  	struct regulator                *vpcie3v3;
>  	struct irq_domain		*irq_domain;
> +	enum dw_pcie_device_mode	mode;
> +};
> +
> +struct rockchip_pcie_of_data {
> +	enum dw_pcie_device_mode mode;
>  };
>  
>  static int rockchip_pcie_readl_apb(struct rockchip_pcie *rockchip, u32 reg)
> @@ -195,7 +200,6 @@ static int rockchip_pcie_host_init(struct dw_pcie_rp *pp)
>  	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
>  	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
>  	struct device *dev = rockchip->pci.dev;
> -	u32 val = HIWORD_UPDATE_BIT(PCIE_LTSSM_ENABLE_ENHANCE);
>  	int irq, ret;
>  
>  	irq = of_irq_get_byname(dev->of_node, "legacy");
> @@ -209,12 +213,6 @@ static int rockchip_pcie_host_init(struct dw_pcie_rp *pp)
>  	irq_set_chained_handler_and_data(irq, rockchip_pcie_intx_handler,
>  					 rockchip);
>  
> -	/* LTSSM enable control mode */
> -	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_HOT_RESET_CTRL);
> -
> -	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_RC_MODE,
> -				 PCIE_CLIENT_GENERAL_CONTROL);
> -
>  	return 0;
>  }
>  
> @@ -288,13 +286,41 @@ static const struct dw_pcie_ops dw_pcie_ops = {
>  	.start_link = rockchip_pcie_start_link,
>  };
>  
> +static int rockchip_pcie_configure_rc(struct rockchip_pcie *rockchip)
> +{
> +	struct dw_pcie_rp *pp;
> +	u32 val;
> +
> +	if (!IS_ENABLED(CONFIG_PCIE_ROCKCHIP_DW_HOST))
> +		return -ENODEV;

Right now this driver is only selected using CONFIG_PCIE_ROCKCHIP_DW_HOST. So
this check is not valid in _this_patch.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

