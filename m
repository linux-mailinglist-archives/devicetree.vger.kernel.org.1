Return-Path: <devicetree+bounces-140235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF90A18F03
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 10:58:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D4A22160E82
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 09:58:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86288210F4B;
	Wed, 22 Jan 2025 09:58:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hscZqSrU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 753E62101A0
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 09:58:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737539886; cv=none; b=a0CRBFzgl1p3MtvOGQYjLpTKqilttXyo4xQB15Ggu8pIjH8euSOsJmxy917mHMWuKOT0mVHHTOFPoNQyvb7AAQC3tUOlO96iDUuLZzBcAGF4OEdv6Bpk1opz0Yc9E/Ypw/zatJWqGF/kZak124pms6fPcGa2/l7VWvXXCZmKQDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737539886; c=relaxed/simple;
	bh=0t93RCDXl/7xUXDW5W9vqPWXCfpMB16UsYpP/NqJ6Vc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RdWkPTCPE8r5pSbehbgoMLBuTXFLQ5cunpDgGEfNiIq6ml7QsrD/+xpxsa32d8DnMNQToJVoqk6wxVPX56SwnDzYZISksvH3xr0fnEFARUfq6LEY5VY1soIzbaDOq0DDzlhXoLZB4J5HgAxTcAz6aEC6hUI8krg+gKb9ilK6GB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hscZqSrU; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-53f757134cdso6882676e87.2
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 01:58:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737539882; x=1738144682; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lt+7T/OfDgu/+TjLQdN9iffz+QngVPZRwwA8knqRWaI=;
        b=hscZqSrUBpsdDJlvGazLsFUbKQwp1m+j+Ena3k9KzDptbkDyIYvkp4UNh8aIkBVZLI
         8r/6MHfVQkrFZQHyw3qPHX6SKSZRfoZ4RnEO+C0hTNjP/jLXCuYF/Vwlo0azMReoTQTS
         V3bPU9MBGXLS2ydWMPdxXWP3tMhVFyEpI2jsUla+a/kdlWDXbwX46wdVEM28/Arusq6k
         Gpv0ekeTK9HNC+uvD9dvpRjTP8M3oO8RXkF/AfFy/Iam+YcZg57shlU5c21BUSQUn8DZ
         YAg2ztwdL4rDU8l653TDwGFaxu8wo+3VcCLlJLMGskpBwaVSG/WvMUmMx3WKH7ePYz39
         7+CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737539882; x=1738144682;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lt+7T/OfDgu/+TjLQdN9iffz+QngVPZRwwA8knqRWaI=;
        b=iZONcW0Ncp8pvj0yqpZtBajI8YDFVNUd/n9z57xOuJDapHIUT14KdmV9ssS+iejUYa
         YfY5DYBpmaxruGke/NhwrADzFejNWC6zM1KMxjjPFA40OP/sWwwx4ijyZckWCYDg9c5j
         FymwAo1gF8qPOjyo0FAHB3k4U/D4l6iSv4QYQiHntPhNDin/ycd8mJD/Z0vId0AWXdRE
         +4AvwCs9oHhtcIctaXvXVOX7SQ9nzuZhxn4MqiSCoqJhUjWBWjSVsFhdPlCgRNy3hScQ
         3idw+bepEbEJOPVol6zXypaZ94by8iaL4p5YGHWCJn05NNxVZqOsPpIDQnugreqOFDRO
         2MgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQxc7Cl3Xsqn6ro9bzzXNtPkzoe7fdRn73LLcEVoCkLuSOQ5tGyK83xPvtKssLpudgDd0t6iKGjFZj@vger.kernel.org
X-Gm-Message-State: AOJu0YxwPgr7G9uaS0s19irFZtqj0umfBcjkTXioiHHjW3goozwrgRh5
	w26HY4DPvLXO/biWB33sGT0gVrI/UZ7+WcBF+iCTaV/IQVe5o9I9Y4wZjQgAd00=
