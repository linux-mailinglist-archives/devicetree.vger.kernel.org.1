Return-Path: <devicetree+bounces-75172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61790905B84
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 20:52:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EA26B28EA39
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 18:52:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F33D59160;
	Wed, 12 Jun 2024 18:51:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nK5UDmox"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A968E53392
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 18:51:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718218310; cv=none; b=n/MiGW8QwlfPYy9SC7tpk+Mz1SwHFM/6geA7KMEGsueQLfvJguTIaDLFu/KylXAPX+Qw0hpimtz6fJ4yWx0rW3DOgy7kG7H87Lx1WVZyHCBDx82IFyVtk2ZMr7b8PFrQWimCaL1LQVYwZkaKVCQrO46649vpIFc5QaVaeQRqWeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718218310; c=relaxed/simple;
	bh=U5QI5NzQdtq/i7YaiyZgQTvbEfv9KV/0x5LyAbdfU3c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CLaafQ7EVgpICB0QLC7M7O+DyKBDTgOmQVRr5L0Yxj3sTUnSHUu1PeRFhBsGAdpCTHkLsmbhUTSSzJUB+aLALwWMAwdaRUhduQAenBuhW7pdoIAJw5hXAjt/WbgltrVZ6WdQtXe8isAjCDkL6WpkVkljbCSb7K/zKYnrm282/Go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nK5UDmox; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-52962423ed8so263265e87.2
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 11:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718218307; x=1718823107; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YFYPQEigFT5TfOCN8eDaCIrl7HC+yeqeYN0ZmGZ+Sr8=;
        b=nK5UDmoxgplZ0H9eUTpjOQAf5J6X/e2iZT5Lzfwih6CD7r90lFoUTaicRS+5K+VfSl
         RSdRV6tOsiUydzwJ11+bW0YV8Ef+e4SFBue71RWdWiq+cz/JdHyQuN/TJa6PE2owIk3m
         KDksWWkpRLbNbZxWT8iqF+dt8Wcu6luHP2Vt/6gEwmvwNzdUONeL9w+/N3cHvtMJaLTk
         HAq7pRwaVu+acKN6DG/MDu4bKWSWXsegnMmna3xyL2WaLDHaULeXRCoPpNUbXxFyfLgh
         dRQca+5k3pJ9lkReyR7q7NRz3Da7ecRMcjeeLLYQwZsGU7qd4mo1tb04pCsjCp4/S+2q
         QrgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718218307; x=1718823107;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YFYPQEigFT5TfOCN8eDaCIrl7HC+yeqeYN0ZmGZ+Sr8=;
        b=BrZBCLxILSjSLyrgrxc7BR3J43G8aQD+y6IjO18XeVAl/oANiH28xdZ3TIWfHtPDIc
         I5WpjmGNO4Rv0N4G2+ZAldmM1QYAGCj11BPMh72VJSuoIB7psuNV87yEXsOztOO04iKR
         0hKhPzALW9JyfQEqOERdUSQcp7IrYTbCQUtz0t7icZkT1bLWAbRVHEOqisRETWqukINE
         ZUssVuJbB5E8VniDQiZyw9FbwsjSq7vp++btbcBoLWizchW2MZfdwXC3smIBPDVmZQPV
         VbjGa2CcHIWTlHkeuv3x1ayYFy/BnZQSJQ+rf5ELHradTSzennmbYu7irqLLjFgPX4bz
         Ai1A==
X-Forwarded-Encrypted: i=1; AJvYcCVz61E5QFY+P/hgR+GxL1SbyihmEXP2bRd2pbdRwIhv93zmdROGTWtknK0yhgJSkZM8fpoOL1HaBkdw1T33qHnXIPvOAYzH4hSX+A==
X-Gm-Message-State: AOJu0YzD2pC6gyRrR5IRqlMWTuoJ0QkzoDNLSDxOTVI4KIcbS7C33/Uz
	uzgifdMjZPJ7xexkHuPTewj/M3XXcR/dDF9Tsr/B/2b9fmcETGdCG2cOY1jvohs=
X-Google-Smtp-Source: AGHT+IHjX90AGX8knBQHaw6dOK8zsSJKlpbuIZ1J3ZLU/93MWJ/OAchtptQelggFqTZRz8uB2Ye9ZQ==
X-Received: by 2002:ac2:4850:0:b0:52c:8023:aa9 with SMTP id 2adb3069b0e04-52c9a3dfb4emr1809326e87.36.1718218306834;
        Wed, 12 Jun 2024 11:51:46 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52c9d2f57a0sm327045e87.284.2024.06.12.11.51.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 11:51:46 -0700 (PDT)
Date: Wed, 12 Jun 2024 21:51:44 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run, 
	marijn.suijten@somainline.org, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quic_rmccann@quicinc.com, 
	konrad.dybcio@linaro.org, neil.armstrong@linaro.org, jonathan@marek.ca, 
	swboyd@chromium.org, quic_khsieh@quicinc.com, quic_jesszhan@quicinc.com, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/4] drm/msm: mdss: Add SM7150 support
Message-ID: <grpc4inh7d2wpwrkvssehapa7z7mw4loecjt3p4qcjjefobvco@6g5sll2bkcbv>
References: <20240612184336.11794-1-danila@jiaxyga.com>
 <20240612184336.11794-3-danila@jiaxyga.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240612184336.11794-3-danila@jiaxyga.com>

On Wed, Jun 12, 2024 at 09:43:34PM +0300, Danila Tikhonov wrote:
> Add support for MDSS on SM7150.
> 
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---
>  drivers/gpu/drm/msm/msm_mdss.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

