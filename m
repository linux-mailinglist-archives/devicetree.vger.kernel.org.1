Return-Path: <devicetree+bounces-150840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 29305A43AE2
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 11:11:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5BBB03A375C
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 10:07:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 225A0263F28;
	Tue, 25 Feb 2025 10:02:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MI5grt5Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3442638AE
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 10:02:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740477737; cv=none; b=qNlyaNQZGu1ZkRghy8SXybKTlnqeEvXhAVSc3IU0yNYJOOcNtec09ONANl1YfuoFXb+q4CXW5OFuJ4A0j7RLFxk+2i2VSL0U7cCdXDQM6dktRZNTTJPv3NBCATIu5ZdhTFWGi2Qa0pRYyVfF+ciyTAHesutL6cMxxof5Ohmfwuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740477737; c=relaxed/simple;
	bh=NMTrac6jAr3bSEi+JEiy0TBtMPJUvfE0PkQpRKhfTsc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PTGbVQW0LulRS+sZb3fvndAWqiInO03DiQl99oZSh8SVrqyFvau67wbN6PucdSN6AwWm6vuYoYL5V55ys9MVnq0llf7LlEX9OMW8LdYU3rSsS1cbV/ufphl5kBq82P2aDh0gIhjxcoq3yMw0uSGUi9quKXBbOZI3xF3eDD15HG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MI5grt5Q; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-54529e15643so5873269e87.1
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 02:02:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740477733; x=1741082533; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TMjOtw6sQvF5Ai65y4qwtU941QcWTo/UXR7OGJ4GTzc=;
        b=MI5grt5Qo1VravhUDf3dC1+tZ++QdYkQQgfvG2z088NtkD4c8GDQBPcXxHEMwSuuTT
         1K/fnAQUF/6oRlkawTzGNPA4Tu6+oB3RpbcMgZaWjy6VPVtvr95zOogcHOXKjq/Ww9zk
         LygHL/5/HWKLEO/IeanBmffokFMEMJCJpyTSxQ1S5pRqO8/JkCpYKOGt2JeBjmUON3eL
         ABL5vbLeIPq3iuSNrpiqEjn8UMhGlgAx27yj7DJlt5FXS8jy1gy2xYIYDSWFYwegQl3h
         g5ULJ2Vhe12QvRm5TmN5CsQQV56UixEPYniPmzaTKRuCtKrQxQXfTZnl4VfBxVkqJJ+I
         jSlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740477733; x=1741082533;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TMjOtw6sQvF5Ai65y4qwtU941QcWTo/UXR7OGJ4GTzc=;
        b=l+bPMOUKNKv1qdOUPRF9hQ4N9lhbCzUbrAPhjAmr4arRhGnk6WLVJhgxppToeEdklQ
         QCK41vahPsq3LQ12eze8frcT9Uh/2SItuxmHSo5Y46zajE9BvV7RGdpxU4dhwwu6jHbp
         961SwjwsC44q6HeYrMcjtvY/738vuUDxNA1C5zeYjEAkeZeNoKffPqQZzkMkDJWOuB8u
         xl593Qs4BUUPraVsn+gkngecWSTSKZqi/G/IFVyMmCUMUpLcnUoJJGr6QtZ3tsltyWqI
         xO1Fk8hQZS8y8CiMPNZfFXf+tQYEfgljEYNH1WeuOsSZDiouk8g/PAxu5OrW8UAklYOk
         oYwA==
X-Forwarded-Encrypted: i=1; AJvYcCWNq5FPMJplTLsf8K1OleiEQECgy3b/tGYT2YOATp9KWEMINPDIiUBZ39/sfff/mPn/Vt6XtNWkvDDa@vger.kernel.org
X-Gm-Message-State: AOJu0Yzm3JSiYjTFyIq3MWANCbccbrvvHtIyPjsGvsOHvHhcBNCUhWtA
	q9tZai924D6DDP2Qq1RdLkPUN9Uup/eLhUNuLog2XzBku0mdmRd8PdI04iBxOtw=
