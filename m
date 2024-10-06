Return-Path: <devicetree+bounces-108239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C4ABC99215A
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 22:47:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 82FAB28144A
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 20:47:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A78CE18991C;
	Sun,  6 Oct 2024 20:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PLHYNCf0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E410B13A27E
	for <devicetree@vger.kernel.org>; Sun,  6 Oct 2024 20:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728247625; cv=none; b=ZciEqANpEujow+Ss4BzCSRNtqZx/Ls15vfckg/g305azQ0tiyyCZ17ob5+ivVrQ5YoKCNGIdoVJO2w31SYvuf+v+NohYjVtYiDTJ8iSgPmIQ0S6b6HhJN+AGhq72OiQ/t6g5fgkcKxPWOcaHsBO2lt9yX74Mh7cpJPahL3TesRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728247625; c=relaxed/simple;
	bh=qOCnT/Ya1jNomZvlIwFzbJ6tPZQxzq8D0fUT+rIip18=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d7iFXWgGlSVtRAlILwf1lB/7CsWocRLL0kbUrcTUQdg65JPsSxcGXSfMmmpAomJakFH0laqGrFF4c+sf6b702NX3O9XHT8h2Pema8yGnC94LpaQWX0zSfRcJVzxwddqa+50up8hzakTlCxV1iHdu7+Djwsqn2VqD9XxziR7PPi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PLHYNCf0; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2fac9eaeafcso38579591fa.3
        for <devicetree@vger.kernel.org>; Sun, 06 Oct 2024 13:47:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728247622; x=1728852422; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ELm2L1HPpE5ypl6LlzrRt90wm4RKfaebBSz09tts3O8=;
        b=PLHYNCf0PsEU2fUgC5jpxb5+oZb+H7GrQtjilicQGI3vL8fPkQ7H+x86s40aJC5XGC
         QNiOtqjrV4FgLQJ9KLGNK7bEQPDkQsGti9o1An3+ONqWwbN5Bk7As6+OkgN59p613sN7
         habYUQWs13lfLlEGR+t4Hvhz25icWsnZq+S1yMC1c+NOfS9bdtsDjY7fvx4OWNBH/ciR
         ZJE36m4cVd2LA1SaEnrQufQ0o8etbK7yYQcK9VymifXFsXafwCWNaBFrbU5nPStiM7mb
         Psue89cud5NdpmDJu7XfhI8miZL8nkPiorYW3QvCDLuoE17/zTYbJnkqMfrTkWATmL63
         9pzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728247622; x=1728852422;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ELm2L1HPpE5ypl6LlzrRt90wm4RKfaebBSz09tts3O8=;
        b=g1xCU65n3HjCyDMFSgAJR1/NtIBydwiY45n08FGoDIiB6I8qxAwEyhn0Xv0BbghmUD
         6tzpVnxFWG3+yGLpXzyYf6/ZarvfnAV4dN3rzXi+xF1e1lV6ZfWP+e2/QyL6qzSgsTtd
         Tse5bZ3r94KfQZCDMB8GGHkRvF7JlGVIPstKZ1cc+6aZrCXtBi19nhCC3Hw+kXP3OP8D
         P2+wFP0L3FdTG7VV5aojH4Bl2dKpOjqSMmuAg04+nywk47oZXZo67EbWqEEo9pJy6sH0
         jjCaJAxjr597qhHegmdJL8eGHFfmQWDNWZHzwQFm0X5uisAlLRxIedo2AyndRKd8LBmD
         cGfQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwxTDaIxsT7DM08NkhjrEusdjiI3rJ5cbqsomre6t5sztmt5V3jDBkF3ISvLAMtqvcecu0Xd5BJdCg@vger.kernel.org
X-Gm-Message-State: AOJu0YxNWWi5bkHtgOdiV4tORzXoWiG6+GCnv1pMTxcUk33D3Oo2Tlzg
	0tMMOIpYjOEZ0W1kn2H0vY3AcvosKZ3pgTsU+zisZGmATsqLPrRH/khG44AyN3I=
X-Google-Smtp-Source: AGHT+IFizL0+yw3wWnoLC/qC2QKl4scr8PrjAX1mGGjyOahajrbJr2qi2cByCq3VzO0DrQt7mwAcDg==
X-Received: by 2002:a05:651c:2119:b0:2fa:cc12:67de with SMTP id 38308e7fff4ca-2faf3d7084amr37219431fa.32.1728247622006;
        Sun, 06 Oct 2024 13:47:02 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00-89ea-67f6-92cd-b49.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:89ea:67f6:92cd:b49])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2faf9ab12e2sm6570341fa.8.2024.10.06.13.46.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 13:47:00 -0700 (PDT)
Date: Sun, 6 Oct 2024 23:46:58 +0300
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
Subject: Re: [PATCH v3 5/5] arm64: dts: qcom: sa8775p: add display dt nodes
 for MDSS0 and DPU
Message-ID: <bwqrqamudbonslvmhmgdkb33e7464zywff7bvvklbcecdlxpxc@ir3r4mkb6srl>
References: <20241001-patchv3_1-v3-0-d23284f45977@quicinc.com>
 <20241001-patchv3_1-v3-5-d23284f45977@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241001-patchv3_1-v3-5-d23284f45977@quicinc.com>

On Tue, Oct 01, 2024 at 12:11:40PM GMT, Mahadevan via B4 Relay wrote:
> From: Mahadevan <quic_mahap@quicinc.com>
> 
> Add devicetree changes to enable MDSS0 display-subsystem its
> display-controller(DPU) for Qualcomm SA8775P platform.
> 
> Signed-off-by: Mahadevan <quic_mahap@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 89 +++++++++++++++++++++++++++++++++++
>  1 file changed, 89 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

