Return-Path: <devicetree+bounces-182497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CB549ACC921
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 16:29:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8CF89170608
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 14:29:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5C2223BCF0;
	Tue,  3 Jun 2025 14:28:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SYlzkAod"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1E61239099
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 14:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748960927; cv=none; b=GOKp0FXNJWCQ2lxbalz5Jy0oDD0apr5v0MvhHJuXm/bsbSsCOwGGEVE3akG+8E50clz6veZoJ5Fb/PFaxN8Udryz3W9iq5XEDTW6XnxcpN17lLLXfLGL48VleDAbogAF3JovV5JIk/P3S+jm3j2cp29SuOBM9gWYx9Fjn/VnWTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748960927; c=relaxed/simple;
	bh=e6WAD+Q9fgYgM9twIfuBVafvCYc3m9ocAUhLVKu4J3A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b2jBei9gy7ZAsi7XshMt0BBtV3argnvMay5Qm0iiX203iaP1GX2kMDj8J2Ncki6rHcROiq58iUtj7Rg7vvQcnukull3rqJ1/jHYAw8SCJPhYHmKDgCbcahwXYCZDNUWNnpVscHwdlh5kYmLFAjq2IT+USmGM54u0oeEwKDOAp/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SYlzkAod; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-6020ff8d51dso9852255a12.2
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 07:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748960923; x=1749565723; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7NVC+W/4cnhRBLtqaKDb7hylurSPoDltgbkfNZRJlpg=;
        b=SYlzkAod/jLmq8w1169w2zRm2C4+65/SDoTgQyO3d0DjTdAR+aRunH/fYvxWBWtCV6
         FC80ZdMb5VMDjtW9/rOS9AoYGPlWLhFnBQhb/vzuWgE3wWJJXUmn0Tx6yIrb0tOA6eBF
         +SQxBOvGoNTpqJKjwH+pjKYSxAWEKNbBWW7M0jHwa9DCSd+F4JoH9VnKJ38zG/0RZiR/
         NGlzJlKZev+D2RcHTk8579+6W7EiWHx7Pfl1fcheLZB7fMdeQRquyb+afzga+9fcSTHX
         EYfORADN+kf6tZRrPhRYt1C8Tzymt8whuCjVimJrbtdL9U8Lz7EKYi/JtQVZLvwJC5lf
         nnmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748960923; x=1749565723;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7NVC+W/4cnhRBLtqaKDb7hylurSPoDltgbkfNZRJlpg=;
        b=sviINZ9+58JPGHFPX4xPBz/ihlf4fUi1rr2c5wVEdCUwW8EzNdN8SykZz18XNCBGCK
         WE1b32YFjTRzdLDJWKQh5ycNzt/DWylyjPrVDd4E03xpVvWacnXqqU6hWvdIscbhC1e3
         zkghmT5JMGH6NPUqVTZ8/QMP4nWyVHz6qeOazGC3D7UbXxm1Kzl6xUGBbdA3rYF4wRq4
         vTzDVftROni4ykKWJ/I1ONKBlQrlROkTV+b0Z/tSg/HXmlTKv9sCw68yWf7IljboGYE+
         X+MQtH8ot+R/2bBkQagKKsiF2M+cbdsE9e/TPLgVmIb0SW8EgP2s7kYg4DED85pPM2Cw
         aATw==
X-Forwarded-Encrypted: i=1; AJvYcCV3uyTg7F334wh9z5NCZ2hcdYzXZGME2+KLg7uOsM226JpRJENWeZ2bqH6XoKZsEfIiluxxjXgqP5ym@vger.kernel.org
X-Gm-Message-State: AOJu0YxA0MOHOxzCWuZ/MECfxWgb6IS090RPcdv8VjZ2MF3Semqz7XTz
	o31VJK6fWS7WtndfQKlZWpvW1i54kMA13KXMmHN+Rysrs9eOERz7GSK2WkrOeWeGZ7rs4+iooHA
	75/e4RBY=
X-Gm-Gg: ASbGncsX4VLg1pyZE0N6FPi1Va++R4MOHscCn/7TFIvuAfhdg6hORSYKsbXlhIAUYLC
	BoULhxgwdE8QD9A9LzcS/cpuiD4eSkn/IXKOtXIJ7fNj1bKcqg4770nCVLdPC85gMVfBXCYor+h
	dqwoApADU1Ugz7+qxUEjXqqPKfFYNL/3gc6ypKfC6D4qQ2jtL0PUJKmOV2cMy9LlJ1l3xxFii24
	SonSuMlnmvomBwLl1q1nUMCLFIpeG7I+U22rKmgHwMRwZGQsWcarj8HcNlLTgCvS1Db/mCZ9iRS
	e0FyjSfEJ8OahW+UD0uCo46ZZQkJKEoTmPdThoDtDiVISJlXDqcZXqkzjrDuLBr2jPo9v6g2wIz
	uhDDtiWHRdt9iKOnS
