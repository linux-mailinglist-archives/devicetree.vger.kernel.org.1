Return-Path: <devicetree+bounces-125034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A8B9DA902
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 14:49:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 76AB9162B00
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 13:49:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 479CF1FCF73;
	Wed, 27 Nov 2024 13:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DkW3Ua84"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D1831FCD1D
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 13:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732715377; cv=none; b=lt+ckU9iNrR7ny6L6dpk/REfw22OnzQHi/fzdlby5DTLBGm5Ho5OiM5/syMWz9FBquFEN5+jgqa3haJ6KKd7XZhEOA0oyWj2K5ueKIXMJET/C66f3pXxpxPXJwWNaiH6g+WdSIXk3sZ5b4xwfaPjN7a75MLums3Irpi8BRVlpWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732715377; c=relaxed/simple;
	bh=WX6F2pbmJntTEVmTtzwmYGRGErBtTZ0nOLIu2nI/zDI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i/E1XbMHkd8mfQ4v0Kh6pvhyFez2YlCIlM172rxHrcowXmjGCROnqIOjZRXTEIfc/pGTRvy56R5Hia5rUnoFPYug9dky0n43VJt8MnYrRRol0mhLHzREL5tsA9m6sSAegWoWrRV12Ewbx2pBlkjCE0h+tiFKZPCxZNBFIisl0RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DkW3Ua84; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-53de84e4005so2963099e87.0
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 05:49:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732715374; x=1733320174; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sjfACckMsQ0RDEAnMAJcWOckCYMyrNJCIYP5z1ys8TA=;
        b=DkW3Ua84aeplAPJCJ32/ZS+VtqjFLVEV8Hmz2w++OlWLEFnrxfm28QIE0QbiwdCWlR
         hDKcuQrw7DhSl7O+EIWHQqIfY7d78vGCQuib1aDJTCxa8VdV2jOriV5e1o5fpZ0qk5R9
         khTV2lb7z1Wh+zig3rpYftCsc9q3Nnpc+QDpJCOefPdntLQU+XioF3GtnPSVHHqrmbsu
         TBe7SzJU6NsB1jofWN6YtIheLP5YTJmOTBdrLfs4oGhLdyAWWymcSv/nwYoCsSfwfrVK
         jKGCx92oKfqZ0d2KGEF2O3s+aaVdIdkOON3Z9mpk+VJtJ500K6vMdTSqeqPd5oBNh5on
         iqHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732715374; x=1733320174;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sjfACckMsQ0RDEAnMAJcWOckCYMyrNJCIYP5z1ys8TA=;
        b=adUCU2E0fkbubZb2PIAUjQ19QP4So7twREJMZY5+8fowWP1rv/QamnVkrJ8IbQFcsp
         4F/i1caC+M5rCzfQufozGAJEwFOkzGslhGNBuvWAXBTAunBA4ZcsHxiJu/vDjOU/jZNq
         3+NV72IBd9tx2JE0yk4FmOs/ORS0Bmh0UKmGrhCePNQkjUR2WmrQZjF027FP9BiB2nOH
         F9qoG/5IHmw/HeFT/8eFgXFjCFVqjWgbdEWwEvcyOGn1AriNZ7i/zdaiOxry3ckmYBAY
         HHIkPB8NyujPAuuUC0aTUIIDpgYmBiFd7racpU1/cPU2EgEt1yJzjQkM5F1T3AKnRO8b
         bEuQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhWnNvepB8YiOEO/8vhTmJotgnxeX2TUS6viRpNTzMezDIJDQyiwioXvRSaSCU4wAmg/AdNy7g1MiB@vger.kernel.org
X-Gm-Message-State: AOJu0YwvW/k8vfa246Ny0QTZp/Bz2Fgp0bDWM8ZjNYelLzRBJQKAqbQk
	UUW9M43GeiQaS7zdksRKgdLqi7Z6QS0ocED0gPogAwH6k+lM8adXIgof4+iRVTM=
X-Gm-Gg: ASbGncsZgx/fcM4hbtwRLgQeMu6i++vhYykM2P34193t7PSQednFQunWj6Iv+zkhzdo
	ITczOJluOFyrDZrL9u9Fy+RYWnpZOAYFSHu7vJR2dDjmewDATxFEnB2RyVE3ezQ3vc0xA64I8yn
	DP3kPwhhqWWNDKqjdvP8jRG8+HjAmbqkMb4Gc+eFseBNb+imANQLOsOi2RbhR94VPoDntW2he15
	eCC8VCefYiMydfM/MIxqIxVU7VZYmOvTcG+IdaQvxVZKHeDPmHp1YnOVPj4SMsLe3ijjgJ+G8E3
	4LTJztwZRK0VgOmLt46hGs8IDi/HTA==
X-Google-Smtp-Source: AGHT+IFxQkhy+KuEro7ZMNIqjxBcDKQk66j1eoYtbfEaE+Xo2Ghx/5z0Ju7Gw0TpK1R+/8bJQWa42w==
X-Received: by 2002:a05:6512:4012:b0:539:f7ba:c982 with SMTP id 2adb3069b0e04-53df00de5aamr1541730e87.33.1732715373671;
        Wed, 27 Nov 2024 05:49:33 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53de0c3ce8bsm1323963e87.116.2024.11.27.05.49.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 05:49:32 -0800 (PST)
Date: Wed, 27 Nov 2024 15:49:29 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Ritesh Kumar <quic_riteshk@quicinc.com>, 
	Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/5] drm/msm/dpu: Add QCS8300 support
Message-ID: <f5kqdxkhniwwxu6wm2q323vvlsfn3yyig7mfg3h5ctqo7jjxc7@7g32tirseuqs>
References: <20241127-mdss_qcs8300-v1-0-29b2c3ee95b8@quicinc.com>
 <20241127-mdss_qcs8300-v1-4-29b2c3ee95b8@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241127-mdss_qcs8300-v1-4-29b2c3ee95b8@quicinc.com>

On Wed, Nov 27, 2024 at 03:05:04PM +0800, Yongxing Mou wrote:
> Add definitions for the display hardware used on the
> Qualcomm QCS8300 platform.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
>  .../drm/msm/disp/dpu1/catalog/dpu_8_4_qcs8300.h    | 485 +++++++++++++++++++++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
>  4 files changed, 488 insertions(+)
> 
> 

NAK, there is no need for this.


-- 
With best wishes
Dmitry

