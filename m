Return-Path: <devicetree+bounces-124357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5957E9D8810
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 15:32:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD71A1650EA
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 14:32:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98F921B0F36;
	Mon, 25 Nov 2024 14:32:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v07FHmvT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2F7F1922E9
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 14:32:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732545135; cv=none; b=WiCuyrayGhPWm67eCkIe2YzPPWtW9H/EcReyvwsVspL6zpQVquWSWB4UoqqXJBYHdCWUfe+kZFebUW+VZAZXb5xDayRORLiX4Ygtt1dzhPIMv5CWtOemKXzX0CTYfZA5fzBMyT0BJhI5mRHXI4nUemhwVqtfqeMIZgCw2ubNPbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732545135; c=relaxed/simple;
	bh=PhTiO7nZ5VyvRAmNc6gOxrah00tRHdlLPoaIvAPFxmQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u3FvMB6J0poQ6pXh39lHy+uek9R/5pv9Zyw07ZQebnPAqdGKSf4efVsK0AakRwZpH5UzZp20o5Tl/4sGUIHNtNJRCdnEPeY4TYjWJmDnS6SA0kN8r8lglj5RATag6SngiXcqNQ7Rcr0iwiUAzhLvoauD8juJQd7e10yOt43kr38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=v07FHmvT; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-434a10588f3so5685125e9.1
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 06:32:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732545131; x=1733149931; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I/8c6DPu2k4ijNWg8lpFf2R+Gq1NZCkNmcROHAnplfI=;
        b=v07FHmvTWQCm4CL4hmK1OyjB5u5qiyl3T3KxYP7PhMDMremxA3sK62Nz0uR1VXENzt
         RZR8xRnOZuMegRaouZh8QFrOfwbnogOACMbHlz0PqosM1q5zYyhgWGE8mvG78kSz9yka
         vfsYr6ysqr71Npv1BDrvpZyrmzPBLncX1/PzPpjk4QGSRVNj8oCpIg1KHw1ftOKCrST7
         Grj95oNX09ngdJP7BvUijOtd0FWJyHMDSOqmsV5iAC5DoyC+XNeVUixD2n9hcEl1e5+k
         Wd1C8SmFEXnpNLbcAg5NMgsXG31LDapqsykiwSUwsfMCA8MOqnIhVJiIOTmfFzlEMwpa
         3/8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732545131; x=1733149931;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I/8c6DPu2k4ijNWg8lpFf2R+Gq1NZCkNmcROHAnplfI=;
        b=qmHYeH/Se+s/p2mdIQd46+19WcY+FDjoF09XF4FLBx5LQEqM9ku8y1EY9a8Pz3sQF4
         3pytQminEHYRd9ehAgisnnyA7a73SB8oHAUV2+ByDrC+q2sGGpVtnMOBzEQb6c3ujiwF
         SZff+1goEsTmt9qqvUMOeWgcZy8OW4bOMByGskDQE8mZ+pzvOD+fhrkmW4111yrlHyTo
         PEnfJyPW3iCW03C/EmCC1Dp0fP8Btuqc0P1gDcC2w67KbT2o4SYSEYAIGMqi+5hrGWcS
         AV6EwMs9/ELAeDTNyIlc/tM2RxJj9F8ZvOI46mjpXfdCMdSd2RAYQl/ekb8aiOKFncu6
         0/Xw==
X-Forwarded-Encrypted: i=1; AJvYcCXpUi1FeCQGv/qQl7q7kurAfZY5vhlJrw9KKaMh1JJXdGdiNVhn9h1IuXPoqVe1/vFcwCUjOcRI+UbQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyWuYLXh0CaNaPcTurV5yPrbI+04FPWT5YMrUHsler9NI474Odu
	2w5HFG6GIqTp1JEomKnundvHtWDBlUOjWGvBjhiGA5giS2cUsgaLPuGKwoI1Qhk=
X-Gm-Gg: ASbGncsICiVXzuG+nKoP7/KoAgdQsf8s4btEJyO7Ory9SQq6/ZhH6m17vJ+NiCSADFc
	bw3c0Tx4BP2JVk1YA3QE+UU3yDG9JfWQZPmtzkKHvoZ9s9Rv4lIPfxy8Ntx4IzzlXBz8Rk+4rvc
	+ec44nLhtkyYgJzjFcCPz1i1K8wnfUFhLD4gULSgXoEksj73b04ideKUuLQnIvJU36AL7CWpWWV
	dYiZDfkO0qQVUMQPPWQu6+ibcS8DBtJwiGr2HI59hjmB1WUw/H8A6lSrwMi8X8=
