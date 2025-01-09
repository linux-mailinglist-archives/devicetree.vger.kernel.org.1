Return-Path: <devicetree+bounces-137221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBEEA082DC
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 23:39:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 876A73A859D
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 22:39:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8795205ADD;
	Thu,  9 Jan 2025 22:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wY7DUVdT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFB0198A32
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 22:39:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736462391; cv=none; b=VADbQ6iU68o8OaG7ekTp0jKWVri9KwjdjX6pGyrZVsLZnIpNXXXtbtCEkjDVYWDX5VNPbU0fqGcFg/lRBUJwN8lKdM8kcWzfftLAGI2/7YoUxRGs28VvNMLfiD9znhx/tAzp13o+PvNchVyfhitTUW0thgsuW5VTPQtHY9jWmt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736462391; c=relaxed/simple;
	bh=bCLA9vY/hEpakt2u0OOpCpjUqmLQ8glexW6t3P6onp0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sbs6ICfUiZkKudyfKbf39Kqg1zBGIKEKFRdPeE7lK3aolRQP7VYM6syxvW8VHDvMpmPxXp0C4pZwvrWsEJphNh+HXrXUU4rUZYseZF995HJdoakdXyC2dW3BwR6Pgn48Cq5Gu/ONp1wfbKRR0wBgth8MVID7w4KeDncorrfCPoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wY7DUVdT; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53e384e3481so1363833e87.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 14:39:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736462388; x=1737067188; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=H7PXcApU0JETFIR6N0uLhNM2Aw7BSg/72G4ZlEn/1Do=;
        b=wY7DUVdTx7k8G/h5qOr+XpT+tbIV2ZGjxwWXRPGYv1avMPIfT4FCibzqRkZMIhcpgu
         HA1MitEoY8XTeBf5N8EJsO1n/ncEHEZcz3IWbA8VhmAp5nAPKLC3+XFvMq0mNtosGsCp
         fOD997wfE7u/dcP0X27THRSDP3t1ySFo0JhevRSxGuDCuu8DqSxEV5vw4oABCxknjLYK
         Qx9ePIQjujGqjE3UaL1K7pxbJh6/Y1XYV/TGKgVR8IZPy9rJW5eFlyZYBndhVqYMvxFK
         RPOo2krZRnG74ZFCqm7z0dcegt1AvtztWfEF6zUajkjNif9RE+f/zwOqdyR98auLQ66Z
         Cqsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736462388; x=1737067188;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H7PXcApU0JETFIR6N0uLhNM2Aw7BSg/72G4ZlEn/1Do=;
        b=Kpa1N2jqYYceqS9Mfsa/PUrRQHssugGn9OrlxyrUyPjMhAJGlX8aGdX+gH+SCIhaOd
         QxUcD4W+mpwwxW8U6o7NVYSNcBM+lQuv09wE4Om0a8cM201ZgWrAVfYEff9I62uT3mUY
         FP42k8+y8EqrTE1w/IcV3pXhFPhyjtQIUEpxbvn9nKsQkbxaq5rfa0Xwv1M86nu5ycBc
         Oy9/1XPenPeQt/DAHbzDADPfzqgezvA679Pte2BIZE8HfP7AAsZPQw6PPw1u1slSfGMP
         EETRqhlLVhIme9gtfggBDTNf5wbJ52B57LiFgYyBuFMyrb2M4t4JfjQvV63POOygeEq8
         K3uQ==
X-Forwarded-Encrypted: i=1; AJvYcCVIDGhn7zTeCLEbHkY4VWoQlwNsc/Mo9SvB2lQPgteixgXP4ZsFXompOLm7PbSljsSeoGiTPIQdIIS5@vger.kernel.org
X-Gm-Message-State: AOJu0YxhZVJRLEvYPJ+k6c13NdNI/3kB8WrhqWaWiQMwNf/YAP4hPi2Y
	w4kQ9/JLLNx6V1D9me+2sJTx0O9TJZ/fw0f/raS/Cp+ABWUA9JgtZSm7h57NJaY=
