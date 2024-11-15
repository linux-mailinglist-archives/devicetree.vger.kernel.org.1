Return-Path: <devicetree+bounces-122067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E429CD9F8
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 08:33:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 75741B25087
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 07:33:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6577188006;
	Fri, 15 Nov 2024 07:33:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vlJGk5FP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276B018132A
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 07:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731656029; cv=none; b=oB+dzc5Pj7hZkVIXcThSpFP6XrnvG65n0tJ6u0oPPHvO5+xwomwnW+ExJXfDirgSS2ZSbMKse6eDCdnPX3C8KsRAnKBy7G+kBmzSi8ut+oziJ91l8fYH3bi+Ah2EDTCUEO4G4mkv5VVG5CkLpw5bVSZkUln9BeLMUXMqHCkz/90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731656029; c=relaxed/simple;
	bh=DhDT7iMvKoUsMu+17Bo1UmwumbgR9hDqrlhAcDX87U4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MUlxzzT8POBPcqZDKLL/GQ0+nr3bfOc14+9PIwwrjldP1XFSGAMM0Nix2yYWoLmF1RmM0I3JdlJqXwlGhOYCwrJQeiqxFzqv6hinBBuDgsJaVuDEr8KQwX1cz+z845cjV5p+AGLLhtNfcCYkXuUTGJV5hRGzC0P1+OsJBFjVk1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vlJGk5FP; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2ff589728e4so15811981fa.1
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 23:33:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731656026; x=1732260826; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VXUA+xFQvFcv5jH0QqKITZEkbXxSgGAOHInFqY1wEGU=;
        b=vlJGk5FP/dlpwCFVZ0r+IKCrAuMDjPkL62k0L198WF2bVpJikoBOXMtxtfMMJCD/0i
         aFb6mWIoMhnuyqXdNPwoATUwfzbcNjaDJxgqXgCtTyPMlyN6TmoCFmHbnuyS4KO8tNJK
         KOaI5hKHkLVQiNmfm3vh61mIpTCiyNDZHIspJzcgXLICf4uaD1jnXiOZZMgHBaFvWyC8
         EIQKqnq7OR0RYnJ3zNQBWH34aSATKTCU0H4U0TjvyCEL8H0PzVcv9FxuGYZmFNQZxKoy
         EaCF7Coy3TJ2vGQjHs4EoZfUPuGYYAx7rmuiJuBCE5feYfctcgdV0z4KMZdTHs04y7oj
         dJ2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731656026; x=1732260826;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VXUA+xFQvFcv5jH0QqKITZEkbXxSgGAOHInFqY1wEGU=;
        b=jV0hq7PEFt7GYGDdAhohcCF9CyirFryVx1bkZGAn25bNSS9TtbjjA6zUXOOvmLL6vv
         Z5EzhDp4/yUzm3GQhElFtOErhcB1x03e6k11EgaXoxQj4aqcUuM9Jfg9cXawgYaEU/gW
         Husq8Qs1qpb6lTAvpKfpuZxDP3dYr5iSMqUt5s8PJHUI1Q846If9jhR6BmN/Jg6RxZWV
         /fdJ7Fn9hXDNM3dwmkzU46M3txtpaUpPd1hJGl6SM/98HEGfhTpPbVo6CIVgvHEdpIEI
         uOyKdlfv5/6dY5FMRO76H7q04LkwYN2t+Azf8iY2EAM7aTkvtRLrIF1IFm8mhKFDVORK
         CfzQ==
X-Forwarded-Encrypted: i=1; AJvYcCUL2j44DxqHtHEqKpR+B2rDTrl9mNaGOhgI8JDJSZjxRNA+fhlCIqgShjG3DueM1C+Nvt8Vz+NY2imx@vger.kernel.org
X-Gm-Message-State: AOJu0YxWzFzIL0L9KJ39Ij/wvrcIiB1OwlPf8+8YbP4v0SpeB5puboas
	kJL+7F7zVp5B4JA7olAnhuJPAX+Nhx30Z3SjNCgqIYvOLnK9+Z3pkBAqQZ+d1po=
X-Google-Smtp-Source: AGHT+IEG2HyAK/keKdAkffHHfxXY9upS6+zDWPBk8B70ezx4vv7IgjX67R5jNW80lSYbongEkvCjpA==
X-Received: by 2002:a2e:a883:0:b0:2ff:5d45:883d with SMTP id 38308e7fff4ca-2ff606937e2mr5432671fa.13.1731656026282;
        Thu, 14 Nov 2024 23:33:46 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ff5aad77b9sm4273791fa.73.2024.11.14.23.33.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Nov 2024 23:33:44 -0800 (PST)
