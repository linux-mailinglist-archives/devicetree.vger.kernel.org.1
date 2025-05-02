Return-Path: <devicetree+bounces-172991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EA2AA7294
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 14:51:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BFC324A561F
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 12:51:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C39F1254B19;
	Fri,  2 May 2025 12:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cHKi5deO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9070253B71
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 12:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746190257; cv=none; b=SizKFshXcNCkBFz6AccvAXhlFk0LFyJgfU+CwQJY1dpNTFOWPP+vOSUr+gCyW/mO3Iamf4DhdL+uCmeQ4Y36mhjrbyIAMIgVuIkksNp1x5nji41czKVVh5YyNl4W0v2nqCcjnI5KiKHuso6/nmIXPezLfpFeyaLPel97bn+aYQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746190257; c=relaxed/simple;
	bh=I6QAVRToiFrvXi4WBLFZ0QTX2zbLl6IKDM8t8exjEX8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eRaWC28oLX7vONHKP94rQ6iTmqK7Ocwllu/5J5rdX3phhO22dPp/3NXo5ZFWf8B2I510oHLlRdK1KTLgPIm+m6tEsxO47Ok29gGZldh3YlzS5itRw6rpRYR4gBUfkW9WdWEdJXK6HG9o+p9g5gBPDnt7dypq9QtNb0aAkmQA0DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cHKi5deO; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-39ee5a5bb66so1127415f8f.3
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 05:50:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746190252; x=1746795052; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OVMDO5iVYdVsAgbbPuYJnfbdpZGyS2sQg1xq2ZTg1LA=;
        b=cHKi5deOJ293bf3CRIphFNNfccXuVpGeTQkweNbYsuGDGPRmyAAqXcSf5TKyhYbBxM
         B6uqGFVseCZrUIpOcXA6AV5eqC/TPGFipFGqvTsnIhQLbiOdj7CBFbETeiQQ2mSLXotS
         M+46dYNWyhaOiiV9Htsi/iJNJWUVK4XLrHuEr9mUrslroilTvHcIe5Rmd/SARHlCKZQg
         T7AvoB5qPsb3scm1XUwFntqLFeBFknb2WhhfhT9liYd9nrknsSIPF6NcxWgOOFwrrifk
         eI2M5D4cP40H9elbFCMdMXJ3J1cp3WMdeEljoW5SX20hKkz6EOafP8sbBiDw8m/04POJ
         Ukxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746190252; x=1746795052;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OVMDO5iVYdVsAgbbPuYJnfbdpZGyS2sQg1xq2ZTg1LA=;
        b=YND8XHiO2BEZ8h6i1U5d7YRqFRQDycLeEwAivuUEygW3QLrinJEk9GceOkiBsHRDPN
         GpypN6iNkyvmu56Yxei8a0LKFrclZyKYqQ4XI+W0K3KJf/3R5eiU2+a9VV/yrkpcZKVl
         AeGR7BcjEIJkOADoYowjWsHwtvDQJ/0gRLnFreBggUpaOhRTs87MfCH68rVTuTP8nNX8
         RgigxmtHvJ8RtmbfrLonTOC5fiRmus5CNje+5Qh3ZJJz7JX5zFLgAI4pfJ9aRalFUbNe
         mE2841u/Q11h4u4j1zzWE9DOJYSARJ3RP2dcGbzPg3LvcDAVD4CjahBf10Z8yZx2MF3H
         DX8A==
X-Forwarded-Encrypted: i=1; AJvYcCV4uHHvf0eEUsrJsXoFVQ/j3IbYHP2gscQEAiPfbkqGPpKuCRcEfgZAvLXPSoBb7h2bj3d2rI3x9Rxe@vger.kernel.org
X-Gm-Message-State: AOJu0YwtXgoo2rJUeUjJ95gVroj7QrRVqNE2YtDVmcKI5JksR0s8mEaD
	EkNkPTIaaEt//jBOwfRF2hX0VYQtyreiPOqQ3J7pb/P4sZzWm2D4zoBwhLXBlN8=
X-Gm-Gg: ASbGncs2QH2YLUqTbHV5BDxX4XUWn56fdz8LU258giBYqhpRVAmMBaotMHlbGUxP1vx
	dK+qa7Tgdh3gKXpYqwXCB+ydgciFJUHdAwDlzrFy/g+MXleUbJFe7SYlz48WMxlVJiwBJwAzXuX
	2/vktIKDrc24O82Vwt6Ya2MGSqQ2eSwldITizWGHK/zGpcNSZmShvrStb6zKQdybHQ2uCuiCmhL
	rmCzlHxz/YKZhnwsaBSGDImHi7ooc/MrApg3ZcSdLZgua06we27VFUY60xgqesRwDeExfY/opza
	UvejnLt7jmpwfv/9GaRKhmNunOSGz073jrCdygZJSB1FOt1aW8WzwV/FHbAoeZtpjblQs1zssKr
	Oyygr31D4ikyQg2M+
