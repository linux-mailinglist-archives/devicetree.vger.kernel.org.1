Return-Path: <devicetree+bounces-110561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFC499B0CB
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 06:23:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C73BE1F2289F
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 04:23:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B032512C52E;
	Sat, 12 Oct 2024 04:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ho6vrZLB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B6642069
	for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 04:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728707032; cv=none; b=Iqo9DdCrJrNAI9gocq4x3VhsiLJMUPrSFbI8rN7T/WCBsJU3zdfHIlv9rC7ItpZTwiYescV+pcBMN5utKi6gJ6gcoPI9V2V78K428C9ptna3N6XaNEKMhiAEE3Q2A0PTzzg7vPFatcWloUha1JFKcJ36HRJQ3vzKRt54BiNSnIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728707032; c=relaxed/simple;
	bh=DClWqVSw4Q5SvJ0ClE/kssmfoucsaa5UCa1zSe/frdk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CDWJGmYS6SYiBoVBbNtnlu8+5AB0Yi8V3m9gy3gzyVz+1s6TjJjHiEGU6cczED8yZL+3dvvqgAV6x+z8V023eiHmXmBcapGC09QwOEddy0vqU44rkhLyw1J6gUSaqwd4sPKeKHM4XAXYNZJGR7Ib3A/4BpeDOAvV+6nb+U1wVEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ho6vrZLB; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-71dff3b3c66so1711256b3a.0
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 21:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728707030; x=1729311830; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=puYHk9n2Vwdgm2oCgJfF1Sai1mpX68QX9Cn76m96df4=;
        b=ho6vrZLBps8SLdqhTaWv5OPApVnXQnmbkL5I0Ue5+vrQmsWABhwRLRLyaX0MhcrwgA
         zBmTU/AcJKLaKElLEmFFN8UuZnFetH3mT3OgfIJrOLd6YnFYM0EqsYtKM791ZYAdAt5+
         61vuatsxfo78gAPwgbm6ljoJ/+8SyIu8zrF6o6UDqXQdxDt+W501S3vJTiRzguaJxZ1k
         GdXl9LPECeTenaYzD8fz8bzeiwJBPUP8pajrA6Pdlj3cG58+C1uvr4ddhiF3BQZd+Me2
         iBThYcB2GgXClNmIx3UVfTapSjjox1VsVugo8RKDS8Khez5ZpdHf12bOobIt4roMIbYZ
         m+6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728707030; x=1729311830;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=puYHk9n2Vwdgm2oCgJfF1Sai1mpX68QX9Cn76m96df4=;
        b=XQ9G6pZ0WXZXOBxF4zZWvfBcN45G87n/vUf+Gh89UIJ6peUIC3ewi5SBL9ucNfDkMW
         vEu7M5JJCn11kf221tcDh3kFF5J2uPzuH+B5XlPCCPwf/KFuTPWM6m1Xupjd2wrz++d7
         wmf48Sj65KylGS/efPrLzHdQtgVh5A+wwSZ1yilAFq0WU2Fj4jtRDADu6u9FUjy+8YoZ
         VF2tw4cJuYypQV/aBkDB7k1GG8aAoFHJIx4j0X+h9kmHfJqBLNTdMwcPcFRVt605S7JL
         vnpEFDMvDCXVLjaMqZ5YtbJNDY7g8oCq5o75/VB7V2OvEbdCKcHM6CKobUqBKCVWOqmc
         IJlg==
X-Forwarded-Encrypted: i=1; AJvYcCU6ZfusIuOPsFrP7H7GRZ9h4mhiOkobwvw/4SQGSTDQJ83UEUeiHVc19Cw2I8PPXe034NY7e4T8xHzC@vger.kernel.org
X-Gm-Message-State: AOJu0Yxe0mf3UAIi9If5j8LMO1yaNQKsGeP64G2uFil9RDjdtS95uCI6
	svA/ZQmZq/xzFOEeofWwuD/tDRJwG0OUJzGeoKf3oOzvagL0QlV8+8vB9Sl1eA==
X-Google-Smtp-Source: AGHT+IHxOL7Syd/cGt2BqV95e4Kdw1tNZz3+9j9/FIOE1zxN0smZKiOoLQJ5RmgWDoO3/JTFDgCGEA==
X-Received: by 2002:a05:6a21:3998:b0:1d7:1277:8d12 with SMTP id adf61e73a8af0-1d8bcf5c061mr6324102637.29.1728707030426;
        Fri, 11 Oct 2024 21:23:50 -0700 (PDT)
Received: from thinkpad ([220.158.156.122])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e3ba69fdasm1926423b3a.205.2024.10.11.21.23.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 21:23:50 -0700 (PDT)
Date: Sat, 12 Oct 2024 09:53:42 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
	abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v6 6/8] PCI: qcom: Fix the ops for SC8280X family SoC
Message-ID: <20241012041734.y6nwumij27dkbcra@thinkpad>
References: <20241011104142.1181773-1-quic_qianyu@quicinc.com>
 <20241011104142.1181773-7-quic_qianyu@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241011104142.1181773-7-quic_qianyu@quicinc.com>

On Fri, Oct 11, 2024 at 03:41:40AM -0700, Qiang Yu wrote:
> On SC8280X family SoC, PCIe controllers are connected to SMMUv3, hence
> they don't need the config_sid() callback in ops_1_9_0 struct. Fix it by
> introducing a new ops struct, namely ops_1_21_0, so that BDF2SID mapping

'...namely ops_1_21_0 which is same as ops_1_9_0 without config_sid() callback'

> won't be configured during init.
> 
> Fixes: d1997c987814 ("PCI: qcom: Disable ASPM L0s for sc8280xp, sa8540p and sa8295p")
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 88a98be930e3..468bd4242e61 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -1367,6 +1367,16 @@ static const struct qcom_pcie_ops ops_2_9_0 = {
>  	.ltssm_enable = qcom_pcie_2_3_2_ltssm_enable,
>  };
>  
> +/* Qcom IP rev.: 1.21.0 */
> +static const struct qcom_pcie_ops ops_1_21_0 = {
> +	.get_resources = qcom_pcie_get_resources_2_7_0,
> +	.init = qcom_pcie_init_2_7_0,
> +	.post_init = qcom_pcie_post_init_2_7_0,
> +	.host_post_init = qcom_pcie_host_post_init_2_7_0,
> +	.deinit = qcom_pcie_deinit_2_7_0,
> +	.ltssm_enable = qcom_pcie_2_3_2_ltssm_enable,
> +};
> +
>  static const struct qcom_pcie_cfg cfg_1_0_0 = {
>  	.ops = &ops_1_0_0,
>  };
> @@ -1405,7 +1415,7 @@ static const struct qcom_pcie_cfg cfg_2_9_0 = {
>  };
>  
>  static const struct qcom_pcie_cfg cfg_sc8280xp = {
> -	.ops = &ops_1_9_0,
> +	.ops = &ops_1_21_0,
>  	.no_l0s = true,
>  };
>  
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

