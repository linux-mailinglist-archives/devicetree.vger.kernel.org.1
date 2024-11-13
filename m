Return-Path: <devicetree+bounces-121626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E09379C7A93
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 19:03:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6DFB51F2399E
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 18:03:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BC9B205120;
	Wed, 13 Nov 2024 18:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qnK8PjYR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F12E202F8E
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 18:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731520891; cv=none; b=okxOP+rxGjS1ytTl9mCqICN0aJYA9GeSUGDbcx5GcL8eDdX/FSL87KBnX/9chELZS8zXsrSLtQJwmKRZ88B1HLFaNFQB+qsqt4quVJTUbWpJsGiSt0Y8AX0Cp20oaRihsV+YuvHxCjHjtwOP2bbSEk3si/uSQp5+5w3zdAxcPZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731520891; c=relaxed/simple;
	bh=mW8xeBOdl7cG7NVmuWN6uOIPoVBCoSszDsYNlTMIS+U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V98TQnUxZ30tfA8+y/cC2bdwU3yZecLkEqOeacGtW19KgdoPTGKq6JAMOXk/U90A/K7FMiC/CY4dGvIpbwX+oWzx3uZzn3tvbETq/edyv9bREaWLj3RWhXDW7Y1eV3s3IEy3oF6m0cQL3hyp2nsvxGfz/0pjMbFgJr0pmeMlVTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qnK8PjYR; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53d9ff8ef3aso1277934e87.1
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 10:01:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731520887; x=1732125687; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MZvMlsN0jo6eym0o1YhsLbFld5ubrjJXwf34VetdniI=;
        b=qnK8PjYRg7HVxdF4JW5RgT2ONXkfT3LYTZJlX1+wkgHgSD6C7/+ETEYQ9W9HS6gwOJ
         VPlvYfSgTJJpkeOS6BRLwWH8lWCc8eehntAp1nx+mzUntjyzHWZ+XW12LBTj9izlbck9
         3uAV9XjUaPnMssE6CC2WsSlWe1NQNWyUG+vSt59uSbRYeADNpjj1KKOrXJPpdnVmdJrt
         a1Lsw9jHkxTI1gPUAD94A8mVES3qga3AOCxMOkel8w7CQt9/XeUvSAu+aH4RUxW6fLcM
         yrflRelxdJdNvxHmXplgAqFtqqRC86Py7KzLfHkUivOSG6VIVYWcUNvDYTlGjDs+O1zK
         Nf+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731520887; x=1732125687;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MZvMlsN0jo6eym0o1YhsLbFld5ubrjJXwf34VetdniI=;
        b=kN2Pec25km4n3KJ16J9sVvt1w9pPwcsms+DpwUfhBGnfhQqWzViAW1+Pe2FJz0FYKA
         W5kCLCXg9PLjnzU0vx1IV1oHyVYURweYyLnA+NBhpuw5yatisXumrreeI/OWJtL1UbZ+
         5dQwmfcrg78HIReNbCxO5jYNVoYw55Nbt/wN7tM+taS798nNQGYwpDHVW/09st2XhGAt
         KjVUedpujmWMiSjzib8JmYUKWyNUCrNpvQCHHjhDIU2o02+RclMsUeGRelvwPppnXmFX
         x1mAZDhQoa7HZc/VjqTfmx4SP9YbZROvx9/cpjnhM7uniuHuvw4fJbzU91yD01Ub0uxF
         Lkcg==
X-Forwarded-Encrypted: i=1; AJvYcCVAGWQvF3kQ3+D0w6W3VndEWk+4z3lJs70+TaMAWMmLl089inNOb3ZphhkLUg94jjgvp3fC9c3fVjCi@vger.kernel.org
X-Gm-Message-State: AOJu0YxVIQ2+GwoUCkOf1Cl/d0gAZR0Fiyj0HsIg6xgEoX5StomXLVF3
	9HABsQktYdosrLH2Ur+3m7vXgG9WvMJzDD1ZyhLhBCBOLP0qEGSZ/lgGYbiBCbc=
X-Google-Smtp-Source: AGHT+IETbRzY+I9uAERqiReGkk3idEQ+R5hg0H5mE4wjypNlx0pG/QizKr/RYs6BvY2mQyRC/uIflQ==
X-Received: by 2002:a05:6512:b94:b0:52e:767a:ada3 with SMTP id 2adb3069b0e04-53d862f33cfmr11056499e87.47.1731520887019;
        Wed, 13 Nov 2024 10:01:27 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53d826a9b50sm2256446e87.182.2024.11.13.10.01.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 10:01:25 -0800 (PST)
Date: Wed, 13 Nov 2024 20:01:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Renjiang Han <quic_renjiang@quicinc.com>
Cc: Stanimir Varbanov <stanimir.k.varbanov@gmail.com>, 
	Vikash Garodia <quic_vgarodia@quicinc.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/4] media: venus: core: add qcs615 platform data
