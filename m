Return-Path: <devicetree+bounces-177899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F934AB98A2
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 11:21:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 848BAA01C1D
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 09:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0981822FAF8;
	Fri, 16 May 2025 09:21:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yt97lc3e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249AB22F178
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 09:20:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747387259; cv=none; b=bi4ZF4PPxeKXJXocGCVzMGn26aaKTyXEBn1mRtxHy2yzJowd0fPncN6ATgmOJu50HsYmFgww76BBY3U7QmSHyEsAkulx+7hdCVbEDn5Zfsz/zLJ2rXpaFmaugqItL0Dkg6ro5XN7P6Fxd2HPUA3D2FXHyO5/TnMOUAk+ew3QRhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747387259; c=relaxed/simple;
	bh=LKnFOUwwXq/9fAvcKvTjoW/6ZFr5JUhO2L711QhoihA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c2OkZlaoVQzpAgKLr3OLidxDY/AyHflWhxV8iMhHVf1BvbYFSgOIiNKZ60t4dCY4gN4XUrepJWaQiP5H2d7s4fiXi/0lCMSY170O3pWsf7x/p6qbCFeVqLakb83OaDnOfHxehVj1SGCla1SjkMqi294l7EeD2WdSPOuSJavIVdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yt97lc3e; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-442e9c00bf4so13537275e9.3
        for <devicetree@vger.kernel.org>; Fri, 16 May 2025 02:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747387256; x=1747992056; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oVkdhl0yZ1MFLhzxiopsXMYZ7EZJ0whWLEhnArATGGM=;
        b=yt97lc3e5iz9s7CTwnr5fw38Q04ZN+A9rhPxyeIhYoC1E/Z6M2KlEH0gLtv29oBBDj
         Gv0zvo5yQSvwgBPht518ICoLAM3dP/x9QrstAsaogn+8F9KXqPHKBb7Or1lYlTEwEKFU
         22SvuXQfLDDdYr2pPWrKPsudEk8lwDrmGFgFq+Nrc697Ym2/8kMCKaM09k3q00B6DUIV
         50Y4leJyswQUOe55uu+aKouyephrTKusMS3Rfa5tY663V1BwAJg8Vh2MLkttdpLrJ+qp
         NnNEYot0MFayLff8B5Ws/fpK5FmTwggGs1IcfAh2FTjtrn6RO+dLLRDGtx3MloIBy45k
         3+dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747387256; x=1747992056;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oVkdhl0yZ1MFLhzxiopsXMYZ7EZJ0whWLEhnArATGGM=;
        b=Dpsy3S5J8UKquMLB/6OKjbmrHl/8/lCuDIuOA7fPuHC3+gN8ScVSxOiKXf203dE1oL
         Yoy9QEQSHSVUUkFrIynzx0+vkfiCKQALioAWTraReSCW0d2tK5Nb//po6E/zbD4NcKr8
         QOuuQk9B16jeihVgCBa+hAIpG0G4045Dw2kRxHUrAauV0JmIvi2uW8ZzpNsk1fpmvYfq
         O79AlWU93CBuzmcFEYhPJ8f5mH8IFmK9twkLR3LQb25YgLSlM2mVScn7AlmsGN6h1llY
         p+wiOwYk0BzIfiGo9w9V+xfii+ub+XJ8JA+/bPg4jAsLG3DiUuvQ0bn8eFaoF8DLKbRB
         YGsA==
X-Forwarded-Encrypted: i=1; AJvYcCV+Kvtb7SpokiXEY+SXO6c19LAu6X2gvTS1kxI3EvTxfRjPLCevyYfNkM57ClRQdje8aQhVDoin41ap@vger.kernel.org
X-Gm-Message-State: AOJu0YzM0FQpD0Sny4PSERF+C8bTyMEMPH5zpyxP9MoOhXl/1o6CcUcL
	EfAVb/mB+RJrFuYe96/zD/Uu+VibeJSt95jFgV2WR+rjZQTqajophhduZMfH6Ftp7Jc=
X-Gm-Gg: ASbGncse8Ma/IIMLgGzeobsP718zgUyhLl2tMxXJkftyW7ZW0+Tbb+zcWqgilQqytDh
	Ta9/gwJdEPw7XZ2OgbpLb58rNPVabk5STj+PxgePHRiuNQDPMvNDfnivdRCAtyk1eOdAtC1NbHb
	D7Pb+ncTbiDl5sFTdmTh6LNZJDeOr+St7Kq1aJWHfUdfa1j+VkBvQtL9wLSxC5WpJMybM/tJyHY
	TSEHarPEpiN9mVY5isxr4wCkPYxFZWNFlvX3+sMD2WA408fCgFRY0CnEde1zR4Y4CzX1hjKVOHu
	rtUp4k8xGUXN2jkXq/4dJ8cDw+NNnHoZ4bFC/bs+2/fZ9g72heM6X+URPkrvaz++9GbfQJyuuA3
	ZjBaKRXgiwdpiKQ==
X-Google-Smtp-Source: AGHT+IES3ifXyD0j3PvByP7vCZ00BMKCLJoV59bgFS9BgxMTVRCSsT0jxN+o23wdcE+SKI61YC0zEw==
X-Received: by 2002:a05:600c:34d5:b0:43c:e7a7:1e76 with SMTP id 5b1f17b1804b1-442fefd5e7fmr17195875e9.1.1747387256441;
        Fri, 16 May 2025 02:20:56 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a35ca4d263sm2210297f8f.3.2025.05.16.02.20.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 May 2025 02:20:55 -0700 (PDT)
Date: Fri, 16 May 2025 11:20:54 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Thierry Reding <treding@nvidia.com>,
	Jonathan Hunter <jonathanh@nvidia.com>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/5] soc: tegra: fuse: add Tegra114 nvmem cells and
 fuse lookups
Message-ID: <aCcDdqXo_d34BHpE@mai.linaro.org>
References: <20250321145326.113211-1-clamor95@gmail.com>
 <20250321145326.113211-2-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250321145326.113211-2-clamor95@gmail.com>

On Fri, Mar 21, 2025 at 04:53:22PM +0200, Svyatoslav Ryhel wrote:
> Add missing Tegra114 nvmem cells and fuse lookups which were added for
> Tegra124+ but omitted for Tegra114.
> 
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>  drivers/soc/tegra/fuse/fuse-tegra30.c | 122 ++++++++++++++++++++++++++
>  1 file changed, 122 insertions(+)
> 
> diff --git a/drivers/soc/tegra/fuse/fuse-tegra30.c b/drivers/soc/tegra/fuse/fuse-tegra30.c

Why this code does not end up in a fuse-tegra114.c ? (as there is
speedo-tegra114.c along in the directory) ?

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

