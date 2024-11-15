Return-Path: <devicetree+bounces-122064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C389CD9DD
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 08:25:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 36CE4B2541E
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 07:25:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C9F918BBB4;
	Fri, 15 Nov 2024 07:24:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mK2vnH/+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FCB018B475
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 07:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731655487; cv=none; b=BnSMmq6Ss2FBpiwbU5+5oDYTLw4MqSd6bS2SMOaRQGR5zrHAMv6tajmGTOSaig/aJzLNiEm4Sgxv/jMEsIPXhGqgYSjofmXUPHBZEMufu9o/osgXHnqOOmePOxJTjTYSYvO4lmLwpCCq4pA2QmF/+g9pZFpA1SRSDnhIzxv5J2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731655487; c=relaxed/simple;
	bh=z0nALUEuN/4TGYluZlZaprFmWTCwnSnx8G2l7brW9iM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RTGi3rKqiM5cXmdu/reiBlfY0lTpscMTVAvmzF3w/j6WRyU3zDMtPDa7/+RbUl1wLwpawfUNBnkoij83UycrvNv+71fm/4k/aIY9nADAdPH5wIQbIW/0FjXlHtzkbmYr/PxtVdjsGyfh10yO7LcTMOHB8EvLsLuP0uVBozSEKeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mK2vnH/+; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-539e59dadebso1659125e87.0
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 23:24:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731655484; x=1732260284; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7EcWNS9byN0gR6B1OS6Zt5wq4ZVggPDyxl/u1m3HyWw=;
        b=mK2vnH/+7KUxvgvNsU/iTEglaxUrhCe4jeCy87YYwyxlLxeUsEipYFWnYW+kqKTqqN
         OMeiXTEgSCGje+eROQrmvvK2SCHhVLb0AyxXkai9bYJxr9fWOe6D4ICVJmaywNE4LEih
         NJkUAebwhyB0UJUP38ag89q5CARgqupBwVDqGj/6L57R8wV5vCkI2oYTSjDWVLHoUKzV
         L8xI2Q7tVYLEd9h/uxP2l/VvuSIGH/8H/1W2Rczziut9Fh3bdxvbog7op08o/C46VBaJ
         RrpJEoJX1nbUebA3v28agD48Fl2fMZQpwg4kUqPwMNoK9McbQus0uNTk7TIcnrQbdkkl
         XVew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731655484; x=1732260284;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7EcWNS9byN0gR6B1OS6Zt5wq4ZVggPDyxl/u1m3HyWw=;
        b=m8xN9yBX5EODT30bn4r+whyGHcgA/yvJhWpZ/zxPFFQ2jcAZIwA7PxlEqxcOdRordO
         vK0evYvayF6WeCYYuT3zFVuXK64r2SBCXXw5MMh0jEUi+vVI02ueUfW66lJ9rV6vXe6Q
         YO1syDE16VejTYEn6o2aI6lI/YPJRQDnt4J8WEqVoLIht+N2ApYNjXcmdSibg5WTVfgZ
         pkjZ4Nu2rdqV3LJrbjEE0T6/hzMZ8IgsssJUUAlXHVtgVnYrltd7ZSVsI7tQbtDCQtA2
         pJ05b0ox0qCERSrvROUf+UDySn84/O8tl4uD/kLZQzfWQwf7EPTN5rHwwYcBf0PPnl6a
         7wFA==
X-Forwarded-Encrypted: i=1; AJvYcCXRJkMLJErBY968Cn7vtjhwARH6Db0jGAnh94w5yqmnWd/LB6mbo4fvs8ufMGtfMxKnULG2OrP9rVo8@vger.kernel.org
X-Gm-Message-State: AOJu0YyJ8dYmo7NwW1HPCHQyx42vnBDh7v8Cl9sAF3lq1u+6dLawop9F
	CAduzAu1DJcbT6RbdDPJvEEX7gTh38vdYyEJoSuhjUbRU0rM50rBL+Ckz/3TU0A=
X-Google-Smtp-Source: AGHT+IE1gwUi6awx9Luumx73oS1Fh8FJL1s1HD8Y9lRpd4u8UuP25XzDlm/MGaevUAG7bpsCoP/9FQ==
X-Received: by 2002:a05:6512:ad6:b0:53d:a722:dfe7 with SMTP id 2adb3069b0e04-53dab3b98e3mr572679e87.55.1731655483568;
        Thu, 14 Nov 2024 23:24:43 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53da650169bsm464232e87.105.2024.11.14.23.24.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Nov 2024 23:24:42 -0800 (PST)
Date: Fri, 15 Nov 2024 09:24:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Akhil P Oommen <quic_akhilpo@quicinc.com>, 
	Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Konrad Dybcio <konradybcio@kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Bjorn Andersson <andersson@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Connor Abbott <cwabbott0@gmail.com>, linux-pm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: Re: [PATCH RFC 4/8] drm/msm: adreno: dynamically generate GMU bw
 table
Message-ID: <rvfrkb4v7cilzu3prv5dr2dni7m3jv3crhmto3uume5v5wxr5m@apvyb4lc2rre>
References: <20241113-topic-sm8x50-gpu-bw-vote-v1-0-3b8d39737a9b@linaro.org>
 <20241113-topic-sm8x50-gpu-bw-vote-v1-4-3b8d39737a9b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241113-topic-sm8x50-gpu-bw-vote-v1-4-3b8d39737a9b@linaro.org>

