Return-Path: <devicetree+bounces-126217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 758E19E091D
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 17:54:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 570AE167CB0
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 16:42:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6BD11D63DA;
	Mon,  2 Dec 2024 16:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ae7u+agM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D12B81D31B2
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 16:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733157739; cv=none; b=aic9OXmvd1uDJs0Z1AQQCLpd8a+Synh/lGFJ4UTDHBV5brt/2m2emwyBlKl/z1DbX7c1eVSw555d6Cwck3sIsDOuKDkOaW1idySbkFOMZPlv4ZxGT1Otv6IDojmkHQU9bvg1uun+sJVbGrt35hZ5qtMrbi80J3gfMhRnkv7/HG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733157739; c=relaxed/simple;
	bh=8ZyXh8TCH4QhT/YV/uAlx1sWa6cJN39K3SxCDNSBg38=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bNzSsxDOeWB8atiKtnq76GhYhzk9BLH8r7qw0uf80jHNwDTgvKNYaZ+KRN4HYyyHa9gV3B2q9vlVSxC31bG6JRCs17jJSaMtOExnK6knljDecNEFcuVV2cnRQ5+e3yyTR9O6bfAbdm0vIIjnwIZs3y4s2to5TQZuVt3FCIPvB5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ae7u+agM; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-2ee74291415so1718967a91.3
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 08:42:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733157737; x=1733762537; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wqsRUP7wAfSp8NquH353cBwoUcX5EWbVc93C8IvKtmY=;
        b=ae7u+agMnPdtVIyU765MBzf6CcoqF1rXftJ06xK30RmFxsyQ6APTxpv/FEpSmlLTD7
         y12EKvPDT5q5XjwWpxgoCLY0w2ip9Pn6Pi8R3sy86nmwbpnx1/2rkIrqHXCfUAe/3lKY
         95yC26H6irA1CFRwFJ2h76y7kQD5PXLgZQedpyec4hR9+hscZvVowPJU6yx60T1or6xo
         n3GKLFTopNyZblORKpNptmynv/lHpzhkX7ywvjny9IQfJGjS5d1K4bUntmTnuUE2qgYw
         kWhiIZjJqibf+xifzbbuEomKmILBhDwGI9Mq/ZZmxS5IpW802qGwyz9SsPgYSHtTW/bD
         ysGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733157737; x=1733762537;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wqsRUP7wAfSp8NquH353cBwoUcX5EWbVc93C8IvKtmY=;
        b=ro2+b7yzbbI0ajnoevw4FNe/fRyeUGjG2FuVAqFijGil2Fq60eq50vz6f6Qyt6A+oC
         0NaQHWNqsXOgjDjUZMr8hdo3Jt9M8/9FjDV61IzkgECDq/2OdHd2L+OXMG593339PHXw
         qCqgLBrNjp1NM7lrUeAn+YfosMzvhkT8Caj168VsWwQsrMkhdJR4+4Wjd5CK3V0Vk155
         b3q4GfH2PzHyhXGwAhdPOWG7DNmDl8S3KJNe6dMQpOTkXJPYZFaMXWPdTl/xTCaZS1X+
         R5Lnj9xj30jz0aWOiss+niPpGW6oQ6sbsNN+Al/w24xlgG5lRCFHq2s8rMUEhhAAs8W3
         R3rQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAzxwWLvm81hiW6swW20gjXZKzZb7D023zizoj5CfUTeFJZmDqiwfF4Z/EGSTpKtRvrzEg7Hq+GvnY@vger.kernel.org
X-Gm-Message-State: AOJu0YyUADOQMissRLRpCjAdh065YuQ8FZzWfVvqhV2Ev6lUGevJczk2
	l3a3DSKZdKR8bsvBUgCxMvr/Jb7Phbq0XuFVBga4p/bthoYSo4dywgSD1ccl5Q==
