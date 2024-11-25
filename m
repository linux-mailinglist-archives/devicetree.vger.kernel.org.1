Return-Path: <devicetree+bounces-124121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 674E69D7B13
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 06:19:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 807BFB21C37
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 05:19:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BEEB15666D;
	Mon, 25 Nov 2024 05:18:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F75XnEPV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB56E13D51E
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 05:18:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732511938; cv=none; b=qBuBMYsxnhS3MWot0PMQlhFTGMLoukoFV3CVhjsY6Q/3e2aUYR67V8e5uOeA9CvZTcK8kzIdKQSw7sO3XK9nZ2BCQfwV9E3YXa/owYIvZCxqx+0S8aBaPFUVv/0SF58tRyqBwm048asObQq2VLugS/LdYyO2ORzs+PDzTAdPgAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732511938; c=relaxed/simple;
	bh=d1Dut7jE5J/B+Susaxwzt3MhoFXRYaj51BZEMNt/SE0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WffqRkqHLrJkn6MQ1daJipAqchONFes7feqdWCedTtEOY5C4yyTX8tVFkxRHQcsjg2w2eZ/hfnk/H7kG4k9ADLdlouPc1T1bBBcKlntnTZ3qFkh0PiNDdcduOx3tXEasNiafKQDfaKnv+dpgRI5AgJ7c8AGGw5Yra5OSnltzzf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F75XnEPV; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-724f1004c79so1124754b3a.2
        for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 21:18:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732511936; x=1733116736; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CaT7XHkUStAmSWQ7uMJ9CTvA+0ljM0SSdqJ8hkuHKAE=;
        b=F75XnEPV6jOcnDPr1TfsQRj1v/hPdgVb07WuHhBqCGPgUN/havzAhLkJK1NHdb04ch
         qqRtm2TBiOtCjEHduQpeLdaBl0LSrWeR315Q2q0aotDT/W7Nneqlv/1Ve2qVHRoQ/ISs
         2/2s5soASIkYzPne+kURguvr7AfNPyAc9B5fhou63U6sfZg5XZW75CGzeaWq9OFKnG2j
         XNw9HR7Uho3WNCrhwviTkmyu/LHOM/dFHK5V+Xz+zhFzz/wRxd9dquf6hIgOtICBOm3P
         idgRFeNYa01ngQ5s6T5+aDcqN+Wqt5fQrBNlzIRqckJvjx0jWHcvFY0rRqiZKpFFf8U2
         Qd6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732511936; x=1733116736;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CaT7XHkUStAmSWQ7uMJ9CTvA+0ljM0SSdqJ8hkuHKAE=;
        b=hLwZqtvN4ySROsu8oO+QXa0/ooftF6cB8h+yzZMCRepTNu9cOUaJzS6eF1KAHpuKYi
         wEzeYKeyYwP2QbS4SiQD6nGvnUCe1cyQtDHetkzBAmEV0VWun77hqMxVzrYV+0wAPTD0
         TB1gHc7LO7BJ+tlVh6CukRradShkETvRRALCHN/QPkdwL5sKKXNGj54kF+BfKsgZZv+0
         CXgSHCWHU/BaLZtPBcRIqgz1DWL73B5sqxhA8F7MoV0n1YOo3R5puP56ZTt85aMvZ6GC
         dncajeVo5Q+dHV9SL7hMQbL25Fnfw1zVfqdDVFV4bgD9j4GkeA4+HvLexkBAvKogI7YU
         9IxQ==
X-Forwarded-Encrypted: i=1; AJvYcCWoKxJxF2k2C5l1GQOg4gewuklUTgEijufc7CnMebz/rM3aQwx3Km+8IOxmdqCNxZVw1jvdbBo0IvV5@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2TrjeXApfVorkShmIK3KhOmPD4QG0K3OxycSWsiKlM27x1g3o
	C6NTIG7Ut1yNcZ4vOIn1zgvUg05sW3kaFV2lWwD9NGecuXuoq4giKy3V+1dAcCY=
X-Gm-Gg: ASbGnct4KJVQAhRa2rfgvjRKqHJiG+FVtazvAV1TVFrxhEW4aTbGNjiXLO3FN9pN4ag
	1nV/kd+DZ7NGzfJhx3lGIRWam9Vq+8c35r2SttOEsQxQwt1Nig3URtWmVvoOMG73nH7t8wl2vwC
	J7MlEv71vBXB6oIaR8Tcn02ebUXfum00MswO9fix7DG7G5X2W4wwHXzrsbxeSR3txo1WFoHVYcb
	PQOOoJ+DIc3lfbWZyGFmHRLvdlLmA0BCgbSkLfn/zZ1NN42Bj8Y
