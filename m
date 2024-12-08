Return-Path: <devicetree+bounces-128274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3ED9E8498
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 12:08:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 88C362817FC
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 11:08:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A14A1420DD;
	Sun,  8 Dec 2024 11:08:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rx1Ol5DO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDDC5130499
	for <devicetree@vger.kernel.org>; Sun,  8 Dec 2024 11:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733656086; cv=none; b=UdzSEec3OGXgWETdkFC1Zvc2936Xi4GKcwapzxtnIeuHoIiUnVetHeYrv4yD29wVGnkOspDQoJfCrp1bwb/tWge8h2NjpzFESVcZWTJa0FQGHwKe2vmPMua5A1ynV7ZDCQr4izz9Sa43cnK3ZU1nRYDx0wBSOSDhbnnf+bfchzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733656086; c=relaxed/simple;
	bh=i2I5xFr43h6c0sjShesFHRb7pIhIwWji843MsGj7wy4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=apkRKMCNsOuV+XO4Qs8GBE2nQXdKnn9OuUh7qfXarrNTl86kFN6TLtvFMk208kWIaBuiYZ9Y0J3q+fzECMFxFdFN+DBkeJfSmzttqX5p+rOcCw7R28ClCYzm0f0hFprDuLukkfRCUajPq+nKnkRgtI2PGAtPU2e+nZHzcksccF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rx1Ol5DO; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53df19bf6a9so4010856e87.1
        for <devicetree@vger.kernel.org>; Sun, 08 Dec 2024 03:08:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733656083; x=1734260883; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VB2+beIqVz9NLf8laV1xplvCTzTAKoRYTCewp8eMyUg=;
        b=rx1Ol5DO8Vc9OEDr5V6nr0mRLVcWR7+/czbCP0fAYifjE9rjlbLptmgBqdNEITPuPw
         91hv1S4bsKL6+sla/JRiHQbyl1lRSpxstD7hYZmq2F5OFKz6utPAd/HjoDP5CuTmo+RV
         nA/p3NH/vrz6QyQCVR6XhPhteaf9MF1UpKnqbhtiJWtX1dKQ0Lk0DtuKjvoB71q5DP8a
         Fn8nl0iv9bZA3lhqylYjrt2APDImDKrzGKGhn3cS4NKc5la53Mw9aMCjckj23agIn8T0
         ePFoBkVGEvuJPAGVDWzD8o4fsiBODcAgL+70B5HqPGv2ioxvqncbNKDwiUbBH+aXFu+M
         5aJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733656083; x=1734260883;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VB2+beIqVz9NLf8laV1xplvCTzTAKoRYTCewp8eMyUg=;
        b=TFcOgRA5B/Zm1So9J7z9JYhyeiZedwxDwQrOOTWsrSAeRKN0ynn2edMVx3MOwjANzF
         9gvCIgR2XmNRahnP9IHsK1mixnTTVeSrQgDLGz5RMX/pZ1QEgc/terkr1yS59BXUYsbZ
         7ZXxFFcfpia8p7K4jVPk9GsMHG+PKorRECzVgiDcuQfXE0kIvBMxqugucedVx948xdPM
         /ENrlJUoLeoVKvTKtpmiou39FLfKJ8MT1UsR4WuSnaS9EIDFyOxHCMvAaXRKWwBseMty
         3PvFqmb7KmRuzsHIUjNdE36SK8liwVTQL1ITKg95sdw18Rw4CIlrSCdqtiTSt3+HStPP
         7aoA==
X-Forwarded-Encrypted: i=1; AJvYcCXxJg3w6oZNV/Fkw5eL1QyVbqH/9Au7u1DeKDkmat2SKnhSB4vSu2J9yKji0KfxogA6BbpkzJD5CHC6@vger.kernel.org
X-Gm-Message-State: AOJu0YyFeeWv7WY7bzjCInptcK+XhJCjpExdzDd8/kXho+7CIs7w/1fE
	H68o/mrJYaFTFJXFzDUm0KovHo6GCvvei+iqVQ4sWczvXXLKtlxaC4fTl9gX7Y4=
X-Gm-Gg: ASbGncu/11SKDmKAeW1qjkuZRYWTbnqHpfIxhCFErd/xu+anE2qDMdm7k7PfS3fIorM
	/aK1E296VFY80lkhUEFiA5DyYFkg7ONVuTAee3cZ7aaAbBEjyTWV3aXE6gzl4/TiPdDUm2kIbN3
	X8argXOT74yQj1Yg28Ls1/e4+y9KEpSOtKhFpT2kgvLt1SyGDHEkmwzVJbJqok50S1jXs9fax/f
	j9dafJNLKaDhZ1xwD2/yVkTmTVu5uYIwrzZROyTBlMXd+Rk+T3YYxuZui3StXPrs0cDRGsZh7bq
	YfbKEggUf5YXU33dlNC2asGB8LL+JA==
X-Google-Smtp-Source: AGHT+IEPwz/DlmKiUGnz4YB99+xhYKrQeR262SJLPjLUw84SmBKtXiKNCszuVXMjeWuRzdQf1Pt2pg==
X-Received: by 2002:a05:6512:398f:b0:53d:e4d2:bb3 with SMTP id 2adb3069b0e04-53e2c2efb94mr3986572e87.50.1733656082939;
        Sun, 08 Dec 2024 03:08:02 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e377f3ba3sm648212e87.187.2024.12.08.03.07.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Dec 2024 03:08:00 -0800 (PST)
Date: Sun, 8 Dec 2024 13:07:57 +0200
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
Subject: Re: [PATCH 12/45] drm/msm/dp: make bridge helpers use dp_display to
 allow re-use
Message-ID: <zdod6f2a6c33wbjxcw2kqg5mb3lkedmfxq47lgjxzxuul3lcsb@elka24uhxyw4>
References: <20241205-dp_mst-v1-0-f8618d42a99a@quicinc.com>
 <20241205-dp_mst-v1-12-f8618d42a99a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205-dp_mst-v1-12-f8618d42a99a@quicinc.com>

On Thu, Dec 05, 2024 at 08:31:43PM -0800, Abhinav Kumar wrote:
> dp_bridge helpers take drm_bridge as an input and extract the
> dp_display object to be used in the dp_display module. Rather than
> doing it in a roundabout way, directly pass the dp_display object
> to these helpers so that the MST bridge can also re-use the same
> helpers.
> 
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 34 ++++++++-----------------
>  drivers/gpu/drm/msm/dp/dp_display.h |  9 +++++++
>  drivers/gpu/drm/msm/dp/dp_drm.c     | 49 ++++++++++++++++++++++++++++++++++++-
>  drivers/gpu/drm/msm/dp/dp_drm.h     | 12 ---------
>  4 files changed, 67 insertions(+), 37 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