Message-ID: <eldjwrookzs46mvxdp56uj2eytfeu5fuj4zs4yowcyilhra3pg@vc6v72klixem>
References: <20241112-add-venus-for-qcs615-v2-0-e67947f957af@quicinc.com>
 <20241112-add-venus-for-qcs615-v2-2-e67947f957af@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241112-add-venus-for-qcs615-v2-2-e67947f957af@quicinc.com>

On Tue, Nov 12, 2024 at 05:17:58PM +0530, Renjiang Han wrote:
> Initialize the platform data and enable venus driver probe of QCS615
> SoC.
> 
> Signed-off-by: Renjiang Han <quic_renjiang@quicinc.com>
> ---
>  drivers/media/platform/qcom/venus/core.c | 50 ++++++++++++++++++++++++++++++++
>  1 file changed, 50 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
> index 423deb5e94dcb193974da23f9bd2d905bfeab2d9..39d8bcf62fe4f72674746b75994cce6cbaee94eb 100644
> --- a/drivers/media/platform/qcom/venus/core.c
> +++ b/drivers/media/platform/qcom/venus/core.c
> @@ -630,6 +630,55 @@ static const struct venus_resources msm8998_res = {
>  	.fwname = "qcom/venus-4.4/venus.mbn",
>  };
>  
> +static const struct freq_tbl qcs615_freq_table[] = {
> +	{ 0, 460000000 },
> +	{ 0, 410000000 },
> +	{ 0, 380000000 },
> +	{ 0, 300000000 },
> +	{ 0, 240000000 },
> +	{ 0, 133333333 },
> +};
> +
> +static const struct bw_tbl qcs615_bw_table_enc[] = {
> +	{  972000,  951000, 0, 1434000, 0 },	/* 3840x2160@30 */
> +	{  489600,  723000, 0,  973000, 0 },	/* 1920x1080@60 */
> +	{  244800,  370000, 0,	495000, 0 },	/* 1920x1080@30 */
> +};
> +
> +static const struct bw_tbl qcs615_bw_table_dec[] = {
> +	{ 1036800, 1987000, 0, 2797000, 0 },	/* 4096x2160@30 */
> +	{  489600, 1040000, 0, 1298000, 0 },	/* 1920x1080@60 */
> +	{  244800,  530000, 0,  659000, 0 },	/* 1920x1080@30 */
> +};
> +
> +static const struct venus_resources qcs615_res = {
> +	.freq_tbl = qcs615_freq_table,
> +	.freq_tbl_size = ARRAY_SIZE(qcs615_freq_table),
> +	.bw_tbl_enc = qcs615_bw_table_enc,
> +	.bw_tbl_enc_size = ARRAY_SIZE(qcs615_bw_table_enc),
> +	.bw_tbl_dec = qcs615_bw_table_dec,
> +	.bw_tbl_dec_size = ARRAY_SIZE(qcs615_bw_table_dec),
> +	.clks = {"core", "iface", "bus" },
> +	.clks_num = 3,
> +	.vcodec0_clks = { "vcodec0_core", "vcodec0_bus" },
> +	.vcodec_clks_num = 2,
> +	.vcodec_pmdomains = (const char *[]) { "venus", "vcodec0" },
> +	.vcodec_pmdomains_num = 2,
> +	.opp_pmdomain = (const char *[]) { "cx" },
> +	.vcodec_num = 1,
> +	.hfi_version = HFI_VERSION_4XX,
> +	.vpu_version = VPU_VERSION_AR50,
> +	.vmem_id = VIDC_RESOURCE_NONE,
> +	.vmem_size = 0,
> +	.vmem_addr = 0,
> +	.dma_mask = 0xe0000000 - 1,
> +	.cp_start = 0,
> +	.cp_size = 0x70800000,
> +	.cp_nonpixel_start = 0x1000000,
> +	.cp_nonpixel_size = 0x24800000,
> +	.fwname = "qcom/venus-5.4/venus_s6.mbn",

Why does it need a separate firmware file?

> +};
> +
>  static const struct freq_tbl sdm660_freq_table[] = {
>  	{ 979200, 518400000 },
>  	{ 489600, 441600000 },
> @@ -937,6 +986,7 @@ static const struct of_device_id venus_dt_match[] = {
>  	{ .compatible = "qcom,msm8916-venus", .data = &msm8916_res, },
>  	{ .compatible = "qcom,msm8996-venus", .data = &msm8996_res, },
>  	{ .compatible = "qcom,msm8998-venus", .data = &msm8998_res, },
> +	{ .compatible = "qcom,qcs615-venus", .data = &qcs615_res, },
>  	{ .compatible = "qcom,sdm660-venus", .data = &sdm660_res, },
>  	{ .compatible = "qcom,sdm845-venus", .data = &sdm845_res, },
>  	{ .compatible = "qcom,sdm845-venus-v2", .data = &sdm845_res_v2, },
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