X-Google-Smtp-Source: AGHT+IEKFABCfqGZPw1pdZkAPW/9jkRTXt6KG5zOR1VmibYZx2XavidfNIWW2YTZrnfCCg3BT43GEw==
X-Received: by 2002:a5d:65c7:0:b0:3a4:f7af:db9c with SMTP id ffacd0b85a97d-3a4f7afdbd9mr11191637f8f.59.1748960486164;
        Tue, 03 Jun 2025 07:21:26 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a5005aa64esm11349954f8f.70.2025.06.03.07.21.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jun 2025 07:21:25 -0700 (PDT)
Message-ID: <e6517c54-9163-48d1-80c2-4fd964dac349@linaro.org>
Date: Tue, 3 Jun 2025 15:21:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/8] soc: qcom: geni-se: Enable QUPs on SA8255p
 Qualcomm platforms
To: Praveen Talari <quic_ptalari@quicinc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 devicetree@vger.kernel.org
Cc: psodagud@quicinc.com, djaggi@quicinc.com, quic_msavaliy@quicinc.com,
 quic_vtanuku@quicinc.com, quic_arandive@quicinc.com,
 quic_mnaresh@quicinc.com, quic_shazhuss@quicinc.com
References: <20250506180232.1299-1-quic_ptalari@quicinc.com>
 <VgXAbpS__r4C24FLFz5nqCPgygil3nr3-oNHbL7bQxE0X1GnDStFaWlnts8iSxCeG6TCqa8mzIFqOysqIlWeJg==@protonmail.internalid>
 <20250506180232.1299-4-quic_ptalari@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250506180232.1299-4-quic_ptalari@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/05/2025 19:02, Praveen Talari wrote:
