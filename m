Return-Path: <devicetree+bounces-145552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BB9A31A02
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 00:55:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0A1C3A245E
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 23:55:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BEC2271818;
	Tue, 11 Feb 2025 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dS82vaaX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F6527180E
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 23:55:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739318152; cv=none; b=NC3dPETkA+lLGvhb/ahCYGMBeskJGo6xtEIYM1mTeOoTFrfmAs8qCnUmKYAPLg4SAjZZ1qDn9y+9akvTmDg5xa2hrYpWfiNhHx38rKRtbK78aWM7aba3tgyPpQe0ro7cL0JcSBzH1S5VLcDjxtwAHCD570YsIYpA15F+l+JD1rM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739318152; c=relaxed/simple;
	bh=zn/MEiaeMkqS+6/kfEldZQ8JkX+t51eC6E+hsKs0h2o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ndBpeZiT8NqqvETVpTz2G0wwZx+iMI+5fI8ccUmJB9erIxAUt7gvkfds9H+gxa+PKJ2S8eJRg/nFQfNDq8otwyYhSaeH9NDjU7b4R+86AgV8A8d4gtRaXZBxowEnB560Hj5pAzIhZIik6utXxYbPfU1A+WcxhQP2+BXbjpsgXNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dS82vaaX; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4394820123dso16373585e9.2
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 15:55:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739318149; x=1739922949; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XexwhaJfLPqQn5rqo8bd5EO9HVDdHe/LGV/GV+wRqWQ=;
        b=dS82vaaXtKVfgnmhxVcCcBboTBRAHZY+g/eYdygtNtAV4IPtKlr5gGtgUf9XocHiVe
         RMv6CHVhodW7VV9Ry+ri3ZQdS2gJ943Vom3FnWn+eGEEafCWikvZDijtOOVYOEfmm2k7
         onSzVTqOGw/4Zobmb6SO0dSeQq+9ruw4mJLBie4ey5gHvletRuvqH7h2TiOP5Unp7DaA
         uq1idplKGBwgBhydneJenQHp+CMSt6ANXOHZQsDgdN4FpHzKF1Q1UBLD0+CmHIZdBkNy
         LeaxJmBEgyhR6++A/YMF1gTUskD2YcgVhLKzR1K+6rblvvC+4sGYzI9zuj+mM41cn9F2
         DvRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739318149; x=1739922949;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XexwhaJfLPqQn5rqo8bd5EO9HVDdHe/LGV/GV+wRqWQ=;
        b=A1bNIrhrOI7b2tv7VAtf6Jm9Ido+bi7ApWQaWqXf6CZlC3N6+yR51uuAVMGvYwy20p
         J9VLxs9XWBfrqaUNHIblHozC4YY0SVZ59QYbkIpejdC5n6KVhj03qCEY9hwb5Z+L46JK
         8PNAAqtn76JmgBGI5IGrrncLiEcivGTnaTLapPC7N8BDnuiNX+aciYpYvi1sA156o3bx
         UG8YdJlArCn6sZ+m455NgmH1YUAP1dETuVBMZ7s1NE9obkUp9nUBGnWNa97EJtuaGHzf
         ETnK2mQFz+R53pHjrFFcDHJzUKAI5teWkGF6tVddo7C5Zh/86e0p8/+M5y28L5+f8W5Q
         908w==
X-Forwarded-Encrypted: i=1; AJvYcCWORejgVA+hJ2ZU1jXvnCF6QmC/JzHhPUNWq7tJXKiHJESZTNA04Yb1kQA59ZLjbScDkMcECIS9x88v@vger.kernel.org
X-Gm-Message-State: AOJu0YyicoNWf0Yy8Fxtv3M2vIuznqjCgkbASQAyAuWRliqdgCAM7jAE
	vu25aB4LD+9DHZjvOHOnMxMY34+/AajS3ZJka6l0O0/8B5WCCkrlFopIhfMG2BE=
