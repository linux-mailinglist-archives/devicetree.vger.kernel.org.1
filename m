Return-Path: <devicetree+bounces-200198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC2BB13BBD
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 15:45:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 38AA6188F276
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 13:45:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C7C826A08D;
	Mon, 28 Jul 2025 13:45:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lPAYhBMj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 951F5267B01
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 13:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753710319; cv=none; b=ooaj5HTHE0s3EUOTmsXj9Aq9AO6dM8IBJNSXaUCY37Ge/c434XuXsmc9lVxPJNig6eeV9kJtEe/RXmHrTHFH3NAv7b0Z1HE3rHnfjRr3K4Yd3wuYi6ouYJ3BmQsemDcW61qH8buSdm8APNrgdyegT/Q+B6I0wpesdHMksXyBzr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753710319; c=relaxed/simple;
	bh=qNY+H8nKrwqU1NbbXJfOEkBbcio8zn4qCa6RuSXOmis=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=baKiyNCgCLO55Ep//6/5FUZFJRDeVQ/QMZ/2LopBaSb9iAKRJhRob7UTOt+lVOdJHBWEA0xiW8kVXklq6SMQ2//DJNImmkEi5/RJYIbFXsMR/QhYt6JxGoUl6hQkBsEI1T3HBGUq1pNeyWOdALuZGb3CzzWuHx0FGFffJRZoe9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lPAYhBMj; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-60c4521ae2cso7850644a12.0
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 06:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753710316; x=1754315116; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M9af25jiuQ+ume924hKd7aFYy7n3IXrPlhC5QmLXxXw=;
        b=lPAYhBMjU8cqtDqNcGVTpxwxvqxl4gLnDQK4TtTP69ToSd0mYGzwh6Xri925oJXXql
         BjUVt8x8oNnkV7d9d5j+5brgjRbyiUeNgXY6SwIQjxglE/nOmqsErh8FP3DR9aF53g7K
         GmAIrQGuiAmJ8hRKI/x8zTeAUwdRKvTYETWqdmC73y40Gfm7uL6NDAH+brDJc0/UszOU
         +d2wFqoE80cbXXSOtP/Nl3NkM0lx3C0J0CGBeDLUX3ac1hBOTtskRpfsTohHclw6Iwre
         5yGXAJ8Ds51Cv5bTq8Djhvwzmb2087KnuHNblUwK10e3aYfVejdbJiLnXbKZtP8eUkDL
         j0qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753710316; x=1754315116;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M9af25jiuQ+ume924hKd7aFYy7n3IXrPlhC5QmLXxXw=;
        b=eG4GaPjt/MwozC7zf0C1akPW0xX/DO6DkdEd9flH1q04vGPBCoCEBwqRJN4EsE9QHf
         st8Yo7PEBSRnD76i369aK5L2kYXvbx+gIaGL68DbwbygTW7Kql28juVn+HshiGorMREp
         KCEGWE90VPZN4Ev3RQKAdD7kiCKwQRheWECVgjhwtJ/Sj+rYH6YVRr4CI5PxDTxmGxzC
         ejt+ZNl1gXh1sKdC5EyfdEvLiAJf5JNuZE5U7WokeRmJ0KraS9BKjHwFO6/hehn2SeuH
         VzlDIr03Z6KH2Qr1Ppt7TJzlU+A0+f3q+H2H7kYHXnVWma0n0mRsrbNQAhSUwFVofOl8
         XfGQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZFFne36Hytg2iUBmTZ7Rswvxp40nA7uL1iJwh0sLabPt3Moe4H8hmxLjGB0MFw8f81sa1McogZrQE@vger.kernel.org
X-Gm-Message-State: AOJu0YxGfyQgfzu5Xl5DAPbrghQWNAGfywvEbiyC13Bgie1UufhXFCth
	WQat40hprZ4xavW/2jtA871X/sFKaGbDggZq+O0oqmWra9VlYsfWwE8Z4sQ+XRHEMHY=
