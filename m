Return-Path: <devicetree+bounces-145855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5366EA32A28
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 16:34:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F2C00188EA84
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 15:30:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92B6421A424;
	Wed, 12 Feb 2025 15:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Br9d8BDG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 804E12144AC
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 15:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739374200; cv=none; b=OuPQt2FgIBChscvGFhPAfuSxPAP6qPKwvgEEXACaISPrDp3f/WmweWEGoRY351QCrXRsndFyyMUvSRQBuU2riMcZTwSHuUc71Jvyf4xhqywBB/ByjOzCDsibDTCSR+pVHzkpk/2S4NHF+JcHiK+RXr+Jx8CtP2vGWJ4Tr5ayCw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739374200; c=relaxed/simple;
	bh=HoQBBj3++E9+My0TAo+2Mo6TO9ByQnaMfZrK9weOhQs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OmN5Kwdk+J8YsvZO79aCgcEEL49iBuQPyOAcfGSsJLQf6LPeWj6eJkAMJIh+vcEncLB9Lo62dm7z/i36+tILpIVRlqrbBucPXK9HA48MMcVCgGa9pXck0P815z84+nEgpT6RmI4MyKHdgYKSITK+oAkXvITm//JBsacXtoXv4Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Br9d8BDG; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4395a917f33so4935045e9.1
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 07:29:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739374196; x=1739978996; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bweCfrHSF4ZtIDowNU7vOYDvCZZ4Q1/RG4GPAIRxK8k=;
        b=Br9d8BDG78MqPIbahmIpypaCdhCEoyxksZyAen0LDqjD49ZuCZ0mpuhhl73T4cIevk
         3AGwiVLvBdg8yRqpNOf81eDVwwRDHNK61o2gD/LG1tB/h00ZRRP2pRbjF6VJnSN0iVJD
         jRCL2zL/qABJClnuGmZLbeJa7+n1k8FdN7aldPmCJ2xeiqjRd2l/BndIxrze9Yxbc3ql
         JlSQWqdEBmCI6EeGO7aaHfthD7Tw2FAoayLU+ZVjrTpKbTkY7228WcvbQnRoSB+KBzdJ
         uZgZZoPW5J8DlYKcO1mDIuTrhMdzO6renOl3br4lfCpZVKdJq+gX/yJpCe2jqcHiy9sE
         2ccw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739374196; x=1739978996;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bweCfrHSF4ZtIDowNU7vOYDvCZZ4Q1/RG4GPAIRxK8k=;
        b=xAlxZys0guRiAtbGjpVe86yK96nUljvo79/CEqHNDMzpCkzCVixlCKcjI+PgBEsuHY
         WtjmkjpksuFNZBC+ks926o85pe+cowYIJPf4GDTV/2bAFq8aBSg79lJ9xDTlP5J0POxR
         uMwbRJRdMqoRpSPcBCsqnIWIXDh1PqoyBbH1tHiReCfei1Rj91QRNWA676HXVy5G+5VV
         ek0DQ8cXsxcMACSQk7HjLD34BGnpe68X2RAQQiwRGf0bRmhOppRPB9RslACnZ+cyBcjP
         8u2FtMbE5a2++jA3WfSegkOSfdduppnhvR3tycFrwXHaMYndj0/TEF8m3uhZ1rytueZ7
         DPyA==
X-Forwarded-Encrypted: i=1; AJvYcCUQmcb0W37qp3N5dWo4RpOspzR8Nb6UZRC2mz2jlxZtD7shWYI2jInUFf8d7A3egPTMnFqczDlyFcuG@vger.kernel.org
X-Gm-Message-State: AOJu0YzgaHpmWb8Y1ypLaHzk7fitiyMVdSiUj36a68KBXoqvtTe1OsrV
	yAaf+5qTknugAKcCflCZLjlgIW+m/vfcaCO1CnS811w+hBs9a69LBG501HhmuQs=