X-Google-Smtp-Source: AGHT+IGe6EIORCJn7aV9npBgDcZpDnf5jw/DaCFfKxvU0lKTbT+0M9zATqm1b+aolILMH8BpHhsBzw==
X-Received: by 2002:a05:6a00:2d10:b0:71e:4a51:2007 with SMTP id d2e1a72fcca58-724df3c77ffmr14298594b3a.4.1732511936149;
        Sun, 24 Nov 2024 21:18:56 -0800 (PST)
Received: from localhost ([122.172.86.146])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-724de474c9fsm5506878b3a.44.2024.11.24.21.18.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Nov 2024 21:18:55 -0800 (PST)
Date: Mon, 25 Nov 2024 10:48:53 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Akhil P Oommen <quic_akhilpo@quicinc.com>,
	Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Connor Abbott <cwabbott0@gmail.com>, linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 01/11] opp: core: implement dev_pm_opp_get_bw
Message-ID: <20241125051853.taeysx2nhmrwoyde@vireshk-i7>
References: <20241119-topic-sm8x50-gpu-bw-vote-v2-0-4deb87be2498@linaro.org>
 <20241119-topic-sm8x50-gpu-bw-vote-v2-1-4deb87be2498@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241119-topic-sm8x50-gpu-bw-vote-v2-1-4deb87be2498@linaro.org>

On 19-11-24, 18:56, Neil Armstrong wrote:
> Add and implement the dev_pm_opp_get_bw() to retrieve
> the OPP's bandwidth in the same way as the dev_pm_opp_get_voltage()
> helper.
> 
> Retrieving bandwidth is required in the case of the Adreno GPU
> where the GPU Management Unit can handle the Bandwidth scaling.
> 
> The helper can get the peak or average bandwidth for any of
> the interconnect path.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/opp/core.c     | 25 +++++++++++++++++++++++++
>  include/linux/pm_opp.h |  7 +++++++
>  2 files changed, 32 insertions(+)
> 
> diff --git a/drivers/opp/core.c b/drivers/opp/core.c
> index 494f8860220d97fc690ebab5ed3b7f5f04f22d73..864b9b99b0129acaffaf45c584c5f34b8bababed 100644
> --- a/drivers/opp/core.c
> +++ b/drivers/opp/core.c
> @@ -106,6 +106,31 @@ static bool assert_single_clk(struct opp_table *opp_table)
>  	return !WARN_ON(opp_table->clk_count > 1);
>  }
>  
> +/**
> + * dev_pm_opp_get_bw() - Gets the bandwidth corresponding to an opp
> + * @opp:	opp for which voltage has to be returned for

                              bandwidth

> + * @peak:	select peak or average bandwidth
> + * @index:	bandwidth index
> + *
> + * Return: bandwidth in kBps, else return 0
> + */
> +unsigned long dev_pm_opp_get_bw(struct dev_pm_opp *opp, bool peak, int index)
> +{
> +	if (IS_ERR_OR_NULL(opp)) {
> +		pr_err("%s: Invalid parameters\n", __func__);
> +		return 0;
> +	}
> +
> +	if (index > opp->opp_table->path_count)
> +		return 0;
> +
> +	if (!opp->bandwidth)
> +		return 0;
> +
> +	return peak ? opp->bandwidth[index].peak : opp->bandwidth[index].avg;
> +}
> +EXPORT_SYMBOL_GPL(dev_pm_opp_get_bw);
> +
>  /**
>   * dev_pm_opp_get_voltage() - Gets the voltage corresponding to an opp
>   * @opp:	opp for which voltage has to be returned for
> diff --git a/include/linux/pm_opp.h b/include/linux/pm_opp.h
> index 6424692c30b71fca471a1b7d63e018605dd9324b..cd9a257b8e7766d6c8631351a10a845c88414a74 100644
> --- a/include/linux/pm_opp.h
> +++ b/include/linux/pm_opp.h
> @@ -106,6 +106,8 @@ struct dev_pm_opp_data {
>  struct opp_table *dev_pm_opp_get_opp_table(struct device *dev);
>  void dev_pm_opp_put_opp_table(struct opp_table *opp_table);
>  
> +unsigned long dev_pm_opp_get_bw(struct dev_pm_opp *opp, bool peak, int index);
> +
>  unsigned long dev_pm_opp_get_voltage(struct dev_pm_opp *opp);
>  
>  int dev_pm_opp_get_supplies(struct dev_pm_opp *opp, struct dev_pm_opp_supply *supplies);
> @@ -209,6 +211,11 @@ static inline struct opp_table *dev_pm_opp_get_opp_table_indexed(struct device *
>  
>  static inline void dev_pm_opp_put_opp_table(struct opp_table *opp_table) {}
>  
> +static inline unsigned long dev_pm_opp_get_bw(struct dev_pm_opp *opp, bool peak, int index)
> +{
> +	return 0;
> +}
> +
>  static inline unsigned long dev_pm_opp_get_voltage(struct dev_pm_opp *opp)
>  {
>  	return 0;

Applied. Thanks.

-- 
viresh

