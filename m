Return-Path: <devicetree+bounces-127874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2209B9E6929
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 09:41:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0939C162D6B
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 08:41:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B1621DEFFC;
	Fri,  6 Dec 2024 08:41:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kbpsUQqM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C396FBF
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 08:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733474482; cv=none; b=pRim7Ln6niJIbZhPQK1yaKGMD5+6tfVQkJLAt6dSWh+KwZJZbmkEGwXIcafI0XVs+ACSy/yhgiVkGvtabTuFC/CdPWQUENvUNouJUTnLvYU2+WimbEVwu/WbL75+5yUKDhxm4BjSoH9ps/N4gI1pY1CaoneRW/UgHFDWrc2VcHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733474482; c=relaxed/simple;
	bh=bcX/8gOs6XW0Ygt0hDstjuJt5JxZsVwkevrtwRWGGhM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r9C0HyIH5l7pBoFoZdi1SbIBaHFWRbH2TkjasK9ZAGfX7m0iLtdIiv70c8aHPLIuIlvXtFkZpGCgv57nc4yIV2N0qs1Okceen/njRGfyw6b/bfLsSZR2jjT47zM5h3tNC0imYukzLzGqZ7KtkpCj0PQ+M9B5aojyIo5IjrdesBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kbpsUQqM; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-53e224bbaccso2008615e87.3
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 00:41:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733474478; x=1734079278; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=li5k7w3RncPwKsG06G6cusXPPrs5ee6rU92nmMBGwZA=;
        b=kbpsUQqMbo1umoI1M85Ld5epUYGoFWjMKKtpu070h+kxpeauKfrChvnUV38EwpiJ1O
         AtLZHeMfInS25/Vd8woICYkV1T8eU3ssnP/lG+f3vLm911JqwxjimIpwoyDKkQUz/n7y
         mCIVKsSUNS1ObsSAcVkVYEXdROuoo5n8GcSNbZl/7tkhrHiP0yNgwYqVbeSrwD+zGOoi
         dKZERMB3+gHRqlIfifRXOUTHDtY6CuReDCuGfms8B2lgo+iKjs4YC4bctPBI2JpEUnmV
         fs0L8rhCqD61sQCKsizoegNERQSIoVR7bernEmcB8aFhtoBU6I4yBGY/Wzjp6Wi45y/D
         ZIKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733474478; x=1734079278;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=li5k7w3RncPwKsG06G6cusXPPrs5ee6rU92nmMBGwZA=;
        b=OI6QFTj2CaMzzRtsWgJa1FwIEFkjCgMKTvGmSHk9xZDE++nmXnQnOQSr+v/Gqom3Ld
         cNKV+rGHu8Az0PjbFMGXUTn0MTj+DQ+SyppXxyY47J9OCUbcPbQ8KkMiSnpfbEG2tdtH
         XOb43w8p39mGs6mZvl0KQYNempuqbEjzysFnv3AsB7AIqhxVk5IbFy2WzyGj7T2Fp/5y
         Ql6teoME6Vx5m1vCeIwwfxZRNBo4fR5gyQjjH1hcfWPzbmI4+4Qb0A0Rw8szXIcvP4j7
         Y3IYQPPATt1tgYHo2x03R70B6doR36WOZ7mq9Ui1WFTzWnA4MsO/LD4EnKGCptmHRlUy
         dozQ==
X-Forwarded-Encrypted: i=1; AJvYcCUzLewUIWf2OcVGy3VOq1zkBpUXlYo2tk/v1U3OL0R9PtDO6NIpxF7T06CDzteKtPaSpaNu1dQQRYdz@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0XWcXtVIs45qKdFSP84NprYzrv4MyE7+SuqfzGMRmLoUlDhNT
	P7rslNdcJ1xcKPZb1YoknEOnRW5RCpo+V91ttdh83FHjxPxurHIe5DZbu2jjuhw=
X-Gm-Gg: ASbGncvQYZoheYh+NMz5IJOHOljAjPbTvWVs6Qmc2hiwlVC3Szki3icFp04XVqDshAP
	0NSNAFKc0Y/F5wc/mzE/2/akTDmCKldjlbhAI1Pm/KjK1qIcVGl/1rzD7mBZwJr3Wq3XVAe8LdP
	DYLgO6hQKXfjMAzj/Hp9U7hsj7iRiTXOOZVXdzdKSFlGB23uJEyZDllesZ+0r6riy4rRZsJo/kx
	lL/X+YwessDr8h3rjIRBSejQIGzECBpRH5XfcWSFBPMB572LviTzj20vOghZS7RXZbgU1HW5Xib
	0kEE/5fgCdkHcBY5T7Q1hSIKY05JBA==
