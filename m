Return-Path: <devicetree+bounces-211862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7D4B40FF0
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 00:18:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 894B87A3041
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 22:17:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED8B1274FDF;
	Tue,  2 Sep 2025 22:18:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YD1WzfPb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062AA26AA93
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 22:18:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756851532; cv=none; b=G0/OZBg05qrZ7UMB23BIj5rJCP+zHmkaZ9Qt5KXZVdtDgnHxdGt8hZKEi9RGWfXaaZMkt+BvaoVZRqowive36BmIO6Xsk4jbej2O4g2l2hH28+2Ve60EB+CH8acaGSDol8Y/Qc72A7jevPWRycnFmHGWEpI0o1jMFkuEAdjU8LI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756851532; c=relaxed/simple;
	bh=LFMNs2f11salGKakRkwUCy3h9YxD320vvtitkLmtiDQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TWwPJg+j7CkPEReUgb1mAafgV2psMpbA4dhviobxCdazYQBEwr1LCoxyxmVOWCzsocL8+wwTkilMHVLzeVDDHEPsS+Bmxv1bjMYvQNZUxI4LFuyRM9iyfqEkHWYBEbt74m9cawn1uHImoz4HUM2D0A1kwVUNJeXc6qZLsKuFOXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YD1WzfPb; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-45b79ec2fbeso39987435e9.3
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 15:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756851529; x=1757456329; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sXt/asDYq3TH0BdNCcvYeBRn6iTRyQGujHraDlSoCSw=;
        b=YD1WzfPb0XRgyEWM7PKx3LyjWLnUur4NW83nrJ3tUpQtjE8ruziMYP8s2ww2UYf8IT
         /Qt94QIbCzI2q7mCa9ngsRX+O09V/EWwi1643oRucXXKw3qjNDSb2FY7KmGbcCrVEiW1
         ruDvRndetLBbAjH2N2KVt7OgXto7g2sVSDWr1clluGfXWnAGepStHfnQ1hhYnFpgR7fs
         GHNtZ5Ll6q+02XyRbAWr2hplCO0xRShiT0L3XNLWpJEJT1IpOkroyzYrXaCV7T7Pvmfi
         ZbBDAxa52sEtr1tXIVryWoiPxD5VWgqQtDQq+DbZqgGF3wh6e7J/mwyPBoS7n4y8sKxJ
         7pDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756851529; x=1757456329;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sXt/asDYq3TH0BdNCcvYeBRn6iTRyQGujHraDlSoCSw=;
        b=KTNJzpV/t/7bWcCjZ13pzirC0rnjAJ2rAH18JDVxTWISxC38rmflqFru8l3A2BQ76n
         ahL33pPIrqT5LMy7lCwvY1k1sspn55/QRFjik+lnAPe7qShrOk1NjwFznfOBiAwpC0Zb
         LEN89zY5JmAz1VahZBYsTyO9SLjwRjuJ5YS3hANmsDe2JcRhiTTzZLeitc/s7qQ9rn7X
         SxKWlf22gimfJ9AEPo/Pmnph6j5vl/nEECGe+o1mRnw+EYJXAX1+KX7o79RXnBiQR4ov
         sYY7yOM9wynOEQZXKcarvrz+gSLIw+J2aWYb9HafL3ogGchKj+vr3waz1xTC7MLY+JW4
         Jo2w==
X-Forwarded-Encrypted: i=1; AJvYcCX0cJqQDPJEcrki+TV4dJ9eYOF6vDHBq8XtpC1244B4N3OQXVaYxGJs/eVJ5x3zz3YH+jkC/aYxa7kp@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/dP/5dHZ2RmVaWbrYGTEsmR0cH/mVz7m7x3fsZf3RemEVzm15
	P7rbTBqRdppgsos7bXacfNlqHmz7TXwFm4yvbP9LaLt59Xfpxi6ElGOBnhBMIpKvcoc=
