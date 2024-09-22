Return-Path: <devicetree+bounces-104355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DA397E324
	for <lists+devicetree@lfdr.de>; Sun, 22 Sep 2024 22:14:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 161762811D2
	for <lists+devicetree@lfdr.de>; Sun, 22 Sep 2024 20:14:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E8F9481C0;
	Sun, 22 Sep 2024 20:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cIGwx6sK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6E840855
	for <devicetree@vger.kernel.org>; Sun, 22 Sep 2024 20:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727036064; cv=none; b=AX6yDZDdtq0QKqFXFlLP63+poAXbYIDmEUsEZD6zqICTjuHYvwpTyEckjhcHe+0XQVAErL36J7tzIiQ4Fu74yjf967J0Sr0PHG9eVHbV/Oqyubv0n7eBNXSSnlsVXhzD8pp4B+JHiWygHH7Yrehj/bIZQMjh3MekEz3uVwtV1jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727036064; c=relaxed/simple;
	bh=US1Fcoz+Y1LQZL0oT9Tl/6knfi8gDalPGn1nY8wLJEI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Yvn0telNNp5g7dJPIlStkp1TCifpCiJdEXgM3jbLGmoitATJ3gyZrGR79otWifgl9CPvlNXFeIL9ITVQUHIheq+6YK/8CWnrMH4icdwmmsygsPtQXl8YnXtc22lLhdcSjWnwFNh9JWEHzgetpbE6lCe9m8kyPUml2PcAEmKJf+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cIGwx6sK; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-53654e2ed93so4122653e87.0
        for <devicetree@vger.kernel.org>; Sun, 22 Sep 2024 13:14:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727036060; x=1727640860; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hXnO0dAhio8cKR7ZLjPPkbdRt1uauj4aZsdYTjUljaA=;
        b=cIGwx6sKn4aTrX1mPY8h2GLuza5SoPVzx4RStj/NpUD69Vyt97VSiXnpyI+KGbWrAC
         1+kz113mD7Od+5BODUDxPSuJd0nNofo2h7JzZyybvRjSZ5+QpqCExe+SvzdRTxm90Nc8
         FCRru/4aoAJw1rBrJIql8a94C5RpR1ffY84aSCPOst4yXICP2unQdml4RKCmaafIWUnO
         Oe6r2s3imh0/4NtDhsasHkh+jN25uiRo2h6dZwTF9eqPUYkqdiqP8mdAZuvXzgkQanuD
         DzNt3yZBarvgYu4vG4OFeRdjIERrc1UXdG1Pkc1oxsSmf2NC8oHAm+N7QeUa8S6vCLrJ
         tovA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727036060; x=1727640860;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hXnO0dAhio8cKR7ZLjPPkbdRt1uauj4aZsdYTjUljaA=;
        b=aSbfbsXTKUzWAM6ZNec5X90fb+t1L3BaVz+Kc2uM9tTlz781Vk5/bWtOZGwLHv2zaI
         t5IIvNwXT29vdIWEM/An9n09qWpojpEmQflr9JitX2NU6dVbZGwkveSB727wjWHZdVt9
         +bNBRSkkrk2/pxtYl9FOSXsA8453f6uOXzMPHtzLVuNjGwIGl0eNRyx8ATBwbjsBUeSd
         TJ7ItIspHYbVE1sh5iKiK1GDIBfhDNQWPGpshMdWQUK+qmtcMkz4PjKYn+ZRI2GKMNK7
         KsAK1EFRIbE941+zUm5KfytRRurzokeHSN03lhPpZw7oBtGzNbMvhaQzhgLVH3clbfW8
         Pg2g==
X-Forwarded-Encrypted: i=1; AJvYcCVTkG0LRMkbAl+YnBviE7vIhKrnpHFzGO+Tb1k1X5qG3RtIpg2Q0ke8plMN7q4iz9aSNpzQe1LrZpwC@vger.kernel.org
X-Gm-Message-State: AOJu0YwKFAbcrVXuZC4KHDmWfb+s9CaDTaJJB9YHgbHCX3/C7Z7+SVDK
	SaF+uqWbNSUkZ9OoZvZANbqRnS6EP8zpqQKWdp/Hb4Mer1ZoNPP6uOf4nG8KsE4=
X-Google-Smtp-Source: AGHT+IHNntfHeoqZClLotGkHewiODZdHeP2Ru6UbyB/4XkBdQbNOsyJ6quJdr+0d7MsOdO94wbCHTg==
X-Received: by 2002:a05:6512:3f04:b0:52c:e1cd:39b7 with SMTP id 2adb3069b0e04-536acf6a527mr4485424e87.5.1727036059628;
        Sun, 22 Sep 2024 13:14:19 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5368704665bsm3052672e87.55.2024.09.22.13.14.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Sep 2024 13:14:19 -0700 (PDT)
Date: Sun, 22 Sep 2024 23:14:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Alex Lanzano <lanzano.alex@gmail.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, Mehdi Djait <mehdi.djait@bootlin.com>, 
	christophe.jaillet@wanadoo.fr, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org
Subject: Re: [PATCH v6 2/2] drm/tiny: Add driver for Sharp Memory LCD
Message-ID: <5brnhm3yqqbsnukllo4l53ohaeqmxum53mwq7dme74ny5dsnjq@shjoravp6beg>
References: <20240905124432.834831-3-lanzano.alex@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240905124432.834831-3-lanzano.alex@gmail.com>

On Thu, Sep 05, 2024 at 08:44:00AM GMT, Alex Lanzano wrote:
> Add support for the monochrome Sharp Memory LCDs.
> 
> Co-developed-by: Mehdi Djait <mehdi.djait@bootlin.com>
> Signed-off-by: Mehdi Djait <mehdi.djait@bootlin.com>
> Signed-off-by: Alex Lanzano <lanzano.alex@gmail.com>
> ---
>  MAINTAINERS                         |   6 +
>  drivers/gpu/drm/tiny/Kconfig        |  20 +
>  drivers/gpu/drm/tiny/Makefile       |   1 +
>  drivers/gpu/drm/tiny/sharp-memory.c | 682 ++++++++++++++++++++++++++++
>  4 files changed, 709 insertions(+)
>  create mode 100644 drivers/gpu/drm/tiny/sharp-memory.c

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Please sort out the review tags for dt bindings (either as a v7 or as a
reply to the corresponding patch). Then the series can be applied.

-- 
With best wishes
Dmitry