X-Gm-Gg: ASbGncvKDG2jHFi2C882jm/7h4ot/Ks+uCB+5lghwH59BDTddRHVHMAnyh6j+vke7vh
	Ew6I+LMIloffTZDjLGgb/2rV9c69gpqENTbZVxhUqz4jOkJiAdZSfM11p4dcQQwgkqesXQB7aJb
	be8ToVr5J5iACcDOUk9ZllEt65WJrmiwZ4V7jtE8ejf0INP2FabsoNe7Rws7W7n75SbFc1U98nc
	8yVH4JkRynNFDC0m4ZP8O31iBSleq3GWIRayCTsxbWcjx19Lxe1Jjod2EGG3IxpbSXipuaw2diu
	lcQvPDSyFJ6TKuqEb8RaGPeTr5rHuGzBz0lXbmmAJjI4wmS4tOxfL4opMw==
X-Google-Smtp-Source: AGHT+IFLEnmaQXwA+RH1booCyaG9+or+G+muqfT8GCpoI2uuGUFMyD0LCVE1muL7WO/wlnwcoEr3/Q==
X-Received: by 2002:a05:600c:1d9a:b0:439:4a2a:f318 with SMTP id 5b1f17b1804b1-439581c17f3mr8639005e9.28.1739318149510;
        Tue, 11 Feb 2025 15:55:49 -0800 (PST)
Received: from [192.168.0.156] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4395a04cda4sm2862615e9.1.2025.02.11.15.55.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2025 15:55:49 -0800 (PST)
Message-ID: <84682c43-e480-41df-a258-1f5311bb441a@linaro.org>
Date: Tue, 11 Feb 2025 23:55:47 +0000
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
References: <20250211194918.2517593-1-james.a.macinnes@gmail.com>
 <20250211194918.2517593-3-james.a.macinnes@gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250211194918.2517593-3-james.a.macinnes@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/02/2025 19:49, James A. MacInnes wrote:
> +	// Determine PMIC type
> +	pmic_type = of_device_get_match_data(dev);
> +	if (pmic_type && strcmp(pmic_type, "pmi8998") == 0) {
> +		qcom_usb_vbus_rdesc.curr_table = curr_table_pmi8998;
> +		qcom_usb_vbus_rdesc.n_current_limits =
> +			ARRAY_SIZE(curr_table_pmi8998);
> +	} else if (pmic_type && strcmp(pmic_type, "pm8150b") == 0) {
> +		qcom_usb_vbus_rdesc.curr_table = curr_table_pm8150b;
> +		qcom_usb_vbus_rdesc.n_current_limits =
> +			ARRAY_SIZE(curr_table_pm8150b);
> +	} else {
> +		return -ENODEV;
> +	}
>   	qcom_usb_vbus_rdesc.enable_reg = base + CMD_OTG;
>   	qcom_usb_vbus_rdesc.enable_mask = OTG_EN;
>   	qcom_usb_vbus_rdesc.csel_reg = base + OTG_CURRENT_LIMIT_CFG;
> @@ -80,18 +99,22 @@ static int qcom_usb_vbus_regulator_probe(struct platform_device *pdev)
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
> +	dev_info(dev, "Registered QCOM %s VBUS regulator\n",
> +		 pmic_type);
> +
>   	return 0;
>   }
>   
>   static const struct of_device_id qcom_usb_vbus_regulator_match[] = {
> -	{ .compatible = "qcom,pm8150b-vbus-reg" },
> +	{ .compatible = "qcom,pm8150b-vbus-reg", .data = "pm8150b" },
> +	{ .compatible = "qcom,pmi8998-vbus-reg", .data = "pmi8998" },

I think the other two said much the same thing but .data should point to 
the differentiator instead of being a string which you disjoin on and 
then hook your differentiated data.

i.e.

.data = &my_driver_specific_static_data_here.

---
bod

