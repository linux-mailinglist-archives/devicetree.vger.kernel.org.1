Return-Path: <devicetree+bounces-129546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C7EB39EBF91
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 00:46:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A6B60285806
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 23:46:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC27522C36C;
	Tue, 10 Dec 2024 23:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="W3KSfrrz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286E322C360
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 23:46:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733874398; cv=none; b=mBZlEG7TQ2NTqTyR9/pTnaOgPEayr923SDPd1cb6HE3lbO9Wc+MTK0V7zGhl92r32EEJx+aY33PYqA0ZPeAtZC3U++zV9XXC4qWr+8N7ClEmA0EJCRooUxas9vcO+6sANWQOM5oEmGm6YpTYQFEkEFQJ8tkR2+EX0IWYvPPH9lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733874398; c=relaxed/simple;
	bh=NHZtn57HZS6Yilyx2+/BrLLakb8ArmT1ewmFrl32VwI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F7l0Cl0VNnddS0oHJMlC49bSogISwinjUjteEBKLtgGAEDHaFtww/sEY0wewtR3r+2eJjCo9aj+FcC3XVm3MTlsSQi87nHA7YEFJZqdiFWiriHxRsYgQIsubT1QGB4MNS4uHMbTdrN429wmIbu4mQ7gJPMCMpXYYr4/N391htC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=W3KSfrrz; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-aa692211331so26310366b.1
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 15:46:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733874394; x=1734479194; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NplEXHZ5p1pND38luXCwrGYCymQMCNR0UaeJKC4t07Q=;
        b=W3KSfrrzuBiXFSn6jCiapQpXcSaMeYtlcSkxTvBRRh/7bCdv6zgK8e7q2509E6uuCV
         qGbBD365E+yqQDDc6kLhhmEAh4sAJZP1IP9SbWZ7EJVi7mXpjQ2QKOJEKlmAWAAmFn5n
         HtvN8tNWlPvso274vjK30x0jYxGUb5ASHFUdi9pd1CW6d7hGBsh5/h4dn9jDCrB8oLsH
         924HVf8B6B/eKU60ZgEVozjzACIl8rwuWkaM6srFcVPVaY5BBZp+tbI3pnCULkAE+zuR
         GKhFALGATxzXaD+48DgwqmQh3xo/CuYetY5Rz3bfQHl9Anze2t9lg+wS3/+49QohHLaW
         bRSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733874394; x=1734479194;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NplEXHZ5p1pND38luXCwrGYCymQMCNR0UaeJKC4t07Q=;
        b=biNF2CBHyt4A2Qb62bmAWZeVUJvCfI/ZyMhmmLQQhuwEFJ8HjKns/hll/txnR0V1wV
         beyecd+HHNx8MXz3lbY4yaIMftyTarmv08Ya6ZVFBCZ6goc1EGKkmrEsiXCKFIy0k33k
         y8PqtRMMpCfvL1KTx6EWX4woglooYEWilu+yIDJ4wqPKhyiz3aGEfpTZ8LFCZPuFjXKU
         TGCqDaMVbnsTq0hyHRkpJqjICWt0j1f6iFbNUL2hDv/+qIneO8qVeYhZuHlFd5Avmi6R
         +l0oBMnXgXiovR7v8uydABOfDB6bgzA2nLvMDeSgig5DPQ2pvwj0WaJNhuDpv9+rPqww
         y3RQ==
X-Forwarded-Encrypted: i=1; AJvYcCXRuq0JAu2HkhHggXhvQ/E59TPZmbyXJtJqIMzvbNF1e/CpFWWMY7BiOnxZCxp9Xqa7i2AeRb15Rcrv@vger.kernel.org
X-Gm-Message-State: AOJu0YxIOx4y8kwP/qiZ/s2o50zaFAxoRwvODIeCjLLeOe0hemgI9Sio
	f54j8tYprWXNsEibNa977DEX8B4BJ1SEYAgfTNuY2eU6xouXf9guOtewP3SCLAU=