Date: Fri, 15 Nov 2024 09:33:42 +0200
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
Subject: Re: [PATCH RFC 6/8] drm/msm: adreno: enable GMU bandwidth for A740
 and A750
Message-ID: <nw2sqnxmhntvizzvygfho6nhiwfni4xfquwst5gd5g2tel6pnr@h66d4mw46jcf>
References: <20241113-topic-sm8x50-gpu-bw-vote-v1-0-3b8d39737a9b@linaro.org>
 <20241113-topic-sm8x50-gpu-bw-vote-v1-6-3b8d39737a9b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241113-topic-sm8x50-gpu-bw-vote-v1-6-3b8d39737a9b@linaro.org>

On Wed, Nov 13, 2024 at 04:48:32PM +0100, Neil Armstrong wrote:
> Now all the DDR bandwidth voting via the GPU Management Unit (GMU)
> is in place, let's declare the Bus Control Modules (BCMs) and

s/let's //g

> it's parameters in the GPU info struct and add the GMU_BW_VOTE
> quirk to enable it.

Can we define a function that checks for info.bcm[0].name isntead of
adding a quirk?

> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/gpu/drm/msm/adreno/a6xx_catalog.c | 26 ++++++++++++++++++++++++--
>  1 file changed, 24 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> index 0c560e84ad5a53bb4e8a49ba4e153ce9cf33f7ae..014a24256b832d8e03fe06a6516b5348a5c0474a 100644
> --- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> +++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> @@ -1379,7 +1379,8 @@ static const struct adreno_info a7xx_gpus[] = {
>  		.inactive_period = DRM_MSM_INACTIVE_PERIOD,
>  		.quirks = ADRENO_QUIRK_HAS_CACHED_COHERENT |
>  			  ADRENO_QUIRK_HAS_HW_APRIV |
> -			  ADRENO_QUIRK_PREEMPTION,
> +			  ADRENO_QUIRK_PREEMPTION |
> +			  ADRENO_QUIRK_GMU_BW_VOTE,
>  		.init = a6xx_gpu_init,
>  		.zapfw = "a740_zap.mdt",
>  		.a6xx = &(const struct a6xx_info) {
> @@ -1388,6 +1389,16 @@ static const struct adreno_info a7xx_gpus[] = {
>  			.pwrup_reglist = &a7xx_pwrup_reglist,
>  			.gmu_chipid = 0x7020100,
>  			.gmu_cgc_mode = 0x00020202,
> +			.bcm = {
> +				[0] = { .name = "SH0", .buswidth = 16 },
> +				[1] = { .name = "MC0", .buswidth = 4 },
> +				[2] = {
> +					.name = "ACV",
> +					.fixed = true,
> +					.perfmode = BIT(3),
> +					.perfmode_bw = 16500000,

Is it a platform property or GPU / GMU property? Can expect that there
might be several SoCs having the same GPU, but different perfmode_bw
entry?

> +				},
> +			},
>  		},
>  		.address_space_size = SZ_16G,
>  		.preempt_record_size = 4192 * SZ_1K,
> @@ -1424,7 +1435,8 @@ static const struct adreno_info a7xx_gpus[] = {
>  		.inactive_period = DRM_MSM_INACTIVE_PERIOD,
>  		.quirks = ADRENO_QUIRK_HAS_CACHED_COHERENT |
>  			  ADRENO_QUIRK_HAS_HW_APRIV |
> -			  ADRENO_QUIRK_PREEMPTION,
> +			  ADRENO_QUIRK_PREEMPTION |
> +			  ADRENO_QUIRK_GMU_BW_VOTE,
>  		.init = a6xx_gpu_init,
>  		.zapfw = "gen70900_zap.mbn",
>  		.a6xx = &(const struct a6xx_info) {
> @@ -1432,6 +1444,16 @@ static const struct adreno_info a7xx_gpus[] = {
>  			.pwrup_reglist = &a7xx_pwrup_reglist,
>  			.gmu_chipid = 0x7090100,
>  			.gmu_cgc_mode = 0x00020202,
> +			.bcm = {
> +				[0] = { .name = "SH0", .buswidth = 16 },
> +				[1] = { .name = "MC0", .buswidth = 4 },
> +				[2] = {
> +					.name = "ACV",
> +					.fixed = true,
> +					.perfmode = BIT(2),
> +					.perfmode_bw = 10687500,
> +				},
> +			},
>  		},
>  		.address_space_size = SZ_16G,
>  		.preempt_record_size = 3572 * SZ_1K,
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

