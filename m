Return-Path: <devicetree+bounces-225829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 248EABD1687
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 07:08:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3BB161892186
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 05:09:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC0C727FD40;
	Mon, 13 Oct 2025 05:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DGcSJ2Af"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294321A5B9D
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760332125; cv=none; b=p4HamYJ6LsOUVHkAUUtAJF4ArllDLBd2LppvsLnxOsEIJbd+gPOkffSrGXJDDgfQKZLuzg8icx/cGbM5vVe5RsMCSLIj71oZXxVbPvZeVpgt0EvH6zHg15E5LEoD9E8SI0fyT68780RiVn4CWbv8hWrRFw8Upv+PYqR78dO3IDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760332125; c=relaxed/simple;
	bh=JW2KZzHBHGQ+XKshSFr20YBoYNWz1TvAot2oKeFV9kw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ady97R8L1RPVIwmoZKNkuI7thdH5/dp6zqE+ATibY5XvXJNrGyu+0tuA2bDZDbrbnUCxsp5gGdaWRBYY/Sf7EcE408iGoBC/nRvAOqj2jYtF44sID/QcwtTDi+1Qmq8TRjGtl7BE6sAB3zRwKMnVkl7Z7mCU5F2uwtK2Mqrsico=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DGcSJ2Af; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-78af3fe5b17so2961783b3a.2
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 22:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760332123; x=1760936923; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GvMGF2m9NKomiMPkcFDrgY9B/XQ2FXotq7iRDHPw2HM=;
        b=DGcSJ2Af6VYmbrtuCzQG3CMmb1RhZwaLy/chU9o2lUUr70Bx2+z3r/OMvV0xYYZQaP
         eA16OXeckD7LDEPs5jQU6+fV23sXpMRaYgbQ6ObGNFp/Jg5iHFT2ZcNlHPoO55kIH4Tf
         VvbRMvZdohIEapQ9BF/G6g2n2nHsWsVs3c6TuRAKPbOwpLuWIhTCmCsToee6YyUG+Xwj
         zlL3m1vxw7MJoZIMh2wJ26ewgNdyVNUko7VgXB4Poad0kFnqgWm+AKYxtseB3POYaXQr
         +XLJ/2bvwsqb/VW7BhAwPG8K8AyGuxtOh5GkLvxpI12AHo/S+oYzfoSEjL7NDdwlNNcr
         8x8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760332123; x=1760936923;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GvMGF2m9NKomiMPkcFDrgY9B/XQ2FXotq7iRDHPw2HM=;
        b=R4eBdxg8Jjtl5Rlvrw4EQNkgl1AvIA2YqqUN24bIyq9yJNU9siEfNwA56XNEpEAGIA
         o39xWvZJwGIbI3K/h9RgqsmPHI/qYEvg4n9uFB5a4PEbVCODuVrjWIfJ5nJCgj1xl65u
         gls/2JD7CKid969fX0icn4oZhd7lcBjC/l7UU9LRltkkjYPwNvs4qmuPZJ1HarR4itbt
         uIwgiYP3WMf84RUGkQ3p6QblOAiwpPXNgYfmSCeuvyj0gQqH79mHGgCA7+5vhReIidEz
         5BQD3LoTTCNNd5rwAtp2v3PpkHMXuGV23wP7MqxmgpLCwkeFkunvOa8bLjjBFXEAWQzL
         QzLA==
X-Forwarded-Encrypted: i=1; AJvYcCVUz0z0bIXnugvWFcBlO1RQDY9bKUP9KLdjHbaUoVvQqlDkgWyIpI/YoxNqV/SlkCl7s0/U/rDT246s@vger.kernel.org
X-Gm-Message-State: AOJu0YyySftdBENiIp1lKwh7NVHqGMvGc89hFv8s6oEv7iAhnfnzxJ5C
	xOBfxwsKGCdPUWZq3iwjrNYJYHNemMeDogn9ep7COGTsWnh0hwTOMfJYPIOrH/rFlRfemb481gy
	F90Tb
