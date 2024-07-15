Return-Path: <devicetree+bounces-85798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2079316E6
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 16:36:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 69A4C281F17
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 14:36:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 586A518EA87;
	Mon, 15 Jul 2024 14:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Xk8AoTKc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C7A613D531
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 14:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721054172; cv=none; b=DmYiszAqr/2kWTRyaUz/eFZzL00GXNquipTDn1OwbLg8AS+TENH40N324cEk7Lv4V9O6NyjxmY6T2jSHNZCnCKIuWbIeUTAbPZX/VUUjpubBYFIC9b0pbcmhPBsx6SQfTpaFH59DofSX1J/+MsM7fyJt18poMh1wf2Qsp3WmGJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721054172; c=relaxed/simple;
	bh=+J2zuyulx86dXUhwDGEr9xcrV04RL5VOiU7L4wiZwhg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Mam21cSaIIMzyCs7x4+qCxlz/HcJ2plmVR95fbBKJcPVhio2GU2z4hCoAd89J1GG/ZdWXpRJjO0QfJF0KDccNnsWtesEykmvcg73krZy/ZKZw9hLtlyt2badQ3BLVu72sDpU+WsqhcrhCRy9fzh/U/PAEnqYIvWdfBclVtnWpto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Xk8AoTKc; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-52ea33671ffso4437787e87.3
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 07:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721054169; x=1721658969; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZhK6B8fnVuBZXI+stRE0bq58ZD3WpTMaKXElDZjFlSQ=;
        b=Xk8AoTKcqYBrwejoef4RXxsdWAq3NsdHpycIbRYlt5Od/YnnHOubFLiFiOUX384Ilc
         dfbPxXt4/Iof3JqSMKTbIi5ViO+3Rs1FW+43kyO+lK+BI8wqG7SSzXwy+frWrXAzvQAQ
         ZqqWJ6leVd4YawhhtLJXRvLkZXJGoOoqJguJuQITaCWwsP9wHdv4ce0bAwu4jeS1E+72
         jZcl9yoPcDW/yzo2bD5EzoKW6nyp7Pi4GZcYaBAz846e7MGfQxFTKwztqO1iCnpg04g3
         H4ypQvxAnqsKRZkTA20rl1TJ26vs+Dke4j/1zgawbEAXW6S9jkxL6ggOVZ9oUytl2e6Q
         EGvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721054169; x=1721658969;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZhK6B8fnVuBZXI+stRE0bq58ZD3WpTMaKXElDZjFlSQ=;
        b=SCz52unSBL1ree4Ecz6xHwh2weiun4QCJoUhdRqCTNGjvE4au9im8OfXvgXJCOmxSk
         RP/plerbY+CH7rOi1v83v72+OGui+jFU8HPXaTQISaa5ZTdEgTCLFjN6l8m0nY62sTL0
         LhTbAi6exosNW9y0VFQ11xTg1rkW2dukT24++Dkdc6/3JK0X1eFAIZaT4XuwsjQfCK1T
         x04kI9VmbarnJXh/YhLcBTwTfLGcJDn+AposJ96H9Mww/9zIw/8wE1bEJBjXcDn6Ukp2
         aea+Ju7LKGzO07nQfqMHStKWYZt2M9hu5pvbh/6qVqjFz56E7AB47OVWhUWqfk9ncJkd
         LPcg==
X-Forwarded-Encrypted: i=1; AJvYcCXoFqSOvJHUfjO4zWSHmoDY1lTgGUMNF2HOiux/cgXb+BQJ8wR16evoozPG4ns9oSZw8MI5+W+1Y4tsgxND0ksMWtHxh/EeGCaqTQ==
X-Gm-Message-State: AOJu0YytszNPmyanYys+Mv4MyzovKWSYOSxOIzC5KXDn70HB+UQXaKMN
	Ak8cqgCUlrdYACunwmVBRvRHqoEMmGGIPNFEDGvwlBEn9qx0VupdzHxASwIw1fo=
X-Google-Smtp-Source: AGHT+IHQaW26d33y2OpIl5UXv4ph5bElCHhjJdkDHS33sPTOxMjq2K8VIlrynJfDLVnvzGFn/+XEXw==
X-Received: by 2002:a05:6512:3ca8:b0:52c:d8cf:d4f4 with SMTP id 2adb3069b0e04-52eb99919bcmr14484436e87.11.1721054166859;
        Mon, 15 Jul 2024 07:36:06 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ed25324e9sm875405e87.198.2024.07.15.07.36.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 07:36:06 -0700 (PDT)
Date: Mon, 15 Jul 2024 17:36:04 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>, 
	Jeffrey Hugo <quic_jhugo@quicinc.com>
Subject: Re: [PATCH v6 4/6] drm/msm: add msm8998 hdmi phy/pll support
Message-ID: <hmqp53xuq6yghdk4gpwosjquvfdguukj2jivhnzp247noyjtiq@p2f2ymywtqd3>
References: <20240715-hdmi-tx-v6-0-d27f029627ad@freebox.fr>
 <20240715-hdmi-tx-v6-4-d27f029627ad@freebox.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240715-hdmi-tx-v6-4-d27f029627ad@freebox.fr>

On Mon, Jul 15, 2024 at 02:21:17PM GMT, Marc Gonzalez wrote:
> From: Arnaud Vrac <avrac@freebox.fr>
> 
> Add support for the HDMI PHY as present on the Qualcomm MSM8998 SoC.
> This code is mostly copy & paste of the vendor code from msm-4.4
> kernel.lnx.4.4.r38-rel.
> 
> Signed-off-by: Arnaud Vrac <avrac@freebox.fr>
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> ---
>  drivers/gpu/drm/msm/Makefile                   |   1 +
>  drivers/gpu/drm/msm/hdmi/hdmi.h                |   8 +
>  drivers/gpu/drm/msm/hdmi/hdmi_phy.c            |   5 +
>  drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c       | 779 +++++++++++++++++++++++++
>  drivers/gpu/drm/msm/registers/display/hdmi.xml |  89 +++
>  5 files changed, 882 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

