Return-Path: <devicetree+bounces-147603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D87A38BDC
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 20:03:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 540383AFF09
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 19:03:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2A8E235368;
	Mon, 17 Feb 2025 19:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qTuSJvWB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE1E622652E
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 19:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739819026; cv=none; b=efKfC3IFAG+h22lpqphqD+kgPtlsucVPvn556a8MzSxtNCfV8eUBHIeAREGobQXGoRXNMxBKVhGcbiTDvm4zq5bgUjNuxGJfM++0RineWGJK/4N/cT/74NGMcBCG9/dZQEZogql7H1PA3t/ESSvDj/+bJljVwKDC4pnkERzB1mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739819026; c=relaxed/simple;
	bh=24/bz6JEVvmrmSFzPSCxuWh9BN6jYpaav0CqOqnOR44=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HLuSxxgdpj29nhyObBmXLPECgvzTDbxmAPwXPzbbluY9ea5lcQywVQGjziXYKcPJ9cqAtK1Xf1/wPuuoFDWwFuI0bkxDDGmqYQGOHKs1jb1rlXmQxTOOuzjm1Zvpk1prxLIG+xvFOMfj31HnsHDDpCuifc6XuJLPhhFcINF7LEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qTuSJvWB; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-30a29f4bd43so15771771fa.0
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 11:03:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739819023; x=1740423823; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wqARAPdYJ/xdElMselfYbhjeGyD6v5q+Wc1NzQmTawk=;
        b=qTuSJvWBwrLW2jJP30+cqY+ntkSsLQZ+5Nn8+MbN9oVEFKjvT+7qtXdaZRD8KaAcVv
         D+VkIKCbPtZGJ3CiyQXsceYXywP+ha4X6by9TMGmI47rTrBkji9XHXri4bwWTveAQg04
         ANINxLki3Q8n0BEAKwqKEeoTePplyRYivq+ODHNDrnNBjCCkNxIGpruOEcXH19CW17mo
         nVh3CV5oV3VqBhTNCtM8/iwjy7bX/Ug/OUvwAe5ocymnWY3Cl0I0fkGbk6ldzgHhdIkd
         Wayo6SazrV2rDn6S8A/TBF8rVbJJnEOJa4kYssJx80nUyuQH6hzfot9nQNnjchGL3p/M
         cedg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739819023; x=1740423823;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wqARAPdYJ/xdElMselfYbhjeGyD6v5q+Wc1NzQmTawk=;
        b=iD2CjN5zrv/SEiWU5AoWbdBcsqtyc0J4LBlC1FNCIPKjs2SVQ97Fd2uS58HGUMHG1R
         DzZOBCY/mKxWRmDjoxZVjWhwhxyELh/tIAOj7FCuf/wqm6geRLTmaqRcKpsPf6GjgtsN
         P86UuBjQtribQWlC86n74ukLt/F+vxcR9VNMfqbUAy1jAUYCEChz+bYFof3srQFjFJRk
         2iLBu4Bs8GvwYTvFztDMDu3Owqki3HdO4wkcI/YmVmMMW0h+wNcaqrALXz+2NT82JFI6
         5kdfVMMgIEZME5imElV7v7ZJ42dk5ZQh7VZ1YkpC0mXW7Dj4pPHQIlxMFYypiy/Fi3Q/
         YIsQ==
X-Forwarded-Encrypted: i=1; AJvYcCVW5OIfH953OGTrGl31tqbFoctTno98N/Vy8Jnrn0KGS/9aY39RWhNx4iyQLB5+ub/qDFkoqBz0iDXw@vger.kernel.org
X-Gm-Message-State: AOJu0YxbApm4nj65T6L1z2cmEU10WqqdNVa1m5wbvgEZzsx5etMOmufm
	aJIdIHnqmUVjlsrbud1YINiPnOFas/yuwS7lMMC5ZlArDL11+mLTkKZHHFI12SI=
X-Gm-Gg: ASbGncvhwigwg76EQ8rzXZ6xTVUEMnkj0tIfycerUegTnCV7dEg8s33GAb9HqWlBXnc
	WonbVfVQoTsYl4ohgwGiZWiw23z07lpK+1DaP/U5AzqyT2A0JEl4JLgdHivoSxudbL3WsRVyJb2
	bvALdQT/9zyXAvyoBENAGqYLQqQq5oKMPj5BiZyrtVBnESPk7G/2EVxViA5IUzyWw0Q9lblRKne
	Z8HthkcxRRFx650UNOdIVocREaGF9rSEEzLrwSdmDRmAOqZ5WPDeJe1kEVmJjlOnWvsMkOnKmZ/
	S1eWhmtVTU2liN1FBQBtoTA+FisDTQ1+2Vt0Te9axfKJWOav62lTk7I5UG4qE9eM1hV+F9Y=
