Return-Path: <devicetree+bounces-145783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9143AA32455
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 12:09:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5E8CC188B742
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 11:09:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A2DE20A5EB;
	Wed, 12 Feb 2025 11:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UazEc6Q5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E14B209F49
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 11:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739358555; cv=none; b=V54SkX8P+7QAygggyIVUHmln54PPraTjD8OUwK+tY/59i/Mj7i1YKVjN2tpcbjqJamnUpizDXUS8CLvBRA04LiGkHNnoCD2zEk7ij57nk8LhdH/rpJfhI/qwuBpJfsrYzfQkwrJwv1xS2g9MzieGEEgT2oTXJKgBQg0v/gXY7/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739358555; c=relaxed/simple;
	bh=V7cTxoKC4qFDUHpP6eGwhH/5GVuxqzS62ckVRbB6Tqc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VNUADalYqT1/JIn3/k3u7ezMyuc/vzPTq5pbnCvtJYMelUz6NOPg3nj7udeU75oiX7yOUNLUrrhE0PlcGXc/yF5nAKylBJhNm7hWlgaVZZPkZeXaKpGxyHnnMjHl7rHwdUu5P7A40twa5kTnZHHq0O7fuYetbMHzkL8sNDSfNsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UazEc6Q5; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-30227c56b11so68160011fa.3
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 03:09:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739358551; x=1739963351; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YbssXtG/QA34n1PeVVnkmd3ZznSQoiHIQujbnuL56Is=;
        b=UazEc6Q5Fz1/B1VvE1vyRkAW3PGwoqJiTvlWDOIlVPHsUNiHP5wNSd+3rfWzZtowiN
         f+7gZF6L7FSK+KASK/BVvrjYzwO1sEFaOz/HLWWCEN0y1UlqeTMdGpDC0h0HYaMGdhlC
         45QC49Pn/eR5s4mCCSFAbuRK4zW8dIhS/BtrAPsIJpmgzvcTl/GozMbfDMzRWF/j4cUg
         SdneeBaCzdDhwec3Cz5ALiM8PpQYVCKPJo013TdPy/HRhdcIkkw5mgjpBWIZu+wbrMXm
         bOhFzrfwJaJQ8IxXBawVqvu/qi2T5DMD6jmQwyPGyhPTa/1nfheFjJCeEZtWCy9n/ZFk
         Yjsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739358551; x=1739963351;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YbssXtG/QA34n1PeVVnkmd3ZznSQoiHIQujbnuL56Is=;
        b=YmswlFfMlEMIr34fvZEhBKqtLUP+8MW3x8oJ/Fdb+dkuoHoUxEBHBfsujd+9gyqp1S
         dL+/6khpP1P5oASJQsTiOgcCVXowNrxvQ190La0Uiyd5jxgqjPDrSqaTTIp1qf6fhbad
         uhVSC1euViW2X3KIc2U7rs0dskGQeYC+uyBhV/ebHbB+mh180/5iwI+lDllq3AQ91b42
         HJWtuWwXQSJliBtYpwpLF9W+qA+bIzfII93v7zHyDx+1cHth1KvGSRdHuJXmiizLI5g9
         BP8DBSbz3VQmJArYvd9tsb6IT4ECxWojAueLEx1M+lmXZ6aciLKIAj5kPGQ8xpFHetmM
         Rdtw==
X-Forwarded-Encrypted: i=1; AJvYcCVGh5fa3d4l7nndBconMcGeYTrT7pVn18GienoCJXD3pTH6V8ur/32SqZWhpxKEddkPA8U+q+XzbZ1H@vger.kernel.org
X-Gm-Message-State: AOJu0YxMOVsi4mu7OcP0MithLoMN/icv1wWDyCexqPgRYSgmmBlqyIQ4
	niAQA/ztywrNGqe+e3NjiWn/EmcokRkxNkWlStWNSgn7hkj2YlOP/oUz9cKFxplafK5X0t6GSHw
	taxI=
X-Gm-Gg: ASbGncsdM//vA+OHlNwl/UgUXDPt8aMcXIJxF9kIHkVPPFfuhvSgnYvDUmqDVapgxoo
	kI7Tqwuv5t9l0zgXqzs7wJzI1wrOldJqWxJvee4mzNpYYwvepNoetiCaOUgr1mlJQLLBJmVUS9O
	eJDBUwTCoxeY8RcDpfXcsY3b2jaYtezWWSCyQbASKn6bPOfaJfIam3o4GQTp9OpwfvzFJ7mRkmA
	SVbUtGRuZC9epy5a8ehA+dZfvy1A9isx+5ARpNB0p3rIs5ki3KiuGlX5eNL3aNKAaxw/XSVNGPt
	I/SW0vr7i5CfK9M43joQPY8vbvbVv08qQBc+YZN1SSbYuyv6UJYgOwdXA1p/7H0n2oCVDJk=
X-Google-Smtp-Source: AGHT+IG8DOlndM4U9VJ2z0AwAfYopx4atfO3q+HybkdNtfp+U20/vFw4YpnTunKNuceOvd0hxJ7CgQ==
X-Received: by 2002:ac2:4e05:0:b0:545:aaf:13f5 with SMTP id 2adb3069b0e04-545184a3aa5mr849690e87.37.1739358551002;
        Wed, 12 Feb 2025 03:09:11 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5450d49c661sm870125e87.162.2025.02.12.03.09.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 03:09:10 -0800 (PST)
