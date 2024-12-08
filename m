Return-Path: <devicetree+bounces-128282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6569E84CB
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 12:50:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 80A90164275
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 11:50:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F725145324;
	Sun,  8 Dec 2024 11:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Om4S5805"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66AC713D896
	for <devicetree@vger.kernel.org>; Sun,  8 Dec 2024 11:50:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733658650; cv=none; b=U9EV8cYr3vrWAMblAFY66Zc71X43e/qaLt53zDSkznSZVVRO3+mGrydT2Azj62fxdx1CHiCnivCPXLa8MfFIPK6EAw+365nNp14a374Obh0LkS8CMHeeH4RogtpIoL85Uvz8nBFDPBf6m4QnrSL3RSPxwwYRLlGkGa4aVDhVPtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733658650; c=relaxed/simple;
	bh=x6oYuo+yS8kOPNSc4ML/rCheQeCfgbmNJ343ipQn7Fo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dMTMCphFBjg6geQ/mEUfdDRh8ku1v3CJppS1fP6k5qdKRuX8sECFR1oxm09qVADf8KBtTdGPjlnC74vl/GhY73kRD9/amiDZXu0DHwLcMiUO26EbI55aALptfTT9JCCLp+5p6LPBbdgbKaMJv4+bq9bi3Kibko+Xqsxr7ZvI79o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Om4S5805; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-53e0844ee50so3442386e87.0
        for <devicetree@vger.kernel.org>; Sun, 08 Dec 2024 03:50:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733658646; x=1734263446; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Oun+K+EMFqetiro2F/rNjcDe33esgYQxsDbhRp+6WB4=;
        b=Om4S5805rKJ7c0ouEA8I2tzQbrrxzkz0SBxbVIYYmkKyn/Lj7ObS7vkKal6E/0fXJ0
         nRUtKaOI/Teqa+vnsXJkU+WcrdCGPlg9kVeE0D3zstsFlT/NcxwcsO45z+id48pYTwtX
         mQEP0+l1SxPib/SEIB5GYCOiIXM0Qgvtsln61xMIXJjv3DhD5nH2VULM63T9Okpzd34d
         CQqBBlLlDAW4wLBSPUqWvO24vpUI5uMihtwUColuPPsw0WeKlgHtGAz/Em7Vuj2JOR9T
         gMGgvsJtKiwl7pJDEJazky5qzQgCg/OBHrHhQgkHNwYYWito3pg5eJ3nxycaODuUAjcO
         yjUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733658646; x=1734263446;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Oun+K+EMFqetiro2F/rNjcDe33esgYQxsDbhRp+6WB4=;
        b=lqFNm1EpxqkKdNT2NHRzhQs8Fg8h+XAdWSW6DuDenN4KRKyV8j3DCmb3hkUupBEFyp
         lRLf9lgStG32YPN2H8/OQ7hQJZMgbPUdZQRENPVuaCrVoJWC0JpLU7oJZ1h0OzwOgR5h
         w2fMCzh6+JnmUjepHVZWTiVg9y6HkSLye7r5Cp4NgQ0/65gHo3ttyFHPhkuaF3rMXfaU
         2ppRX+l4uH1iKYV2xsdePBKCAUF0RyWX1X+m0gkYi3mZf/X5gbZ3Lf/Yp23tAWOsjROI
         NX72gYtD6ZIadPStyKhRiEGCL3P+r28di11tMhlNVEE78PgKbs0BnaD6gH3Ua1B/3U8i
         vGnQ==
X-Forwarded-Encrypted: i=1; AJvYcCVgpKeeFJID/yEbobf4oNOQBu2UfT6lul5bUDjzKLJJNzXxcTp3HUwNAA8hrVv3ZZ3MWN/h9E/O9/Xf@vger.kernel.org
X-Gm-Message-State: AOJu0YyQGY6j9AByyKlf4NvyIScqkMgQst3SXdj4bzJrc+CCG39r8P5W
	4mhMFuU8pT5XxQOqUkozLkGgi0IvN7PWtEyNhG79rKA3GleDafdICNktQLXyEpA=
X-Gm-Gg: ASbGncuRbIOK/eWTjA7rUjTAJOz+oU2aivbqZYuholvdOXeBZqsD2jPLYDoCbN/3O8O
	S9AzIhAtKLC8ZxRVLjmI3bBqXFF4fsbvMWGyLAkZA40DZ3RVBWQzzGzk5rnppIUXZ2OQm6/H1ar
	q3guMZx8POeNbcHMGGwYtwIaCqVL26hC2oPm9vMi8m+8sBwNp73sNkdEUdijamuIdR/8A8PjuGA
	jbmHTV4P5+2WhlSWctTX5bk8StV2tS7MBaoXA9+pvRekGEwS76UaZIiZjcpIJ2ghJ32yHL+uNuw
	WEx80YVAtlcWqgrRstm/ZwIl8pjJKw==
X-Google-Smtp-Source: AGHT+IFON8ulrpLU68pOJOmwTjUY9DTeD7p4bAWPDsvZgnewDN7qknWszAcJ9yPWcxocxPPFC1T4OQ==
X-Received: by 2002:a05:6512:2245:b0:53e:389d:8ce6 with SMTP id 2adb3069b0e04-53e389d8e61mr2465693e87.28.1733658646469;
        Sun, 08 Dec 2024 03:50:46 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5401b8f5842sm211406e87.130.2024.12.08.03.50.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Dec 2024 03:50:45 -0800 (PST)
Date: Sun, 8 Dec 2024 13:50:42 +0200
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
Subject: Re: [PATCH 26/45] drm/msm/dp: replace power_on with
 active_stream_cnt for dp_display
Message-ID: <7kok44t3q4dv7jsapvdq45t4lpoaxwkxe3f345ewpfyq3ndgoh@t532yskl2wys>
References: <20241205-dp_mst-v1-0-f8618d42a99a@quicinc.com>
 <20241205-dp_mst-v1-26-f8618d42a99a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205-dp_mst-v1-26-f8618d42a99a@quicinc.com>

On Thu, Dec 05, 2024 at 08:31:57PM -0800, Abhinav Kumar wrote:
> For DP MST, the link clock and power domain resources stay on until
> both streams have been disabled OR we receive hotplug. Introduce an
> active_stream_cnt to track the number of active streams and necessary
> state handling. Replace the power_on variable with active_stream_cnt
> as power_on boolean works only for a single stream.

Okay, this answers one of my previous questions. Swapping these two
patches might be beneficial.

For this patch: 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


> 
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_audio.c   |  2 +-
>  drivers/gpu/drm/msm/dp/dp_display.c | 42 ++++++++++++++++++++++++-------------
>  drivers/gpu/drm/msm/dp/dp_display.h |  3 ++-
>  3 files changed, 31 insertions(+), 16 deletions(-)
> 

-- 
With best wishes
Dmitry

