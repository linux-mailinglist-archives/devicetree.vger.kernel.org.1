Return-Path: <devicetree+bounces-104574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F08197ECA3
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 16:00:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F38E41F21032
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 14:00:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECAA519924A;
	Mon, 23 Sep 2024 14:00:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zyMGdrU4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3F4197A97
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 14:00:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727100030; cv=none; b=JSo43uRc6qywSy9S1F+Takf6avFr/erACV5yB+/uwN4ljQYT1+HDggjo+bf2kYMulxh/ygV1tFZ7lbApLFIKc7d2TFiYZzb7u8vC9eeBbFVUbjoQ/nRPHErhj33XlXCLDnETED3NOgl0uSl17UlKcpSZLnNQBbnlEXv50keWvIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727100030; c=relaxed/simple;
	bh=k5b1vUgAi9EhHehY2cDcSsh3AAo7r60XqvMs3ip0KPI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DKnjbGnoLm+ipic5PfHh0cAKuApb7mDL8SPn4x3l/cn5Tb+Uelis8pDX988jNTq/wflM2UDen12C+S6VPqLpXJs3dHNPsfdEIIewaWqnjESLaxwIWw1rUGo/OyJdx6yKij78lSnZkfc6IShwmgV//5DTf9+YWJi2o70Go4iisLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zyMGdrU4; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-42cb7a2e4d6so40022275e9.0
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 07:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727100027; x=1727704827; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=u8SazwJrWtDCMj4dPgSxXhKdNI4ps1CxW8kM2uCcbug=;
        b=zyMGdrU4zPbJus2HxGE2EwYHMsYHOBUopH1suD5uCJDm4+HqajSv/l/Hn7c5IhgAVw
         G3CJnq7bdmJEepCQ4vh2R8M38f2ub7I21z2OgQKHI4m0ZQsDBdcNqat20UWspzXaNVHx
         fIgE+A2Pw3V4iWzg0GaPm/zV5iRWfEoXem83seAprcQm+Qx6JzU4FFUACHpIfCiEZHXE
         jDwVOmgEVWlnAndvKaVlDevqpmn8FLhgmO2h7DgE4xgU+uh+sAbvCy1hDV16d2KYQsY8
         Kfri7f3KbXIYVHnBBRwIh+krpG9nJlBJyhbYYcILMlGN0hIw0FjFURL2XVbwnQ9DbZ0Q
         F+Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727100027; x=1727704827;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u8SazwJrWtDCMj4dPgSxXhKdNI4ps1CxW8kM2uCcbug=;
        b=FiAM7sGdKemj10E4YeGmjSnPBV3OQ314h+G7YBWFVhM8aySpzJbh4jv8BJUn5llIMD
         hbHNLpaw84SqLP5yDKSlZdLRRye4D/bBzgwoZHK7PeDZQ7cU0Y9djrZ7H8wRSD9avlkp
         zdvL7zJ4pDuj4uzC1XojB6SLq59hFlQkkp5nGLN7mSqK0cQ69FtcrKPxp6Wd90AVLAOW
         VCvSOIfG9/DupynCl7CAM70vRLbI7dG+jnASNxVl3SqpjNs0FyolurP1fd5xk6aMlJpO
         LexHYaSZ1cXxe1WFc5fvalbWTg5b8riJiUR5Brr0hbMKeMQ4ssBB2iWqmt48wUW7u3Dc
         ytZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdMECVvBK+4l3hgFtL0B60zJ+fbusS+BccdkfHUlLNAHncgjbM1nR0VrsJimgXeR9JuVIheXBopEVF@vger.kernel.org
X-Gm-Message-State: AOJu0YyNlU1o11PsALGmv1ql35LmFvHVllLSSH11NhnfWQ7NLD7QlFFj
	8FJUCxyYLV4IrIuWOPyxDhqnJmIjzkdOOTS9uOJiAGEIuvJlDUWKEwWZMelOzg==
X-Google-Smtp-Source: AGHT+IGd4Jgcl/E/mParjkXqLeUflk39tqcsXEMYyEzYrJhf0HeCTnOsmZo3zvuU483VWuoxuNNxvw==
X-Received: by 2002:a05:600c:4706:b0:42c:c073:412b with SMTP id 5b1f17b1804b1-42e7adb1f0amr80190915e9.30.1727100027393;
        Mon, 23 Sep 2024 07:00:27 -0700 (PDT)
Received: from thinkpad ([80.66.138.17])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42e7affcc6esm103072955e9.47.2024.09.23.07.00.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Sep 2024 07:00:26 -0700 (PDT)
Date: Mon, 23 Sep 2024 16:00:25 +0200
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
Subject: Re: [PATCH v3 5/6] PCI: qcom: Add new cfg and ops without config_sid
 callback for X1E80100
Message-ID: <20240923140025.4qhguusbhiajf3xa@thinkpad>
References: <20240923125713.3411487-1-quic_qianyu@quicinc.com>
 <20240923125713.3411487-6-quic_qianyu@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240923125713.3411487-6-quic_qianyu@quicinc.com>

On Mon, Sep 23, 2024 at 05:57:12AM -0700, Qiang Yu wrote:

No need to mention the ops/cfg in subject. It is a detail for patch description.
So use:

"PCI: qcom: Add support for X1E80100 SoC"

Also add some information about the IP capability. Like what speed/gen version
it supports, lane width etc...

> Currently the ops_1_9_0 which is being used for X1E80100 has config_sid
> callback to config BDF to SID table. However, this callback is not
> required for X1E80100 because it has smmuv3 support and BDF to SID table
> will be not present.
> 
> Hence introduce cfg_1_38_0 and ops_1_38_0 with config_sid callback being
> NULL since X1E80100 has IP version 1.38.0.
> 

I'd rewrite the last sentence as below:

"Hence add support for X1E80100 by introducing a new ops and cfg structures that
don't require the config_sid callback. This could be reused by the future
platforms based on SMMUv3."

- Mani

> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 88a98be930e3..56ba8bc72f78 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -1367,6 +1367,16 @@ static const struct qcom_pcie_ops ops_2_9_0 = {
>  	.ltssm_enable = qcom_pcie_2_3_2_ltssm_enable,
>  };
>  
> +/* Qcom IP rev.: 1.38.0 */
> +static const struct qcom_pcie_ops ops_1_38_0 = {
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
> @@ -1409,6 +1419,10 @@ static const struct qcom_pcie_cfg cfg_sc8280xp = {
>  	.no_l0s = true,
>  };
>  
> +static const struct qcom_pcie_cfg cfg_1_38_0 = {
> +	.ops = &ops_1_38_0,
> +};
> +
>  static const struct dw_pcie_ops dw_pcie_ops = {
>  	.link_up = qcom_pcie_link_up,
>  	.start_link = qcom_pcie_start_link,
> @@ -1837,7 +1851,7 @@ static const struct of_device_id qcom_pcie_match[] = {
>  	{ .compatible = "qcom,pcie-sm8450-pcie0", .data = &cfg_1_9_0 },
>  	{ .compatible = "qcom,pcie-sm8450-pcie1", .data = &cfg_1_9_0 },
>  	{ .compatible = "qcom,pcie-sm8550", .data = &cfg_1_9_0 },
> -	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_1_9_0 },
> +	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_1_38_0 },
>  	{ }
>  };
>  
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

