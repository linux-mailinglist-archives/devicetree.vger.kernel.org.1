Return-Path: <devicetree+bounces-64965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA268BBD75
	for <lists+devicetree@lfdr.de>; Sat,  4 May 2024 19:33:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 849AF1F21C01
	for <lists+devicetree@lfdr.de>; Sat,  4 May 2024 17:33:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80A9E5FB87;
	Sat,  4 May 2024 17:33:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="erKYnFfu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 813343C060
	for <devicetree@vger.kernel.org>; Sat,  4 May 2024 17:33:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714843990; cv=none; b=EJaVy+sgppPe/IvBelYeBHG1XXnhg+qXqxCat6SBDTOExXebOdiGPho0XpoAGsnKrl82W3IJiqG4Xw/c2m68GBGYJtiJg4D5EPng6Q/Jtb3G1e/Na2RrUN3aF+vRDL9HoZcJPEuW1OFwP00+wdW7xFoFm5sQr0xwM4g2v4GhS5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714843990; c=relaxed/simple;
	bh=grss7zHCKpxqroAliLhpvchyl8cBCCF8vBGGk7xTOag=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N7Vplz98tFPV7ClD6iH1raJ2ZecU/qrOsDCBjqI8EAsaYvd0EqPgZ6NtcenR6EIF7/Jqb8lg5S4xSyCISrco+e2Ug3BwS2f9HYFBG12sPDQyVXLD3uV1PR87BAkm7OhU/Mku4Lb7kW6SMKwWAHGYm8pph6cA6lT4NB1cM8Vamb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=erKYnFfu; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-6f4178aec15so592083b3a.0
        for <devicetree@vger.kernel.org>; Sat, 04 May 2024 10:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714843988; x=1715448788; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tm+hkjnifsq0PhG6Ap2FjKNJi8qui9XYsXdKzpuswS8=;
        b=erKYnFfupiEIobeT13V1jBOj9fGC9oS8qjj4NnUGOltO1tM6o0o0vKn0WRmTabLMzk
         OsoAYwPIShq4f17rvgY9HtLUMpRtu7CztuiiGe7fIIygK4zPZNQxOw0d3Re2dEdLWgDc
         AQ1dosZNrrdRAaHmsrn3F5JNwTesZIamR8BMVO+On2iFdmS/w0CLUgpjPZhVIWQ3VVU3
         S5tptppZS1E1X/X/EMEe/pzr0OiEeyUbV2wSFI+uCjRdnzoMUrLZZmdriZwR9bdoR+xE
         cHbz3n84I+aqT/KlgHO1XL0lNgUVOqy1fnHbA4TA99LM6fmw54Xb5dv7cmFznspCuw7o
         1D8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714843988; x=1715448788;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tm+hkjnifsq0PhG6Ap2FjKNJi8qui9XYsXdKzpuswS8=;
        b=rBD/d0TIAslHCj+U/YFbw2kljSmPcqT6jVmFbTWoy7BFpQEpCbfiOGclizF+xyGKs7
         uY6dbjnHxyehJUTPEa+w2db5nDT9tzy3btnB927m3afXqMVvDcFqhzILocHq1hk7gT2X
         LlB75fNrad8dT/RsfAft55K1QQnUdJQdd3tV7et4K57avs1WXf4UTJSXWtMaFicUmNQq
         PTGf7nQElHg1USDWirQxfemfc52fEoi5ePMy2aUEoUJ228c5Qt0G9QA88IkTN/2A4up+
         CxR11vQ7mI8N1f9qvtKii5gP+nS6Otz7tY1k6ehuaIl1mrBFSqz2V4bw+8Q8m/yo+Xqa
         ZsBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWp4TX5mZmmlhSfsX6cajMZvfi0ot3SdD1/xgn0b5MlYCnk2dyG9pY1UPLVITXRN2Wf06t1z/peVSJozMrIIryYeQnIzOfZ5paCjQ==
X-Gm-Message-State: AOJu0Ywxkq2c7V0qqB1XnhQ3x5jyndnvaSCyl1Ud8HHeC2J0MMcNiiQi
	/LT3iiBI+D8zMse19Ephtakd76wNcIsmV5eK23gnUqzLRh7nSR1ryYfqQsXAEA==
