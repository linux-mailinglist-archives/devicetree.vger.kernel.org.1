Return-Path: <devicetree+bounces-202668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C612CB1E540
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 11:02:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 488F418A4093
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 09:02:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9820726C397;
	Fri,  8 Aug 2025 09:02:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ydXIEDL5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E40621B9E7
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 09:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754643735; cv=none; b=IxHpLIHCEdHQDrBhc20NK+6judQQFTY8bBle9l3IKcSeVnuKOdBaBs+9K+RwoW9KjjEzLb+ws/55jjp94UbZLXC698x9Ye0V45D0mW0KmzdTnKFxwTuVPxECbhi1BmmSFFcEgIWX1rl0Jb5i9+QLBPN3F98Gr+aFIyUOlMr2d3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754643735; c=relaxed/simple;
	bh=fDzavJLkQQRW13faP4JIo9BN2hll5Ct+MBqPxVN6J7o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cjP5iodt69uk5AoPC1MG9uCec0hkkHEND5g4ScL6EM1gxxv0/iWzOr1xzS20WtLBkA9BRigvs0lwPCjRYkOn7/y3M56pmXnHMKEcgs9OE/LHeU83Q84CDik85lvkx62eQEbiChVJfCuxaEryx7/4C1BK32OUz+Xp0H/37DCpFyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ydXIEDL5; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-459e210bd2dso9727685e9.1
        for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 02:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754643729; x=1755248529; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XcB29esXATuhjwQh2nnDRB1ldhsISGsvF6rcqzubLyU=;
        b=ydXIEDL5s6IEpk3HGWRXJzmq7PXjUVDDJgjc6jz75VH0Q/DOZ26CdueEBfCL9UVuu3
         86ntg2oHijBZMGQc0MewUNMmRJ1BrPlbckuEDqzOpfWjSKOWZBNCKL3mLy2ia5H3mtmD
         JoA/Wsq+v+frqi9L2MrMyMaV/BavofetGY99IALFCtEzQpH/X+PxVyYcyO9CPW/wpyF0
         aVZJd2DueU5dLr9+PF93NJTLlaERNkq99PrXvV3Qa5UH2ZbB90W56pFVjj6X5KYz4F0i
         IwNDAwCKnSEzNp1W0mAmbK1UDD5pH68ryvDCONbJ/q0gspA/HkIh/D+RH5ZmZwaCSV28
         c8wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754643729; x=1755248529;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XcB29esXATuhjwQh2nnDRB1ldhsISGsvF6rcqzubLyU=;
        b=sXeFwmJ+l7wnt1hxuqPQaIVgM6Tgb6P2VdHI4uLo3wISq84oU3OqZdw3GKkwI7r4eA
         Be8Gqi7BSvLPXliz4LnlUwK1GaHo+0pP7szDueU9kEnTHvpS/12bUePUBlyyp8Nkply1
         Nb+AWvGk0ASBYd9WAiK903csirPOKuFJNF0RunHrhIyXhhwviuGyvbao5oKyCfqnFmRH
         J1TMEcCl8nOUyrllauGOqfws2StALTw+CpY0XtllCTTCnOI3mqHkUy4H31maCuvTLgdi
         uynJiDcGkj/ZskvZORhBf/H77ADuMeutmGonhrqd8SolpKnb0nOIJSjBx/Bcs/k7Gw+d
         qz1Q==
X-Forwarded-Encrypted: i=1; AJvYcCVaF9nRfSQot+hc/GJEaD2FZ0rQPKOh90inrdAQwtcnH8Dey+rMiqtUzYoaFPDPRaydMR6dPiU2dW2o@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6T2IOwh0uzS9bxOJu95RiXebakGBemIxeJR32zD7wlnu7Zp8C
	n6g5ZCYvacK9INzz9UvXT27MKm2X0CoJ6tGnd3+ZBVlU5Y6RJxn5eH4kXniUIm30txo=
X-Gm-Gg: ASbGncsjOXLWV9G5AmOEhklOpqa/v2vsQqkv/VcHuBz8BW8vrEP9FhabZx1pcaQYdyX
	f0xhpVOK1TbU7puJeekDroV6fgLcXQkjtyo5bPYqKgtv610pwH5MnyN9hos1Q2llatlN6+YkSfG
	apNe8l+d6JGNvjus4lRjyFS7I1oCDEYWIo0nxRclMUWiCzn0HE6dzSUi0pdWl6ROk1WhQaie3s9
	43T6yDxL/kDM3oa2xwef6pfIl1E05AOCFvSQodLpd4qfcRyjEnS+RAENoYPNH6lGicv9SCtd5sq
	COdfXDAExNUwY3/mSL6gg5fIdXgwHYF9oZMVUtRs0hx70aSpyxCG3yUvCIZcqafpWgkvMhqSuW6
	x46RBfwvgotUL28RfqrdrS2QJrip4qReISDtUxgngD1K3yjQdeL4mrZtWk271pSo=
X-Google-Smtp-Source: AGHT+IF4xWpCF3XDsGBbn+mook9Gvgj49NOgEPXm0we3aHZF2BikwKecUFu5oecUVvF8h37VelrB2Q==
X-Received: by 2002:a05:6000:2482:b0:3b6:162a:8e08 with SMTP id ffacd0b85a97d-3b8f97c56bfmr6003028f8f.12.1754643728792;
        Fri, 08 Aug 2025 02:02:08 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459e0a24bf1sm153914825e9.1.2025.08.08.02.02.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Aug 2025 02:02:08 -0700 (PDT)
