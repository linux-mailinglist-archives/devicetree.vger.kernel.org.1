Return-Path: <devicetree+bounces-150184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C218DA416E4
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 09:07:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2AF461894802
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 08:07:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5016E241677;
	Mon, 24 Feb 2025 08:06:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BJRF8M03"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8754F27453
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 08:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740384413; cv=none; b=u6gw4OtTnQSkVov1fI2Y9Pn9VMO0b9U6Jif7Rpw8T5Zcu9dEzSwHReDtR9GsJn/jttmTuW+kElnX5HVmRC7f/Aeump7Hu5SdKjQr+cnEocD33IIzmzveXdDtizdwj5hhYrvLXpXmzqzjO7oe+xGOjVgorP9uzWlQV08wZw6b/C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740384413; c=relaxed/simple;
	bh=rX0kr9FoxMFMj5Li+t2NvDWyaIZeQGbAJTkHmyg8qjc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K4BcZxzJ2ZQGwQCcwoD6rzlNsVi0ZbmggMpoBsAsNYh1RjHGvSbKYjBt1kD7Gf9+Dutr11YIwvwys8Yfy03SQX1MQJyHWAvoaFhiH+qXVoaEm1VHHQfAGcy0eobQM8fSE5MPbJUPLkLKlqvRPJkSzUAgG+Ru30rwv4p0FwOwBvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BJRF8M03; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-22113560c57so81072785ad.2
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 00:06:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740384411; x=1740989211; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8q33JjqIID2gxUPanrFtnNDEQuq+2F7BIt1N3kOUDpQ=;
        b=BJRF8M03GsVSZ4MjbTBRmIVkLPw+RhoikPAaCEG/9E7eAvyMuS8bz9cxn/pUqwwGRq
         c4vuehZDfIKkFn7PdkLqvAo2uIwf/0GsmFbGqp2YzuSLWdp1GG6H35Oebc05llo4GmgX
         fEVtd8x27ehPJKZzuL1IXio3uCWrZdAwwc4Qd5uDMHfpyZwm6z4iR2WNXAAUQAGmXlSu
         C/oZLqN5sueRX5ju5zuP39Jwi+dGawEWt2yBzTu55kUo+gApt8IjQRly3iBA3diAWUY1
         QX/gL+GXAotip2XRMa7tmjJchXZ6vTeuiDeiHr0+HqzQ8qNDEFow0VPc9WzD4GFIaYeC
         CsrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740384411; x=1740989211;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8q33JjqIID2gxUPanrFtnNDEQuq+2F7BIt1N3kOUDpQ=;
        b=QurD4dzCaREgsM+2Mx/Y6nmCArHRkUuPZBlJqc14qlCXJWqEsec3ViHtIAg/Efn0eV
         56LgDgGLWP5Xi7MgT7hp/fJoN1VsP1OHp3WIFGNZDuCc3g41U9zJhcxl02zVRJNWvmk3
         S8xvQZ/UAsHGV4jMH4ECioO6n2eRWujSW8unppw4WBCvItQ2gvbTb3r6WCZQIZ6FeLkT
         0v4cZfdUNSaSRhybz01zRKOS5vgx8jhXJxYCVVViobD63bu0qjg3HJhCqjWW/D1u80cy
         YtHVqnlSITm+uay9H0nYo/b2fY89N0uYfHgjNeCpOT1/8dLaarkvBEJBqsvJu9kvG1nK
         tPYg==
X-Forwarded-Encrypted: i=1; AJvYcCUlhKu2q268PpJCZRGQYQ/LYaiv+KhV8yjx4Fm/9k15zxWPLe/PScDxg93OpHLbl51RAb2Y4IIaKmAc@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+xB+rkHUbKSVUbndPeTdsk0KHOOLHR2dIgOSamkJSquoTtLQL
	5iNqXijf2G42V6Z0m8cYGLnVLp6QeOFHZspjvk+AhHSb6I5W341srRMOcTURpUXs2OLpYaorWuI
	=
X-Gm-Gg: ASbGnctYJeAwLhCbjCfsd5hAB/c/aOuXpcK6+kmeLE9vZBnPRLbB0ynoeu3w7hJS0yc
	Rf0Fs+X7GWiL7D1nEbJXMp014y3mwaiCqI2jrM+UzP0g8Ckpigwr3WN98nP0JF8W3Es+z4gdGn1
	l4aftH2X7dvCos+0KkQpZcb1cHcB7xys/flINpBnYHijpGbvN4aJDyTd0GPZSow82xd9hdHpBaE
	k/FwumDs6F3FesYTQl+s3WqZyaSWQ27A5exJe2cQPHrgVxr77BzkEoB5GMWcfJtuIwaeg73fgwD
	YOZV+a5u5CHwUGsCMRfE3kXRAmZAynGbFm6q
