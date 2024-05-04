Return-Path: <devicetree+bounces-64961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB728BBD60
	for <lists+devicetree@lfdr.de>; Sat,  4 May 2024 19:14:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DC46B1F21C09
	for <lists+devicetree@lfdr.de>; Sat,  4 May 2024 17:14:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39F615C614;
	Sat,  4 May 2024 17:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ib5xESo4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF1C11711
	for <devicetree@vger.kernel.org>; Sat,  4 May 2024 17:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714842836; cv=none; b=mX+smYrGS9S+KwyAIx7gB88SPA0yth8gSpFpWSBdDEhDYHDU+lg9Fs9TICryOhXYhMxc/1FMOmsVtPh5YNfXoJOkEiJBZD/gCDKhZ9DMEIB4XXJX8STkXeWWrfjr+SSrjlDSu/toPFWKrTL4Jsp6r+tRRjQvJN2fe0cluf8RXt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714842836; c=relaxed/simple;
	bh=gBERJg/nmutB8WoHqMckSy1zac/CVeNSPN7yTxohxaM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n8921N4K0EeAXG3TcqYOWg72RPRCGaB35PEt9Ro8lzVt1ScTsJs7lxnFnOk12HV8A1RUNRLq/68e9izC0E0CMIPjJjfUiiWqwM7dwhQYh1NOOvbARZeuAtebAcBGKTKxiwQCSl5S8BKz8cAyO/WFxPU9mS2e4yJsGlsdP4OebiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ib5xESo4; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-6f449ea8e37so647655b3a.3
        for <devicetree@vger.kernel.org>; Sat, 04 May 2024 10:13:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714842833; x=1715447633; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=b6SfYlDnl8J6WZ0WsCtdQjjzp4VbWMxSWwvAKjPCrXc=;
        b=Ib5xESo4lBlP9CduvX4z0ccdTNaDpmrFodrczizz3vOvjeMwR2DticDF1DbmKerSLG
         rRKb7GFB/4qqoBm4znKfA6Nuja0Yje71qFWhCEYggpaBHw+OacXdICP7VcUHMseZr8WT
         C0Sf7AtdRwLMmEzjDevgF0n0AIivE9XgG4Yktua9J5MDjcjDHam8JGH81fgxhM8bCuNY
         Pd6Yqsb5btFuXdaet/u5WGHsFZmy+0N6u4/FocwXvWHSXXzwdtFPzHnuPewAoLN0V4BH
         CJocVH4zAAZoBGdWIb7A8KpT21vZMampYTHTFprx85QuTZ1Ehb2RbX9C6xWJErbw/f5k
         TJsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714842833; x=1715447633;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b6SfYlDnl8J6WZ0WsCtdQjjzp4VbWMxSWwvAKjPCrXc=;
        b=K/ukT9hHThsKUxJ9Xhnh5vSW2oEL5bQDxBzY3D77Mu1hCZl96GhfniYsvcMXYXf4iR
         fwrEZQmtwaTXamf9rlpf5FMoesLje5w7ZZXDqAJ3+oUgPBkGepNZUBG39GE7FXNXqYR1
         PZ4oXYwD9bWbwamcxLiFxhLCPMN2Kv0j3YhZw9ymw7GjgxPELMOI1orzr3tLhwOxG6FZ
         88DxnRDzNOJPeqdQBV3ZYWX5174n6ih5FvZe182uSUpcokDqGwescwGIGLphOuJYkMEg
         XL7IEfSJo2457JLfKPkwwbhjJ+Oe2RCKBlye26vQUOKZtTN326CMt+Sf0mYzwokJfbGA
         qJ1g==
X-Forwarded-Encrypted: i=1; AJvYcCVuktZZlCHvXI/j4hTu5CuZL4zmUh5+mYESxedHgH/JoXWMTgctAZtbKcqfBrPddC4Fk3Y6IINT0L4ZrAXNnlvLGR3Nm5hYcWQGpw==
X-Gm-Message-State: AOJu0YxVTjTqCKXqHdWy9CKUYl4OzICrY6y+Rzymra0cYovfK87pfzTC
	Fo+3farIQsmij5HdIS9mdP5PG1zOZ2TR8fO4vYgT+8g/ay/54MLU4+hCCd/rmg==
X-Google-Smtp-Source: AGHT+IE4dylI7QXHHn5f/KCuBye5E93/83YHUHgLPJwVftLGMyfTRhG5xgQLthY65HGM6p1E/D68CA==
X-Received: by 2002:a05:6a00:9a5:b0:6ed:cd4c:cc1a with SMTP id u37-20020a056a0009a500b006edcd4ccc1amr7084861pfg.8.1714842833327;
        Sat, 04 May 2024 10:13:53 -0700 (PDT)
Received: from thinkpad ([220.158.156.237])
        by smtp.gmail.com with ESMTPSA id g2-20020a056a000b8200b006f4547cbd1asm2058335pfj.5.2024.05.04.10.13.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 May 2024 10:13:52 -0700 (PDT)
Date: Sat, 4 May 2024 22:43:46 +0530
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
Subject: Re: [PATCH v2 08/14] PCI: dw-rockchip: Add rockchip_pcie_ltssm()
 helper
Message-ID: <20240504171346.GE4315@thinkpad>
References: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
 <20240430-rockchip-pcie-ep-v1-v2-8-a0f5ee2a77b6@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240430-rockchip-pcie-ep-v1-v2-8-a0f5ee2a77b6@kernel.org>

On Tue, Apr 30, 2024 at 02:01:05PM +0200, Niklas Cassel wrote:
> Add a rockchip_pcie_ltssm() helper function that reads the LTSSM status.
> This helper will be used in additional places in follow-up patches.
> 

Please don't use 'patches' in commit logs. Once the patches get merged, they
become commits.

> Signed-off-by: Niklas Cassel <cassel@kernel.org>
> ---
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> index 1993c430b90c..4023fd86176f 100644
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -143,6 +143,11 @@ static int rockchip_pcie_init_irq_domain(struct rockchip_pcie *rockchip)
>  	return 0;
>  }
>  
> +static inline u32 rockchip_pcie_ltssm(struct rockchip_pcie *rockchip)

rockchip_pcie_get_ltssm()?

Also, no inline in C files, please. Compiler will inline functions with or
without the keyword anyway.

- Mani

> +{
> +	return rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_LTSSM_STATUS);
> +}
> +
>  static void rockchip_pcie_enable_ltssm(struct rockchip_pcie *rockchip)
>  {
>  	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_ENABLE_LTSSM,
> @@ -152,7 +157,7 @@ static void rockchip_pcie_enable_ltssm(struct rockchip_pcie *rockchip)
>  static int rockchip_pcie_link_up(struct dw_pcie *pci)
>  {
>  	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
> -	u32 val = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_LTSSM_STATUS);
> +	u32 val = rockchip_pcie_ltssm(rockchip);
>  
>  	if ((val & PCIE_LINKUP) == PCIE_LINKUP &&
>  	    (val & PCIE_LTSSM_STATUS_MASK) == PCIE_L0S_ENTRY)
> 
> -- 
> 2.44.0
> 

-- 
மணிவண்ணன் சதாசிவம்