X-Gm-Gg: ASbGncsmk/N6aCmDi7ftEP057tyRUGMvfWQb8bDEmWSagTiTpINs8Zm8rZ8w6+b+xhO
	hiMV7azFVHAG7jmToCTQLW4YaAoII+WYEpL1KbgMfzqnYbParljFpLoMoID2tlem3sAkclRoXzJ
	WHWBi6b2PCi2L0Pnn8W+iddHUwRyuPVAncXVB/Yc0CxYdJ9k9fZHrVIyEA7qbIo2QPqEYr4NGCo
	BZ45iS2qc9BsUM4NucMq4Qqlnm8RtYcM3KifH7r6FQLL4sg7jWHldCEWh1ZcXCD52SZP98Qyr9a
	Ht1+2NTfeDmGOvoQhWyYPLwNDwJumSXc34YNPMbjMapWMy9AafvOUSQWwMqL/wZ50dfdUppidiK
	EcEDrHQ==
X-Google-Smtp-Source: AGHT+IEMzm0xQnFzznGTcBLrV/4xhSnPVKwp62cSfPyLmo2oMlNHW10thUtzDZUeyG6kd7vvdC01nw==
X-Received: by 2002:a05:6512:2387:b0:545:9e4:e823 with SMTP id 2adb3069b0e04-546e58bacd7mr6685473e87.16.1740477732723;
        Tue, 25 Feb 2025 02:02:12 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-548514b9e79sm137041e87.74.2025.02.25.02.02.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 02:02:11 -0800 (PST)
Date: Tue, 25 Feb 2025 12:02:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vikash Garodia <quic_vgarodia@quicinc.com>, 
	Dikshita Agarwal <quic_dikshita@quicinc.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] media: platform: qcom/iris: add reset_controller &
 power_off_controller to vpu_ops
Message-ID: <ityd34gfiyt6fvyuopnh3bi3edc5t2ubop4i72d54xyhhz3ixf@n6rnt5mwgw4b>
References: <20250225-topic-sm8x50-iris-v10-v1-0-128ef05d9665@linaro.org>
 <20250225-topic-sm8x50-iris-v10-v1-2-128ef05d9665@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250225-topic-sm8x50-iris-v10-v1-2-128ef05d9665@linaro.org>