X-Google-Smtp-Source: AGHT+IE71SThGG0rboV5B+ZKojRHaS6qJbGuddDvZeSPOrsqMo/HKBJlduV4Wulkz6De+mWXnuG6lA==
X-Received: by 2002:a05:6a00:4f82:b0:6ed:21b2:cb17 with SMTP id ld2-20020a056a004f8200b006ed21b2cb17mr6741671pfb.4.1714843987657;
        Sat, 04 May 2024 10:33:07 -0700 (PDT)
Received: from thinkpad ([220.158.156.237])
        by smtp.gmail.com with ESMTPSA id z6-20020a633306000000b0061f2dc31b96sm2268114pgz.47.2024.05.04.10.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 May 2024 10:33:07 -0700 (PDT)
Date: Sat, 4 May 2024 23:03:00 +0530
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
Subject: Re: [PATCH v2 12/14] misc: pci_endpoint_test: Add support for
 rockchip rk3588
Message-ID: <20240504173300.GI4315@thinkpad>
References: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
 <20240430-rockchip-pcie-ep-v1-v2-12-a0f5ee2a77b6@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240430-rockchip-pcie-ep-v1-v2-12-a0f5ee2a77b6@kernel.org>

On Tue, Apr 30, 2024 at 02:01:09PM +0200, Niklas Cassel wrote:
> Rockchip rk3588 requires 64k alignment.
> While there is an existing device_id:vendor_id in the driver with 64k
> alignment, that device_id:vendor_id is am654, which uses BAR2 instead of
> BAR0 as the test_reg_bar, and also has special is_am654_pci_dev() checks
> in the driver to disallow BAR0. In order to allow testing all BARs, add a
> new rk3588 entry in the driver.
> 
> We intentionally do not add the vendor id to pci_ids.h, since the policy
> for that file is that the vendor id has to be used by multiple drivers.
> 
> Hopefully, this new entry will be short-lived, as there is a series on the
> mailing list which intends to move the address alignment restrictions from
> this driver to the endpoint side.
> 
> Add a new entry for rk3588 in order to allow us to test all BARs.
> 
> Signed-off-by: Niklas Cassel <cassel@kernel.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  drivers/misc/pci_endpoint_test.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/misc/pci_endpoint_test.c b/drivers/misc/pci_endpoint_test.c
> index c38a6083f0a7..a7f593b4e3b3 100644
> --- a/drivers/misc/pci_endpoint_test.c
> +++ b/drivers/misc/pci_endpoint_test.c
> @@ -84,6 +84,9 @@
>  #define PCI_DEVICE_ID_RENESAS_R8A774E1		0x0025
>  #define PCI_DEVICE_ID_RENESAS_R8A779F0		0x0031
>  
> +#define PCI_VENDOR_ID_ROCKCHIP			0x1d87
> +#define PCI_DEVICE_ID_ROCKCHIP_RK3588		0x3588
> +
>  static DEFINE_IDA(pci_endpoint_test_ida);
>  
>  #define to_endpoint_test(priv) container_of((priv), struct pci_endpoint_test, \
> @@ -980,6 +983,11 @@ static const struct pci_endpoint_test_data j721e_data = {
>  	.irq_type = IRQ_TYPE_MSI,
>  };
>  
> +static const struct pci_endpoint_test_data rk3588_data = {
> +	.alignment = SZ_64K,
> +	.irq_type = IRQ_TYPE_MSI,
> +};
> +
>  static const struct pci_device_id pci_endpoint_test_tbl[] = {
>  	{ PCI_DEVICE(PCI_VENDOR_ID_TI, PCI_DEVICE_ID_TI_DRA74x),
>  	  .driver_data = (kernel_ulong_t)&default_data,
> @@ -1017,6 +1025,9 @@ static const struct pci_device_id pci_endpoint_test_tbl[] = {
>  	{ PCI_DEVICE(PCI_VENDOR_ID_TI, PCI_DEVICE_ID_TI_J721S2),
>  	  .driver_data = (kernel_ulong_t)&j721e_data,
>  	},
> +	{ PCI_DEVICE(PCI_VENDOR_ID_ROCKCHIP, PCI_DEVICE_ID_ROCKCHIP_RK3588),
> +	  .driver_data = (kernel_ulong_t)&rk3588_data,
> +	},
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(pci, pci_endpoint_test_tbl);
> 
> -- 
> 2.44.0
> 

-- 
மணிவண்ணன் சதாசிவம்

