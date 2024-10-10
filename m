Return-Path: <devicetree+bounces-109769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E69997EB2
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 10:09:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B02F8281862
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 08:09:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D3F11BC06E;
	Thu, 10 Oct 2024 07:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eHS/GFjE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154F21A3BAD
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 07:03:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728543811; cv=none; b=JEaInIHpzov/gxr3fgAumtPpk0qRVqdnsF/uCHSS4bKC00irq0ocOFSronMYJkf0dewED8MYjbkLz1Gz+AAJi90fNL6d/fPrVqkJkayDH/Mo1F6BQrRTb1tRR6S2InasfCR2zjUWc7kr6hUqio5hOlLP8UgThb/O8LQTyzQQiLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728543811; c=relaxed/simple;
	bh=L9jNdS3bOu0fSTVqBbYLfpz+yJLVrkcvNPge4XxE32A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PBfqnwphxzl7SlQ7ZtPVaZPtGIHWZdoWSvqenpkKFdqZpy9w4XuY/N4YC2reyAjEEZ3B6gj123O39KeA6GydhJLd3H93xM+OMXDNl02T4OMwLm93fAQhzJn0WzD37tZI1/OUYs+Jqli5TD95rFrLiYVaRnHsXv4Z4tp4VZbjITE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eHS/GFjE; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2e2e050b1c3so48326a91.0
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 00:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728543809; x=1729148609; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tQ+uMS7SmFLFFmkxPeSzDQF81U2mpZJGBJBSrkIVinI=;
        b=eHS/GFjEJtGqe8LKT/nna64+z+WQcLYYCXH2Qlmqe3gj4/HIoMDb8cATdFWz05FcAk
         XFCCcaUlgdqbcdadscpfNaA24W7/vUEVbYLiC3IWyl0FFW3+18NpyzuvAOKD6KayLRF8
         5MH8xPVa+lIEs00ZgktHk7H0qeEPC07w0CxkeCWJynaZFtuBRp6KfhB4LhgyAt8ELGjp
         gW5uztiy/VWgamia8195E6ZTKm+ajSbmTHpbC5e09w8wnPnXX8UBcC5J/Lrt4yjUiErR
         rcsNHWtied9LYngsAk3YXYOuO9hFD2EIIE9tqPWlZYPrLptN74oudEo7aHAnNVAHvf11
         Pb3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728543809; x=1729148609;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tQ+uMS7SmFLFFmkxPeSzDQF81U2mpZJGBJBSrkIVinI=;
        b=MuDlU310n5sZ1hKWNPH3oV/O057LKUnhZEECW/eVhg5JeJgfwxLSEWqVJNd9xwQ7/I
         ejlcyE/17j+SiGB5iePNWkGHyrUBCaSlryYOV0GitoSkGRbj4I00RIG+KqZQAR34kBCv
         iVEvIAUshqoI2AdU85CCHbGwn0Yq4NCtz3GeqXjYXbuDDi32Wefn0wmFjvU1QY5cz5vj
         T31duhHPi2ijmbnMz8x8OIJRVJKmrIzAmcRQM4tPR4nIijFyIhr51QqAXuK3mf93ekgP
         h4DvvOxOeW1iPhabEGpo+06OA9sBRIpnervwIECRxYtGqvSEbb7RqaHh5wtNnlaI46ry
         5+WQ==
X-Forwarded-Encrypted: i=1; AJvYcCVbs2PRj6gciMRYVvx/sa0xcb0AMGScvePlcI2J+ptywICbld1rRS34uzC8nM7TGHC3LxQtV2ODYLvZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzgjtYrncP5JmR4a3DInaAVyXe7IfMYsXsA9a/8qVSoxFGu7F5T
	PInMxLG1VmxTp4RcMI8MK3QkCMd+FPbk6q8WALocX4usvIlmzxrRMURWy7Dxqw==
X-Google-Smtp-Source: AGHT+IG3+r83KQNXnWosd0zcqE7RKm9feBt+w6DxilqXMW2DnNTwgYlUcNcUO4f60tmPSc9Bx2nQJQ==
X-Received: by 2002:a17:90a:c08a:b0:2e2:c1d0:68dc with SMTP id 98e67ed59e1d1-2e2c8057f3dmr3466283a91.9.1728543809391;
        Thu, 10 Oct 2024 00:03:29 -0700 (PDT)
Received: from thinkpad ([220.158.156.184])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e2d5df1133sm568989a91.15.2024.10.10.00.03.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 00:03:28 -0700 (PDT)
Date: Thu, 10 Oct 2024 12:33:23 +0530
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
Subject: Re: [PATCH v3 02/12] PCI: rockchip-ep: Use a macro to define EP
 controller .align feature
Message-ID: <20241010070323.mxmvsn2vlprzidh3@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-3-dlemoal@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241007041218.157516-3-dlemoal@kernel.org>

On Mon, Oct 07, 2024 at 01:12:08PM +0900, Damien Le Moal wrote:
> Introduce the macro ROCKCHIP_PCIE_AT_SIZE_ALIGN defined using
> ROCKCHIP_PCIE_AT_MIN_NUM_BITS to initialize the .align field of the
> controller epc_features structure, avoiding using the "magic" value 8
> directly.
> 
> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  drivers/pci/controller/pcie-rockchip-ep.c | 2 +-
>  drivers/pci/controller/pcie-rockchip.h    | 1 +
>  2 files changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> index 27a7febb74e0..5a07084fb7c4 100644
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -446,7 +446,7 @@ static const struct pci_epc_features rockchip_pcie_epc_features = {
>  	.linkup_notifier = false,
>  	.msi_capable = true,
>  	.msix_capable = false,
> -	.align = 256,
> +	.align = ROCKCHIP_PCIE_AT_SIZE_ALIGN,
>  };
>  
>  static const struct pci_epc_features*
> diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
> index 15ee949f2485..02368ce9bd54 100644
> --- a/drivers/pci/controller/pcie-rockchip.h
> +++ b/drivers/pci/controller/pcie-rockchip.h
> @@ -248,6 +248,7 @@
>  
>  #define ROCKCHIP_PCIE_AT_MIN_NUM_BITS  8
>  #define ROCKCHIP_PCIE_AT_MAX_NUM_BITS  20
> +#define ROCKCHIP_PCIE_AT_SIZE_ALIGN    (1UL << ROCKCHIP_PCIE_AT_MIN_NUM_BITS)
>  
>  #define ROCKCHIP_PCIE_AT_IB_EP_FUNC_BAR_ADDR0(fn, bar) \
>  	(PCIE_CORE_AXI_CONF_BASE + 0x0828 + (fn) * 0x0040 + (bar) * 0x0008)
> -- 
> 2.46.2
> 

-- 
மணிவண்ணன் சதாசிவம்