X-Gm-Gg: ASbGncvTglXlVcxdMBzvBfXXZ+V3mgqByXoLcj/kINTPom7UPBX2/7SfdT3Jl175E52
	fwYXNvlmP61hXF6PZeSWxzuLXzn9nlxdx1muJI7+4p6BbrVIb3nxVsWbGx9U4svgqWR0UlS0mn5
	04eyDh4sZcoT98SB69yVftaXCt6zEH0wAJ7H7ToHpZdiI+pF7CdrwGhlvFe0TS+bLqtHKFHJa7X
	32/p6mE1QX1PG5TDWn+k3AsCQ9m7uRykwy4jXqzuGIdtdUtV/LI3wJJqrYF+jhMh7oVAvaLxrd9
	XpyHH+V+Y3ueTkWKp0+oxt0c+SoIXvyD6LrB
X-Google-Smtp-Source: AGHT+IGjSVrLD+BTCfZfVNXTNwUqqxiO45ZG5ef6NG4hf2D5QyOSBg9wrPZDTY0SG9oxOVZaANgBhQ==
X-Received: by 2002:a05:6512:3c83:b0:542:2929:63ea with SMTP id 2adb3069b0e04-542845c1e8amr3117213e87.24.1736462388248;
        Thu, 09 Jan 2025 14:39:48 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428be49eb2sm321608e87.41.2025.01.09.14.39.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 14:39:46 -0800 (PST)
Date: Fri, 10 Jan 2025 00:39:44 +0200
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
Subject: Re: [PATCH RFC 10/11] drm/msm/mdss: Add support for SM8750
Message-ID: <kn7gsm4nnp372t56ocbzkv6uw7o3ww2qel7jlcwvgxsugdk46w@d34hujbcswcw>
References: <20250109-b4-sm8750-display-v1-0-b3f15faf4c97@linaro.org>
 <20250109-b4-sm8750-display-v1-10-b3f15faf4c97@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109-b4-sm8750-display-v1-10-b3f15faf4c97@linaro.org>

On Thu, Jan 09, 2025 at 02:08:37PM +0100, Krzysztof Kozlowski wrote:
> Add support for the Qualcomm SM8750 platform.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  drivers/gpu/drm/msm/msm_mdss.c | 33 +++++++++++++++++++++++++++++++++
>  drivers/gpu/drm/msm/msm_mdss.h |  1 +
>  2 files changed, 34 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
> index dcb49fd30402b80edd2cb5971f95a78eaad6081f..3f00eb6de3a9d2bee7637c6f516efff78b7d872b 100644
> --- a/drivers/gpu/drm/msm/msm_mdss.c
> +++ b/drivers/gpu/drm/msm/msm_mdss.c
> @@ -222,6 +222,24 @@ static void msm_mdss_setup_ubwc_dec_40(struct msm_mdss *msm_mdss)
>  	}
>  }
>  
> +static void msm_mdss_setup_ubwc_dec_50(struct msm_mdss *msm_mdss)
> +{
> +	const struct msm_mdss_data *data = msm_mdss->mdss_data;
> +	u32 value = MDSS_UBWC_STATIC_UBWC_SWIZZLE(data->ubwc_swizzle) |
> +		    MDSS_UBWC_STATIC_HIGHEST_BANK_BIT(data->highest_bank_bit);
> +
> +	if (data->ubwc_bank_spread)
> +		value |= MDSS_UBWC_STATIC_UBWC_BANK_SPREAD;
> +
> +	if (data->macrotile_mode)
> +		value |= MDSS_UBWC_STATIC_MACROTILE_MODE;
> +
> +	writel_relaxed(value, msm_mdss->mmio + REG_MDSS_UBWC_STATIC);
> +
> +	writel_relaxed(4, msm_mdss->mmio + REG_MDSS_UBWC_CTRL_2);
> +	writel_relaxed(1, msm_mdss->mmio + REG_MDSS_UBWC_PREDICTION_MODE);

Nit: this probably can be folded into the msm_mdss_setup_ubwc_dec_40(),
but I would not require it.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> +}
> +
>  #define MDSS_HW_MAJ_MIN		\
>  	(MDSS_HW_VERSION_MAJOR__MASK | MDSS_HW_VERSION_MINOR__MASK)
>  

-- 
With best wishes
Dmitry