X-Gm-Gg: ASbGncsz2h9vxH5QE3qGu8iLIBX7ku0kQUO6BQKV4trn6g+awCl1GwzsvjU0yiJpZSK
	b/kTW2piTNND9qdzTJ/wXsHfqs07yI9OMhCPeanmI0dAQTHAhW3UBO178f3ITqakpMAZJBeta9j
	VvS1zm7U4qzzU2jVjvZmiy2bjQiWQnh36iJKU+RM02UF9ezAPVt8MpJfbRA3OQA+ZgnzB/XbtJj
	21Ink0NNot93RQ3h6dmOmiAUx0tBerdNCvrNDc6awzLcONOQhlH4Pevp5hk23XM9gIAPCTp7DF/
	XI3QIL73xlpMJK2e57STDUp7+Rx2ngx7bwNlFTdN1z1ZMi6KwQ==
X-Google-Smtp-Source: AGHT+IHSPoERHwXBAu/mWABs14CcJsopKYTMwQjU2ZihLtIIx69YnItSD8BMvZFUb9/vqhUAaBtVuA==
X-Received: by 2002:a05:6512:1084:b0:542:29b6:9c26 with SMTP id 2adb3069b0e04-5439c27d0c5mr7863371e87.47.1737539882463;
        Wed, 22 Jan 2025 01:58:02 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af7364esm2166480e87.162.2025.01.22.01.58.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 01:58:01 -0800 (PST)
Date: Wed, 22 Jan 2025 11:57:59 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sachin Gupta <quic_sachgupt@quicinc.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, Bhupesh Sharma <bhupesh.sharma@linaro.org>, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, quic_cang@quicinc.com, quic_nguyenb@quicinc.com, 
	quic_bhaskarv@quicinc.com, quic_mapa@quicinc.com, quic_narepall@quicinc.com, 
	quic_nitirawa@quicinc.com, quic_rampraka@quicinc.com, quic_sartgarg@quicinc.com
Subject: Re: [PATCH V3 3/4] mmc: sdhci-msm: Add Device tree parsing logic for
 DLL settings
Message-ID: <6xvsnmbnnvpmlgvmi42pt4d3ugkrxhrgrkp56szqhgh2foxe72@z4ildfxufq7j>
References: <20250122094707.24859-1-quic_sachgupt@quicinc.com>
 <20250122094707.24859-4-quic_sachgupt@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250122094707.24859-4-quic_sachgupt@quicinc.com>

