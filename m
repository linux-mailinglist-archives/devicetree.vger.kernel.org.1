Return-Path: <devicetree+bounces-60359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D50F28A8F9D
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 01:44:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 911C3282AE7
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 23:44:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F27386158;
	Wed, 17 Apr 2024 23:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hIi5bZbV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD70C85C62
	for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 23:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713397447; cv=none; b=f413cFHj0VVWjMYV/rmQO+TxKc3rJabN1cTrUCkc7Yje7Swue16tgg43Nd+OXHoJna3on0UkGd5/n0zp2RV5TfN5G6GenDG086CoZoemPtllUBvLO/F/syEVMPswnk1WP/ufc++lUHtCuoSbKD34d/ysQ3Ciup3sKfIiesUQslw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713397447; c=relaxed/simple;
	bh=UaZ1PhBhO3QCAsKNZAAEh3te/Tpq/ISFTdys8kgJiYw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IzNRAXQJhqIF2eEY0fV5qLIYAikJ/KIH1LyB7SQ2VSzhNwYWODc59McOoB+uZ6wFSQm1+kQyYh+0KgOCsr6943s2zCxR4Fqf3kRVKiuOKhiVSCSeREnwJmTe1F1KoH/EeTjUxF8BeqascjZjZOWTo91NUmJAfM8ESi26FVIjKRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hIi5bZbV; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-516d2b9cd69so234860e87.2
        for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 16:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713397444; x=1714002244; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4dYJ1ClH4O5pb9/mVyQ9/1Y0nfz72c0FqGgqO6+NBFs=;
        b=hIi5bZbVJAmj/aLD2UtlSP3OiAgSb5JWlL3hjWHNdYOrxCorpTja2QLYhKLdx+mOQW
         4Lnoyt3SN0Gth07UYqP/xWCkPP9e+Vtr6BlH3dTp30um5+FpXtoQQMW1qSKvEgoIhf78
         J8fw4IInAjSCX4c+5cX6JbSNLJMOFhzVbUb3R/T0B8CZBontrH8kEX9ofyXSl/iX10gQ
         NkI32jhy2diVNX0yGemH0/RHWU1dA4QGPICE218JvYJdhITO2GRjt2oqP/KO5mTLS062
         KJ9b7ZCCSqP1m/Ivl4OxJedyMTxnUFwEUkfZe6JGqMlhXas3iNEWyIfMVTcr1Ifh+BcM
         fYtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713397444; x=1714002244;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4dYJ1ClH4O5pb9/mVyQ9/1Y0nfz72c0FqGgqO6+NBFs=;
        b=qmj9DQDaAuQHhG4wIMj22zihP5GcX5RlEg0QRLImFIQG6NnpSQAaQOPJO6om/+gC24
         bFJKmaXZVKLbEAdyFwiVkC1FtKp1ejnzSEyloFLw/pYk6w1jqAbUord1shB98tgia+sZ
         t7q8zSjkM1OAQPfNIy00/7eNVFijVExg0gNAEvBYNwJGXRgqs9eurRnjW4A6X9fft06r
         8BhXZAFmjtrTzXYLCZRU8p8Ij/Me5JGnxvDSlsJfxl4aoJ+CnJm4LZqckCJYWA3tuRrN
         E7bxL5G95Gk8zLTVi9berE/e2RpidQnmOCFbXkz669LxJ8oMP21ag55PdrCWmFpV8HZn
         HsGQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdAKRSCmPOmWOz0Doruhoxif9m684f0Ul47xAbofDTzFp6j3BT+YLvk/EywQKrBk6AgzFQgX3jGnhg7nNbUxgWUP2Ct2iCab7DoA==
X-Gm-Message-State: AOJu0YwcOA/Nml/shxDyJG+22mgEJWFPTnU3t2Q8i4Vuds+VD1bfVcMb
	9pyBAwejUVxJjheyzb0qKD0QY0Gdq70C8w4gXbeaQ3WSu3yH5unig4ly5xv2HrY=
X-Google-Smtp-Source: AGHT+IE5TTewc1NQU6pjDvIINRLdTRyEr93ooSR0k+a7QtvsqWnNHglfNzFwEISYjtKIqilM46tyXw==
X-Received: by 2002:ac2:5605:0:b0:515:cc50:9376 with SMTP id v5-20020ac25605000000b00515cc509376mr350592lfd.22.1713397443931;
        Wed, 17 Apr 2024 16:44:03 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id b27-20020a056512025b00b00516dc765e00sm37612lfo.7.2024.04.17.16.44.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Apr 2024 16:44:03 -0700 (PDT)
Date: Thu, 18 Apr 2024 02:44:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 4/7] drm/msm/adreno: Add speedbin data for SM8550 /
 A740
Message-ID: <wuxp2yusymxlbmiktheulgw42aexmp3pro2ookzjppn6pxwz3h@ohj6jlnq6g35>
References: <20240404-topic-smem_speedbin-v2-0-c84f820b7e5b@linaro.org>
 <20240404-topic-smem_speedbin-v2-4-c84f820b7e5b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240404-topic-smem_speedbin-v2-4-c84f820b7e5b@linaro.org>

On Wed, Apr 17, 2024 at 10:02:56PM +0200, Konrad Dybcio wrote:
> Add speebin data for A740, as found on SM8550 and derivative SoCs.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  drivers/gpu/drm/msm/adreno/adreno_device.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