X-Gm-Gg: ASbGncuX5ZVFg8iR3jysqVMZv3KZ1nIEKjIxHjv+AQhWJacd+qjavO1WH4hy4kE80qo
	kUI/TwsMd9gV0ZEAy+fux59oSUmKUnj++0Jz3MEYtPlOK5zGTjaQIOAq0pxgBtk0aJbU5SVbmQW
	FNbzzHehJ8jqll1JuijUI/AuX1hAgTHK4r9udZbmcjcwWSjDZrLRn7M60ACaJ7NqLq76p+jVxly
	x4SLij5vIviv20VNYD5Q8k73mdBdr/ottpyQ9srtScPTE0+6pFVKwLak+3LBrivBFmBHY6xG8TB
	HOcsqmcYttG/Xw/gzcSGsfGVSuvICXFep5vZWD+WwxvLRMoWczKtLa72GmZIAhM/u5XGSA==
X-Google-Smtp-Source: AGHT+IExBFd4nPcaRPvLsr3fKD5JfXaYgQR3Tkp9jcX9QNgCtUfi7m3Zd5l5F1hPifPhlPcl+VYyjg==
X-Received: by 2002:a05:6000:1787:b0:38d:d5bf:5189 with SMTP id ffacd0b85a97d-38de43a5be6mr6909209f8f.16.1739374196586;
        Wed, 12 Feb 2025 07:29:56 -0800 (PST)
Received: from ?IPV6:2a0a:ef40:1d11:ab01:416b:3913:893e:bb4? ([2a0a:ef40:1d11:ab01:416b:3913:893e:bb4])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dcd21fe18sm14693591f8f.91.2025.02.12.07.29.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2025 07:29:55 -0800 (PST)
Message-ID: <fcf907a5-9fb7-4988-a30a-a555740ca817@linaro.org>
Date: Wed, 12 Feb 2025 15:29:54 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] regulator: qcom_usb_vbus: Add support for PMI8998
 VBUS
To: "James A. MacInnes" <james.a.macinnes@gmail.com>,
 linux-arm-msm@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 andersson@kernel.org, konradybcio@kernel.org, quic_wcheng@quicinc.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 lgirdwood@gmail.com, broonie@kernel.org
References: <20250212010744.2554574-1-james.a.macinnes@gmail.com>
 <20250212010744.2554574-3-james.a.macinnes@gmail.com>
Content-Language: en-US
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <20250212010744.2554574-3-james.a.macinnes@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi James,

On 2/12/25 01:07, James A. MacInnes wrote:
> This patch extends the Qualcomm USB VBUS regulator driver to support
> PMI8998 PMIC alongside the existing support for PM8150B.

Thanks for the patch!
> 
> Key changes:
> - Added current limit tables specific to PMI8998.

I also played around with vbus on PMI8998 before for type-c support 
(unfortunately didn't make it's way to the lists yet...) and I needed 
some additional changes for this to work correctly. I found that it was 
possible for the overcurrent protection to be hit if the type-c port 
manager allowed the peripheral to pull current too early, and it's 
necessary to allow 2.5ms enable time.

PM8150b doesn't have these limitations (and supports the instant power 
role switch feature that's part of the type-c PD spec, allowing the 
power role to be switched without either side losing power e.g. when you 
unplug the power supply from a dock), hence it's only necessary for PMI8998.

I would suggest implementing a proper .is_enabled op to poll the status 
register for OTG_STATE_ENABLED and configuring 
qcom_usb_vbus_rdesc.enable_time = 250000;

Kind regards,

