Return-Path: <devicetree+bounces-222749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 736FABAC7AE
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 12:30:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F5353AF444
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 10:30:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 760392F9DAF;
	Tue, 30 Sep 2025 10:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qz3uZlMZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C210422172D
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 10:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759228211; cv=none; b=VDU2V3Fwce6yEiSpUNwMbTUN0wmUiszLkar7qd0U3skvwgLz6h6hEdu+jWtxSlNjQZ+ubex13sdGpBZmVeN1/Wm2ymYCp/Pbrcv8dFAvr32oXe0KMa4QAdAQF9MHC7brUh6bfUTsnvKrCtUrDkaKIZpaSREWav0b9sfxUvGDkkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759228211; c=relaxed/simple;
	bh=LlAd46X4AMd1hwxDl9JpZBtSvrds+zrXrLm1hCZMZGg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fpk0fdrHVIPeNBvFI1e2x2oawsjcKGWYaA2z1pruLzepXSkM4z2+ZCvXw4tYbZLh2oZVO041NZXo5MmyV1in7uCVZCFLCVZDocwu8zf6Q9JaRNOGlDGfg71jVGhYse+ckbsQIqDvsplnLemr+MjV2lvy4Z3zdxgpOSy6hDMb1x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qz3uZlMZ; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-27d4d6b7ab5so86589195ad.2
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 03:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759228209; x=1759833009; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1Bti2R28/RAVcQBXOrb8jZ4ikDl7tBOWMDlFZn02oZ4=;
        b=qz3uZlMZevLjFLfnFdPjS7DJyFCcC4z+WUPimXuo8Txym21x+GCXTI6jSzAzhSJs05
         bj4zWMYDpuxSq0z20B0xjz4iwvmJ3vvi2RxQvyWNqHwm4MwYq1Bf1N47Rf9qhf9D4au9
         kcCK5wq7ipecWcP3ZZw/VNwIjprmbIqbYn/eoVnkwKIK2CKk62OSjk2c0PfxJJPNkuTi
         B2NPfix3wcaC3lMK3OskKF0mwPctPFR3wEHDffQGle3cTnWmjkYHn9SOr2exjERnka6b
         2LWH2ybpP1iFRkIfFtl+DSl9iIkUh299cNZviOViPweK9VawxiS9gle4K3Ktds8eiCjk
         KzWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759228209; x=1759833009;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Bti2R28/RAVcQBXOrb8jZ4ikDl7tBOWMDlFZn02oZ4=;
        b=wAdOm66JEILzVc7jyEtnNFe4+A0ghZrevgcenhuni6mfptgqLcg0Xi165vNfbOTS8j
         VVCu/VaKAzZdE3N0dr1dw7szOtuNoSu2Bs8aqUtXZWAmUb1vr+BN4XTue9Z7ALzig0sE
         z/fyJOzDnS7DToZBYQiafrpcrKwaOQz+xWT4CXC01x/vEa+f07UqxYzABoVKY3+DyMJl
         TWEXjA6hqcrlmsEcHeyoZT6LJ4Qt1EEt1nQg+pngiKsBOIj/gkWKvRQtfAWZacybJsB2
         xaBbFYItB4p2q+6zQzBcV+lQyLQ1awpsB5ZgbI65hama/jAgfphdm+MSMtmGCVo8Oa0I
         0fQA==
X-Forwarded-Encrypted: i=1; AJvYcCXswKi6+VKRfe5+d/9sxzBp+k8pP7AOgnxf5m+sRPXgRXOj9LZVPS4S1HfI1JUWW6iXTxJ/3IbAUaS1@vger.kernel.org
X-Gm-Message-State: AOJu0Yyxv4Hkkm0BLHBBBhpoefn6WUJT2ourp2vLCPAVEzVQIOqXrsdn
	EWpr+/zAGQt9GOea1Zg+e1GUl7TwCyllfYQOJVr1bdwnq4fSSyMM9JOM4xKcfvAmd0A=
X-Gm-Gg: ASbGncs9qgmJmJEAu/JUb6BpDU2jvJGLbzhqLw5k3utRyB4oxzzWT1HWJVfklTZZjEn
	G5BBWDVA9zApBWN8telH2zIbCAyR5C2y1iE7FY4zVLrSaYw+Q9wMu79Rq3ozo+geqqzdut5e2Kr
	0ugdlQz55J9PdwaOvSczbq8TN9iXtI4GQtc8qIyYbOv0s+aF1BuqQ8P96bjzoomyQc3MyFvQ4qV
	x66wXxkX4U5R5qZpYGVZP+NCofRDxVh0K0suiTgnceyVSbbjU+1P1Kkm5vCcRVprrdqoF5zfHNX
	UdxiwXYdeFUuim7a6W7polCgZXuoSs16ihoL5Jby3n7otvl9sCsCI0+BbG3OO6j95lQYJQu3f8n
	xJ9PIzntCfaeXbgZRQwCQpibicMfswpQpzx32BHrgZtglpfb6JbUeDkTGOiGn2IY0Y8hmDQ==
X-Google-Smtp-Source: AGHT+IGvSXNfKcREmK5xdLdLGpoBcxZHLK9ma2oRLZHFgufwj2uLeXd8vq5DC3f0IouV+OETawQEFA==
X-Received: by 2002:a17:902:d0c9:b0:24c:da3b:7376 with SMTP id d9443c01a7336-27ed49fb299mr159575375ad.26.1759228209125;
        Tue, 30 Sep 2025 03:30:09 -0700 (PDT)
Received: from localhost ([122.172.87.183])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6ad1fd9sm154739555ad.142.2025.09.30.03.30.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 03:30:08 -0700 (PDT)
Date: Tue, 30 Sep 2025 16:00:06 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: webgeek1234@gmail.com
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v2 1/8] cpufreq: tegra186: add OPP support and set
 bandwidth
Message-ID: <20250930103006.octwlx53p2shwq2v@vireshk-i7>
References: <20250909-tegra186-icc-v2-0-09413724e781@gmail.com>
 <20250909-tegra186-icc-v2-1-09413724e781@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250909-tegra186-icc-v2-1-09413724e781@gmail.com>

On 09-09-25, 01:21, Aaron Kling via B4 Relay wrote:
> +static int tegra_cpufreq_set_bw(struct cpufreq_policy *policy, unsigned long freq_khz)
> +{
> +	struct tegra186_cpufreq_data *data = cpufreq_get_driver_data();
> +	struct dev_pm_opp *opp __free(put_opp);

The usage here looks incorrect..

> +	struct device *dev;
> +	int ret;
> +
> +	dev = get_cpu_device(policy->cpu);
> +	if (!dev)
> +		return -ENODEV;

On failure, we would return from here with a garbage `opp` pointer, which the
OPP core may try to free ?

Moving the variable definition here would fix that.

> +
> +	opp = dev_pm_opp_find_freq_exact(dev, freq_khz * HZ_PER_KHZ, true);
> +	if (IS_ERR(opp))
> +		return PTR_ERR(opp);
> +
> +	ret = dev_pm_opp_set_opp(dev, opp);
> +	if (ret)
> +		data->icc_dram_bw_scaling = false;
> +
> +	return ret;
> +}

-- 
viresh