> On the sa8255p platform, resources such as clocks,interconnects
> and TLMM (GPIO) configurations are managed by firmware.
> 
> Introduce a platform data function callback to distinguish whether
> resource control is performed by firmware or directly by the driver
> in linux.
> 
> The refactor ensures clear differentiation of resource
> management mechanisms, improving maintainability and flexibility
> in handling platform-specific configurations.
> 
> Signed-off-by: Praveen Talari <quic_ptalari@quicinc.com>
> ---
> v3 -> v4
> - declared an empty struct for sa8255p and added check as num clks.
> - Added version log after ---
> 
> v1 -> v2
> - changed datatype of i from int to unsigned int as per comment.
> ---
>   drivers/soc/qcom/qcom-geni-se.c | 73 ++++++++++++++++++++-------------
>   1 file changed, 45 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/soc/qcom/qcom-geni-se.c b/drivers/soc/qcom/qcom-geni-se.c
> index 4cb959106efa..b6e90bac55fe 100644
> --- a/drivers/soc/qcom/qcom-geni-se.c
> +++ b/drivers/soc/qcom/qcom-geni-se.c
> @@ -105,6 +105,8 @@ struct geni_wrapper {
>   struct geni_se_desc {
>   	unsigned int num_clks;
>   	const char * const *clks;
> +	int (*geni_se_rsc_init)(struct geni_wrapper *wrapper,
> +				const struct geni_se_desc *desc);
>   };
> 
>   static const char * const icc_path_names[] = {"qup-core", "qup-config",
> @@ -891,10 +893,44 @@ int geni_icc_disable(struct geni_se *se)
>   }
>   EXPORT_SYMBOL_GPL(geni_icc_disable);
> 
> +static int geni_se_resource_init(struct geni_wrapper *wrapper,
> +				 const struct geni_se_desc *desc)
> +{
> +	struct device *dev = wrapper->dev;
> +	int ret;
> +	unsigned int i;
> +
> +	wrapper->num_clks = min_t(unsigned int, desc->num_clks, MAX_CLKS);

It should be an error to depend on more clocks - which are specified in 
a descriptor down the bottom of this file than MAX_CLKS allows.

> +
> +	for (i = 0; i < wrapper->num_clks; ++i)
> +		wrapper->clks[i].id = desc->clks[i];
> +
> +	ret = of_count_phandle_with_args(dev->of_node, "clocks", "#clock-cells");
> +	if (ret < 0) {
> +		dev_err(dev, "invalid clocks property at %pOF\n", dev->of_node);
> +		return ret;

return dev_err_probe();

> +	}
> +
> +	if (ret < wrapper->num_clks) {
> +		dev_err(dev, "invalid clocks count at %pOF, expected %d entries\n",
> +			dev->of_node, wrapper->num_clks);
> +		return -EINVAL;
> +	}
> +
> +	ret = devm_clk_bulk_get(dev, wrapper->num_clks, wrapper->clks);
> +	if (ret) {
> +		dev_err(dev, "Err getting clks %d\n", ret);
> +		return ret;
> +	}
> +
> +	return ret;
> +}
> +
>   static int geni_se_probe(struct platform_device *pdev)
>   {
>   	struct device *dev = &pdev->dev;
>   	struct geni_wrapper *wrapper;
> +	const struct geni_se_desc *desc;
>   	int ret;
> 
>   	wrapper = devm_kzalloc(dev, sizeof(*wrapper), GFP_KERNEL);
> @@ -906,36 +942,12 @@ static int geni_se_probe(struct platform_device *pdev)
>   	if (IS_ERR(wrapper->base))
>   		return PTR_ERR(wrapper->base);
> 
> -	if (!has_acpi_companion(&pdev->dev)) {
> -		const struct geni_se_desc *desc;
> -		int i;
> +	desc = device_get_match_data(&pdev->dev);
> 
> -		desc = device_get_match_data(&pdev->dev);
> -		if (!desc)
> +	if (!has_acpi_companion(&pdev->dev) && desc->num_clks) {

There is no desc in this file that has !num_clks I don't think the 
conjunction is justified.

> +		ret = desc->geni_se_rsc_init(wrapper, desc);
> +		if (ret)
>   			return -EINVAL;
> -
> -		wrapper->num_clks = min_t(unsigned int, desc->num_clks, MAX_CLKS);
> -
> -		for (i = 0; i < wrapper->num_clks; ++i)
> -			wrapper->clks[i].id = desc->clks[i];
> -
> -		ret = of_count_phandle_with_args(dev->of_node, "clocks", "#clock-cells");
> -		if (ret < 0) {
> -			dev_err(dev, "invalid clocks property at %pOF\n", dev->of_node);
> -			return ret;
> -		}
> -
> -		if (ret < wrapper->num_clks) {
> -			dev_err(dev, "invalid clocks count at %pOF, expected %d entries\n",
> -				dev->of_node, wrapper->num_clks);
> -			return -EINVAL;
> -		}
> -
> -		ret = devm_clk_bulk_get(dev, wrapper->num_clks, wrapper->clks);
> -		if (ret) {
> -			dev_err(dev, "Err getting clks %d\n", ret);
> -			return ret;
> -		}
>   	}
> 
>   	dev_set_drvdata(dev, wrapper);
> @@ -951,8 +963,11 @@ static const char * const qup_clks[] = {
>   static const struct geni_se_desc qup_desc = {
>   	.clks = qup_clks,
>   	.num_clks = ARRAY_SIZE(qup_clks),
> +	.geni_se_rsc_init = geni_se_resource_init,
>   };
> 
> +static const struct geni_se_desc sa8255p_qup_desc;
> +
>   static const char * const i2c_master_hub_clks[] = {
>   	"s-ahb",
>   };
> @@ -960,11 +975,13 @@ static const char * const i2c_master_hub_clks[] = {
>   static const struct geni_se_desc i2c_master_hub_desc = {
>   	.clks = i2c_master_hub_clks,
>   	.num_clks = ARRAY_SIZE(i2c_master_hub_clks),
> +	.geni_se_rsc_init = geni_se_resource_init,
>   };
> 
>   static const struct of_device_id geni_se_dt_match[] = {
>   	{ .compatible = "qcom,geni-se-qup", .data = &qup_desc },
>   	{ .compatible = "qcom,geni-se-i2c-master-hub", .data = &i2c_master_hub_desc },
> +	{ .compatible = "qcom,sa8255p-geni-se-qup", .data = &sa8255p_qup_desc },
>   	{}
>   };
>   MODULE_DEVICE_TABLE(of, geni_se_dt_match);
> --
> 2.17.1
> 
> 
Other than those minor details looks pretty good.
Please include me in v6 and I will review further.
---
bod