Date: Wed, 12 Feb 2025 13:09:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Ajit Pandey <quic_ajipan@quicinc.com>, 
	Imran Shaik <quic_imrashai@quicinc.com>, Jagadeesh Kona <quic_jkona@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/4] clk: qcom: lpassaudiocc-sc7280: Add support for
 LPASS resets for QCM6490
Message-ID: <exyxni7td5vow2n6jarav5euje6dnbue5f5yxzu6az554dthfe@zn5yd2byvkoj>
References: <20250212-lpass_qcm6490_resets-v3-0-0b1cfb35b38e@quicinc.com>
 <20250212-lpass_qcm6490_resets-v3-2-0b1cfb35b38e@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250212-lpass_qcm6490_resets-v3-2-0b1cfb35b38e@quicinc.com>

On Wed, Feb 12, 2025 at 01:52:20PM +0530, Taniya Das wrote:
> On the QCM6490 boards the LPASS firmware controls the complete clock
> controller functionalities. But the LPASS resets are required to be
> controlled from the high level OS. The Audio SW driver should be able to
> assert/deassert the audio resets as required. Thus in clock driver add
> support for the resets.
> 
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---
>  drivers/clk/qcom/lpassaudiocc-sc7280.c | 23 +++++++++++++++++++----
>  1 file changed, 19 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/clk/qcom/lpassaudiocc-sc7280.c b/drivers/clk/qcom/lpassaudiocc-sc7280.c
> index 45e7264770866f929a3f4663c477330f0bf7aa84..b6439308926371891cc5f9a5e0d4e8393641560d 100644
> --- a/drivers/clk/qcom/lpassaudiocc-sc7280.c
> +++ b/drivers/clk/qcom/lpassaudiocc-sc7280.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * Copyright (c) 2021, The Linux Foundation. All rights reserved.
> + * Copyright (c) 2024, Qualcomm Innovation Center, Inc. All rights reserved.
>   */
>  
>  #include <linux/clk-provider.h>
> @@ -713,14 +714,24 @@ static const struct qcom_reset_map lpass_audio_cc_sc7280_resets[] = {
>  	[LPASS_AUDIO_SWR_WSA_CGCR] = { 0xb0, 1 },
>  };
>  
> +static const struct regmap_config lpass_audio_cc_sc7280_reset_regmap_config = {
> +	.name = "lpassaudio_cc_reset",
> +	.reg_bits = 32,
> +	.reg_stride = 4,
> +	.val_bits = 32,
> +	.fast_io = true,
> +	.max_register = 0xc8,
> +};
> +
>  static const struct qcom_cc_desc lpass_audio_cc_reset_sc7280_desc = {
> -	.config = &lpass_audio_cc_sc7280_regmap_config,
> +	.config = &lpass_audio_cc_sc7280_reset_regmap_config,
>  	.resets = lpass_audio_cc_sc7280_resets,
>  	.num_resets = ARRAY_SIZE(lpass_audio_cc_sc7280_resets),
>  };
>  
>  static const struct of_device_id lpass_audio_cc_sc7280_match_table[] = {
> -	{ .compatible = "qcom,sc7280-lpassaudiocc" },
> +	{ .compatible = "qcom,qcm6490-lpassaudiocc", .data = &lpass_audio_cc_reset_sc7280_desc },
> +	{ .compatible = "qcom,sc7280-lpassaudiocc", .data = &lpass_audio_cc_sc7280_desc },
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(of, lpass_audio_cc_sc7280_match_table);
> @@ -752,13 +763,17 @@ static int lpass_audio_cc_sc7280_probe(struct platform_device *pdev)
>  	struct regmap *regmap;
>  	int ret;
>  
> +	desc = device_get_match_data(&pdev->dev);
> +
> +	if (desc->num_resets)
> +		return qcom_cc_probe_by_index(pdev, 1, desc);

Won't this break SC7280 support by causing an early return?

> +
>  	ret = lpass_audio_setup_runtime_pm(pdev);
>  	if (ret)
>  		return ret;
>  
>  	lpass_audio_cc_sc7280_regmap_config.name = "lpassaudio_cc";
>  	lpass_audio_cc_sc7280_regmap_config.max_register = 0x2f000;
> -	desc = &lpass_audio_cc_sc7280_desc;
>  
>  	regmap = qcom_cc_map(pdev, desc);
>  	if (IS_ERR(regmap)) {
> @@ -772,7 +787,7 @@ static int lpass_audio_cc_sc7280_probe(struct platform_device *pdev)
>  	regmap_write(regmap, 0x4, 0x3b);
>  	regmap_write(regmap, 0x8, 0xff05);
>  
> -	ret = qcom_cc_really_probe(&pdev->dev, &lpass_audio_cc_sc7280_desc, regmap);
> +	ret = qcom_cc_really_probe(&pdev->dev, desc, regmap);
>  	if (ret) {
>  		dev_err(&pdev->dev, "Failed to register LPASS AUDIO CC clocks\n");
>  		goto exit;
> 
> -- 
> 2.45.2
> 

-- 
With best wishes
Dmitry

