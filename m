Return-Path: <devicetree+bounces-109808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B06999806B
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 10:44:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 93617B22977
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 08:44:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DF891CDFCF;
	Thu, 10 Oct 2024 08:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dJxMW8xK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695641CDFC8
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 08:25:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728548703; cv=none; b=mhqHCl9sCnQ//c5oY6Ur0Uh8oH7aAhuEi3BG/+KJlgbRrdJYSBRkqakT6OtisCVoizmKOdLam4owHUHqOWPoL9O0cpv5DHUrNijVtpUBBv/+iM36JcB85xMEfr/J9Kgwjm/MEe+kRK29YLgtC+jUapwrq/4d+ks0ZxPYqQl7wkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728548703; c=relaxed/simple;
	bh=WuV8HQFVCrivJuYR/cr0N4PrfIpz2zR3By4GwLASbV0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Bc58UL4mCL6ESdI22pZ49MJWUbfotBH5duAV4ZZw6IKq59D8lcKuSQejLsb35f13aZYfX0C2TyMQpnd78fCMYwAlpyO2bGwHB3Q7RsEJsG6qlXIJ1lMP6aInmiMVZsTnXjrOYMdzZySFNi21rzDDfMRptlAdhmGu1Lgd1anJUts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dJxMW8xK; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-71df0dbee46so512656b3a.0
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 01:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728548701; x=1729153501; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pVzMF/duhcvKBieDg2vYWDTmVx1/9zDiDzFT1Y/Jxgw=;
        b=dJxMW8xKZCFNoYsvP4+J3qu7EQubU2HNEtL/CsxuJO0l+eSMpBW7XPnvyaGuUttVl/
         ZPujS9LT3Hpwd8+JL1p//TPco/LIlwlrblHTJZMhprxKFQYmAD6yoRVzn3AszCRYJ6iW
         tXU6atQQ18uhM7CmNngAMV5+DW7/Cr95CcQQE/cD0V4xNQ6HjFCbppnMyASsEempQetd
         TvRn5XsLAIir9lF731DF+XTCrhiJ1VWs5hvJ2PCSpAACpe864Dz8oVBrj5rUTADlYvGU
         nAbmeURPwlR86pIMameZtm5epoNQVFatSsUzcWXGkVrpFlnuSB6AqhpGutP050TnG5UN
         rOPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728548701; x=1729153501;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pVzMF/duhcvKBieDg2vYWDTmVx1/9zDiDzFT1Y/Jxgw=;
        b=YVQS6Du6i6B1WStlljaxs+uj2qXccQsO0UnimPq6AyA8uiTfkfUyQUtCAQyOMU+QDC
         IUDWf2Cqq7tG9K1PJAo+W/R/eOb0/iOGSo9xvs8/N7USdMWRCNfcdR1T2JN8ggT05ysq
         RLex+8IQTz88qaGHM6rIK6p1WUdEmXl430Sa7YwaKd9Lw+moWZNBoyk5urvn8ZOu6adP
         GYPqQaz2MdZb9e+sUOj6AN7Os5a84Gsr6E+GcQpz8j+/oJYpSKSS6WCMo5OsGODiyZLc
         TaGXZnzVsqJklfrB0qqSQkHLIzpoOkAONzCb+HAjGHYwbTA+6TabUuYiyF2oXs3RZPmM
         Hifg==
X-Forwarded-Encrypted: i=1; AJvYcCW1Kr8TENY46IX7rcL8teHSAnOJBL7VtKnZGdX3MPbtkigBK19r25ddSOLRS+jIEMUUQQOIg/fjN0yP@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3gAOb8MXi9Dsdxn9K+rOTdX7RAXyDTGnsMvtNIY9cVLL9O5AD
	HiZrLmHpBDwnEv3UJmL8pQPH74rt/DRo0D+pDsAutd756OHu1Kdh6v8XzlX7Lw==