X-Gm-Gg: ASbGnctnCtC8EuWLppR1mg88dhjNieVc9NuRAMkYCy+BqnfPONKP+6SGWTu6zspoN5B
	8/5BcJivHAp2dmFy8Vmk4uQt2H0NNY/ApSuxR5SESCGF0VKOQA/p81de+5K0tgZyh87T1FyTGll
	z8hlBBDu+m8bmv8RlDgHfUTDz1TWZuDlgUWR462rsdR+8VdCXsQQMhkd1vMLr27nGQHsctJJxsY
	yHaNZS2Q27Vibn8XRP80w5VJjJ+vY53lsTzb9G/euQbJ8n4YOWqOYIW0W0Cs0JwxGDliIykVjW4
	AEZmiWAsnBJ20g7bj2qA5Qh9xqrmDfJ8v8XjsZozyjr0BmLpgbFHGT6A30fcugYpjrtaOYTyNDZ
	ehNbceA5NjIDQQrpQp7v2HccfPXHF9e6vLnrmvOb0IoHqw/5qOEVB6n5pP1VELmyuLLMFDiOfNi
	e5RHVhGZDEv22/PIyL1Vnh
X-Google-Smtp-Source: AGHT+IEv98rJqJ2A4oCVv+NELsk8v/jt/2Wf6G4aJXvzDZjrvT8K/3C3HFkWNuYtV6VM7Zam4DOwyw==
X-Received: by 2002:a05:600c:a0a:b0:456:1824:4808 with SMTP id 5b1f17b1804b1-45b855aeb67mr98417305e9.32.1756851529334;
        Tue, 02 Sep 2025 15:18:49 -0700 (PDT)
Received: from [192.168.0.13] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d701622b92sm9842168f8f.58.2025.09.02.15.18.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 15:18:48 -0700 (PDT)
Message-ID: <896d8e1c-b761-4111-aa28-e78836d22352@linaro.org>
Date: Tue, 2 Sep 2025 23:18:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] media: iris: Split power on per variants
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250902-sm8750-iris-v3-0-564488b412d2@linaro.org>
 <20250902-sm8750-iris-v3-2-564488b412d2@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250902-sm8750-iris-v3-2-564488b412d2@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/09/2025 13:45, Krzysztof Kozlowski wrote:
