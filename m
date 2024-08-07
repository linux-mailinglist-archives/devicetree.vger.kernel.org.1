Return-Path: <devicetree+bounces-91563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC961949DC9
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 04:36:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 78DD7284047
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 02:36:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B55D18FDAB;
	Wed,  7 Aug 2024 02:35:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xddXw/7k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E9310E6
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 02:35:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722998158; cv=none; b=KrYGjBmNyXZiIKy/GULO+YJfR8tp9I8My5DFm6OxPN81Ba0EaBdCjzea/JvZynQsaHLGZdiZhz5IfiEerFLw7KcIzJ0IK6n2ZPm6srOgwFwh1UFXlmpgQtVaXclRYE7f6QQafFabpyYCJmPQJ5U9XH7O6M8BrTl/iGk24YNguc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722998158; c=relaxed/simple;
	bh=zh2iTy0CcMb6WKPPAq4hkouKJbNMokCgfrIQXjHo1ws=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TXllY9IMxYPUj8uY7dL3HjrpIa18oWssT+cuvexhFccF/LmH9OmCWufxMcTkMBKcGUL7NARKml1pyd8thrvBvgPYGBEOOWEXtF/smT8BDsZjB9Wfc1TkQ215ln5vwnwKmfc4Rs6NJhygok7BErUCH7wnwA25Cl8Q6L7BmoDQuww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xddXw/7k; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-656d8b346d2so822081a12.2
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2024 19:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722998156; x=1723602956; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ffDHoE21UFrijGdJEWSZI39oOBTMlWPLsrBKXErtj70=;
        b=xddXw/7k5NzmfAC/oM9z/BhSlebA0zv+L+GjiMlZ0ECSBIuT5UCPH6MLQ6nTYEusiD
         8DzIhCyz3dMS32U1mhKbMNs3//azHnXAhqCUZqnsHYAybN6IQFSGgkfqG+5IiNL5r2d3
         s+Xhh1WaZlS6ZdMhzElwqN+Bv9AgoKe0gjM/CZ3bRXHJ4fny0mcxjpkdT69hNRNnWGxP
         eqenBNPT6JZLNKf7D42SDtcFpvoHJAB6Ei+MbG6hS0qPT6Nss2VJUjGijD71lhzZLSKk
         Qk1/69gNNcEsJPvTLwr6qTvuN+fTzCPh06tp5oGZyEtLZArMHeszF/oqO3XQHRJlmNyL
         Xd0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722998156; x=1723602956;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ffDHoE21UFrijGdJEWSZI39oOBTMlWPLsrBKXErtj70=;
        b=DVdjfRgGFxbNCSvinBgL/Uw8mI+x0YETc/OoBVntLoaItjHatXziMgYMGC0SaUbyWP
         3ki92etDwd7miPG4xqeVbHHtyFA4RJPz6nxcH4Qu+RkzES9n1SgYCHsbOZyEeH0EWLRK
         AIs8aqS2/NsNXcqernLqjz0isKV1DDowPLfs1ul+ogjzvRub6s2m/HU6xcxGYcCQ07Gk
         bJ9YTmvGrv++zha3xbwBDarrPec3Vkl/m2SHMo2wBCwz2bkzHvH9EzMv0nguCm/k34sG
         D4KD4focKtOpo+LnxwjKVbjAfsbZgGwhrvAtDqt7OYrVL1JsHEzbb8q/kXKeFcgMiB+e
         Vtpg==
X-Forwarded-Encrypted: i=1; AJvYcCX5gTQGkVCpxESg13TMdbqTRIr4SzwxHyOqxTGXZHu/AlaC6ViVKKOP6icMeHOYR/QCyd86E07ykxeOIJaJdJXzXKzqppq4Bxv/JA==
X-Gm-Message-State: AOJu0YzAZbFncFuGsIAuLK6DfPJwfj6ENICQgIhg+jZeVcDI7G922X9M
	QxiCe7GdVdddW0eoZ318hXFXLymG50PSWWI3uw7wrFRkbl8n6pdOVryAUWOSGA==
X-Google-Smtp-Source: AGHT+IH2vKn4nPpW0Jtb/0WJkJAh5kcwt2+tJwY3MLnvhTrlyX71WfH1rzax1jCG900cy7Zo2E1Kyg==
X-Received: by 2002:a05:6a21:3944:b0:1c0:f33e:aaec with SMTP id adf61e73a8af0-1c69964b680mr18265769637.49.1722998155703;
        Tue, 06 Aug 2024 19:35:55 -0700 (PDT)
Received: from thinkpad ([120.60.72.69])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7106ec43944sm7532346b3a.75.2024.08.06.19.35.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Aug 2024 19:35:55 -0700 (PDT)
Date: Wed, 7 Aug 2024 08:05:44 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Richard Zhu <hongxing.zhu@nxp.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pci@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, bpf@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v8 03/11] PCI: imx6: Fix missing call to phy_power_off()
 in error handling
Message-ID: <20240807023544.GB3412@thinkpad>
References: <20240729-pci2_upstream-v8-0-b68ee5ef2b4d@nxp.com>
 <20240729-pci2_upstream-v8-3-b68ee5ef2b4d@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240729-pci2_upstream-v8-3-b68ee5ef2b4d@nxp.com>

On Mon, Jul 29, 2024 at 04:18:10PM -0400, Frank Li wrote:
> Fix missing call to phy_power_off() in the error path of
> imx6_pcie_host_init(). Remove unnecessary check for imx6_pcie->phy as the
> PHY API already handles NULL pointers.
> 
> Fixes: cbcf8722b523 ("phy: freescale: imx8m-pcie: Fix the wrong order of phy_init() and phy_power_on()")
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  drivers/pci/controller/dwc/pci-imx6.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
> index 3b739aa7c5166..eaec471c46234 100644
> --- a/drivers/pci/controller/dwc/pci-imx6.c
> +++ b/drivers/pci/controller/dwc/pci-imx6.c
> @@ -953,7 +953,7 @@ static int imx6_pcie_host_init(struct dw_pcie_rp *pp)
>  		ret = phy_power_on(imx6_pcie->phy);
>  		if (ret) {
>  			dev_err(dev, "waiting for PHY ready timeout!\n");
> -			goto err_phy_off;
> +			goto err_phy_exit;
>  		}
>  	}
>  
> @@ -968,8 +968,9 @@ static int imx6_pcie_host_init(struct dw_pcie_rp *pp)
>  	return 0;
>  
>  err_phy_off:
> -	if (imx6_pcie->phy)
> -		phy_exit(imx6_pcie->phy);
> +	phy_power_off(imx6_pcie->phy);
> +err_phy_exit:
> +	phy_exit(imx6_pcie->phy);
>  err_clk_disable:
>  	imx6_pcie_clk_disable(imx6_pcie);
>  err_reg_disable:
> 
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