X-Gm-Gg: ASbGncsIhQOgNiglzvcICdvrnMTWY93Xi1Q7aMeIxh8uiRGaCvHa8ixE/uLYoYCm3rx
	7a9nrX1EqDWyk6LHHms3IyjPzIsRs4qpSgtbjptOVnfMpKwIE7IUwzH2s+qj++FDDYKNf+aAkJw
	ROFMqFag6UL3stGTr3OksAL2wxNrknb4XDFk3/hVlTM0uh1HF7K02uY5mK5+KO4H8x2sfOAnYtG
	Ye4xz606SBsdFY2DC0Wj8JDMqfmr2ocxoWcqPLFa0NAzBTtPmpLwIzGZoFLtOEiQAnkaBKlWA2K
	QuDVoZ3wcbN0l1EzJQWgWPjh+3jqwSa6vZOCpoCn5S1BY4ZmVVFEktZacfaBB+tFCbzeOThSlZi
	YP5tqoHt5JNER1avY0MwdvualAXEPn4Qx4cBqfzwhFk/ChbFb56WPHaocNAO/A40s0nJA
X-Google-Smtp-Source: AGHT+IFr1jDMWruKiXaI53Y1xIrFgDt+3JcFOtGMWWSDIGVWWBQCIaxajxNyZnXlqxumYlg8hTxd+w==
X-Received: by 2002:a05:6a21:99a1:b0:302:c800:bc0b with SMTP id adf61e73a8af0-32da83e64d7mr25164345637.44.1760332123377;
        Sun, 12 Oct 2025 22:08:43 -0700 (PDT)
Received: from localhost ([122.172.87.183])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992bb11ca0sm10155168b3a.32.2025.10.12.22.08.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 22:08:42 -0700 (PDT)
Date: Mon, 13 Oct 2025 10:38:40 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Aaron Kling <webgeek1234@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v2 1/8] cpufreq: tegra186: add OPP support and set
 bandwidth
Message-ID: <5ind7yevxsrsd3ws5rkl5z3zuxw4yrqoclqg7q6beunc6kgr2n@qmgbgw5q2ltc>
References: <20250909-tegra186-icc-v2-0-09413724e781@gmail.com>
 <20250909-tegra186-icc-v2-1-09413724e781@gmail.com>
 <20250930103006.octwlx53p2shwq2v@vireshk-i7>
 <CALHNRZ84s8rxQKWZeF-bfS31nK6ay4_MspmYa4+qapf9gtk+Fg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CALHNRZ84s8rxQKWZeF-bfS31nK6ay4_MspmYa4+qapf9gtk+Fg@mail.gmail.com>

On 12-10-25, 21:32, Aaron Kling wrote:
> On Tue, Sep 30, 2025 at 5:30 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> >
> > On 09-09-25, 01:21, Aaron Kling via B4 Relay wrote:
> > > +static int tegra_cpufreq_set_bw(struct cpufreq_policy *policy, unsigned long freq_khz)
> > > +{
> > > +     struct tegra186_cpufreq_data *data = cpufreq_get_driver_data();
> > > +     struct dev_pm_opp *opp __free(put_opp);
> >
> > The usage here looks incorrect..
> >
> > > +     struct device *dev;
> > > +     int ret;
> > > +
> > > +     dev = get_cpu_device(policy->cpu);
> > > +     if (!dev)
> > > +             return -ENODEV;
> >
> > On failure, we would return from here with a garbage `opp` pointer, which the
> > OPP core may try to free ?
> >
> > Moving the variable definition here would fix that.
> 
> If the var was NULL initialized, would the free handle that correctly?
> Keeping the declarations at the start of the function reads better
> imo.

include/linux/cleanup.h has some recommendations around that.

-- 
viresh