> Current devices use same power up sequence, but starting with Qualcomm
> SM8750 (VPU v3.5) the sequence will grow quite a bit, so allow
> customizing it.  No functional change so far for existing devices.
> 
> Reviewed-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   drivers/media/platform/qcom/iris/iris_vpu2.c       | 2 ++
>   drivers/media/platform/qcom/iris/iris_vpu3x.c      | 4 ++++
>   drivers/media/platform/qcom/iris/iris_vpu_common.c | 8 ++++----
>   drivers/media/platform/qcom/iris/iris_vpu_common.h | 4 ++++
>   4 files changed, 14 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/iris/iris_vpu2.c b/drivers/media/platform/qcom/iris/iris_vpu2.c
> index 7cf1bfc352d34b897451061b5c14fbe90276433d..de7d142316d2dc9ab0c4ad9cc8161c87ac949b4c 100644
> --- a/drivers/media/platform/qcom/iris/iris_vpu2.c
> +++ b/drivers/media/platform/qcom/iris/iris_vpu2.c
> @@ -34,6 +34,8 @@ static u64 iris_vpu2_calc_freq(struct iris_inst *inst, size_t data_size)
>   
>   const struct vpu_ops iris_vpu2_ops = {
>   	.power_off_hw = iris_vpu_power_off_hw,
> +	.power_on_hw = iris_vpu_power_on_hw,
>   	.power_off_controller = iris_vpu_power_off_controller,
> +	.power_on_controller = iris_vpu_power_on_controller,
>   	.calc_freq = iris_vpu2_calc_freq,
>   };
> diff --git a/drivers/media/platform/qcom/iris/iris_vpu3x.c b/drivers/media/platform/qcom/iris/iris_vpu3x.c
> index bfc52eb04ed0e1c88efe74a8d27bb95e8a0ca331..27b8589afe6d1196d7486b1307787e4adca8c2aa 100644
> --- a/drivers/media/platform/qcom/iris/iris_vpu3x.c
> +++ b/drivers/media/platform/qcom/iris/iris_vpu3x.c
> @@ -292,12 +292,16 @@ static u64 iris_vpu3x_calculate_frequency(struct iris_inst *inst, size_t data_si
>   
>   const struct vpu_ops iris_vpu3_ops = {
>   	.power_off_hw = iris_vpu3_power_off_hardware,
> +	.power_on_hw = iris_vpu_power_on_hw,
>   	.power_off_controller = iris_vpu_power_off_controller,
> +	.power_on_controller = iris_vpu_power_on_controller,
>   	.calc_freq = iris_vpu3x_calculate_frequency,
>   };
>   
>   const struct vpu_ops iris_vpu33_ops = {
>   	.power_off_hw = iris_vpu33_power_off_hardware,
> +	.power_on_hw = iris_vpu_power_on_hw,
>   	.power_off_controller = iris_vpu33_power_off_controller,
> +	.power_on_controller = iris_vpu_power_on_controller,
>   	.calc_freq = iris_vpu3x_calculate_frequency,
>   };
> diff --git a/drivers/media/platform/qcom/iris/iris_vpu_common.c b/drivers/media/platform/qcom/iris/iris_vpu_common.c
> index 42a7c53ce48eb56a4210c7e25c707a1b0881a8ce..6c51002f72ab3d9e16d5a2a50ac712fac91ae25c 100644
> --- a/drivers/media/platform/qcom/iris/iris_vpu_common.c
> +++ b/drivers/media/platform/qcom/iris/iris_vpu_common.c
> @@ -271,7 +271,7 @@ void iris_vpu_power_off(struct iris_core *core)
>   		disable_irq_nosync(core->irq);
>   }
>   
> -static int iris_vpu_power_on_controller(struct iris_core *core)
> +int iris_vpu_power_on_controller(struct iris_core *core)
>   {
>   	u32 rst_tbl_size = core->iris_platform_data->clk_rst_tbl_size;
>   	int ret;
> @@ -302,7 +302,7 @@ static int iris_vpu_power_on_controller(struct iris_core *core)
>   	return ret;
>   }
>   
> -static int iris_vpu_power_on_hw(struct iris_core *core)
> +int iris_vpu_power_on_hw(struct iris_core *core)
>   {
>   	int ret;
>   
> @@ -337,11 +337,11 @@ int iris_vpu_power_on(struct iris_core *core)
>   	if (ret)
>   		goto err;
>   
> -	ret = iris_vpu_power_on_controller(core);
> +	ret = core->iris_platform_data->vpu_ops->power_on_controller(core);
>   	if (ret)
>   		goto err_unvote_icc;
>   
> -	ret = iris_vpu_power_on_hw(core);
> +	ret = core->iris_platform_data->vpu_ops->power_on_hw(core);
>   	if (ret)
>   		goto err_power_off_ctrl;
>   
> diff --git a/drivers/media/platform/qcom/iris/iris_vpu_common.h b/drivers/media/platform/qcom/iris/iris_vpu_common.h
> index 93b7fa27be3bfa1cf6a3e83cc192cdb89d63575f..d95b305ca5a89ba8f08aefb6e6acd9ea4a721a8b 100644
> --- a/drivers/media/platform/qcom/iris/iris_vpu_common.h
> +++ b/drivers/media/platform/qcom/iris/iris_vpu_common.h
> @@ -14,7 +14,9 @@ extern const struct vpu_ops iris_vpu33_ops;
>   
>   struct vpu_ops {
>   	void (*power_off_hw)(struct iris_core *core);
> +	int (*power_on_hw)(struct iris_core *core);
>   	int (*power_off_controller)(struct iris_core *core);
> +	int (*power_on_controller)(struct iris_core *core);
>   	u64 (*calc_freq)(struct iris_inst *inst, size_t data_size);
>   };
>   
> @@ -23,6 +25,8 @@ void iris_vpu_raise_interrupt(struct iris_core *core);
>   void iris_vpu_clear_interrupt(struct iris_core *core);
>   int iris_vpu_watchdog(struct iris_core *core, u32 intr_status);
>   int iris_vpu_prepare_pc(struct iris_core *core);
> +int iris_vpu_power_on_controller(struct iris_core *core);
> +int iris_vpu_power_on_hw(struct iris_core *core);
>   int iris_vpu_power_on(struct iris_core *core);
>   int iris_vpu_power_off_controller(struct iris_core *core);
>   void iris_vpu_power_off_hw(struct iris_core *core);
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

