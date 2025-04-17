Return-Path: <devicetree+bounces-168319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 76648A92206
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 17:55:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D15233BB1EA
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 15:54:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E776253F0E;
	Thu, 17 Apr 2025 15:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ze1Zd0cU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3F4253956
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 15:54:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744905297; cv=none; b=ESEfapovYRBwG9WlqDKnOSayQ4SCnM9wAPNVcNgm7R/aFBp8NH8KKYFhHAZDaJYtjrRzGlqScDa4VAvsjcYk7ZVYvk1Mg9tYJGkP9KQeoZPHQYAAJBKrLl02kYzbPMEni/mMQRCnhhizCVKQyqneOEtpwOSwsdZH9VfKfA7DvkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744905297; c=relaxed/simple;
	bh=nHZrCz9akFHlCIFdx66QtHtncxrWD/8cvAhYpXo+NBA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=muhEVXpLndQLdPoQYy3/X7XDHOTLCgzV7OBT53d9MZTMRukRAkao5dlwpipECmErdnNo88z7R17hq+cXcgFG03Vgt/0i9NVmV2i8snN44UOC5MF8Bl/8qbvqrZqwHT4gjdmz9Uoy/CXjNMTWpmUzCdM8BBJXiUn00kTaiCo+71I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ze1Zd0cU; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-39c1ef4acf2so683121f8f.0
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 08:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744905294; x=1745510094; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MSLHvaFw2DRa3fH554bjvclRzcoZA4ph7yB8LR72x7U=;
        b=ze1Zd0cUizglIxEQnAqiMqS2k2svRmW8QP/m1ptiLX5FbPTXiLHhFmjLK1Bk0pbxP2
         GvykRshLrMquJnOdlmvOx+ssQ7f/Yja5MzYkTA/fDaFoLtk5+0FxW26RpNHvYQEA6F/h
         yTN+SvKusH/sWKquREXIdhJBdGIhFFFIZMsGv+hjNrdXIUESKB5FoC3EVHCgj+rCLT3m
         fzVx/IPkKX5lZxSZ+6NjPFWFPMciSmLIntG1axAyAe/KSRPGAeD7Y/1BBA1wRhmuA20K
         jNDciZ0os/Fo0KnawZqQhGc2b5i3FneNjfiFw/ruUQEcT9cGu/t8C96DO2Ft3nfAzYx3
         BlOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744905294; x=1745510094;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MSLHvaFw2DRa3fH554bjvclRzcoZA4ph7yB8LR72x7U=;
        b=bfn1/kMnGr4JuwNYoVvhVaDuH96CLBThLiWKxBjeFhN2Qg+Ha9QambNIFy43mJQ9dR
         GQZHh28kHhWBht0RnleHMi+1MInzXTcVLl52dH6uISsDcU5OEvUQBjyfsK6f/ogThECT
         Rz7nb+1mLvWQLUJEZb8/ZyC8JDIQoMviljyRdnqwixxnfWa9Xdpz71HpuP+LcfZpmfgb
         CIXfgrh2WXDmcW7s0qKFomkGm4lZWKF2Al0KBzKkqEPOi36gxVVXDrRUyBxR/RgwLm8K
         kIPRWpwmwX7Ndf/XJi/vwKuwW/08X8hfDAftk9NjvDNfYq8RRpm2A+dScfHVbH54VvMO
         YpCQ==
X-Forwarded-Encrypted: i=1; AJvYcCU0Jw2wO2o0GTjIQeFoUksVq0N+xq5rrgdahBtV60hohfEqHiI7X4X60sZoIuwZZBXn8nWtW8PVQnyD@vger.kernel.org
X-Gm-Message-State: AOJu0YzY6hnYokwfjmeCRUuiudnsYPa8ql6gv6IkUK7qCctSOzaTaDFo
	uC4hvsBfquPz+SeVt58qJ/KfQceJeBtY6dpr3Iian3beX29A6sXzX8gT6bfBmeQ=
X-Gm-Gg: ASbGncvOjft65un2kWAkcMLIkL6FY6GLQvrGYxqKgDCcVLGwX4/Dv37nzEKmT/D9wIJ
	JJiBtFew4Ue8LjMaRuEJ/Occ/iWbgFQJOyx4FDRATqLWNArQIo9ofN5XyFqe8V/oRfN+OvNB98T
	AFbdM5nId8ytDaEMEhQ+UOBwdukYiIGoXxLDC/t7+V/6vokCcAHMQ8Q6kyJMHGFNBACUMxxlMC7
	XpbVFvCgHITg/1iaUFaLidaUuVFgidGOQYLYofZO/hO2lItzL6QP5K+dLj9PyMgEXyJzUdSKoCm
	I1lA5612ipMtSxaX3xLAX3TYklEVt1bsWjkXe3+0uKUhOhC9eIBZ81Gyh8AmzclHGfd5p4crzCF
	QWexAJw==
