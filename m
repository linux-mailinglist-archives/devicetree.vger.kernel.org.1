Return-Path: <devicetree+bounces-143449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9F1A29F5D
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 04:26:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC5553A6609
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 03:26:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 805F21547F3;
	Thu,  6 Feb 2025 03:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QzcUkAx2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70F2114A627
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 03:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738812414; cv=none; b=sqACTGB7mrmRRJonszbB7IHpqw+wthShqOz4V/mUC964NcPJZqLkP9CLyyAlCDtPzWTOiHFPXWbsGd32a3jHMEBVv552Zq+r99gApbpCl1OCqoikW+q55OAU3SYmW/24HMKmBaacMeeOH68YDLExnRiPn6uZt44ggVnVyn30++Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738812414; c=relaxed/simple;
	bh=jpu9uDNeDBdC6VtS2p5oWuNJTeUlGlui3vXVeWRSCEc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kEBUT1lLOTqGWsk4e8l4YSyicC5Uhy6Ve5uFX0KFNXN5FH+qCI5IqeXXj0y+5SmiTm9BCqP/b2iWdos1PeigwJYHDcJArsiZV9kuDOkc6q1IYDjZqiQKPe7JoXQAu2gzXG435uXs6F93pJOYbElaexnvl5kcKknZmpDq+BnJuVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QzcUkAx2; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-30616d71bb0so4902421fa.3
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 19:26:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738812410; x=1739417210; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5DdG5Jn1MW15Wn8u30uTGjRTJ9vbOt12LrxRPZobjB0=;
        b=QzcUkAx2wVwWMhRj0ORTFQvbPiZU0IQ/X8dW8XiG8irpktTCpMIO8ldLh8i9JYZRjJ
         34WhALQcO5gEyM+HQ4WrtN+wmCvtQ6CdQ6PPrZqrEnshA3PhYLxBPLtQXTRZGC2gznG3
         mnLt9ovYrE0Ha8v8dYUzl6+p0j3gXF2fbawkKB6vpQGJGRGlNxF48AbykON/J7aW6qzy
         8Z1L+KUJnQDI+kdKUOExMoXNh55huu5PimlzE6GyRW/Exxv8aFYBojUO5A5pAl8b6cCK
         XEalE3jnbrXHdwcR/itLmkpZwZDXiW1yY70VQV6yZ5yaIDbWMsBhLQZK/8wUCD9qm4Uz
         NLoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738812410; x=1739417210;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5DdG5Jn1MW15Wn8u30uTGjRTJ9vbOt12LrxRPZobjB0=;
        b=vgWGmP8HYg8cYFSUN6b/IFq1Hp7U89x8kTE2VZiDd7lM8dZd7Yu32Yx4HkpnOfwDgg
         Fveig+0g9Y6dZpO29LGhouutYNhHO05UgY0ipFUsp35xA6+PCNi4Vo2GI6CELGvEfDFE
         RvcCZeQtyuVk/2AWVCVYRaprCNKB4Wpp548ffy8ITWsa/R+OlvKb6rkAVuwzFOAIs/8S
         +dmWGuxwDKKXIlKQrL001XNGV0ITW9RRxmhrPMELbjTd9JinD4nNNMUMUeWWk4yRcPd/
         UYFWFGFV5bNEEk/AKP/Z0IbxEJfkqe4Fkx7uPdBA5aXSdnJ3TlD/74htrRqt5sDviiz5
         zRlA==
X-Forwarded-Encrypted: i=1; AJvYcCVOwRaqECAYlRM70MoyqRCYx3K77SNQAFmrzNLm1MRhfJpaixs+u9ZCi/odkXUJ6SYRDgycIY2lv+ZU@vger.kernel.org
X-Gm-Message-State: AOJu0YxsmXU7+RMxUXRcMG8VYXYZEVSqGs8Uca7mgPLw6BQPOnXqrLej
	7mkuPWUHVg7qg3GMWVbc+aCPnMpUE2fJMl7fVbq8nipXg3Qh4SA7U5vhFDmTuQM=
X-Gm-Gg: ASbGnctxh83kEzbEAvRF1/ji9jAIMM8H9jgbnsoQEDKknUEkoJp3jnGMJODh3pgX/BZ
	HrkP33lDV4d00iI7gSnWuNzMKoezbw0tyDSIqe3Ga9uqKYC1DgcnHBAtm/1FGPq/8d+ROFFDyzC
	5hbq6s7sCUDzA2g8WftfA+uq6pfHnph3A1On5ba7dUlVmGxGw4PQv1rNDSY3vEKzADa4+HJGeoW
	YEoypjWbKJKMOd9u26Bd+JEB3mJjX6F69ci9jBChXyLf4VOOdSh60aJ8GfZdJVIbulIYBHXbrkG
	/j6hozU9R7tonKsbvMY9yX17vlQAlaqL5NkUyQ0BL30Lfpw43pFYj52lbF2C7oX06M7ieM8=
X-Google-Smtp-Source: AGHT+IHW1jb3KW8x6tt/qBgkvjmxR3wnyBKxeKsQxRREB62A0u+WNaONlVtge6tXCMFRwKna1G8X8A==
X-Received: by 2002:a2e:a54f:0:b0:300:33b1:f0e1 with SMTP id 38308e7fff4ca-307cf23dbd9mr17475791fa.0.1738812410424;
        Wed, 05 Feb 2025 19:26:50 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-307de1c797csm236761fa.63.2025.02.05.19.26.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 19:26:49 -0800 (PST)
Date: Thu, 6 Feb 2025 05:26:46 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: fnkl.kernel@gmail.com
Cc: Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, asahi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Alyssa Ross <hi@alyssa.is>, Janne Grunau <j@jannau.net>
Subject: Re: [PATCH v5 2/5] drm: adp: Add Apple Display Pipe driver
Message-ID: <lnsv5o2uln3bvwryxybx7xb4w3j4e3rr2h5inj7t6cat5zord5@lgohn6yrygrt>
References: <20250205-adpdrm-v5-0-4e4ec979bbf2@gmail.com>
 <20250205-adpdrm-v5-2-4e4ec979bbf2@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250205-adpdrm-v5-2-4e4ec979bbf2@gmail.com>

On Wed, Feb 05, 2025 at 11:10:51PM +0100, Sasha Finkelstein via B4 Relay wrote:
> From: Sasha Finkelstein <fnkl.kernel@gmail.com>
> 
> This display controller is present on M-series chips and is used
> to drive the touchbar display.
> 
> Co-developed-by: Janne Grunau <j@jannau.net>
> Signed-off-by: Janne Grunau <j@jannau.net>
> Signed-off-by: Sasha Finkelstein <fnkl.kernel@gmail.com>
> ---
>  drivers/gpu/drm/Kconfig        |   2 +
>  drivers/gpu/drm/Makefile       |   1 +
>  drivers/gpu/drm/adp/Kconfig    |  17 ++
>  drivers/gpu/drm/adp/Makefile   |   5 +
>  drivers/gpu/drm/adp/adp-mipi.c | 276 ++++++++++++++++++
>  drivers/gpu/drm/adp/adp_drv.c  | 617 +++++++++++++++++++++++++++++++++++++++++
>  6 files changed, 918 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

