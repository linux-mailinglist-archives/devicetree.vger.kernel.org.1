Return-Path: <devicetree+bounces-139207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F188A14895
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 04:44:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D4DA3A4A2C
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 03:44:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CCB11F63EF;
	Fri, 17 Jan 2025 03:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mtCUFGrH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F1E1F63E1
	for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 03:44:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737085445; cv=none; b=rNDtUYpK84wifGGb5jurvu6wQoKRih4fkV3CbzSyQ3zpnd54AG7U3GvKuHKeN0fV40l53GWuQte359IjH15SAp1gxtEoq8+9VUgkUieqcBunuaUc0V5j5yko3Hxu3568yrwKYqdMSsMt1JMqG1cH2WnURl/cj/h1qkXCcXtbJYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737085445; c=relaxed/simple;
	bh=0dhKv0gLi70+Mn3lfhGBPsydEadYqDGEWN7e/WJvs18=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lEbbkOsECYixbhs1YPfEQsB4dp0LvBu2In5dLPUOSZpbgDhSZC+Czf3S+YzYQSBg+3K7JReTvaJMwZoNQZfVK1g0cwggHSNJab+1NqC8GxxIj0k3JSxrSk4UvCPpTLAMSX1hDYZtS1ZAQhYBYZzUl7XMWgeEEvBMBgnUc0H896M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mtCUFGrH; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5401e6efffcso1900796e87.3
        for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 19:44:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737085441; x=1737690241; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=i4+rc7zr12NkY8+R4W4XzHgtWfwIjKXfUvC4zjsYnME=;
        b=mtCUFGrHhsVbTlJ8u8mLE0xBtPsnYmhZWUvMocM/oVuy/J/9gnWZQ8gLKmLOeJT6fF
         WAAFy1ltZ6r8vNik/pYYXiZVrko/E7wvBUGu20i/Jv0cKxEXzu+MmzBkPVaRfFjWi1up
         XKwkmcOCquKBf7Otqr5+a+el+Onxz+mEsLIZAJt9y7TBsBxFyI+a779qyVVApkDTnxBW
         g1JKaFS191Wq+syygzOK+Ur2RRr5cieviMxfhoO+9C6w+4PcgCq+NfVayLp29vbee6e9
         HA6XofxdsGk3qfQgG5IElLy9bPZ/RIel3h+lZFKOQhdf6r+Ic0ZxnjLBhkzl2IbOQCjk
         mUjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737085441; x=1737690241;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i4+rc7zr12NkY8+R4W4XzHgtWfwIjKXfUvC4zjsYnME=;
        b=ZoGrqaZkHX9p0A1/dDFFO0Mm0BnO9mJMcCRi9t6tNNWix1/yneNXRzyebggQspdhEy
         VCSgkIVpqHnrRyIqnwtrQe0rnmVimVpwelmHT5kfncJIET5Dezlfhc3+Af+nrSuNr7a0
         5jDncZzFT3ZuE4z5/T0PEjPX8L1LJNe5LqNC82OJfCi6yx1FRhbxnxaRXf5ulo9rsq5j
         6CBszYG/qx1FHKpHsm6mNUVynp7eEK70tkbOmU05zt9jg++o7601u4mYH97gZ1FFGGL8
         QLO+k396UUYrvJDWNqEQyJpkO6VBjruK/Xg/tMoG+sdOGJJMHXTUSLxjT4UHMgoqjo8n
         qWNg==
X-Forwarded-Encrypted: i=1; AJvYcCUqmHKzHDziaF200OlCNSmTUKiZPKmfSmcYM3Uoypuds5JLhJZgJ5qYMuDBp/NidLXU1Lytfqc3cRiJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yyzp+kLnwk4GjqwbBfvzuHlgBl3YTuZyNPDF/HPtJvQZJVAfAyB
	v48ri6hb8VDAS/f1tcjk/Dp1f/wdVC9G+PSbNxAVD93SSZ8ddIFEh1KGFMKdugM=