X-Google-Smtp-Source: AGHT+IFzZHkwvdoVYUTrMClpey36bmT0c8R68OOWU2q2z8TBVcF9DQcAzhzfY9NVpI7L4XVQJ154Rg==
X-Received: by 2002:a05:6a20:9f0a:b0:1cf:2bb8:f38b with SMTP id adf61e73a8af0-1d8a3c4e2a7mr7301538637.38.1728548700720;
        Thu, 10 Oct 2024 01:25:00 -0700 (PDT)
Received: from thinkpad ([220.158.156.184])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e2ab109e4sm572704b3a.206.2024.10.10.01.24.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 01:25:00 -0700 (PDT)
Date: Thu, 10 Oct 2024 13:54:54 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v3 09/12] PCI: rockship-ep: Introduce
 rockchip_pcie_ep_stop()
Message-ID: <20241010082454.bkmqh7h3jctvtj27@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-10-dlemoal@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241007041218.157516-10-dlemoal@kernel.org>

I think the subject should reflect callback implementation. Like,

PCI: rockchip-ep: Implement pci_epc_ops::stop_link() callback

On Mon, Oct 07, 2024 at 01:12:15PM +0900, Damien Le Moal wrote:
> Define the EPC operation ->stop for the rockchip endpoint driver with
> the function rockchip_pcie_ep_stop(). This function disables link
> training and the controller configuration, as the reverse to what
> the start operation defined with rockchip_pcie_ep_start() does.
> 
> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  drivers/pci/controller/pcie-rockchip-ep.c | 13 +++++++++++++
>  drivers/pci/controller/pcie-rockchip.h    |  1 +
>  2 files changed, 14 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> index 99f26f4a485b..a801e040bcad 100644
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -468,6 +468,18 @@ static int rockchip_pcie_ep_start(struct pci_epc *epc)
>  	return 0;
>  }
>  
> +static void rockchip_pcie_ep_stop(struct pci_epc *epc)
> +{
> +	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
> +	struct rockchip_pcie *rockchip = &ep->rockchip;
> +
> +	/* Stop link training and disable configuration */
> +	rockchip_pcie_write(rockchip,
> +			    PCIE_CLIENT_CONF_DISABLE |
> +			    PCIE_CLIENT_LINK_TRAIN_DISABLE,
> +			    PCIE_CLIENT_CONFIG);
> +}
> +
>  static const struct pci_epc_features rockchip_pcie_epc_features = {
>  	.linkup_notifier = false,
>  	.msi_capable = true,
> @@ -492,6 +504,7 @@ static const struct pci_epc_ops rockchip_pcie_epc_ops = {
>  	.get_msi	= rockchip_pcie_ep_get_msi,
>  	.raise_irq	= rockchip_pcie_ep_raise_irq,
>  	.start		= rockchip_pcie_ep_start,
> +	.stop		= rockchip_pcie_ep_stop,
>  	.get_features	= rockchip_pcie_ep_get_features,
>  };
>  
> diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
> index 30398156095f..0263f158ee8d 100644
> --- a/drivers/pci/controller/pcie-rockchip.h
> +++ b/drivers/pci/controller/pcie-rockchip.h
> @@ -32,6 +32,7 @@
>  #define   PCIE_CLIENT_CONF_ENABLE	  HIWORD_UPDATE_BIT(0x0001)
>  #define   PCIE_CLIENT_CONF_DISABLE       HIWORD_UPDATE(0x0001, 0)
>  #define   PCIE_CLIENT_LINK_TRAIN_ENABLE	  HIWORD_UPDATE_BIT(0x0002)
> +#define   PCIE_CLIENT_LINK_TRAIN_DISABLE  HIWORD_UPDATE(0x0002, 0)
>  #define   PCIE_CLIENT_ARI_ENABLE	  HIWORD_UPDATE_BIT(0x0008)
>  #define   PCIE_CLIENT_CONF_LANE_NUM(x)	  HIWORD_UPDATE(0x0030, ENCODE_LANES(x))
>  #define   PCIE_CLIENT_MODE_RC		  HIWORD_UPDATE_BIT(0x0040)
> -- 
> 2.46.2
> 

-- 
மணிவண்ணன் சதாசிவம்

