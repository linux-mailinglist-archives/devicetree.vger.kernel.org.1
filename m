Return-Path: <devicetree+bounces-215942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B1FB53351
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 15:11:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 44CBB1C85B1F
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 13:11:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02CA3324B37;
	Thu, 11 Sep 2025 13:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cXyEsJH6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E237324B17
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 13:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757596259; cv=none; b=pAj7oTupHjpfKtrx9wHKPjsPF4XMPI9R6NG+jH2l1VTyVv7wM/mqLneAHwM963hUgIAwUiinY2yR3O3kgYgOj6aZZbi+ksgHtlU5xj3Oe07iI6NaJc4LMcf3nI14BW7/U1nrN/MQBrmTvQkBhi5c+eGxGEQuH8mHLF4yGCAd2uY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757596259; c=relaxed/simple;
	bh=y11RZU91qqT+9OqY84wNPfLsXkcQjITVyypPfQ+m9DQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mU1gOiG1gLVUYqQJJC4mvvywVS8qbajSoMWpYkNB4Dnv12F6jdfWUXnNB8lb4yJbowBxb1jJwdU4MWPbkRK1AbMFdI/2cagDMDdtjutJu7pXOxtxzppgJFvDCMY8t3ibD48iCWwKiz6isXyiUmbnslAHbzDujUhYWdI6HtrpkrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cXyEsJH6; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b00a9989633so150906066b.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 06:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757596253; x=1758201053; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fICK12mWNRBHNb8epgyR7UU//hrM63BrRhLGMx3EInI=;
        b=cXyEsJH6eOo+DwJcAdCVR3iNKEDybDke2yNhMqHc/SYkvd5i17dTpI1QLiRO8ELn+I
         gRzniKjTHPXk6iIHDrSfOXVAzVRSIrfD5PsriMAgEQhu8rr/SzVW+AEQnOWSOit4aEhN
         CFAH+RJhC/BKA+evUapFmdi00piVXMrbolOO0wDCSrzrD44V77kmE2Nk0tXedFrqdNRZ
         bOghWiURj7cATmIGFVUfMk7Qe+yQH1f848nWlx0p+NFNv7GHuvaRHT5nbHBJi0RjGKNh
         ZHT3c9hpyIfDu9JOl+YCvAwenM8IQmAsl3Z/qqEih5hAPrrZXrupDuvY0/Q4rZHmdfk6
         NLgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757596253; x=1758201053;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fICK12mWNRBHNb8epgyR7UU//hrM63BrRhLGMx3EInI=;
        b=lP+QPSc3CQtkFy+AZAeRaYIE+iePFkK9R6oH17caDCYp00heTvtnseUqfcpE+xvym1
         y5FvkY7HYhFdEOBNKkQAojEMZz22APL1H81tkmtPG5OG2F1sJ0w9xuVoT8Qc3fGSbPLN
         KfSmnDaqIPJ5jb5z8oUGXE8KYhFtPV4MVciUvd/r4e4jhKm+yFM8l0VwXmsNj1qYaNrE
         J585DCbAB4PREAqkPm7ZASZR5gjD6J8hFS3FbO902SBKg7GeZEnAf1wheE7nFJ7TEMWR
         GeJH5w7rA5Rz6BjqZIpKUFPWRvBsaP+JODWMfz9QNkHf20SumGBDvtycLfDcX/orptH9
         Vokw==
X-Forwarded-Encrypted: i=1; AJvYcCUn83eDBiFwBJmKODxJhTr3bgqhguYNj2F5ukhO1pKTWwOIE5wM3YMPwNU3FWS2yZGYKWTanTDZwplb@vger.kernel.org
X-Gm-Message-State: AOJu0Yz66b6mvblzOv9+1mTTA76nlUqQ2aiS7EKVgVL7nx9rUaNX5uBl
	nMKUpNqFCn4VPFdAJN8lXNEHf3kj1c4IQMzp6tDKmMW6h1edTKhio2f8zas4t44iN/k=
X-Gm-Gg: ASbGncttBnuvpl71uorHsQci/lq4Ylp9ZKQHvfpZOumL+QJRv+4QZGn6cOZwTgX0D2i
	FmIFJEVvGg+zr73Ei2+QvHkMDhPRzGIYbhQ+SYVwU61aI4855FC+cWC6nG62UR9Xz8hdcHaIENH
	2/i6h++m7bhI4jLSjkUXWala50CCnur22HZUoN+RGBoZT3lqCPl5o4aYi9E7E5kH8ON/rFsTXkZ
	i8SELl18GFKD5Pd32yycX0eLlByVT671MJzD3366R8T5NEKBZBG613XSLPHX7QJip61A6CIzR4h
	BTupZMSLxCHbRr26DgqSXIKjvwba7KkXF40YVb6oJvdQQdF2svl/HTozP0dQ8BELk/bTyvAis0r
	o6/rCqxALCFMc51XiSwibmA==
X-Google-Smtp-Source: AGHT+IH66fznEUgFxllILMqdvheHS0RsLBD6Wse+F7QEzo8HkwTr8xnUsQ0CB7hpJuztOUV/n+dF7g==
X-Received: by 2002:a17:907:7205:b0:b04:3e43:eca2 with SMTP id a640c23a62f3a-b07a633d68emr423207366b.13.1757596252775;
        Thu, 11 Sep 2025 06:10:52 -0700 (PDT)
Received: from linaro.org ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b30da250sm132121066b.9.2025.09.11.06.10.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 06:10:52 -0700 (PDT)
Date: Thu, 11 Sep 2025 16:10:50 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, 
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/6] drm/msm: Add display support for Glymur platform
Message-ID: <kasmte3rxr3ukz2eqbwlzbpeam2qq2qimzdqta5dl5xsthnokc@smvts77lhirb>
References: <20250911-glymur-display-v1-0-d391a343292e@linaro.org>
 <xjtg6emrb7svloz2fkaotfbj4m2wzmddxdsdnjk5wkbmocqzmd@l656suk46pkd>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <xjtg6emrb7svloz2fkaotfbj4m2wzmddxdsdnjk5wkbmocqzmd@l656suk46pkd>

On 25-09-11 16:02:40, Dmitry Baryshkov wrote:
> On Thu, Sep 11, 2025 at 03:28:47PM +0300, Abel Vesa wrote:
> > The Glymur MDSS is based on the one found in SM8750, with 2 minor number
> > version bump. Differences are mostly in the DPU IP blocks numbers and
> > their base offsets.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> > Abel Vesa (6):
> >       dt-bindings: display: msm: Document the Glymur Mobile Display SubSystem
> >       dt-bindings: display: msm: Document the Glymur Display Processing Unit
> >       dt-bindings: display: msm: Document the Glymur DiplayPort controller
> >       drm/msm/mdss: Add Glymur device configuration
> >       drm/msm/dpu: Add support for Glymur
> >       drm/msm/dp: Add support for Glymur
> > 
> 
> This will not work without the UBWC config for this paltform. Please
> include it into the next submission.

Ofcourse it won't work, but wouldn't the UBWC be merged though a different tree?
I thought I should send it separately because of that.

I'll add it to this patchset in the next version.

Thanks.