On Tue, Feb 25, 2025 at 10:05:10AM +0100, Neil Armstrong wrote:
> In order to support the SM8650 iris33 hardware, we need to provide specific
> reset and constoller power off sequences via the vpu_ops callbacks.
> 
> Add those callbacks, and use the current helpers for currently supported
> platforms.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/media/platform/qcom/iris/iris_vpu2.c       |  2 ++
>  drivers/media/platform/qcom/iris/iris_vpu3.c       |  2 ++
>  drivers/media/platform/qcom/iris/iris_vpu_common.c | 14 ++++++++++----
>  drivers/media/platform/qcom/iris/iris_vpu_common.h |  4 ++++
>  4 files changed, 18 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/iris/iris_vpu2.c b/drivers/media/platform/qcom/iris/iris_vpu2.c
> index 8f502aed43ce2fa6a272a2ce14ff1ca54d3e63a2..093e2068ec35e902f6c7bb3a487a679f9eada39a 100644
> --- a/drivers/media/platform/qcom/iris/iris_vpu2.c
> +++ b/drivers/media/platform/qcom/iris/iris_vpu2.c
> @@ -33,6 +33,8 @@ static u64 iris_vpu2_calc_freq(struct iris_inst *inst, size_t data_size)
>  }
>  
>  const struct vpu_ops iris_vpu2_ops = {
> +	.reset_controller = iris_vpu_reset_controller,
>  	.power_off_hw = iris_vpu_power_off_hw,
> +	.power_off_controller = iris_vpu_power_off_controller,
>  	.calc_freq = iris_vpu2_calc_freq,
>  };
> diff --git a/drivers/media/platform/qcom/iris/iris_vpu3.c b/drivers/media/platform/qcom/iris/iris_vpu3.c
> index b484638e6105a69319232f667ee7ae95e3853698..95f362633c95b101ecfda6480c4c0b73416bd00c 100644
> --- a/drivers/media/platform/qcom/iris/iris_vpu3.c
> +++ b/drivers/media/platform/qcom/iris/iris_vpu3.c
> @@ -117,6 +117,8 @@ static u64 iris_vpu3_calculate_frequency(struct iris_inst *inst, size_t data_siz
>  }
>  
>  const struct vpu_ops iris_vpu3_ops = {
> +	.reset_controller = iris_vpu_reset_controller,
>  	.power_off_hw = iris_vpu3_power_off_hardware,
> +	.power_off_controller = iris_vpu_power_off_controller,
>  	.calc_freq = iris_vpu3_calculate_frequency,
>  };
> diff --git a/drivers/media/platform/qcom/iris/iris_vpu_common.c b/drivers/media/platform/qcom/iris/iris_vpu_common.c
> index fe9896d66848cdcd8c67bd45bbf3b6ce4a01ab10..ec8b10d836d0993bcd722a2bafbb577b85f41fc9 100644
> --- a/drivers/media/platform/qcom/iris/iris_vpu_common.c
> +++ b/drivers/media/platform/qcom/iris/iris_vpu_common.c
> @@ -211,7 +211,7 @@ int iris_vpu_prepare_pc(struct iris_core *core)
>  	return -EAGAIN;
>  }
>  
> -static int iris_vpu_power_off_controller(struct iris_core *core)
> +int iris_vpu_power_off_controller(struct iris_core *core)
>  {
>  	u32 val = 0;
>  	int ret;
> @@ -264,23 +264,29 @@ void iris_vpu_power_off(struct iris_core *core)
>  {
>  	dev_pm_opp_set_rate(core->dev, 0);
>  	core->iris_platform_data->vpu_ops->power_off_hw(core);
> -	iris_vpu_power_off_controller(core);
> +	core->iris_platform_data->vpu_ops->power_off_controller(core);
>  	iris_unset_icc_bw(core);
>  
>  	if (!iris_vpu_watchdog(core, core->intr_status))
>  		disable_irq_nosync(core->irq);
>  }
>  
> -static int iris_vpu_power_on_controller(struct iris_core *core)
> +int iris_vpu_reset_controller(struct iris_core *core)

If these functions are platform-specific, please rename them
accordingly, like iris_vpu2_3_foo() or just iris_vpu2_foo().

>  {
>  	u32 rst_tbl_size = core->iris_platform_data->clk_rst_tbl_size;
> +
> +	return reset_control_bulk_reset(rst_tbl_size, core->resets);
> +}
> +
> +static int iris_vpu_power_on_controller(struct iris_core *core)
> +{
>  	int ret;
>  
>  	ret = iris_enable_power_domains(core, core->pmdomain_tbl->pd_devs[IRIS_CTRL_POWER_DOMAIN]);
>  	if (ret)
>  		return ret;
>  
> -	ret = reset_control_bulk_reset(rst_tbl_size, core->resets);
> +	ret = core->iris_platform_data->vpu_ops->reset_controller(core);
>  	if (ret)
>  		goto err_disable_power;
>  
> diff --git a/drivers/media/platform/qcom/iris/iris_vpu_common.h b/drivers/media/platform/qcom/iris/iris_vpu_common.h
> index 63fa1fa5a4989e48aebdb6c7619c140000c0b44c..c948d8b5aee87ccf1fd53c5518a27294232d8fb8 100644
> --- a/drivers/media/platform/qcom/iris/iris_vpu_common.h
> +++ b/drivers/media/platform/qcom/iris/iris_vpu_common.h
> @@ -12,7 +12,9 @@ extern const struct vpu_ops iris_vpu2_ops;
>  extern const struct vpu_ops iris_vpu3_ops;
>  
>  struct vpu_ops {
> +	int (*reset_controller)(struct iris_core *core);
>  	void (*power_off_hw)(struct iris_core *core);
> +	int (*power_off_controller)(struct iris_core *core);
>  	u64 (*calc_freq)(struct iris_inst *inst, size_t data_size);
>  };
>  
> @@ -21,7 +23,9 @@ void iris_vpu_raise_interrupt(struct iris_core *core);
>  void iris_vpu_clear_interrupt(struct iris_core *core);
>  int iris_vpu_watchdog(struct iris_core *core, u32 intr_status);
>  int iris_vpu_prepare_pc(struct iris_core *core);
> +int iris_vpu_reset_controller(struct iris_core *core);
>  int iris_vpu_power_on(struct iris_core *core);
> +int iris_vpu_power_off_controller(struct iris_core *core);
>  void iris_vpu_power_off_hw(struct iris_core *core);
>  void iris_vpu_power_off(struct iris_core *core);
>  
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