X-Google-Smtp-Source: AGHT+IET6pCBDcr0viuI6ieEFwCQCFyPovYrU/eJqP+MyvqJc2aeSgcyD79kTf8ygnfu6RR2t6/OwA==
X-Received: by 2002:a17:902:e88d:b0:21d:dfae:300b with SMTP id d9443c01a7336-221a0ec46ffmr204596825ad.10.1740384410819;
        Mon, 24 Feb 2025 00:06:50 -0800 (PST)
Received: from thinkpad ([36.255.17.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d5596115sm175105635ad.258.2025.02.24.00.06.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2025 00:06:50 -0800 (PST)
Date: Mon, 24 Feb 2025 13:36:44 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Thippeswamy Havalige <thippeswamy.havalige@amd.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, michal.simek@amd.com,
	bharat.kumar.gogada@amd.com
Subject: Re: [PATCH v4 2/2] PCI: xilinx-cpm: Add support for Versal Net
 CPM5NC Root Port controller
Message-ID: <20250224080644.ldgltonirrtfzrgp@thinkpad>
References: <20250224074143.767442-1-thippeswamy.havalige@amd.com>
 <20250224074143.767442-3-thippeswamy.havalige@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250224074143.767442-3-thippeswamy.havalige@amd.com>

On Mon, Feb 24, 2025 at 01:11:43PM +0530, Thippeswamy Havalige wrote:
> The Versal Net ACAP (Adaptive Compute Acceleration Platform) devices
> incorporate the Coherency and PCIe Gen5 Module, specifically the
> Next-Generation Compact Module (CPM5NC).
> 
> The integrated CPM5NC block, along with the built-in bridge, can function
> as a PCIe Root Port & supports the PCIe Gen5 protocol with data transfer
> rates of up to 32 GT/s, capable of supporting up to a x16 lane-width
> configuration.
> 
> Bridge errors are managed using a specific interrupt line designed for
> CPM5N. INTx interrupt support is not available.
> 
> Currently in this commit platform specific Bridge errors support is not
> added.
> 
> Signed-off-by: Thippeswamy Havalige <thippeswamy.havalige@amd.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

One comment below which is not related to *this* patch, but should be fixed
separately (ideally before this patch).

> ---
> Changes in v2:
> - Update commit message.
> Changes in v3:
> - Address review comments.
> ---
>  drivers/pci/controller/pcie-xilinx-cpm.c | 40 +++++++++++++++++-------
>  1 file changed, 29 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-xilinx-cpm.c b/drivers/pci/controller/pcie-xilinx-cpm.c
> index 81e8bfae53d0..a0815c5010d9 100644
> --- a/drivers/pci/controller/pcie-xilinx-cpm.c
> +++ b/drivers/pci/controller/pcie-xilinx-cpm.c
> @@ -84,6 +84,7 @@ enum xilinx_cpm_version {
>  	CPM,
>  	CPM5,
>  	CPM5_HOST1,
> +	CPM5NC_HOST,
>  };
>  
>  /**
> @@ -478,6 +479,9 @@ static void xilinx_cpm_pcie_init_port(struct xilinx_cpm_pcie *port)
>  {
>  	const struct xilinx_cpm_variant *variant = port->variant;
>  
> +	if (variant->version != CPM5NC_HOST)
> +		return;
> +
>  	if (cpm_pcie_link_up(port))
>  		dev_info(port->dev, "PCIe Link is UP\n");
>  	else
> @@ -578,16 +582,18 @@ static int xilinx_cpm_pcie_probe(struct platform_device *pdev)
>  
>  	port->dev = dev;
>  
> -	err = xilinx_cpm_pcie_init_irq_domain(port);
> -	if (err)
> -		return err;
> +	port->variant = of_device_get_match_data(dev);
> +
> +	if (port->variant->version != CPM5NC_HOST) {
> +		err = xilinx_cpm_pcie_init_irq_domain(port);
> +		if (err)
> +			return err;
> +	}
>  
>  	bus = resource_list_first_type(&bridge->windows, IORESOURCE_BUS);
>  	if (!bus)
>  		return -ENODEV;

Here, xilinx_cpm_free_irq_domains() should be called in the error path.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

