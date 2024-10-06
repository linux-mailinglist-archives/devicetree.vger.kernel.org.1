Return-Path: <devicetree+bounces-108237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2504399214D
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 22:44:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4E0BC1C20A00
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 20:44:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6018D189F3B;
	Sun,  6 Oct 2024 20:44:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YSbYV45l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 955B418A936
	for <devicetree@vger.kernel.org>; Sun,  6 Oct 2024 20:44:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728247484; cv=none; b=YPFJRC21RCZ4svhdcHZ6WvG/miA91dRniTpEYaWK3cPZkmo9lwGpJ11QQ2EfaFBPLFIV1e9QFOAyP0MC2ItlGgCbr63N31AfjROcESFE7yYQqATOl2D9TAa2ENkhyX/rkWOpOc0VEWehURxQqLt8cwiuuXGhMA1vI0AkMjCJGNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728247484; c=relaxed/simple;
	bh=MSMm4GU14bTXwk/jnHsTnUk5BETz1PWVtSoClOusTNU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O6uwgp5gxc9Ei04eYRCDrq38a7ssqMnHRK6ERUGZaMDbZOLE5FBNlm3+IxK8W7oTwi2jBdM5P2PWkWHSFWfHK/SH4ehpLG8sr5DesalGIwKoWmGu9O+SgcVgMvsWdvXt3yYoxu7lhpmLhsCGAmlu/43fhuLz7C+IlQAw9fv8Spc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YSbYV45l; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5399041167cso5596466e87.0
        for <devicetree@vger.kernel.org>; Sun, 06 Oct 2024 13:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728247481; x=1728852281; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1dzk3WntIySvLJWusveHPZhNWnaINtIPBE/POIj9sa4=;
        b=YSbYV45lE9i97FPdyJhPp92lPBv65hEsZw1BF8cEbTfTol/bmwI1vL2n2J+ls7owMB
         0UQtRYGARBOtwtT4ZKAXUdBPeenxXUjDbAYmFeb0OPD5S8hoJZuzcmE3WblEyN6yyktw
         xc/kQ9JvxayahtIAqTGmWP1NYJfEzRwxYQxsaVSxG+KkpFHAc73gC26ZYbAVK028/DjX
         Ro6fwyrHkqCn7686KoBtbyi3aTev78NUPHFxH3dJ3Zv6i2FkA8o9q5P8pM1EnKQnE1RJ
         UqicclXjjEQmIemiHBycUVVLYhRWDbKB41naZAvF16SG9jlGxmOZSXwRUNd0HjJrYLtb
         uZOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728247481; x=1728852281;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1dzk3WntIySvLJWusveHPZhNWnaINtIPBE/POIj9sa4=;
        b=PEbyHiT3L/SaykPOexf45JlfsJbwRHaZiscVKBPmADTdWSKA2tdOeOvdgEruGI69b0
         B1v+veUGWIKwhjyQg+w1TfxGudW0h1h7B88GwptKFwJPapIRwzB3NPF+KxznXOR4lxwY
         KbJL89qBvbK920G8pq4seIB8y0IYG34h1LOyL27Ru8bvM9OJGF94meD+iUmd9vZljHfD
         NoHwZYJY7duhZUie/gE3MdN2llj/pdtZhzXkbeWpPz/lrSyQlXr8QHlOHa2xkL8Q0c15
         /GG7YrZoLsdqk7tMjPdJpSlVflYelzMd7T3FnBlegA/02HrswdoV11244HRSd8nCXZ3x
         L6Qg==
X-Forwarded-Encrypted: i=1; AJvYcCXprTwUtGKx+53S7znQkNKnojAALzGOmI7zYIXFkg9QFhf4UKDrPsm88K0hSEKRoxWMAEF35sN+JU0i@vger.kernel.org
X-Gm-Message-State: AOJu0YxpaAftoXXQD7kJTM3NCYprE0Aqr2tlh5X2cNwheqROTvA5tNW4
	xJvrFX4pxRBbCHyGi5lm6JXZ2HkMy74geptXpJTGRRy2SUa9XExlgoCGe/niqWw=
X-Google-Smtp-Source: AGHT+IGSACiI3kw3knol095Cbq7pCc2Lxyw8CUsV9n35GwTxUyFJ2etK1ySJVEoir2VRZFMDNMgfeA==
X-Received: by 2002:a05:6512:b98:b0:536:55cc:963e with SMTP id 2adb3069b0e04-539ab9cf28bmr6424748e87.44.1728247480760;
        Sun, 06 Oct 2024 13:44:40 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00-89ea-67f6-92cd-b49.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:89ea:67f6:92cd:b49])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539afec852esm615479e87.93.2024.10.06.13.44.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 13:44:39 -0700 (PDT)
Date: Sun, 6 Oct 2024 23:44:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: quic_mahap@quicinc.com
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Kalyan Thota <quic_kalyant@quicinc.com>, Jayaprakash Madisetty <quic_jmadiset@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/5] drm/msm: mdss: Add SA8775P support
Message-ID: <dg73wfucbacsalh6eaxuk5u2lhoavvlp3euh3zhb7tlkvnhcvq@2x55r35znc3w>
References: <20241001-patchv3_1-v3-0-d23284f45977@quicinc.com>
 <20241001-patchv3_1-v3-3-d23284f45977@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241001-patchv3_1-v3-3-d23284f45977@quicinc.com>

On Tue, Oct 01, 2024 at 12:11:38PM GMT, Mahadevan via B4 Relay wrote:
> From: Mahadevan <quic_mahap@quicinc.com>
> 
> Add Mobile Display Subsystem (MDSS) support for the SA8775P platform.
> 
> Signed-off-by: Mahadevan <quic_mahap@quicinc.com>
> ---
>  drivers/gpu/drm/msm/msm_mdss.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