X-Gm-Gg: ASbGncuQtWO1+97srhCtyHWjhuZn+JKt2dDkcjzljLrLS9U05IZNA7wFSWG3gPBMxS+
	mYrVtrWvc54Z1H9Un8M6j8VuHNBh7O6K9JOc3jZ7G1A2wQeu/y/3gZGuFglksnoudDPbRLVjHsJ
	smDtOOkOaezsawuzmTY99OIUvdQlm9asLJdBKjtfE4fSXYKtjMmACFPDkp/PpHaelZs/EcmrYKc
	Y36JtEcegMbZ0t2UJqmrxG/1jdPH32EUdnQGxKLU9C5B9p5Jd/CeHYI+FbauUz1l7x0CaydUPDs
	ZhHsjxO37mBaEmBQzS4v5Mx/bFyPcS/Ryzfe
X-Google-Smtp-Source: AGHT+IGz5ay7LtZ6+rSD2XP9rxWv/jABbs6ebwXD/MzQJbyjd0oZnFaAjrC0FEJz70e5w3SHfSay0A==
X-Received: by 2002:a19:5518:0:b0:53f:231e:6fa2 with SMTP id 2adb3069b0e04-5439c253a05mr197064e87.26.1737085441361;
        Thu, 16 Jan 2025 19:44:01 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af78d57sm190046e87.232.2025.01.16.19.43.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2025 19:43:59 -0800 (PST)
Date: Fri, 17 Jan 2025 05:43:57 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Maxime Ripard <mripard@kernel.org>
Cc: fnkl.kernel@gmail.com, Hector Martin <marcan@marcan.st>, 
	Sven Peter <sven@svenpeter.dev>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, asahi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Alyssa Ross <hi@alyssa.is>, Janne Grunau <j@jannau.net>
Subject: Re: [PATCH v4 2/5] drm: adp: Add Apple Display Pipe driver
Message-ID: <2alm7gds4k2lnbk36gjdw6yhzhpls3ce5baycdiv7lsigxsbzn@rhwdgnphwwp6>
References: <20250114-adpdrm-v4-0-e9b5260a39f1@gmail.com>
 <20250114-adpdrm-v4-2-e9b5260a39f1@gmail.com>
 <mu7qiybhj7tu5hauk7izfxqlookc3awpknhjk74zwpkbznei4m@kewap6vivzoa>
 <20250116-vivacious-congenial-nightingale-cb2f6d@houat>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250116-vivacious-congenial-nightingale-cb2f6d@houat>

On Thu, Jan 16, 2025 at 05:01:03PM +0100, Maxime Ripard wrote:
> Hi Dmitry,
> 
> On Wed, Jan 15, 2025 at 12:21:39PM +0200, Dmitry Baryshkov wrote:
> > On Tue, Jan 14, 2025 at 10:38:53PM +0100, Sasha Finkelstein via B4 Relay wrote:
> > > +static int adp_dsi_host_attach(struct mipi_dsi_host *host,
> > > +			       struct mipi_dsi_device *dev)
> > > +{
> > > +	struct adp_mipi_drv_private *adp = mipi_to_adp(host);
> > > +	struct drm_bridge *next;
> > > +
> > > +	next = devm_drm_of_get_bridge(adp->dsi.dev, adp->dsi.dev->of_node, 1, 0);
> > 
> > select DRM_PANEL_BRIDGE for this API to be available.
> > Also there is an issue of lifetimes. The bridge will be destroyed only
> > when MIPI driver is unbound, however the panel can be attached and
> > detached several times.
> 
> Can you expand on that one a bit more? AFAIK, it's always been unsafe
> and we don't have a good mitigation at the moment, so it's unclear to me
> what change you want here.

I was thinking about using drmm_ here, as the DRM device is also created
and destroyed each time. But I might be mistaken here.

-- 
With best wishes
Dmitry