X-Google-Smtp-Source: AGHT+IFPNVHu/d8sk7Z9glpuRmqa30hf9B+0XHZ+yeGqInSbHjdmC0Dj+A9i/LiHl6Y+WoYcHtnQtA==
X-Received: by 2002:ac2:5e84:0:b0:53e:350a:72a5 with SMTP id 2adb3069b0e04-53e350a7482mr349029e87.36.1733474478446;
        Fri, 06 Dec 2024 00:41:18 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e372c9228sm26344e87.2.2024.12.06.00.41.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 00:41:17 -0800 (PST)
Date: Fri, 6 Dec 2024 10:41:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Stephen Boyd <swboyd@chromium.org>, 
	Chandan Uddaraju <chandanu@codeaurora.org>, Guenter Roeck <groeck@chromium.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vara Reddy <quic_varar@quicinc.com>, Rob Clark <robdclark@chromium.org>, 
	Tanmay Shah <tanmay@codeaurora.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 03/45] drm/msm/dp: fix the intf_type of MST interfaces
Message-ID: <4ttrd5nrl3flexsmlmlp2jdbht23lxsrkfuuma72nf5uknkehz@xpl3d3w4kjr3>
References: <20241205-dp_mst-v1-0-f8618d42a99a@quicinc.com>
 <20241205-dp_mst-v1-3-f8618d42a99a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205-dp_mst-v1-3-f8618d42a99a@quicinc.com>

On Thu, Dec 05, 2024 at 08:31:34PM -0800, Abhinav Kumar wrote:
> Interface type of MST interfaces is currently INTF_NONE.
> Fix this to INTF_DP.

Neither subject nor commit message tell that this is limited to sa8775p
only. Please consider toggling all catalog files which are supposed to
handle MST.

> 
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> ---
>  drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_8_4_sa8775p.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_8_4_sa8775p.h b/drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_8_4_sa8775p.h
> index 907b4d7ceb470b0391d2bbbab3ce520efa2b3263..2509e28e3d6b582cd837c6aea167b3f4ad877383 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_8_4_sa8775p.h
> +++ b/drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_8_4_sa8775p.h
> @@ -375,7 +375,7 @@ static const struct dpu_intf_cfg sa8775p_intf[] = {
>  		.name = "intf_3", .id = INTF_3,
>  		.base = 0x37000, .len = 0x280,
>  		.features = INTF_SC7280_MASK,
> -		.type = INTF_NONE,
> +		.type = INTF_DP,
>  		.controller_id = MSM_DP_CONTROLLER_0,	/* pair with intf_0 for DP MST */
>  		.prog_fetch_lines_worst_case = 24,
>  		.intr_underrun = DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 30),
> @@ -393,7 +393,7 @@ static const struct dpu_intf_cfg sa8775p_intf[] = {
>  		.name = "intf_6", .id = INTF_6,
>  		.base = 0x3A000, .len = 0x280,
>  		.features = INTF_SC7280_MASK,
> -		.type = INTF_NONE,
> +		.type = INTF_DP,
>  		.controller_id = MSM_DP_CONTROLLER_0,	/* pair with intf_0 for DP MST */
>  		.prog_fetch_lines_worst_case = 24,
>  		.intr_underrun = DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 17),
> @@ -402,7 +402,7 @@ static const struct dpu_intf_cfg sa8775p_intf[] = {
>  		.name = "intf_7", .id = INTF_7,
>  		.base = 0x3b000, .len = 0x280,
>  		.features = INTF_SC7280_MASK,
> -		.type = INTF_NONE,
> +		.type = INTF_DP,
>  		.controller_id = MSM_DP_CONTROLLER_0,	/* pair with intf_0 for DP MST */
>  		.prog_fetch_lines_worst_case = 24,
>  		.intr_underrun = DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 18),
> @@ -411,7 +411,7 @@ static const struct dpu_intf_cfg sa8775p_intf[] = {
>  		.name = "intf_8", .id = INTF_8,
>  		.base = 0x3c000, .len = 0x280,
>  		.features = INTF_SC7280_MASK,
> -		.type = INTF_NONE,
> +		.type = INTF_DP,
>  		.controller_id = MSM_DP_CONTROLLER_1,	/* pair with intf_4 for DP MST */
>  		.prog_fetch_lines_worst_case = 24,
>  		.intr_underrun = DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 12),
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