X-Google-Smtp-Source: AGHT+IHvFWTGeuZ182YZQhvkHJraCRt6UEtAMR/W9d0QgcV1PITYVqpQK3Xa9vSX5dIa4gL2HNN+JA==
X-Received: by 2002:a05:600c:5124:b0:434:a350:207c with SMTP id 5b1f17b1804b1-434a3502244mr4736765e9.23.1732545131003;
        Mon, 25 Nov 2024 06:32:11 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4349d2de6f9sm59791285e9.20.2024.11.25.06.32.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2024 06:32:10 -0800 (PST)
Message-ID: <68ec36e4-78c4-46e3-85b8-18f6e1e4361d@linaro.org>
Date: Mon, 25 Nov 2024 14:32:09 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/5] media: qcom: camss: Add support for camss driver
 on sc7280
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, akapatra@quicinc.com,
 hariramp@quicinc.com, andersson@kernel.org, konradybcio@kernel.org,
 hverkuil-cisco@xs4all.nl, cros-qcom-dts-watchers@chromium.org,
 catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20241112173032.2740119-1-quic_vikramsa@quicinc.com>
 <20241112173032.2740119-4-quic_vikramsa@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241112173032.2740119-4-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/11/2024 17:30, Vikram Sharma wrote:
> From: Suresh Vankadara <quic_svankada@quicinc.com>
> 
> Add support for the camss driver on the sc7280 soc.
> 
> Signed-off-by: Suresh Vankadara <quic_svankada@quicinc.com>
> Signed-off-by: Trishansh Bhardwaj <quic_tbhardwa@quicinc.com>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> ---
>   .../qcom/camss/camss-csiphy-3ph-1-0.c         |   5 +
>   .../media/platform/qcom/camss/camss-csiphy.c  |   5 +
>   .../media/platform/qcom/camss/camss-csiphy.h  |   1 +
>   drivers/media/platform/qcom/camss/camss-vfe.c |   2 +
>   drivers/media/platform/qcom/camss/camss.c     | 309 ++++++++++++++++++
>   drivers/media/platform/qcom/camss/camss.h     |   1 +
>   6 files changed, 323 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> index 7d2490c9de01..f341f7b7fd8a 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> @@ -505,6 +505,10 @@ static void csiphy_gen2_config_lanes(struct csiphy_device *csiphy,
>   	u32 val;
>   
>   	switch (csiphy->camss->res->version) {
> +	case CAMSS_7280:
> +		r = &lane_regs_sm8250[0][0];
> +		array_size = ARRAY_SIZE(lane_regs_sm8250[0]);
> +		break;
>   	case CAMSS_8250:
>   		r = &lane_regs_sm8250[0][0];
>   		array_size = ARRAY_SIZE(lane_regs_sm8250[0]);
> @@ -557,6 +561,7 @@ static bool csiphy_is_gen2(u32 version)
>   	bool ret = false;
>   
>   	switch (version) {
> +	case CAMSS_7280:
>   	case CAMSS_8250:
>   	case CAMSS_8280XP:
>   	case CAMSS_845:
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.c b/drivers/media/platform/qcom/camss/camss-csiphy.c
> index 5af2b382a843..3791c2d8a6cf 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy.c
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy.c
> @@ -103,6 +103,11 @@ const struct csiphy_formats csiphy_formats_8x96 = {
>   	.formats = formats_8x96
>   };
>   
> +const struct csiphy_formats csiphy_formats_sc7280 = {
> +	.nformats = ARRAY_SIZE(formats_sdm845),
> +	.formats = formats_sdm845
> +};
> +
>   const struct csiphy_formats csiphy_formats_sdm845 = {
>   	.nformats = ARRAY_SIZE(formats_sdm845),
>   	.formats = formats_sdm845
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.h b/drivers/media/platform/qcom/camss/camss-csiphy.h
> index eebc1ff1cfab..b6209bddfb61 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy.h
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy.h
> @@ -111,6 +111,7 @@ void msm_csiphy_unregister_entity(struct csiphy_device *csiphy);
>   
>   extern const struct csiphy_formats csiphy_formats_8x16;
>   extern const struct csiphy_formats csiphy_formats_8x96;
> +extern const struct csiphy_formats csiphy_formats_sc7280;
>   extern const struct csiphy_formats csiphy_formats_sdm845;
>   
>   extern const struct csiphy_hw_ops csiphy_ops_2ph_1_0;
> diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
> index f9e64cbacb20..152ca984663c 100644
> --- a/drivers/media/platform/qcom/camss/camss-vfe.c
> +++ b/drivers/media/platform/qcom/camss/camss-vfe.c
> @@ -335,6 +335,7 @@ static u32 vfe_src_pad_code(struct vfe_line *line, u32 sink_code,
>   		}
>   		break;
>   	case CAMSS_660:
> +	case CAMSS_7280:
>   	case CAMSS_8x96:
>   	case CAMSS_8250:
>   	case CAMSS_8280XP:
> @@ -1693,6 +1694,7 @@ static int vfe_bpl_align(struct vfe_device *vfe)
>   	int ret = 8;
>   
>   	switch (vfe->camss->res->version) {
> +	case CAMSS_7280:
>   	case CAMSS_8250:
>   	case CAMSS_8280XP:
>   	case CAMSS_845:
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 2d8efed51912..e1cda082a3b8 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -1266,6 +1266,300 @@ static const struct resources_icc icc_res_sm8250[] = {
>   	},
>   };
>   
> +static const struct camss_subdev_resources csiphy_res_7280[] = {
> +	/* CSIPHY0 */
> +	{
> +		.regulators = {},
> +		.clock = { "csiphy0", "csiphy0_timer" },
> +		.clock_rate = { { 300000000, 400000000 },
> +				{ 300000000 } },
> +		.reg = { "csiphy0" },
> +		.interrupt = { "csiphy0" },
> +		.csiphy = {
> +			.hw_ops = &csiphy_ops_3ph_1_0,
> +			.formats = &csiphy_formats_sc7280
> +		}
> +	},
> +	/* CSIPHY1 */
> +	{
> +		.regulators = {},
> +		.clock = { "csiphy1", "csiphy1_timer" },
> +		.clock_rate = { { 300000000, 400000000 },
> +				{ 300000000 } },
> +		.reg = { "csiphy1" },
> +		.interrupt = { "csiphy1" },
> +		.csiphy = {
> +			.hw_ops = &csiphy_ops_3ph_1_0,
> +			.formats = &csiphy_formats_sc7280
> +		}
> +	},
> +	/* CSIPHY2 */
> +	{
> +		.regulators = {},
> +		.clock = { "csiphy2", "csiphy2_timer" },
> +		.clock_rate = { { 300000000, 400000000 },
> +				{ 300000000 } },
> +		.reg = { "csiphy2" },
> +		.interrupt = { "csiphy2" },
> +		.csiphy = {
> +			.hw_ops = &csiphy_ops_3ph_1_0,
> +			.formats = &csiphy_formats_sc7280
> +		}
> +	},
> +	/* CSIPHY3 */
> +	{
> +		.regulators = {},
> +		.clock = { "csiphy3", "csiphy3_timer" },
> +		.clock_rate = { { 300000000, 400000000 },
> +				{ 300000000 } },
> +		.reg = { "csiphy3" },
> +		.interrupt = { "csiphy3" },
> +		.csiphy = {
> +			.hw_ops = &csiphy_ops_3ph_1_0,
> +			.formats = &csiphy_formats_sc7280
> +		}
> +	},
> +	/* CSIPHY4 */
> +	{
> +		.regulators = {},
> +		.clock = { "csiphy4", "csiphy4_timer" },
> +		.clock_rate = { { 300000000, 400000000 },
> +				{ 300000000 } },
> +		.reg = { "csiphy4" },
> +		.interrupt = { "csiphy4" },
> +		.csiphy = {
> +			.hw_ops = &csiphy_ops_3ph_1_0,
> +			.formats = &csiphy_formats_sc7280
> +		}
> +	},
> +};
> +
> +static const struct camss_subdev_resources csid_res_7280[] = {
> +	/* CSID0 */
> +	{
> +		.regulators = { "vdda-phy", "vdda-pll" },


Please move the regulator defintion to CSIPHY.

I'm OK with regulator name as-is since the match sm8250 which this work 
derives from.

Then you may add.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

