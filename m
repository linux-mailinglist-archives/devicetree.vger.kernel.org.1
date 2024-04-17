Return-Path: <devicetree+bounces-60360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B928A8FA2
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 01:44:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CCB1B282DAD
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 23:44:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D397D86634;
	Wed, 17 Apr 2024 23:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="duWLWHNC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5078E8594D
	for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 23:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713397467; cv=none; b=aaJpF89UmFVi9n3FwkIwB1uaVXvbTm7GLmWoEDYarr7qh9PAUnOTagxkv6rN7T+1/7GnpqEgk1ihORVMWr1Vapqul5ni3jBCkokzAC3FO00BDNuhXEI+ykDDdgQfsUwafIj0hDVIco32jouiXy+jpYqFub5Z2K9/ScWAto2nFT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713397467; c=relaxed/simple;
	bh=TGvAHkA7J8vQWaG9HblmH7jzH4i/rzj9f66RDD2tQE8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fcUToeE4hhmBQ3RMhzMahPWTKfmo2IBSxJNtUExTV2LC9twWMOfXjT+X3cWKjSm1GY03vrapqc3Q6mHx1J3JQVIzjdGoDyZ8DrkEv9H2NfurzfYBT/s9vWNZ9gzgr5V0e72FtXDcNNiNXGlILjj8EN/7LXYS2dqqm6DBNJmmwwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=duWLWHNC; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-516d756eb74so249004e87.3
        for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 16:44:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713397464; x=1714002264; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MgjvMPd11QKFNd88E1N26rp+tffDbeQ3uZCnSiUqKR0=;
        b=duWLWHNCYI8NjMNjdU0FQtWzeewwK1DiodA+kH4TvTaWIfcFOI+4m+P6xGWoXwyLRn
         OuarASleYXfexzgjqI2xCmuytHAh1F0rTVF5D6Lrn9gj3jm8jqpq1J/qSYhkWXFk6lxP
         MH5h7eQhOuL4gXIn6XVfGdRRCqFn2gAJnlxfNj4wStKMEKn4pGPnWBiuOg3CQP8YuTA+
         hNf7EoS7WDZmt/4nHfl+KSDkTux7JPAvSoRG31qTGsIkvHGotNNUbtj7WSaMMAIEnGRi
         oQXGEM0qpmznGXTR+joiNyYxo6z+hu38jwlGrRgRYubbmLA8mef6Wx4sft0ty64u3Xbi
         zRwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713397464; x=1714002264;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MgjvMPd11QKFNd88E1N26rp+tffDbeQ3uZCnSiUqKR0=;
        b=conagkJ2S0LBcROf6xwxhL8OqibYjvGd2M/r/SWK5Vy+gYINWEUb9KXr+6kqnG51LK
         MnU0xy/lb+GbVyHEVXB1r5XTByntqW62g4fAzNxPTHEt1eTFAsg7CDiQ4BwM3EufohST
         PLkr2tJy5pcDSlHqCE/NbTCFPQ/iKXeg97pSA9b/GIJDbucqn658f4Zn0tn5Y6pRMyEd
         ApM6UZOOVp1HGoVkqcsHzV+HsF+CEGpevlOj47wfu2h4pe2L3WE11KMu1q+MBh10BvdE
         uge88xzAsqZkdvTZH+NfMt+6mzV6UkHqJnHUhxWvTX7JVDOmc6xB8hVH4SyLvfsrSstn
         msSw==
X-Forwarded-Encrypted: i=1; AJvYcCUVzF05W7wOXjIGsjQX9FQTb3tiVAdIXrzpVI9MnCE12WjsdRztfi2ihlpICiH5F7oyMFM3ZuTpck+bYCS0dagT3Ygv7I7R9dHhRQ==
X-Gm-Message-State: AOJu0Yyz40flHSAX7Et/lwwPLqCpCxD+2T75jfiDEoPu00C88IVdci5G
	oN2vj+cCtDubKga0Aj9SQGB3yrAmaLf/LDznyypB0tBYjl2JzETu+Z9yOIM/PhQ=
X-Google-Smtp-Source: AGHT+IE8QqXZo1zRChGmPJCaEjk6MKC6Yazzz1JhVm+k0MzRJJYbY0hPM0PvHSQBF3FoHVjciaXnXw==
X-Received: by 2002:ac2:5395:0:b0:518:9da1:7afd with SMTP id g21-20020ac25395000000b005189da17afdmr386771lfh.4.1713397464535;
        Wed, 17 Apr 2024 16:44:24 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id z5-20020ac25de5000000b005192a02c638sm36366lfq.132.2024.04.17.16.44.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Apr 2024 16:44:24 -0700 (PDT)
Date: Thu, 18 Apr 2024 02:44:22 +0300
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
Subject: Re: [PATCH v2 5/7] drm/msm/adreno: Define A530 speed bins explicitly
Message-ID: <4m53lev4flu5x7tmw3ygmyvfx6ls5zzmadrzuncbjcnvadoays@b3es63of6ujs>
References: <20240404-topic-smem_speedbin-v2-0-c84f820b7e5b@linaro.org>
 <20240404-topic-smem_speedbin-v2-5-c84f820b7e5b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240404-topic-smem_speedbin-v2-5-c84f820b7e5b@linaro.org>

On Wed, Apr 17, 2024 at 10:02:57PM +0200, Konrad Dybcio wrote:
> In preparation for commonizing the speedbin handling code.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  drivers/gpu/drm/msm/adreno/adreno_device.c | 6 ++++++
>  1 file changed, 6 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