X-Google-Smtp-Source: AGHT+IEpWxj8o8pcRmbEsdS/lBTeH4fuOpeC4FeLOdr9sgL5/27OXW/XpA743y7zHGnyxTK8bCoWtA==
X-Received: by 2002:a05:6000:186b:b0:3a0:90bf:b9b with SMTP id ffacd0b85a97d-3a099ad40dcmr1861666f8f.8.1746190252191;
        Fri, 02 May 2025 05:50:52 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b2aecb54sm88637035e9.10.2025.05.02.05.50.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 May 2025 05:50:51 -0700 (PDT)
Message-ID: <6bd73ae8-28eb-42da-b916-fadc114e2fd4@linaro.org>
Date: Fri, 2 May 2025 13:50:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 14/23] media: iris: Add handling for no show frames
To: Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Stefan Schmidt <stefan.schmidt@linaro.org>, Hans Verkuil
 <hverkuil@xs4all.nl>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 20250417-topic-sm8x50-iris-v10-v7-0-f020cb1d0e98@linaro.org,
 20250424-qcs8300_iris-v5-0-f118f505c300@quicinc.com
References: <20250502-qcom-iris-hevc-vp9-v3-0-552158a10a7d@quicinc.com>
 <20250502-qcom-iris-hevc-vp9-v3-14-552158a10a7d@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250502-qcom-iris-hevc-vp9-v3-14-552158a10a7d@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/05/2025 20:13, Dikshita Agarwal wrote:
> Firmware sends the picture type as NO_SHOW for frames which are not
> supposed to be displayed, add handling for the same in driver to drop
> them.
> 
> Acked-by: Vikash Garodia <quic_vgarodia@quicinc.com>
> Signed-off-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
> ---
>   drivers/media/platform/qcom/iris/iris_hfi_gen2_defines.h  | 1 +
>   drivers/media/platform/qcom/iris/iris_hfi_gen2_response.c | 4 +++-
>   2 files changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/qcom/iris/iris_hfi_gen2_defines.h b/drivers/media/platform/qcom/iris/iris_hfi_gen2_defines.h
> index 806f8bb7f505..666061a612c3 100644
> --- a/drivers/media/platform/qcom/iris/iris_hfi_gen2_defines.h
> +++ b/drivers/media/platform/qcom/iris/iris_hfi_gen2_defines.h
> @@ -113,6 +113,7 @@ enum hfi_picture_type {
>   	HFI_PICTURE_I				= 0x00000008,
>   	HFI_PICTURE_CRA				= 0x00000010,
>   	HFI_PICTURE_BLA				= 0x00000020,
> +	HFI_PICTURE_NOSHOW			= 0x00000040,
>   };
>   
>   enum hfi_buffer_type {
> diff --git a/drivers/media/platform/qcom/iris/iris_hfi_gen2_response.c b/drivers/media/platform/qcom/iris/iris_hfi_gen2_response.c
> index 3bb326843a7b..2267e220c9ea 100644
> --- a/drivers/media/platform/qcom/iris/iris_hfi_gen2_response.c
> +++ b/drivers/media/platform/qcom/iris/iris_hfi_gen2_response.c
> @@ -91,7 +91,9 @@ static int iris_hfi_gen2_get_driver_buffer_flags(struct iris_inst *inst, u32 hfi
>   	struct iris_inst_hfi_gen2 *inst_hfi_gen2 = to_iris_inst_hfi_gen2(inst);
>   	u32 driver_flags = 0;
>   
> -	if (inst_hfi_gen2->hfi_frame_info.picture_type & keyframe)
> +	if (inst_hfi_gen2->hfi_frame_info.picture_type & HFI_PICTURE_NOSHOW)
> +		driver_flags |= V4L2_BUF_FLAG_ERROR;
> +	else if (inst_hfi_gen2->hfi_frame_info.picture_type & keyframe)
>   		driver_flags |= V4L2_BUF_FLAG_KEYFRAME;
>   	else if (inst_hfi_gen2->hfi_frame_info.picture_type & HFI_PICTURE_P)
>   		driver_flags |= V4L2_BUF_FLAG_PFRAME;
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