Message-ID: <00db8dc6-f8a6-42cc-ba5c-803ab56b9a06@linaro.org>
Date: Fri, 8 Aug 2025 10:02:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 6/8] media: venus: core: Add qcm2290 DT compatible and
 resource data
To: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>,
 quic_vgarodia@quicinc.com, quic_dikshita@quicinc.com, krzk+dt@kernel.org,
 konradybcio@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
 mchehab@kernel.org, robh@kernel.org, andersson@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250808085300.1403570-1-jorge.ramirez@oss.qualcomm.com>
 <20250808085300.1403570-7-jorge.ramirez@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250808085300.1403570-7-jorge.ramirez@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/08/2025 09:52, Jorge Ramirez-Ortiz wrote:
> Add a qcm2290 compatible binding to the Venus core.
> 
> The maximum concurrency is video decode at 1920x1080 (FullHD) with video
> encode at 1280x720 (HD).
> 
> The driver is not available to firmware versions below 6.0.55 due to an
> internal requirement for secure buffers.
> 
> The bandwidth tables incorporate a conservative safety margin to ensure
> stability under peak DDR and interconnect load conditions.
> 
> Co-developed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Reviewed-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
> ---
>   drivers/media/platform/qcom/venus/core.c | 50 ++++++++++++++++++++++++
>   1 file changed, 50 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
> index 9604a7eed49d..a7c960d1d818 100644
> --- a/drivers/media/platform/qcom/venus/core.c
> +++ b/drivers/media/platform/qcom/venus/core.c
> @@ -1070,10 +1070,60 @@ static const struct venus_resources sc7280_res = {
>   	.enc_nodename = "video-encoder",
>   };
>   
> +static const struct bw_tbl qcm2290_bw_table_dec[] = {
> +	{ 352800, 597000, 0, 746000, 0 }, /* 1080p@30 + 720p@30 */
> +	{ 244800, 413000, 0, 516000, 0 }, /* 1080p@30 */
> +	{ 216000, 364000, 0, 454000, 0 }, /* 720p@60  */
> +	{ 108000, 182000, 0, 227000, 0 }, /* 720p@30  */
> +};
> +
> +static const struct bw_tbl qcm2290_bw_table_enc[] = {
> +	{ 352800, 396000, 0, 0, 0 }, /* 1080p@30 + 720p@30 */
> +	{ 244800, 275000, 0, 0, 0 }, /* 1080p@30 */
> +	{ 216000, 242000, 0, 0, 0 }, /* 720p@60  */
> +	{ 108000, 121000, 0, 0, 0 }, /* 720p@30  */
> +};
> +
> +static const struct firmware_version min_fw = {
> +	.major = 6, .minor = 0, .rev = 55,
> +};
> +
> +static const struct venus_resources qcm2290_res = {
> +	.bw_tbl_dec = qcm2290_bw_table_dec,
> +	.bw_tbl_dec_size = ARRAY_SIZE(qcm2290_bw_table_dec),
> +	.bw_tbl_enc = qcm2290_bw_table_enc,
> +	.bw_tbl_enc_size = ARRAY_SIZE(qcm2290_bw_table_enc),
> +	.clks = { "core", "iface", "bus", "throttle" },
> +	.clks_num = 4,
> +	.vcodec0_clks = { "vcodec0_core", "vcodec0_bus" },
> +	.vcodec_clks_num = 2,
> +	.vcodec_pmdomains = (const char *[]) { "venus", "vcodec0" },
> +	.vcodec_pmdomains_num = 2,
> +	.opp_pmdomain = (const char *[]) { "cx" },
> +	.vcodec_num = 1,
> +	.hfi_version = HFI_VERSION_4XX,
> +	.vpu_version = VPU_VERSION_AR50_LITE,
> +	.max_load = 352800,
> +	.num_vpp_pipes = 1,
> +	.vmem_id = VIDC_RESOURCE_NONE,
> +	.vmem_size = 0,
> +	.vmem_addr = 0,
> +	.cp_start = 0,
> +	.cp_size = 0x70800000,
> +	.cp_nonpixel_start = 0x1000000,
> +	.cp_nonpixel_size = 0x24800000,
> +	.dma_mask = 0xe0000000 - 1,
> +	.fwname = "qcom/venus-6.0/venus.mbn",
> +	.dec_nodename = "video-decoder",
> +	.enc_nodename = "video-encoder",
> +	.min_fw = &min_fw,
> +};
> +
>   static const struct of_device_id venus_dt_match[] = {
>   	{ .compatible = "qcom,msm8916-venus", .data = &msm8916_res, },
>   	{ .compatible = "qcom,msm8996-venus", .data = &msm8996_res, },
>   	{ .compatible = "qcom,msm8998-venus", .data = &msm8998_res, },
> +	{ .compatible = "qcom,qcm2290-venus", .data = &qcm2290_res, },
>   	{ .compatible = "qcom,sc7180-venus", .data = &sc7180_res, },
>   	{ .compatible = "qcom,sc7280-venus", .data = &sc7280_res, },
>   	{ .compatible = "qcom,sdm660-venus", .data = &sdm660_res, },

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