On Wed, Jan 22, 2025 at 03:17:06PM +0530, Sachin Gupta wrote:
> This update introduces the capability to configure HS200
> and HS400 DLL settings via the device tree and parsing it.
> 
> Signed-off-by: Sachin Gupta <quic_sachgupt@quicinc.com>
> ---
>  drivers/mmc/host/sdhci-msm.c | 86 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 86 insertions(+)
> 
> diff --git a/drivers/mmc/host/sdhci-msm.c b/drivers/mmc/host/sdhci-msm.c
> index 2a5e588779fc..cc7756a59c55 100644
> --- a/drivers/mmc/host/sdhci-msm.c
> +++ b/drivers/mmc/host/sdhci-msm.c
> @@ -256,6 +256,19 @@ struct sdhci_msm_variant_info {
>  	const struct sdhci_msm_offset *offset;
>  };
>  
> +/*
> + * DLL registers which needs be programmed with HSR settings.
> + * Add any new register only at the end and don't change the
> + * sequence.
> + */
> +struct sdhci_msm_dll {
> +	u32 dll_config[2];
> +	u32 dll_config_2[2];
> +	u32 dll_config_3[2];
> +	u32 dll_usr_ctl[2];
> +	u32 ddr_config[2];
> +};
> +
>  struct sdhci_msm_host {
>  	struct platform_device *pdev;
>  	void __iomem *core_mem;	/* MSM SDCC mapped address */
> @@ -264,6 +277,7 @@ struct sdhci_msm_host {
>  	struct clk *xo_clk;	/* TCXO clk needed for FLL feature of cm_dll*/
>  	/* core, iface, cal and sleep clocks */
>  	struct clk_bulk_data bulk_clks[4];
> +	struct sdhci_msm_dll dll;
>  #ifdef CONFIG_MMC_CRYPTO
>  	struct qcom_ice *ice;
>  #endif
> @@ -292,6 +306,7 @@ struct sdhci_msm_host {
>  	u32 dll_config;
>  	u32 ddr_config;
>  	bool vqmmc_enabled;
> +	bool artanis_dll;
>  };
>  
>  static const struct sdhci_msm_offset *sdhci_priv_msm_offset(struct sdhci_host *host)
> @@ -2400,6 +2415,74 @@ static int sdhci_msm_gcc_reset(struct device *dev, struct sdhci_host *host)
>  	return ret;
>  }
>  
> +static int sdhci_msm_dt_get_array(struct device *dev, const char *prop_name,
> +				  u32 **bw_vecs, int *len)

It just reads an array from the DT, please rename the bw_vecs param
which is inaccurate in this case.

> +{
> +	struct device_node *np = dev->of_node;
> +	u32 *arr = NULL;
> +	int ret = 0;
> +	int sz;
> +
> +	if (!np)
> +		return -ENODEV;
> +
> +	if (!of_get_property(np, prop_name, &sz))
> +		return -EINVAL;
> +
> +	sz = sz / sizeof(*arr);
> +	if (sz <= 0)
> +		return -EINVAL;
> +
> +	arr = devm_kzalloc(dev, sz * sizeof(*arr), GFP_KERNEL);
> +	if (!arr)
> +		return -ENOMEM;
> +
> +	ret = of_property_read_u32_array(np, prop_name, arr, sz);
> +	if (ret) {
> +		dev_err(dev, "%s failed reading array %d\n", prop_name, ret);
> +		*len = 0;
> +		return ret;
> +	}
> +
> +	*bw_vecs = arr;
> +	*len = sz;
> +	ret = 0;
> +
> +	return ret;
> +}
> +
> +static int sdhci_msm_dt_parse_dll_info(struct device *dev, struct sdhci_msm_host *msm_host)
> +{
> +	int dll_table_len, dll_reg_count;
> +	u32 *dll_table = NULL;
> +	int i;
> +
> +	msm_host->artanis_dll = false;
> +
> +	if (sdhci_msm_dt_get_array(dev, "qcom,dll-hsr-list",
> +				   &dll_table, &dll_table_len))
> +		return -EINVAL;
> +
> +	dll_reg_count = sizeof(struct sdhci_msm_dll) / sizeof(u32);
> +
> +	if (dll_table_len != dll_reg_count) {
> +		dev_err(dev, "Number of HSR entries are not matching\n");
> +		return -EINVAL;
> +	}
> +
> +	for (i = 0; i < 2; i++) {
> +		msm_host->dll.dll_config[i] = dll_table[i];
> +		msm_host->dll.dll_config_2[i] = dll_table[i + 1];
> +		msm_host->dll.dll_config_3[i] = dll_table[i + 2];
> +		msm_host->dll.dll_usr_ctl[i] = dll_table[i + 3];
> +		msm_host->dll.ddr_config[i] = dll_table[i + 4];
> +	}
> +
> +	msm_host->artanis_dll = true;

And the pointer to dll_table is lost, lingering for the driver lifetime.
Please drop the devm_ part and kfree() it once it is not used anymore.

> +
> +	return 0;
> +}
> +
>  static int sdhci_msm_probe(struct platform_device *pdev)
>  {
>  	struct sdhci_host *host;
> @@ -2446,6 +2529,9 @@ static int sdhci_msm_probe(struct platform_device *pdev)
>  
>  	msm_host->saved_tuning_phase = INVALID_TUNING_PHASE;
>  
> +	if (sdhci_msm_dt_parse_dll_info(&pdev->dev, msm_host))
> +		goto pltfm_free;
> +
>  	ret = sdhci_msm_gcc_reset(&pdev->dev, host);
>  	if (ret)
>  		goto pltfm_free;
> -- 
> 2.17.1
> 

-- 
With best wishes
Dmitry