X-Google-Smtp-Source: AGHT+IH62f2i1NiC9Y1L4JGihKmed7FGNYzj/K/SBkHNk/de8aDSNi8aRspcctiuRSH4/mHKv2w5Ww==
X-Received: by 2002:a2e:87c7:0:b0:308:f479:5696 with SMTP id 38308e7fff4ca-30927a48b4emr31189761fa.15.1739819022995;
        Mon, 17 Feb 2025 11:03:42 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3091d025767sm14492051fa.54.2025.02.17.11.03.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 11:03:41 -0800 (PST)
Date: Mon, 17 Feb 2025 21:03:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Krishna Manikandan <quic_mkrishn@quicinc.com>, 
	Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Srini Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH v2 11/16] drm/msm/dsi/phy: Add support for SM8750
Message-ID: <sxepkcq5sbksj3xsq4mlvpzg6ljaz23bdhrehahhfjmalrlege@4atufz3uxs6x>
References: <20250217-b4-sm8750-display-v2-0-d201dcdda6a4@linaro.org>
 <20250217-b4-sm8750-display-v2-11-d201dcdda6a4@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250217-b4-sm8750-display-v2-11-d201dcdda6a4@linaro.org>

On Mon, Feb 17, 2025 at 05:41:32PM +0100, Krzysztof Kozlowski wrote:
> Add support for DSI PHY v7.0 on Qualcomm SM8750 SoC which comes with an
> incompatible hardware interface change:
> 
> ICODE_ACCUM_STATUS_LOW and ALOG_OBSV_BUS_STATUS_1 registers - their
> offsets were just switched.  Currently these registers are not used in
> the driver, so the easiest is to document both but keep them commented
> out to avoid conflict.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes in v2:
> 1.


:-)


> ---
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.c              |  2 +
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.h              |  1 +
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c          | 79 ++++++++++++++++++++--
>  .../gpu/drm/msm/registers/display/dsi_phy_7nm.xml  | 14 ++++
>  4 files changed, 90 insertions(+), 6 deletions(-)
> 
> @@ -191,11 +192,24 @@ xsi:schemaLocation="https://gitlab.freedesktop.org/freedreno/ rules-fd.xsd">
>  	<reg32 offset="0x01b0" name="COMMON_STATUS_ONE"/>
>  	<reg32 offset="0x01b4" name="COMMON_STATUS_TWO"/>
>  	<reg32 offset="0x01b8" name="BAND_SEL_CAL"/>
> +	<!--
> +	Starting from SM8750, offset moved from 0x01bc to 0x01cc, however
> +	we keep only one register map.  That's not a problem, so far,
> +        because this register is not used.  The register map should be split
> +        once it is going to be used.  Comment out the code to prevent
> +	any misuse due to the change in the offset.

Mumbles a lot about the hardware design.

>  	<reg32 offset="0x01bc" name="ICODE_ACCUM_STATUS_LOW"/>
> +	<reg32 offset="0x01cc" name="ICODE_ACCUM_STATUS_LOW"/>
> +	-->
>  	<reg32 offset="0x01c0" name="ICODE_ACCUM_STATUS_HIGH"/>
>  	<reg32 offset="0x01c4" name="FD_OUT_LOW"/>
>  	<reg32 offset="0x01c8" name="FD_OUT_HIGH"/>
> +	<!--
> +	Starting from SM8750, offset moved from 0x01cc to 0x01bc, however
> +	we keep only one register map.  See above comment.
>  	<reg32 offset="0x01cc" name="ALOG_OBSV_BUS_STATUS_1"/>
> +	<reg32 offset="0x01bc" name="ALOG_OBSV_BUS_STATUS_1"/>
> +	-->
>  	<reg32 offset="0x01d0" name="PLL_MISC_CONFIG"/>
>  	<reg32 offset="0x01d4" name="FLL_CONFIG"/>
>  	<reg32 offset="0x01d8" name="FLL_FREQ_ACQ_TIME"/>


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
-- 
With best wishes
Dmitry