X-Gm-Gg: ASbGncvgjVBJlIPdQsMfuplHElxYnT95cWWdFqJjybpe+0wssnFSPKRydz+ZWLDwEpT
	OZMFRpiW+Xh5Q9E0+5TWouSv2iVzukrKMhETXGGzfeTXbT9Ni+x5BHuDQsBOt268jMwTvI+4r4n
	Zhi6JOoSJXFWqjLoq/9+Ghul8O76KL4jxIf54o6GxmWFO9gegeWBRvEWiQvVJRlQUTkxF2z3+7y
	0RsngF6+rfzelfJ1soc/g04YcNhP3ZhLBvUEccTE1bHKmWzAgF1d95jan95r8kn6VY=
X-Google-Smtp-Source: AGHT+IHVCiSt2Wj5v8UJC5YTQOaABktJaIKXEvGcyjlRlT/nK3Er7PVf+gwNDIiNgKiPwI1bZnszxQ==
X-Received: by 2002:a17:907:9145:b0:aa6:a526:e015 with SMTP id a640c23a62f3a-aa6b174c8e3mr47415766b.32.1733874394509;
        Tue, 10 Dec 2024 15:46:34 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa68dd43cefsm338697966b.50.2024.12.10.15.46.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2024 15:46:34 -0800 (PST)
Message-ID: <814941e4-90f8-40f8-a7aa-cd8edda000e2@linaro.org>
Date: Tue, 10 Dec 2024 23:46:33 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 3/5] media: qcom: camss: add support for SDM670 camss
To: Richard Acayan <mailingradian@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
References: <20241210233534.614520-7-mailingradian@gmail.com>
 <20241210233534.614520-10-mailingradian@gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241210233534.614520-10-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/12/2024 23:35, Richard Acayan wrote:
> The camera subsystem for the SDM670 the same as on SDM845 except with
> 3 CSIPHY ports instead of 4. Add support for the SDM670 camera
> subsystem.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Acked-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   drivers/media/platform/qcom/camss/camss.c | 191 ++++++++++++++++++++++
>   1 file changed, 191 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 9fb31f4c18ad..389b49606be0 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -738,6 +738,185 @@ static const struct camss_subdev_resources vfe_res_660[] = {
>   	}
>   };
>   
> +static const struct camss_subdev_resources csiphy_res_670[] = {
> +	/* CSIPHY0 */
> +	{
> +		.regulators = {},

> +	/* CSID0 */
> +	{
> +		.regulators = { "vdda-phy", "vdda-pll" },

Please move these regulators into the CSIPHY declaration.

https://lore.kernel.org/linux-arm-msm/20241206191900.2545069-4-quic_vikramsa@quicinc.com

> +		.clock = { "cpas_ahb", "soc_ahb", "vfe0",
> +				"vfe0_cphy_rx", "csi0" },
> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 100000000, 320000000, 404000000, 480000000, 600000000 },
> +				{ 384000000 },
> +				{ 19200000, 75000000, 384000000, 538666667 } },
> +		.reg = { "csid0" },
> +		.interrupt = { "csid0" },
> +		.csid = {
> +			.hw_ops = &csid_ops_gen2,
> +			.parent_dev_ops = &vfe_parent_dev_ops,
> +			.formats = &csid_formats_gen2
> +		}
> +	},
> +
> +	/* CSID1 */
> +	{
> +		.regulators = { "vdda-phy", "vdda-pll" },
> +		.clock = { "cpas_ahb", "soc_ahb", "vfe1",
> +				"vfe1_cphy_rx", "csi1" },
> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 100000000, 320000000, 404000000, 480000000, 600000000 },
> +				{ 384000000 },
> +				{ 19200000, 75000000, 384000000, 538666667 } },
> +		.reg = { "csid1" },
> +		.interrupt = { "csid1" },
> +		.csid = {
> +			.hw_ops = &csid_ops_gen2,
> +			.parent_dev_ops = &vfe_parent_dev_ops,
> +			.formats = &csid_formats_gen2
> +		}
> +	},
> +
> +	/* CSID2 */
> +	{
> +		.regulators = { "vdda-phy", "vdda-pll" },
> +		.clock = { "cpas_ahb", "soc_ahb", "vfe_lite",
> +				"vfe_lite_cphy_rx", "csi2" },
> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 100000000, 320000000, 404000000, 480000000, 600000000 },
> +				{ 384000000 },
> +				{ 19200000, 75000000, 384000000, 538666667 } },
> +		.reg = { "csid2" },
> +		.interrupt = { "csid2" },
> +		.csid = {
> +			.is_lite = true,
> +			.hw_ops = &csid_ops_gen2,
> +			.parent_dev_ops = &vfe_parent_dev_ops,
> +			.formats = &csid_formats_gen2
> +		}
> +	}
> +};
> +
> +static const struct camss_subdev_resources vfe_res_670[] = {
> +	/* VFE0 */
> +	{
> +		.regulators = {},
> +		.clock = { "camnoc_axi", "cpas_ahb", "soc_ahb",
> +				"vfe0", "vfe0_axi" },
> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 0 },
> +				{ 100000000, 320000000, 404000000, 480000000, 600000000 },
> +				{ 0 } },
> +		.reg = { "vfe0" },
> +		.interrupt = { "vfe0" },
> +		.vfe = {
> +			.line_num = 4,
> +			.has_pd = true,
> +			.pd_name = "ife0",
> +			.hw_ops = &vfe_ops_170,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +
> +	/* VFE1 */
> +	{
> +		.regulators = {},
> +		.clock = { "camnoc_axi", "cpas_ahb", "soc_ahb",
> +				"vfe1", "vfe1_axi" },
> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 0 },
> +				{ 100000000, 320000000, 404000000, 480000000, 600000000 },
> +				{ 0 } },
> +		.reg = { "vfe1" },
> +		.interrupt = { "vfe1" },
> +		.vfe = {
> +			.line_num = 4,
> +			.has_pd = true,
> +			.pd_name = "ife1",
> +			.hw_ops = &vfe_ops_170,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +
> +	/* VFE-lite */
> +	{
> +		.regulators = {},
> +		.clock = { "camnoc_axi", "cpas_ahb", "soc_ahb",
> +				"vfe_lite" },
> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 0 },
> +				{ 100000000, 320000000, 404000000, 480000000, 600000000 } },
> +		.reg = { "vfe_lite" },
> +		.interrupt = { "vfe_lite" },
> +		.vfe = {
> +			.is_lite = true,
> +			.line_num = 4,
> +			.hw_ops = &vfe_ops_170,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	}
> +};
> +
>   static const struct camss_subdev_resources csiphy_res_845[] = {
>   	/* CSIPHY0 */
>   	{
> @@ -2582,6 +2761,17 @@ static const struct camss_resources sdm660_resources = {
>   	.link_entities = camss_link_entities
>   };
>   
> +static const struct camss_resources sdm670_resources = {
> +	.version = CAMSS_845,
> +	.csiphy_res = csiphy_res_670,
> +	.csid_res = csid_res_670,
> +	.vfe_res = vfe_res_670,
> +	.csiphy_num = ARRAY_SIZE(csiphy_res_670),
> +	.csid_num = ARRAY_SIZE(csid_res_670),
> +	.vfe_num = ARRAY_SIZE(vfe_res_670),
> +	.link_entities = camss_link_entities
> +};
> +
>   static const struct camss_resources sdm845_resources = {
>   	.version = CAMSS_845,
>   	.csiphy_res = csiphy_res_845,
> @@ -2627,6 +2817,7 @@ static const struct of_device_id camss_dt_match[] = {
>   	{ .compatible = "qcom,msm8953-camss", .data = &msm8953_resources },
>   	{ .compatible = "qcom,msm8996-camss", .data = &msm8996_resources },
>   	{ .compatible = "qcom,sdm660-camss", .data = &sdm660_resources },
> +	{ .compatible = "qcom,sdm670-camss", .data = &sdm670_resources },
>   	{ .compatible = "qcom,sdm845-camss", .data = &sdm845_resources },
>   	{ .compatible = "qcom,sm8250-camss", .data = &sm8250_resources },
>   	{ .compatible = "qcom,sc8280xp-camss", .data = &sc8280xp_resources },

Otherwise LGTM.

---
bod


