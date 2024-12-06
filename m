Return-Path: <devicetree+bounces-127916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D945A9E6A9E
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 10:42:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9D8931881F19
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 09:42:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD7D01EF0B3;
	Fri,  6 Dec 2024 09:42:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hCZMsQ0I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7A281B4129
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 09:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733478148; cv=none; b=ucEp01wiHnStP1sPCRVysIzXsYgAEAKfaCwXYcaKKQuaAwciaBjedRlmqWWxsKxQiwfCqO9hN9bZTCoptt+qnCkxAiSfk7W3cpdn7Eq5JkzZg5gTucjAyJ9xaJEtsCoeDDI+ZdZURm5v0nCnGg2gYuev0ux8yF0h8LNG6byCobw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733478148; c=relaxed/simple;
	bh=fnD8ZUeN3LHdllxutyGeLabN8SdYiuHEWMknGyQWBhA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Uv/5ClBj/iCPc7Ox6wg2Bz7ZJGltC+zYxqXwMADVoCRD0fDyEzAQsxekRy/hXpj6UDgh4kLk0+xHSL/P4VeX8zLwLZno/mLCVSDcp8t7F2PMnOWc2TGo5c9q1LdluCjr9YuWQG1fX5tzLI47BAbhcphT2IW31NofOb42RyAy7vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hCZMsQ0I; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-53de92be287so1856482e87.1
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 01:42:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733478145; x=1734082945; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uUIRQbMczpjfL2wu8QV4pEN4I4ysbDGkQQGhfj0T2t4=;
        b=hCZMsQ0IqP2C55RV8sunKoXwVdRE4CMOB4aOleXM5o9OaCTxZXxLFQp8m7eaM4FVHm
         7zqPUpOzOVuFjcqeXzYyDZXeNXBNce+xMVkE/3WK+HYfwhFkZBAoffcjHXyX5YZMXC65
         VtmPnlQLrr+07s4YcNIFTrCK9u4k227jsQADiu1MIY/kxm34B5aaoWflRA0rVZIJZTue
         CwzTQQ5Jk/spUWNiihdyZLi6U4wplDbn4jbx8obJxMZeTI29ZyKH98svzqso7N3/4I2K
         /GUbwZNfS/RHqwbEUq3f/iYawSe05FzPjrani0R287sT2+oUZvIbeK4v7O+zonAqDUOb
         abrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733478145; x=1734082945;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uUIRQbMczpjfL2wu8QV4pEN4I4ysbDGkQQGhfj0T2t4=;
        b=dUV1VTawwg0ENR7rRSvlGU3ST2WwpMXhB0L6bnQSVmU2QoJfq3eL1kIyVtpTZ75NBZ
         V9aLSX0ufVmUrUIMmX1IBr3rYASko01743fE6ju9tE7L8sbVhCQnTUPRtdd7mhP8SDpn
         j0tsIO2e8AsJ25Kh8CbIPy+IvZOuJEoIT5mvh2ebSUV9/ZkS2FKvrjGbZlUCSL2N5VG+
         SCNgquimiMEVMWSmzzy7XZ+ReHn6mHgO3gHEMXbErXXZ5NjabU3AMbYH0CvfiSo2j8JT
         FQHGlevganX+CXEzBNlxIzCs09Ag5oCezSHZjXaUW5zWHBly2BG/L8Tybfna65gVATKW
         uDLw==
X-Forwarded-Encrypted: i=1; AJvYcCXqPqy5Jx3eGBG5fMUjZj/vvkB9yZuhcTuziQRSadjA/jXcIea0q0rkAB7AI0RIaa2JmFqA/SpfrY3O@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5I321R910cqAChIPsQZDyP5AsHCLqv7ek12hxfNb2Dl7sodjR
	KiNxjo20KsA3ottpkSZnTx3atxnXO8UNzvAuxZd5Q/WRJBunegLAV1/dLHgum8k=
X-Gm-Gg: ASbGncvW18JyPveyyXAqSVgF1vz9uK/nNmdB/lx4I0gtBFjc8/zgAG08aAQskOs9c9t
	wDVDEEeFm5pr4nqSO7zBna34+P6prsjccygI1hWANCJp8xpUVOYuUtiU5nWFPbqIxfJGxl713PD
	yWzSzhjhMT9LguKgE8/KaEyLO6gMP2sNjAD7TzflIKSksXo6j8+0aJImGpz/uavjlGmA+bqVjZH
	MXH57UFP82+vDeVkAzJOowPE9rhB+VirOXbaxtF1vE976AxTRLMQFXauF8W5maFNvSmIAN+FY8r
	16d6ZYofcP5ZXTxvD3Rgs91Pg+WdJQ==
X-Google-Smtp-Source: AGHT+IH4esxK0uLXH9slo3btbx6QQTuIap6lMO09rzPOg/wiHUYCi6471yfGuoXePGv2SFTfDWGePw==
X-Received: by 2002:a05:6512:3092:b0:53d:ecfc:306d with SMTP id 2adb3069b0e04-53e2c2b575cmr685333e87.19.1733478144895;
        Fri, 06 Dec 2024 01:42:24 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e22975264sm450841e87.92.2024.12.06.01.42.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 01:42:23 -0800 (PST)
Date: Fri, 6 Dec 2024 11:42:21 +0200
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
Subject: Re: [PATCH 16/45] drm/msm/dp: add support for programming p1
 register block
Message-ID: <ewwpuc3f7vqjeazgeebecc3ygrha4ujq5r7bg5cow56zzb564l@kef4v3bwo3bi>
References: <20241205-dp_mst-v1-0-f8618d42a99a@quicinc.com>
 <20241205-dp_mst-v1-16-f8618d42a99a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205-dp_mst-v1-16-f8618d42a99a@quicinc.com>

On Thu, Dec 05, 2024 at 08:31:47PM -0800, Abhinav Kumar wrote:
> p1 register block is needed for the second mst stream.
> Add support in the catalog to be able to program this block.
> 
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_catalog.c | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> @@ -1137,6 +1160,12 @@ static int msm_dp_catalog_get_io(struct msm_dp_catalog_private *catalog)
>  			DRM_ERROR("unable to remap p0 region: %pe\n", dss->p0.base);
>  			return PTR_ERR(dss->p0.base);
>  		}
> +
> +		dss->p1.base = msm_dp_ioremap(pdev, 4, &dss->p1.len);
> +		if (IS_ERR(dss->p1.base)) {
> +			DRM_ERROR("unable to remap p1 region: %pe\n", dss->p1.base);
> +			return PTR_ERR(dss->p1.base);
> +		}

Forgot to mention, please also map p1 in the legacy bingdings branch in
this function.

>  	}
>  
>  	return 0;
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