X-Gm-Gg: ASbGncvZKLbvD/7IUHnkxuNKwrcdqCt05QKGJav6Bq9K72Vs7U0Qw+NlPym0BuF8Vpb
	GtTMM1hFKKrCFvFwT1zFIWc8zNiA9pcaesI2YgUPwzKGmI3txtuqIVaDOlpQHTC922TKAUAp8lF
	WsyEWmbVFJlpArEhfokhQNgMmMXievlPacqVViSMxrlhuUUtrbJZkOxQfJ91ls5jO08vQVodxNw
	C9bBUbel1Hv0kXLenblpx9HLwXT8om5S2c/TjjAwcn/Lbs+3T/OlVM+/kFM9A==
X-Google-Smtp-Source: AGHT+IEWaG9hQw5W6hzV7999Ggbcuv8yF8PM05Z2+btXJbT9F2Q01zZZ3zFPGUloFY/+vMM6LHEd7w==
X-Received: by 2002:a17:90b:1d11:b0:2ee:8008:b583 with SMTP id 98e67ed59e1d1-2ee8008b80bmr16187368a91.16.1733157737232;
        Mon, 02 Dec 2024 08:42:17 -0800 (PST)
Received: from thinkpad ([120.60.140.110])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2eea942f6a8sm3097181a91.41.2024.12.02.08.42.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 08:42:16 -0800 (PST)
Date: Mon, 2 Dec 2024 22:12:03 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: cros-qcom-dts-watchers@chromium.org,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, quic_vbadigan@quicinc.com,
	quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
	quic_skananth@quicinc.com, quic_vpernami@quicinc.com,
	quic_mrana@quicinc.com, mmareddy@quicinc.com,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH 2/3] PCI: dwc: Add ECAM support with iATU configuration
Message-ID: <20241202164203.tpjqqgq6hzzedudc@thinkpad>
References: <20241117-ecam-v1-0-6059faf38d07@quicinc.com>
 <20241117-ecam-v1-2-6059faf38d07@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241117-ecam-v1-2-6059faf38d07@quicinc.com>

On Sun, Nov 17, 2024 at 03:30:19AM +0530, Krishna chaitanya chundru wrote:
> The current implementation requires iATU for every configuration
> space access which increases latency & cpu utilization.
> 
> Configuring iATU in config shift mode enables ECAM feature to access the

Can you please elaborate 'config shift mode'? Quote relevant section in DWC
databook for reference.

> config space, which avoids iATU configuration for every config access.
> 
> Add "ctrl2" into struct dw_pcie_ob_atu_cfg  to enable config shift mode.
> 
> As DBI comes under config space, this avoids remapping of DBI space
> separately. Instead, it uses the mapped config space address returned from
> ECAM initialization. Change the order of dw_pcie_get_resources() execution
> to acheive this.
> 
> Introduce new ecam_init() function op for the clients to configure after

We use 'DWC glue drivers' to refer the 'clients' of this driver.

> ecam window creation has been done.
> 

Use 'ECAM' everywhere.

> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
>  drivers/pci/controller/dwc/pcie-designware-host.c | 114 ++++++++++++++++++----
>  drivers/pci/controller/dwc/pcie-designware.c      |   2 +-
>  drivers/pci/controller/dwc/pcie-designware.h      |   6 ++
>  3 files changed, 102 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index 3e41865c7290..e98cc841a2a9 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -418,6 +418,62 @@ static void dw_pcie_host_request_msg_tlp_res(struct dw_pcie_rp *pp)
>  	}
>  }
>  
> +static int dw_pcie_config_ecam_iatu(struct dw_pcie_rp *pp)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> +	struct dw_pcie_ob_atu_cfg atu = {0};
> +	struct resource_entry *bus;
> +	int ret, bus_range_max;
> +
> +	bus = resource_list_first_type(&pp->bridge->windows, IORESOURCE_BUS);
> +
> +	/*
> +	 * Bus 1 config space needs type 0 atu configuration
> +	 * Remaining buses need type 1 atu configuration
> +	 */
> +	atu.index = 0;
> +	atu.type = PCIE_ATU_TYPE_CFG0;
> +	atu.cpu_addr = pp->cfg0_base + SZ_1M;