On Wed, Nov 13, 2024 at 04:48:30PM +0100, Neil Armstrong wrote:
> The Adreno GPU Management Unit (GMU) can also scale the ddr
> bandwidth along the frequency and power domain level, but for
> now we statically fill the bw_table with values from the
> downstream driver.
> 
> Only the first entry is used, which is a disable vote, so we
> currently rely on scaling via the linux interconnect paths.
> 
> Let's dynamically generate the bw_table with the vote values
> previously calculated from the OPPs.

Nice to see this being worked upon. I hope the code can is generic
enough so that we can use it from other adreno_foo_build_bw_table()
functions.

> 
> Those entried will then be used by the GMU when passing the
> appropriate bandwidth level when voting for a gpu frequency.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/gpu/drm/msm/adreno/a6xx_hfi.c | 48 +++++++++++++++++++++++++++--------
>  1 file changed, 37 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_hfi.c b/drivers/gpu/drm/msm/adreno/a6xx_hfi.c
> index cb8844ed46b29c4569d05eb7a24f7b27e173190f..9a89ba95843e7805d78f0e5ddbe328677b6431dd 100644
> --- a/drivers/gpu/drm/msm/adreno/a6xx_hfi.c
> +++ b/drivers/gpu/drm/msm/adreno/a6xx_hfi.c
> @@ -596,22 +596,48 @@ static void a730_build_bw_table(struct a6xx_hfi_msg_bw_table *msg)
>  	msg->cnoc_cmds_data[1][0] = 0x60000001;
>  }
>  
> -static void a740_build_bw_table(struct a6xx_hfi_msg_bw_table *msg)
> +static void a740_generate_bw_table(struct adreno_gpu *adreno_gpu, struct a6xx_gmu *gmu,
> +				   struct a6xx_hfi_msg_bw_table *msg)
>  {
> -	msg->bw_level_num = 1;
> +	const struct a6xx_info *info = adreno_gpu->info->a6xx;
> +	unsigned int i, j;
>  
> -	msg->ddr_cmds_num = 3;
>  	msg->ddr_wait_bitmask = 0x7;
>  
> -	msg->ddr_cmds_addrs[0] = cmd_db_read_addr("SH0");
> -	msg->ddr_cmds_addrs[1] = cmd_db_read_addr("MC0");
> -	msg->ddr_cmds_addrs[2] = cmd_db_read_addr("ACV");
> +	for (i = 0; i < 3; i++) {
> +		if (!info->bcm[i].name)
> +			break;
> +		msg->ddr_cmds_addrs[i] = cmd_db_read_addr(info->bcm[i].name);
> +	}
> +	msg->ddr_cmds_num = i;
>  
> -	msg->ddr_cmds_data[0][0] = 0x40000000;
> -	msg->ddr_cmds_data[0][1] = 0x40000000;
> -	msg->ddr_cmds_data[0][2] = 0x40000000;
> +	for (i = 0; i < gmu->nr_gpu_bws; ++i)
> +		for (j = 0; j < msg->ddr_cmds_num; j++)
> +			msg->ddr_cmds_data[i][j] = gmu->gpu_bw_votes[i][j];
> +	msg->bw_level_num = gmu->nr_gpu_bws;
> +}
> +
> +static void a740_build_bw_table(struct adreno_gpu *adreno_gpu, struct a6xx_gmu *gmu,
> +				struct a6xx_hfi_msg_bw_table *msg)
> +{
> +	if ((adreno_gpu->info->quirks & ADRENO_QUIRK_GMU_BW_VOTE) && gmu->nr_gpu_bws) {
> +		a740_generate_bw_table(adreno_gpu, gmu, msg);
> +	} else {

Why do we need a fallback code here?

> +		msg->bw_level_num = 1;
>  
> -	/* TODO: add a proper dvfs table */
> +		msg->ddr_cmds_num = 3;
> +		msg->ddr_wait_bitmask = 0x7;
> +
> +		msg->ddr_cmds_addrs[0] = cmd_db_read_addr("SH0");
> +		msg->ddr_cmds_addrs[1] = cmd_db_read_addr("MC0");
> +		msg->ddr_cmds_addrs[2] = cmd_db_read_addr("ACV");
> +
> +		msg->ddr_cmds_data[0][0] = 0x40000000;
> +		msg->ddr_cmds_data[0][1] = 0x40000000;
> +		msg->ddr_cmds_data[0][2] = 0x40000000;
> +
> +		/* TODO: add a proper dvfs table */

I think TODO is unapplicable anymore.

> +	}
>  
>  	msg->cnoc_cmds_num = 1;
>  	msg->cnoc_wait_bitmask = 0x1;
> @@ -691,7 +717,7 @@ static int a6xx_hfi_send_bw_table(struct a6xx_gmu *gmu)
>  	else if (adreno_is_a730(adreno_gpu))
>  		a730_build_bw_table(msg);
>  	else if (adreno_is_a740_family(adreno_gpu))
> -		a740_build_bw_table(msg);
> +		a740_build_bw_table(adreno_gpu, gmu, msg);
>  	else
>  		a6xx_build_bw_table(msg);
>  
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

