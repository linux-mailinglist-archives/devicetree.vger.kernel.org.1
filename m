Return-Path: <devicetree+bounces-123742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4882A9D5D05
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 11:10:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CDE7EB2605A
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 10:10:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93DBC1DE2D3;
	Fri, 22 Nov 2024 10:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BOymW9Fj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D55B31DDC38
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 10:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732270137; cv=none; b=bzZpzsx8UqZ2EBqAf4zFyeWIKy2Vapqlyvys6/3SXmZ4VDT1JMKjf6gvRnSrpCJEDwz9+1bEPzrBYbWel2dGUwbgj/iMCPSGePfnRDc6JIpWE4DYB6wfZNNi6Cc3/z1YGiTCOkduEWuoXRTHxpvRjd03LHxTHpgxRlRAZQPCqv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732270137; c=relaxed/simple;
	bh=MjqTitXAjNnGGAR8OCd71W+zJSsqvxNeq1iDDW5twmk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A2/uba6Nw5saTgzpdDLlMWlyBfpw91Z8K2sX6+yLSkhxaaZ2z9l4V+KGMjAgNM1JK4DxmRtMY3E3rB8Q3+NGTg+ix1H6B486NxFYwhc/9X3efenRT+RYK8PHjTQ6jcbUTRho1OQr7S59B9mRfJUEggbkbCk8T+iJRocBK0GMZ58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BOymW9Fj; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2ff976ab0edso20529151fa.1
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 02:08:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732270134; x=1732874934; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ozG0xW+TN6Pi4dywPncHsCDjL+EQbVR/bZYS04g6N7o=;
        b=BOymW9FjLbO8ie9ZU0Oxvypb5qmmJCThzNAEr9eFfidt8mBiOg5gFDkez8pMjF0uaC
         5Bus958WO35FZtlDrPpiXQvZIXbOocyk35z4xVc45vs4gWJZn9iimmfW14RBHUyQ+fHj
         BU3ShADWbQf0433492sA174BTujzHZ2A3sBkk0S+ulq4mj0qkA1qEcyvEUsni6XIfAo9
         3uUA/vp/OPfjsN7/fVVcD6fxH+RaUdxR5OiFdpsuIAieN6i8dHGj3N1L5SYOoC8YEJEj
         IdUOR3Se+hipzYSStQdzq7CB6IdPOT3ngchceccWKKSDGjBos+1bBRH7uUiGk1rs3vpl
         hFVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732270134; x=1732874934;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ozG0xW+TN6Pi4dywPncHsCDjL+EQbVR/bZYS04g6N7o=;
        b=Eyn2tXLPx9FLP+ygG8ScD2MnldT6wiszremUpoHKY/SQCxBatdK2PiJ2onkYY3FudA
         JpHRGwA8r2IRzJRiDi1mvu147TsA5fLRHmJsPJp+ifyBDWtlMIAwJeO2PVSSuyiJ3+3e
         TaUgCub1r1XXQugYVyYL43mV4/bXt9l6sAhvTb9yGTR/SOo5KLo9JjasYh2jyKxgpJ69
         bopyj5fryQh8S4i7a1u3L1FzBjX3QNrETo7K061mFP66temgspMpq15k3ZPZ3gnByktH
         VwVCO1irHWeolf8fWdZDloowOJVKD6Pcscd+YVcP7ewYIs7Io7AhN7sPtUJrYuKkZI0j
         KU5w==
X-Forwarded-Encrypted: i=1; AJvYcCWzERcDl/nHfWq1VggARarQ1V9G7dRX9+xE0uDdrdYfgmlgpNySvwWsySRhcRhYN4bDpKtrTqlDN/GV@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+rdnbNmvp5rwwz9ut9udxeLWAak+pxRRpSy1VmfqT4U6odaAW
	oMMfyPBJv5V1I1M3JsYiDzFHb+YA55EGznjdH8EtXnBjaeMiRkOOGSsPpqZldUg=
X-Gm-Gg: ASbGncsETzhR9BMnnfosBcM7ezd+7sIN4iz3OPjtP6DtkR1ApCr5Sk3b+UTaHrD/tNl
	y2+9pWtQNtjOb8CJsK7XNVa9L9UKY3exm0ifuZrIxaX5Su3rkrd+WdXZaHiODj2FFj4ZTa8zVW0
	zQvt9FsD1KVkS332yh31xia5VqPvfBnrwjDeqytDZJxUtQmIGQf74W0tFv0LkKHxtixssSWJPjv
	R+kogeYpWHd09C32uX841DTynz2m9Ej1A5/U6QkDSHD9KniFOz/VNa4egGWSJK78BAxZF74/mXG
	NgbOkENsjm9MRNurSSFeln2+tmWNng==
X-Google-Smtp-Source: AGHT+IF1XEF/8Gyn2P+dzKuFrYGukbKDM9XOQg3PsZRAmJKFMQcRvEJoruUPypP/45RqggGEEbK2gw==
X-Received: by 2002:a2e:80ce:0:b0:2ff:a8e9:a64a with SMTP id 38308e7fff4ca-2ffa8e9a6e6mr6070311fa.6.1732270134081;
        Fri, 22 Nov 2024 02:08:54 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffa4d58592sm2762491fa.68.2024.11.22.02.08.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2024 02:08:53 -0800 (PST)
Date: Fri, 22 Nov 2024 12:08:51 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Fange Zhang <quic_fangez@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Li Liu <quic_lliu6@quicinc.com>, 
	Xiangxu Yin <quic_xiangxuy@quicinc.com>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 6/9] drm/msm/dsi: Add dsi phy support for SM6150
Message-ID: <nwgfas7oxaumusdeoaheph6rj535szahfkfnbmv55y3nhhmf5p@3gg3ddjgaysr>
References: <20241122-add-display-support-for-qcs615-platform-v3-0-35252e3a51fe@quicinc.com>
 <20241122-add-display-support-for-qcs615-platform-v3-6-35252e3a51fe@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241122-add-display-support-for-qcs615-platform-v3-6-35252e3a51fe@quicinc.com>

On Fri, Nov 22, 2024 at 05:56:49PM +0800, Fange Zhang wrote:
> From: Li Liu <quic_lliu6@quicinc.com>
> 
> Add phy configuration for SM6150
> 
> Signed-off-by: Li Liu <quic_lliu6@quicinc.com>
> Signed-off-by: Fange Zhang <quic_fangez@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.c      |  2 ++
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.h      |  1 +
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c | 21 +++++++++++++++++++++
>  3 files changed, 24 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