You didn't mention what occupies the first 1MB.

> +	atu.size = SZ_1M;
> +	atu.ctrl2 = PCIE_ATU_CFG_SHIFT_MODE_ENABLE;
> +	ret = dw_pcie_prog_outbound_atu(pci, &atu);
> +	if (ret)
> +		return ret;
> +
> +	bus_range_max = bus->res->end - bus->res->start + 1;

resource_size(bus->res)

> +
> +	/* Configure for bus 2 - bus_range_max in type 1 */
> +	atu.index = 1;
> +	atu.type = PCIE_ATU_TYPE_CFG1;
> +	atu.cpu_addr = pp->cfg0_base + SZ_2M;
> +	atu.size = (SZ_1M * (bus_range_max - 2));
> +	atu.ctrl2 = PCIE_ATU_CFG_SHIFT_MODE_ENABLE;
> +	return dw_pcie_prog_outbound_atu(pci, &atu);
> +}
> +
> +static int dw_pcie_create_ecam_window(struct dw_pcie_rp *pp, struct resource *res)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> +	struct device *dev = pci->dev;
> +	struct resource_entry *bus;
> +
> +	bus = resource_list_first_type(&pp->bridge->windows, IORESOURCE_BUS);
> +	if (!bus)
> +		return -ENODEV;
> +
> +	pp->cfg = pci_ecam_create(dev, res, bus->res, &pci_generic_ecam_ops);
> +	if (IS_ERR(pp->cfg))
> +		return PTR_ERR(pp->cfg);
> +
> +	pci->dbi_base = pp->cfg->win;
> +	pci->dbi_phys_addr = res->start;
> +
> +	if (pp->ops->ecam_init)
> +		pp->ops->ecam_init(pci, pp->cfg);
> +
> +	return 0;
> +}
> +
>  int dw_pcie_host_init(struct dw_pcie_rp *pp)
>  {
>  	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> @@ -431,19 +487,8 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
>  
>  	raw_spin_lock_init(&pp->lock);
>  
> -	ret = dw_pcie_get_resources(pci);
> -	if (ret)
> -		return ret;
> -
>  	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "config");
> -	if (res) {
> -		pp->cfg0_size = resource_size(res);
> -		pp->cfg0_base = res->start;
> -
> -		pp->va_cfg0_base = devm_pci_remap_cfg_resource(dev, res);
> -		if (IS_ERR(pp->va_cfg0_base))
> -			return PTR_ERR(pp->va_cfg0_base);
> -	} else {
> +	if (!res) {
>  		dev_err(dev, "Missing *config* reg space\n");
>  		return -ENODEV;
>  	}
> @@ -454,6 +499,30 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
>  
>  	pp->bridge = bridge;
>  
> +	pp->cfg0_size = resource_size(res);
> +	pp->cfg0_base = res->start;
> +
> +	if (!pp->enable_ecam) {

Why can't you just use the ECAM mode when there is enough memory defined in DT?
Using this flag slightly defeats the purpose of the ECAM mode.

> +		pp->va_cfg0_base = devm_pci_remap_cfg_resource(dev, res);
> +		if (IS_ERR(pp->va_cfg0_base))
> +			return PTR_ERR(pp->va_cfg0_base);
> +
> +		/* Set default bus ops */
> +		bridge->ops = &dw_pcie_ops;
> +		bridge->child_ops = &dw_child_pcie_ops;
> +		bridge->sysdata = pp;
> +	} else {
> +		ret = dw_pcie_create_ecam_window(pp, res);
> +		if (ret)
> +			return ret;
> +		bridge->ops = (struct pci_ops *)&pci_generic_ecam_ops.pci_ops;
> +		pp->bridge->sysdata = pp->cfg;

'bridge->sysdata = pp->cfg'?

- Mani

-- 
மணிவண்ணன் சதாசிவம்