X-Gm-Gg: ASbGncucufoae/nxfKkT2830u3Vw6F5xMcensOgRn5i4Q66qQLcz5Jd8/qvXHr1KFaK
	5OAtd1h8k8eM5Kv0Vie0b/vlt0MtnORiRvZUEHIr1j0Y6edLoU1AjMbA3Oah+V8ptEdhPEp70EQ
	vg7B1OjyYmNjoM0EtPi3vON1w2EcqLRRIsmCTtQ2hcvH+yVTQa70RUoYjCqc5zsg//K5sdiXzVR
	9Kc+DFYXC6k6YsEh8wgkoTFs9+hJ1uppQRJ/jACP17dcStMltgl8Gi3/h6JZWy2h8bOPogvMvwv
	3uwJ/V7ooZxIE49mle/HxzpoYPDkmw+2NwR3XYCmWkPpwPwPhBzmS+wY15ODpmENSRktUqI2k71
	dDmRQsklIV8YOyETV44DPWjRrkoeBui7VlAu8BEO+CDwyryR5MhvxFb6zKDwyq+HPd0/t+PmVxA
	==
X-Google-Smtp-Source: AGHT+IGd4Pa4ABn1UyusTYa3khDC/gbx26sr8pR3MExOOmpWYpRCLXp+2l8s5LKNuAnc9BeHFM/egQ==
X-Received: by 2002:a17:907:7f93:b0:aed:745:a139 with SMTP id a640c23a62f3a-af618f0233cmr1323576166b.33.1753710315686;
        Mon, 28 Jul 2025 06:45:15 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af635aa4cc9sm426634466b.107.2025.07.28.06.45.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jul 2025 06:45:15 -0700 (PDT)
Message-ID: <63a0e35d-8e26-410c-ac44-225c8d8b37a9@linaro.org>
Date: Mon, 28 Jul 2025 14:45:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/9] media: qcom: camss: Rename camss-vfe-780.c to
 camss-vfe-gen3.c
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250703171938.3606998-1-quic_vikramsa@quicinc.com>
 <20250703171938.3606998-3-quic_vikramsa@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250703171938.3606998-3-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/07/2025 18:19, Vikram Sharma wrote:
> Rename the file camss-vfe-780.c to camss-vfe-gen3.c to enable
> reuse of VFE logic across multiple SoCs.
> 
> The SA8775P SoC includes VFE 690, which is very similar to
> VFE 780, with only minor differences in register bitfields.
> Rename prepares the codebase for supporting additional SoCs
> without duplicating VFE logic.
> 
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> ---
>   drivers/media/platform/qcom/camss/Makefile             |  2 +-
>   .../qcom/camss/{camss-vfe-780.c => camss-vfe-gen3.c}   |  8 ++++----
>   drivers/media/platform/qcom/camss/camss-vfe.h          |  2 +-
>   drivers/media/platform/qcom/camss/camss.c              | 10 +++++-----
>   4 files changed, 11 insertions(+), 11 deletions(-)
>   rename drivers/media/platform/qcom/camss/{camss-vfe-780.c => camss-vfe-gen3.c} (96%)
> 
> diff --git a/drivers/media/platform/qcom/camss/Makefile b/drivers/media/platform/qcom/camss/Makefile
> index ee869e69521a..76845a456c45 100644
> --- a/drivers/media/platform/qcom/camss/Makefile
> +++ b/drivers/media/platform/qcom/camss/Makefile
> @@ -19,7 +19,7 @@ qcom-camss-objs += \
>   		camss-vfe-17x.o \
>   		camss-vfe-480.o \
>   		camss-vfe-680.o \
> -		camss-vfe-780.o \
> +		camss-vfe-gen3.o \
>   		camss-vfe-gen1.o \
>   		camss-vfe.o \
>   		camss-video.o \
> diff --git a/drivers/media/platform/qcom/camss/camss-vfe-780.c b/drivers/media/platform/qcom/camss/camss-vfe-gen3.c
> similarity index 96%
> rename from drivers/media/platform/qcom/camss/camss-vfe-780.c
> rename to drivers/media/platform/qcom/camss/camss-vfe-gen3.c
> index b9812d70f91b..93d16b0951e9 100644
> --- a/drivers/media/platform/qcom/camss/camss-vfe-780.c
> +++ b/drivers/media/platform/qcom/camss/camss-vfe-gen3.c
> @@ -1,6 +1,6 @@
>   // SPDX-License-Identifier: GPL-2.0
>   /*
> - * Qualcomm MSM Camera Subsystem - VFE (Video Front End) Module v780 (SM8550)
> + * Qualcomm MSM Camera Subsystem - VFE (Video Front End) Module gen3
>    *
>    * Copyright (c) 2024 Qualcomm Technologies, Inc.
>    */
> @@ -113,14 +113,14 @@ static inline void vfe_reg_update_clear(struct vfe_device *vfe,
>   	camss_reg_update(vfe->camss, vfe->id, port_id, true);
>   }
>   
> -static const struct camss_video_ops vfe_video_ops_780 = {
> +static const struct camss_video_ops vfe_video_ops_gen3 = {
>   	.queue_buffer = vfe_queue_buffer_v2,
>   	.flush_buffers = vfe_flush_buffers,
>   };
>   
>   static void vfe_subdev_init(struct device *dev, struct vfe_device *vfe)
>   {
> -	vfe->video_ops = vfe_video_ops_780;
> +	vfe->video_ops = vfe_video_ops_gen3;
>   }
>   
>   static void vfe_global_reset(struct vfe_device *vfe)
> @@ -140,7 +140,7 @@ static int vfe_halt(struct vfe_device *vfe)
>   	return 0;
>   }
>   
> -const struct vfe_hw_ops vfe_ops_780 = {
> +const struct vfe_hw_ops vfe_ops_gen3 = {
>   	.global_reset = vfe_global_reset,
>   	.hw_version = vfe_hw_version,
>   	.isr = vfe_isr,
> diff --git a/drivers/media/platform/qcom/camss/camss-vfe.h b/drivers/media/platform/qcom/camss/camss-vfe.h
> index a23f666be753..02d9162ffd93 100644
> --- a/drivers/media/platform/qcom/camss/camss-vfe.h
> +++ b/drivers/media/platform/qcom/camss/camss-vfe.h
> @@ -244,7 +244,7 @@ extern const struct vfe_hw_ops vfe_ops_4_8;
>   extern const struct vfe_hw_ops vfe_ops_170;
>   extern const struct vfe_hw_ops vfe_ops_480;
>   extern const struct vfe_hw_ops vfe_ops_680;
> -extern const struct vfe_hw_ops vfe_ops_780;
> +extern const struct vfe_hw_ops vfe_ops_gen3;
>   
>   int vfe_get(struct vfe_device *vfe);
>   void vfe_put(struct vfe_device *vfe);
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 1431e08dc04a..310b5cd8de5f 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -2371,7 +2371,7 @@ static const struct camss_subdev_resources vfe_res_8550[] = {
>   			.is_lite = false,
>   			.has_pd = true,
>   			.pd_name = "ife0",
> -			.hw_ops = &vfe_ops_780,
> +			.hw_ops = &vfe_ops_gen3,
>   			.formats_rdi = &vfe_formats_rdi_845,
>   			.formats_pix = &vfe_formats_pix_845
>   		}
> @@ -2395,7 +2395,7 @@ static const struct camss_subdev_resources vfe_res_8550[] = {
>   			.is_lite = false,
>   			.has_pd = true,
>   			.pd_name = "ife1",
> -			.hw_ops = &vfe_ops_780,
> +			.hw_ops = &vfe_ops_gen3,
>   			.formats_rdi = &vfe_formats_rdi_845,
>   			.formats_pix = &vfe_formats_pix_845
>   		}
> @@ -2419,7 +2419,7 @@ static const struct camss_subdev_resources vfe_res_8550[] = {
>   			.is_lite = false,
>   			.has_pd = true,
>   			.pd_name = "ife2",
> -			.hw_ops = &vfe_ops_780,
> +			.hw_ops = &vfe_ops_gen3,
>   			.formats_rdi = &vfe_formats_rdi_845,
>   			.formats_pix = &vfe_formats_pix_845
>   		}
> @@ -2441,7 +2441,7 @@ static const struct camss_subdev_resources vfe_res_8550[] = {
>   		.vfe = {
>   			.line_num = 4,
>   			.is_lite = true,
> -			.hw_ops = &vfe_ops_780,
> +			.hw_ops = &vfe_ops_gen3,
>   			.formats_rdi = &vfe_formats_rdi_845,
>   			.formats_pix = &vfe_formats_pix_845
>   		}
> @@ -2463,7 +2463,7 @@ static const struct camss_subdev_resources vfe_res_8550[] = {
>   		.vfe = {
>   			.line_num = 4,
>   			.is_lite = true,
> -			.hw_ops = &vfe_ops_780,
> +			.hw_ops = &vfe_ops_gen3,
>   			.formats_rdi = &vfe_formats_rdi_845,
>   			.formats_pix = &vfe_formats_pix_845
>   		}
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