> - Dynamically configure the VBUS regulator based on the PMIC type.
> - Updated debug messages to reflect successful initialization for
>    supported PMICs.
> - Changed registration log message
> 
> These changes ensure proper VBUS current limit configuration and
> compatibility across multiple Qualcomm PMICs.
> 
> Signed-off-by: James A. MacInnes <james.a.macinnes@gmail.com>
> ---
>   drivers/regulator/qcom_usb_vbus-regulator.c | 38 ++++++++++++++++++---
>   1 file changed, 33 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/regulator/qcom_usb_vbus-regulator.c b/drivers/regulator/qcom_usb_vbus-regulator.c
> index cd94ed67621f..804dd1a9e057 100644
> --- a/drivers/regulator/qcom_usb_vbus-regulator.c
> +++ b/drivers/regulator/qcom_usb_vbus-regulator.c
> @@ -20,10 +20,30 @@
>   #define OTG_CFG				0x53
>   #define OTG_EN_SRC_CFG			BIT(1)
>   
> -static const unsigned int curr_table[] = {
> +struct msm_vbus_desc {
> +	const unsigned int *curr_table;
> +	unsigned int n_current_limits;
> +};
> +
> +static const unsigned int curr_table_pm8150b[] = {
>   	500000, 1000000, 1500000, 2000000, 2500000, 3000000,
>   };
>   
> +static const unsigned int curr_table_pmi8998[] = {
> +	250000, 500000, 750000, 1000000,
> +	1250000, 1500000, 1750000, 2000000,
> +};
> +
> +static const struct msm_vbus_desc msm_vbus_desc_pm8150b = {
> +	.curr_table = curr_table_pm8150b,
> +	.n_current_limits = ARRAY_SIZE(curr_table_pm8150b),
> +};
> +
> +static const struct msm_vbus_desc msm_vbus_desc_pmi8998 = {
> +	.curr_table = curr_table_pmi8998,
> +	.n_current_limits = ARRAY_SIZE(curr_table_pmi8998),
> +};
> +
>   static const struct regulator_ops qcom_usb_vbus_reg_ops = {
>   	.enable = regulator_enable_regmap,
>   	.disable = regulator_disable_regmap,
> @@ -37,8 +57,6 @@ static struct regulator_desc qcom_usb_vbus_rdesc = {
>   	.ops = &qcom_usb_vbus_reg_ops,
>   	.owner = THIS_MODULE,
>   	.type = REGULATOR_VOLTAGE,
> -	.curr_table = curr_table,
> -	.n_current_limits = ARRAY_SIZE(curr_table),
>   };
>   
>   static int qcom_usb_vbus_regulator_probe(struct platform_device *pdev)
> @@ -48,6 +66,7 @@ static int qcom_usb_vbus_regulator_probe(struct platform_device *pdev)
>   	struct regmap *regmap;
>   	struct regulator_config config = { };
>   	struct regulator_init_data *init_data;
> +	const struct msm_vbus_desc *quirks;
>   	int ret;
>   	u32 base;
>   
> @@ -68,6 +87,12 @@ static int qcom_usb_vbus_regulator_probe(struct platform_device *pdev)
>   	if (!init_data)
>   		return -ENOMEM;
>   
> +	quirks = of_device_get_match_data(dev);
> +	if (!quirks)
> +		return -ENODEV;
> +
> +	qcom_usb_vbus_rdesc.curr_table = quirks->curr_table;
> +	qcom_usb_vbus_rdesc.n_current_limits = quirks->n_current_limits;
>   	qcom_usb_vbus_rdesc.enable_reg = base + CMD_OTG;
>   	qcom_usb_vbus_rdesc.enable_mask = OTG_EN;
>   	qcom_usb_vbus_rdesc.csel_reg = base + OTG_CURRENT_LIMIT_CFG;
> @@ -80,18 +105,21 @@ static int qcom_usb_vbus_regulator_probe(struct platform_device *pdev)
>   	rdev = devm_regulator_register(dev, &qcom_usb_vbus_rdesc, &config);
>   	if (IS_ERR(rdev)) {
>   		ret = PTR_ERR(rdev);
> -		dev_err(dev, "not able to register vbus reg %d\n", ret);
> +		dev_err(dev, "Failed to register vbus reg %d\n", ret);
>   		return ret;
>   	}
>   
>   	/* Disable HW logic for VBUS enable */
>   	regmap_update_bits(regmap, base + OTG_CFG, OTG_EN_SRC_CFG, 0);
>   
> +	dev_dbg(dev, "Registered QCOM VBUS regulator\n");
> +
>   	return 0;
>   }
>   
>   static const struct of_device_id qcom_usb_vbus_regulator_match[] = {
> -	{ .compatible = "qcom,pm8150b-vbus-reg" },
> +	{ .compatible = "qcom,pm8150b-vbus-reg", .data = &msm_vbus_desc_pm8150b },
> +	{ .compatible = "qcom,pmi8998-vbus-reg", .data = &msm_vbus_desc_pmi8998 },
>   	{ }
>   };
>   MODULE_DEVICE_TABLE(of, qcom_usb_vbus_regulator_match);

-- 
Caleb (they/them)


