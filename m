Return-Path: <devicetree+bounces-142625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9411CA25F4D
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 16:56:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 153A31646E9
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 15:56:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 202A7209F5C;
	Mon,  3 Feb 2025 15:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uIujRaaZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BDC20A5C0
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 15:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738598199; cv=none; b=a1uvuilLYlXtt+Tp5FhVhuiQLWdMmvSb6Y3UioGw8r2GP4DeCkur6grlZDEjBYUxqTUsHKPNsDWp64dMBUcFkRk9mohMW7eqtGwylcZIprUPCYVEyu/9o4wZaMN7CbrXu+frExrqluC7uNPb5Idy0gb8bZPe5Xqzac5+/A7njTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738598199; c=relaxed/simple;
	bh=I6rSF3OmEBlc0hI6fkaomscsvVbmUsuMkJ0IXitAoDY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uYt1OfayGOZm817o/04PZFIiI+SqJfF0wUCO2AmoZzl4k/Q6sHa/fD6szyWU/YSIn7Bn9QwbzQ8+DAB6+jIrhOQLKXScyd53v3ULCkwUi3hhLwEQiM1ZbTYBQlGRVMelo3d/eJiE3ZEmi4Wi4dJF9onVRInzYkrLMByQb2rrmtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uIujRaaZ; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-53f22fd6887so4567826e87.2
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 07:56:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738598195; x=1739202995; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+ufx9LndyQ+Q8Y+4pq9rBmtvxrTRSiMJivVKQTd2MhM=;
        b=uIujRaaZRYJPaMrC54IMH3gxVzKsQbjGBCTeKHs2Q3jGlF8Ib1JmipSWHpyktmhgGS
         eWFWwgmSVA1fnJVF6oaXaI9+lN/56FiCRfwEenls90eThbv0pQWIZoT1UMmDcCdEFPWN
         4zeUo5Q3qGecNiSM2LV5CQ6uCIhzMrE4qPR7E8st9vwg8dMU/qLe+x6ATpgGwYq7Y87a
         vKXj93vQcj9t8hy/uB5wQBqhJQX3Hc45hqQ5sfQAo8oAHLHP5XGbXwXhTsUbRpqi/Oo8
         jVVcIyLGGmf1Wvm8S9cE/PHuqX+EpzIZi7/r7kRaIBvFo18a9aw3gsrpKN2HsLjYJZ4+
         ywoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738598195; x=1739202995;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+ufx9LndyQ+Q8Y+4pq9rBmtvxrTRSiMJivVKQTd2MhM=;
        b=peApkEwC0Xy998/z7JN8TPaY1lIZacJn8SsC9jp65Vv3e9ng0fZ5gc6B2DLfySjSNW
         4Hp0mBNqF7z6LVN/6S7bEX5Se2slLauidafRfRuF6EOf2na0+dYc/mgsd0l32vMTeOeb
         9SLKoNAyK+6Or+I7Imxr1GH0PXGvofhSU0/D7N3GQlBrbeTcDqnhiuq3kDpu972B4TYE
         TlqrPtcVKHUlo5oDmsPo+Flb6fwP2CWaGNFFJ+uv+brnRnEoTXq9CUqrSuh1Xs2G54SI
         /XGrsqC2UKsHdVErrjlefmoyrkQaSPoyxvMOx8w5krHFOP6Qa9IoarRMYprAaMJceFCx
         EbAg==
X-Forwarded-Encrypted: i=1; AJvYcCVrFJjlgozy/nO/mSQkBAN6ZJJ/4tRw34RHJbGntk8U51cgBJWbkKqk8PRqC7YWtomiN3ELiam6aqlG@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5qFOeIxGTu0AUj9SZQOEex5ucBua1Jn/hw+Sl3kzSRv1mq8Lf
	og5tqbVy+JVVCHwW+NXkjdo1tqnBT7lB/5Mkmugg5zs4G3392+laK5VOHtPoaQI=
X-Gm-Gg: ASbGncsnWMfJMVqH1JFysc6hQ/Zd+UC2HyzGxXmMCaWLXS5N5tMyhZSFEV0qHzSfJXn
	W+snp14x/mGc0YKeU8AXmPjD/aKsvJwD2+kCobuEZLhT4whCL3CBK8QeZcdQEeW4loqTZELa0ZH
	yepTpg+T8CDLsrXMJsPzeaqqAbYuUpoX/K5RbmqstuciZUshZaLr4iniB7e9DH1C1FyDEIyambs
	9bEhCyibBiTjTAijfSKx4d2+s3GGCKxZV/2YwJRxgRNPHXcHlsgLQecfIgoGQH2DNFyhGDjkREG
	PZivfn1tSiR3+D+9kwdEwnFQqplK3nctgne2MX6+2f+z5rKObaVAJaHHZwwxPPsKMaeg3xo=
X-Google-Smtp-Source: AGHT+IFT9JYuit2k0e9HSaZLgvpA0Li63Lnd/rY7xCOAkHWEzZCyLSO/loAyRrahXsnWpzZ++/uVIQ==
X-Received: by 2002:a05:6512:33c9:b0:542:29b6:9c27 with SMTP id 2adb3069b0e04-543e4c3fd62mr7381291e87.51.1738598195122;
        Mon, 03 Feb 2025 07:56:35 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543ebeb071csm1327031e87.134.2025.02.03.07.56.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 07:56:34 -0800 (PST)
Date: Mon, 3 Feb 2025 17:56:33 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Herve Codina <herve.codina@bootlin.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Louis Chauvet <louis.chauvet@bootlin.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v4 2/4] drm/atomic-helper: Introduce
 drm_atomic_helper_reset_crtc()
Message-ID: <76stqnzkm5itcoavv4vl7hbjiiujtenov3qaigdikxqjsuyif4@jhanrdhw5jly>
References: <20250203145824.155869-1-herve.codina@bootlin.com>
 <20250203145824.155869-3-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250203145824.155869-3-herve.codina@bootlin.com>

On Mon, Feb 03, 2025 at 03:58:21PM +0100, Herve Codina wrote:
> drm_atomic_helper_reset_crtc() allows to reset the CRTC active outputs.
> 
> This resets all active components available between the CRTC and
> connectors.
> 
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> ---
>  drivers/gpu/drm/drm_atomic_helper.c | 41 +++++++++++++++++++++++++++++
>  include/drm/drm_atomic_helper.h     |  2 ++
>  2 files changed, 43 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