X-Google-Smtp-Source: AGHT+IGKxnMZfwmukS5HJCKimHmgf0Yg2NDusgp3aioXu5//fJC3sTn74w9D+xbPlBsMQ2VtPVdrIA==
X-Received: by 2002:a05:6000:2209:b0:391:40b8:e890 with SMTP id ffacd0b85a97d-39ee5b1a81bmr5402489f8f.22.1744905293764;
        Thu, 17 Apr 2025 08:54:53 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eae96c03dsm20243985f8f.24.2025.04.17.08.54.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Apr 2025 08:54:53 -0700 (PDT)
Message-ID: <ec212a39-d2d0-4141-8032-489046715082@linaro.org>
Date: Thu, 17 Apr 2025 16:54:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/6] media: qcom: camss: add support for QCM2290 camss
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, rfoss@kernel.org,
 konradybcio@kernel.org, andersson@kernel.org, krzk+dt@kernel.org,
 robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, dmitry.baryshkov@oss.qualcomm.com
References: <20250417145819.626733-1-loic.poulain@oss.qualcomm.com>
 <20250417145819.626733-5-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250417145819.626733-5-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/04/2025 15:58, Loic Poulain wrote:
> The camera subsystem for QCM2290 which is based on Spectra 340.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
>   drivers/media/platform/qcom/camss/camss-vfe.c |   2 +
>   drivers/media/platform/qcom/camss/camss.c     | 148 ++++++++++++++++++
>   2 files changed, 150 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
> index 4bca6c3abaff..c575c9767492 100644
> --- a/drivers/media/platform/qcom/camss/camss-vfe.c
> +++ b/drivers/media/platform/qcom/camss/camss-vfe.c
> @@ -340,6 +340,7 @@ static u32 vfe_src_pad_code(struct vfe_line *line, u32 sink_code,
>   		}
>   		break;
>   	case CAMSS_660:
> +	case CAMSS_2290:
>   	case CAMSS_7280:
>   	case CAMSS_8x96:
>   	case CAMSS_8250:
> @@ -1969,6 +1970,7 @@ static int vfe_bpl_align(struct vfe_device *vfe)
>   	int ret = 8;
>   
>   	switch (vfe->camss->res->version) {
> +	case CAMSS_2290:
>   	case CAMSS_7280:
>   	case CAMSS_8250:
>   	case CAMSS_8280XP:
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 06f42875702f..64f263b8065c 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -515,6 +515,140 @@ static const struct camss_subdev_resources vfe_res_8x96[] = {
>   	}
>   };
>   
> +static const struct camss_subdev_resources csiphy_res_2290[] = {
> +	/* CSIPHY0 */
> +	{
> +		.regulators = { "vdda-phy", "vdda-pll" },
> +		.clock = { "top_ahb", "ahb", "csiphy0", "csiphy0_timer" },
> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 240000000, 341330000, 384000000 },
> +				{ 100000000, 200000000, 268800000 }  },
> +		.reg = { "csiphy0" },
> +		.interrupt = { "csiphy0" },
> +		.csiphy = {
> +			.id = 0,
> +			.hw_ops = &csiphy_ops_3ph_1_0,
> +			.formats = &csiphy_formats_sdm845
> +		}
> +	},
> +
> +	/* CSIPHY1 */
> +	{
> +		.regulators = { "vdda-phy", "vdda-pll" },
> +		.clock = { "top_ahb", "ahb", "csiphy1", "csiphy1_timer" },
> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 240000000, 341330000, 384000000 },
> +				{ 100000000, 200000000, 268800000 }  },
> +		.reg = { "csiphy1" },
> +		.interrupt = { "csiphy1" },
> +		.csiphy = {
> +			.id = 1,
> +			.hw_ops = &csiphy_ops_3ph_1_0,
> +			.formats = &csiphy_formats_sdm845
> +		}
> +	}
> +};
> +
> +static const struct camss_subdev_resources csid_res_2290[] = {
> +	/* CSID0 */
> +	{
> +		.regulators = {},
> +		.clock = { "top_ahb", "ahb", "csi0", "vfe0_cphy_rx", "vfe0" },
> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 192000000, 240000000, 384000000, 426400000 },
> +				{ 0 },
> +				{ 0 } },
> +		.reg = { "csid0" },
> +		.interrupt = { "csid0" },
> +		.csid = {
> +			.hw_ops = &csid_ops_340,
> +			.parent_dev_ops = &vfe_parent_dev_ops,
> +			.formats = &csid_formats_gen2
> +		}
> +	},
> +
> +	/* CSID1 */
> +	{
> +		.regulators = {},
> +		.clock = { "top_ahb", "ahb", "csi1", "vfe1_cphy_rx", "vfe1" },
> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 192000000, 240000000, 384000000, 426400000 },
> +				{ 0 },
> +				{ 0 } },
> +		.reg = { "csid1" },
> +		.interrupt = { "csid1" },
> +		.csid = {
> +			.hw_ops = &csid_ops_340,
> +			.parent_dev_ops = &vfe_parent_dev_ops,
> +			.formats = &csid_formats_gen2
> +		}
> +	}
> +};
> +
> +static const struct camss_subdev_resources vfe_res_2290[] = {
> +	/* VFE0 */
> +	{
> +		.regulators = {},
> +		.clock = { "top_ahb", "ahb", "axi", "vfe0", "camnoc_rt_axi", "camnoc_nrt_axi" },
> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 0 },
> +				{ 19200000, 153600000, 192000000, 256000000, 384000000, 460800000 },
> +				{ 0 },
> +				{ 0 }, },
> +		.reg = { "vfe0" },
> +		.interrupt = { "vfe0" },
> +		.vfe = {
> +			.line_num = 4,
> +			.hw_ops = &vfe_ops_340,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +
> +	/* VFE1 */
> +	{
> +		.regulators = {},
> +		.clock = { "top_ahb", "ahb", "axi", "vfe1", "camnoc_rt_axi", "camnoc_nrt_axi" },
> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 0 },
> +				{ 19200000, 153600000, 192000000, 256000000, 384000000, 460800000 },
> +				{ 0 },
> +				{ 0 }, },
> +		.reg = { "vfe1" },
> +		.interrupt = { "vfe1" },
> +		.vfe = {
> +			.line_num = 4,
> +			.hw_ops = &vfe_ops_340,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +};
> +
> +static const struct resources_icc icc_res_2290[] = {
> +	{
> +		.name = "ahb",
> +		.icc_bw_tbl.avg = 150000,
> +		.icc_bw_tbl.peak = 300000,
> +	},
> +	{
> +		.name = "hf_mnoc",
> +		.icc_bw_tbl.avg = 2097152,
> +		.icc_bw_tbl.peak = 3000000,
> +	},
> +	{
> +		.name = "sf_mnoc",
> +		.icc_bw_tbl.avg = 2097152,
> +		.icc_bw_tbl.peak = 3000000,
> +	},
> +};
> +
>   static const struct camss_subdev_resources csiphy_res_660[] = {
>   	/* CSIPHY0 */
>   	{
> @@ -3753,6 +3887,19 @@ static const struct camss_resources msm8996_resources = {
>   	.link_entities = camss_link_entities
>   };
>   
> +static const struct camss_resources qcm2290_resources = {
> +	.version = CAMSS_2290,
> +	.csiphy_res = csiphy_res_2290,
> +	.csid_res = csid_res_2290,
> +	.vfe_res = vfe_res_2290,
> +	.icc_res = icc_res_2290,
> +	.icc_path_num = ARRAY_SIZE(icc_res_2290),
> +	.csiphy_num = ARRAY_SIZE(csiphy_res_2290),
> +	.csid_num = ARRAY_SIZE(csid_res_2290),
> +	.vfe_num = ARRAY_SIZE(vfe_res_2290),
> +	.link_entities = camss_link_entities
> +};
> +
>   static const struct camss_resources sdm660_resources = {
>   	.version = CAMSS_660,
>   	.csiphy_res = csiphy_res_660,
> @@ -3865,6 +4012,7 @@ static const struct of_device_id camss_dt_match[] = {
>   	{ .compatible = "qcom,msm8916-camss", .data = &msm8916_resources },
>   	{ .compatible = "qcom,msm8953-camss", .data = &msm8953_resources },
>   	{ .compatible = "qcom,msm8996-camss", .data = &msm8996_resources },
> +	{ .compatible = "qcom,qcm2290-camss", .data = &qcm2290_resources },
>   	{ .compatible = "qcom,sc7280-camss", .data = &sc7280_resources },
>   	{ .compatible = "qcom,sc8280xp-camss", .data = &sc8280xp_resources },
>   	{ .compatible = "qcom,sdm660-camss", .data = &sdm660_resources },

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

