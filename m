Return-Path: <devicetree+bounces-108238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 73962992156
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 22:46:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C5188B21009
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 20:46:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB42518A6A7;
	Sun,  6 Oct 2024 20:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VqvqatUg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356BD170A1A
	for <devicetree@vger.kernel.org>; Sun,  6 Oct 2024 20:46:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728247577; cv=none; b=MOBntU8HGgbl1BvmQN+t64xeKHe3bJmNGsAImTY9snujHaqHxE02hmqDJS94RyvcY/Rz1mrHGIsnzOY2wKNKUZvud/PZtJojE4hAzYie8MlHKXiBvSpWNQJjQf+adtNHPbqrOdxtSwNstHiqHvrKqhz1vvGPs3B8l0sGAD6T0sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728247577; c=relaxed/simple;
	bh=SUlWhVcCSb2v9I7IUX1wrxgrNzFgv3DqYMN2FqRrqLo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Lliiz/uzCuAZUDyxAYAp7ySxlpunzujKBgFMVsdYONhxhdqjVmyuRs8ZmcTOg4dr1Ks1YPQsuCYC5Px3a9AiPTQV6SPjLooniF7aBUBG/DrqSiKZtFuNesp1tBOohCjLn5RVXWmAd4al8euJWimcSF23SDe3XEnbFe4NAwp2DhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VqvqatUg; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5398e4ae9efso3930846e87.1
        for <devicetree@vger.kernel.org>; Sun, 06 Oct 2024 13:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728247574; x=1728852374; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Gfpi17CXoqt5LeLUSOl+vd1IydRfRUPSwqBPfSh42vg=;
        b=VqvqatUg9hY/grvIcFD1bGiTLtD1AFb6Y7S8PXP3jQnlMCZ/bLi5u4XVMxD0hAfPvC
         DnSq33vqm+ykUh75N/RNbWYYzpulnBdvfGwugs1364TbvgFWZv7Wh4w6vqMK5uwh0YnP
         HobTGORzTYBYLG8WAHuXVoIXrBhvTOf4tSDAx5dDLtEETvOno/k63GKA5pzaUl2GX8v3
         Zk3AZRP98AYWtVbwLFUSpgPzwHzPCm5u63z8ytgLMIvBx4ncip7d0ICANcLb3y5NpkI5
         jLHVf+knbF46AHtWC0FAMJnWGnrm1mjSmUJ/7IsPdrNbdmdVz/SwOcqDjWUuxmJeArCh
         dalg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728247574; x=1728852374;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gfpi17CXoqt5LeLUSOl+vd1IydRfRUPSwqBPfSh42vg=;
        b=T0LbLOe4aOzHwvBCTJ79w2eDzR6x0YEB6IYoHmybXt15zORmEy2Se2hOgMS0LWKU93
         CIf/cWAMf1axwyjXjcLRx1+KOLOxj3JcknO2cD76QzHH0Sm63606ZVVwPaBFfOtycUsH
         fy+FYsZKY2eTBJg+CeJqSsA41eIGVHYtLdFzIrgTNk+FgpkaRxSN0V0PbHyAfllLV8vY
         fXg5Cl4JXMB4F2YEnWkkpzyxS+I9GQJWSUuRjdO+naPq7eDTVMfEwRNqjOtjwHjWQOeH
         TN6lARWnERnPws1wMxExRJ308/MBfPmikjFrXROY6CUynejRrWgDjQ8vU99KKh0kUx4X
         YoZg==
X-Forwarded-Encrypted: i=1; AJvYcCXMskkqnxCr2V+t0/PIjVS1/vJBS9iVtBCediAEtVpIStvVX8devCuRsuH2K1j0BtXXHCl57n7fnNSJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwKISFot9hvwYlnoazgMV15ROaCakd2ekAfGhtUEM3rs1YDut49
	OQfOIbgw+p4zzfY8rIruLglAabXpvMfyUxA7ye4kUJTSwnLWShTzHrcq5ZgcSgY=
X-Google-Smtp-Source: AGHT+IF63jKWBQMnrsLsFl0I1WEyeaM3LAui0TYjFiBDSl68P+gQT8sUN39DvLjWBCsLHqaFXuiO8g==
X-Received: by 2002:a05:6512:4026:b0:539:8b49:893e with SMTP id 2adb3069b0e04-539ab9de307mr4230682e87.38.1728247574283;
        Sun, 06 Oct 2024 13:46:14 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00-89ea-67f6-92cd-b49.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:89ea:67f6:92cd:b49])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539afec1010sm618750e87.9.2024.10.06.13.46.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 13:46:13 -0700 (PDT)
Date: Sun, 6 Oct 2024 23:46:12 +0300
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
Subject: Re: [PATCH v3 4/5] drm/msm/dpu: Add SA8775P support
Message-ID: <w2bzbobcee5ulbgvopfhklruhykn5qdc77su4csbr556urwepk@ukchc4getvja>
References: <20241001-patchv3_1-v3-0-d23284f45977@quicinc.com>
 <20241001-patchv3_1-v3-4-d23284f45977@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241001-patchv3_1-v3-4-d23284f45977@quicinc.com>

On Tue, Oct 01, 2024 at 12:11:39PM GMT, Mahadevan via B4 Relay wrote:
> From: Mahadevan <quic_mahap@quicinc.com>
> 
> Add definitions for the display hardware used on the
> Qualcomm SA8775P platform.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Mahadevan <quic_mahap@quicinc.com>
> ---
>  .../drm/msm/disp/dpu1/catalog/dpu_8_4_sa8775p.h    | 485 +++++++++++++++++++++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
>  4 files changed, 488 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

