Return-Path: <devicetree+bounces-124688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C2D9D9984
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 15:21:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3BD71164D0D
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 14:21:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1EF81D4613;
	Tue, 26 Nov 2024 14:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OKryEOr0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 006B3DDC3
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 14:21:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732630892; cv=none; b=asH9D7ay+bflVRbgIpKja6IVUQTnLTrvBP5xuGzLW54nXj2txF7ed2jYHhuiIwWL5OzYtL3K7QxX/6gNKrxBIlUTBKASPszUTBxKUjTp/5x7P+C+r3ScGNsxgkhHIH6menca4cpZHruT51hqcfLXczAeKjAliQjUJoCqUn8lCaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732630892; c=relaxed/simple;
	bh=hSchZdne2yL1Me73QcTXHzIkfVLw00TjinA2YwxeHME=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nbdr9UUbeb31wTKmieLzhE5f6VDtsMo4xibAKn6oA0yjaL/39wlRLMLztz2WBK23rEI8qokMeJdbXFIrplj0t3wEHOJYwOCPJfV/bKs2pjTjn4HSYJFwf/Y13AXaXGjaeMsJUc2nxQdjW6lAR9ImKKm75RaO3LU6lmMUU0/47zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OKryEOr0; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-53dd668c5easo4217921e87.1
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 06:21:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732630889; x=1733235689; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WsqG/pbjaTDjdBrbE8Gh7QedJI2HzzUU10Z4g5bMrfU=;
        b=OKryEOr0m46uCzQTwvHekXmTO56lqHguIFD64EYMVJZva/Jb6AWRHP31hFcSLTKM97
         Z7aPdshopn9MQKWLRyl/L5Pv6zCjCBDIq0aM9Wo+wt9/23fDhIt9Qy61LV9EgPsWG/It
         q+rRzdHZpGuzc8jN88ROARMWcksixPwYsY2FjfJAh5CG6GdI6J1BWVa9NkUmDamMcvq2
         6sbupb1A0gSUI4Q8OEY8D7sI83sFBci/csRtTvRdVd46pLuWYev+tmsL11UFU2FGlAy0
         lCPxL93pP/ceC+bLX+98hHrISBnHEHJO1acpPyHn+vPfowUgvhVZjU42YN46/HPL+dMN
         K29Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732630889; x=1733235689;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WsqG/pbjaTDjdBrbE8Gh7QedJI2HzzUU10Z4g5bMrfU=;
        b=Jy5im5ZRkkUgSls0krl+iej118ZdSh37Feh7wIWoeTnYyQVRzTSMy1637TlVYeXW9E
         3G6ECSTnTnDI+zgjVocIOOVOM/KYEkzPCwAuARyGxbnmVhY5fxKt27yGQz+jEpZTlyrZ
         hLD25OnsRp0gNP53tXG01JLxn4puZkIV7wwbXb52V/x40YWio7owKAYgoKNG60134BiE
         Gc0vj1M19NiWjCfYL72kpvke59Q0Nvk6ATOKmuQCJNeLsnq/r0+0ubh/56rLInD5BUXX
         vydSbyoXkb4ZJKt32BGfBlO+0nuUHSJjg61/fYNpjKpCnuQNTRENuGX+YM6QXewlwIdx
         8y/w==
X-Forwarded-Encrypted: i=1; AJvYcCWezUC+BpkfzEDp1AVpoSElXDa4vKTdxtANud2G7VjTW8UimATw+mtyC8of8LHGucV29E8q2CMbao91@vger.kernel.org
X-Gm-Message-State: AOJu0YzunjP/oYOU3+x1U9rrn8ObBMp4KBNl1formwu3KG+hKQIKRZJT
	1rV2vK9ukjIz5vtYc3gqlgKhkUBb8994wR5DeIHGTWIKYUS9SAhtHBxiFwtx6A0=
X-Gm-Gg: ASbGncskcyxcIxazkOwFPBk822Z757NN5AjY3SYFLLz82bgRSrOJta5GzHwaCdMLCnr
	Qss8tolIJg5hlsgiTfxJvrUIzZviCd4mHJkrkL5tJLmEg5g7WBMz3uCeyIL5V28utc+RktNz/bx
	RCsYj9rGIiPNK35B1m58EPSgIxQRRu0KBPh9ylwY8nEQQlf5w5vGK/jostcqKMIkCPeRi9LpuCR
	XQYMcSXG+U4kk682BuQsL7K+th7F0wCZY4q4pzaLfV6GAhIfwVy6Nfr/vU3XRYrjqU3KDxtGazq
	yZ3QoFacvpEAPE8KYWbZRbMP6MoHCA==
X-Google-Smtp-Source: AGHT+IEJeByCvQlDqy1R+C0A81cHp1AJ1H0PojsXjN2ky6dVBr3C2B16XhZSVyi5c5B271VuJ9O4Kw==
X-Received: by 2002:a05:6512:318b:b0:53d:eda7:6981 with SMTP id 2adb3069b0e04-53deda76a69mr556144e87.27.1732630889153;
        Tue, 26 Nov 2024 06:21:29 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd24518d7sm2025711e87.80.2024.11.26.06.21.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 06:21:28 -0800 (PST)
Date: Tue, 26 Nov 2024 16:21:26 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Konrad Dybcio <konradybcio@kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Jie Zhang <quic_jiezh@quicinc.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: qcs615-ride: Enable Adreno 612 GPU
Message-ID: <x3jgyvzkb2p5txzmqvj2qdhj7ag5css7qgbynxlohbypz53dq2@io64rzakgmkd>
References: <20241126-qcs615-gpu-dt-v1-0-a87782976dad@quicinc.com>
 <20241126-qcs615-gpu-dt-v1-3-a87782976dad@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241126-qcs615-gpu-dt-v1-3-a87782976dad@quicinc.com>

On Tue, Nov 26, 2024 at 07:36:49PM +0530, Akhil P Oommen wrote:
> From: Jie Zhang <quic_jiezh@quicinc.com>
> 
> Enable GPU for qcs615-ride platform and provide path for zap
> shader.
> 
> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

