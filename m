Return-Path: <devicetree+bounces-252539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 119D7D00DE9
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 04:30:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 137CA3021E51
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 03:27:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 520CB27B358;
	Thu,  8 Jan 2026 03:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="onH5rYAO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15006EAC7
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 03:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767842837; cv=none; b=e7Lzh/JEj8MTkIDzXxvrgxwt2hPx2UkfRVMvcLJr70aExxSURjgONWTKNbmft2Xwcmn+6eBuJ1uT3ptKFvpogDQy0cwPvpu9qyGnepOG+TkkOCY7YRNz/lUO93tO5SxDwC2grGjlv9s5YgQ2DSVd4sL9A7Q7wc4ly7dzhixn1n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767842837; c=relaxed/simple;
	bh=uRRzFOarmIqei7630HqvPZpSNuM3xX6E9wa8HXF9jBc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XZS43jWkFo1bg8sseQEoReMyO0YAi3mP4ZIurBj0gQpAAJS7ewIF7q3NTA1bmhz9C1kwaiNg/s8goAXK+n4iY8CDb6PP38YvfWlNhUfuNCiUrqUCU5HcuHtolsTr/vOpwBNIvP218zqf4UBAMuv8KZJeVEjAOwZjA6QuF6u3lew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=onH5rYAO; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-2a09a3bd9c5so19423075ad.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 19:27:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767842834; x=1768447634; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Mu7Pr1Fsv537lLh/d+ZgA1WZ3a8Wch+LwtiH0stf88o=;
        b=onH5rYAOwB/Awl326lldisXnyp7F5KUCpioL61/tZlPYtxZIs8Sv0d2quZJMD4oD3k
         IWK4H3D0NkIfu+BLvLZCCrMFJLDyfcSaXiQ4EdRuFO3rWVg/If4/NYUHwjacb1c77FjA
         N7dg3NpeZotD5Jz+n8O5ju+k2Wuzb6vJQnmJcIh6y2YOhMMXX0pDm8IQUlnpc0YPcSL1
         fONBcDDBEDFMIwRTfAH6JjL1fF3LAmaooYioJZo5qM75scaYrwfJd4eltpBPGe2oUN5X
         8E8/Asm2WRkRi8iZI2sMYH3xB9rwxTntGG5YVdnaQLEH94rNIOAkQYu8Ul+q83ghK3Du
         Gxrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767842834; x=1768447634;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mu7Pr1Fsv537lLh/d+ZgA1WZ3a8Wch+LwtiH0stf88o=;
        b=R/hVik2NVfsvN5meU13OurHsmSez8+vFFxTFmVdf2zdrl/spBckv5EqEMPRQt2DRCZ
         VAzydcYS+IyCbltTfUVpYJSMs31zpEx2QPhsXTQBYyXd3CVsT6L84DhJgxxL6Ry4trhW
         26NIsWnQYiS641qnXgAEu6wAUTA0tlY0GyiQTGGx+S1KxcOeWUYf+rl2qOshN0kUCZwO
         Rc5Qk2rrd2X1YvWtGzwX2yHFBna9tpMS4FqVVIfUDMEZfh9zE6NdfgfmfGGXrJu9v4id
         T9XE69T6K68H2PmRuhNvg+6BQCxiUGx1kevxm4gwYAWyiZFJaOkwwVpdmWd5wEkzXo8y
         uN9w==
X-Forwarded-Encrypted: i=1; AJvYcCVcSSSl/MKzL1+gcY4Mo73AHwKVvRJbpU8EDTxMgbxfo0BT3jXtMv+e3vMZxm/HWPk9mYw+jqseiPPS@vger.kernel.org
X-Gm-Message-State: AOJu0YyVSaNFc4ksVyrfUGhb6Mo/4WST3S5bYrjPZzp2+CGwe5ZVfZCr
	DpRiV+vHIpRWEbLTiC5wjpLSLDNlwhtPa7fCKCaH5qChvFsrYkpw0rj4dWo+rF8Y+Zs=
X-Gm-Gg: AY/fxX5Um1TMRuYFxHwL/lShIXHuXtzR1HjrTuYayvjhvoJZUvZNWyE95Ek9MCJymVQ
	i7DM9W7gYzGVn+E5/Nmu+iedb8T/eY0NABrrqn92XjrL3EFCI6q2Mfb5tH1LkTyi+TmGAdgvtMj
	5KLwdLiwj0k/b1gD8pspbZtf9jmH7PQc0S3eSJQEyV/6b221IgEWnrNiDKPvemYIdA7irGwLeJJ
	Za7VEJSTb8mjkukXr46/ZYcoGX5sSaridcpBYxk9kFbDwUxK3Rv5isUKdI/gz9xmrhsav3rrN5g
	12izYEl/R7HBeuZQg7Mg0LloCY5w9fSWg/s6VpY6tRwPbKEpfJQ1qs9QmNPZVh3mBDMBtBcbLKU
	iY1wPJqCKnE3HLJXxGJAp6YW2IaTRbbrfa5LEEATgG4PdfDFML7USFlIZsfNPNKsObZj7pgVIB0
	mgGzCPcWI6o2k=
X-Google-Smtp-Source: AGHT+IGWi0WECARHC8sh1t7xnHsqYiwxnwYeP+AKv4h6c8GciQupJD36kPRYTo6CbK8YPrm4jsg9uw==
X-Received: by 2002:a17:903:1b4c:b0:26c:2e56:ec27 with SMTP id d9443c01a7336-2a3ee43653cmr44865905ad.19.1767842834139;
        Wed, 07 Jan 2026 19:27:14 -0800 (PST)
Received: from localhost ([122.172.80.63])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bb0dfd29sm6063479b3a.25.2026.01.07.19.27.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 19:27:13 -0800 (PST)
Date: Thu, 8 Jan 2026 08:57:11 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Joshua Yeong <joshua.yeong@starfivetech.com>
Cc: rahul@summations.net, anup@brainfault.org, 
	leyfoon.tan@starfivetech.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	pjw@kernel.org, palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr, 
	rafael@kernel.org, sboyd@kernel.org, jms@oss.tenstorrent.com, 
	darshan.prajapati@einfochips.com, charlie@rivosinc.com, dfustini@oss.tenstorrent.com, 
	michal.simek@amd.com, cyy@cyyself.name, jassisinghbrar@gmail.com, 
	andriy.shevchenko@linux.intel.com, linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH 4/5] cpufreq: Add cpufreq driver for the RISC-V RPMI
 performance service group
Message-ID: <5nfljdaewlmafydt5a3jijjlr2krszbnadmjkpkgo7in364yzy@tiejhive2siv>
References: <20260106092117.3727152-1-joshua.yeong@starfivetech.com>
 <20260106092117.3727152-5-joshua.yeong@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260106092117.3727152-5-joshua.yeong@starfivetech.com>

On 06-01-26, 17:21, Joshua Yeong wrote:
> diff --git a/drivers/cpufreq/Kconfig b/drivers/cpufreq/Kconfig
> index 78702a08364f..9aaa1f71000e 100644
> --- a/drivers/cpufreq/Kconfig
> +++ b/drivers/cpufreq/Kconfig
> @@ -4,8 +4,8 @@ menu "CPU Frequency scaling"
>  config CPU_FREQ
>  	bool "CPU Frequency scaling"
>  	help
> -	  CPU Frequency scaling allows you to change the clock speed of 
> -	  CPUs on the fly. This is a nice method to save power, because 
> +	  CPU Frequency scaling allows you to change the clock speed of
> +	  CPUs on the fly. This is a nice method to save power, because
>  	  the lower the CPU clock speed, the less power the CPU consumes.
>  
>  	  Note that this driver doesn't automatically change the CPU
> @@ -65,7 +65,7 @@ config CPU_FREQ_DEFAULT_GOV_USERSPACE
>  	select CPU_FREQ_GOV_USERSPACE
>  	help
>  	  Use the CPUFreq governor 'userspace' as default. This allows
> -	  you to set the CPU frequency manually or when a userspace 
> +	  you to set the CPU frequency manually or when a userspace
>  	  program shall be able to set the CPU dynamically without having
>  	  to enable the userspace governor manually.
>  
> @@ -134,7 +134,7 @@ config CPU_FREQ_GOV_USERSPACE
>  	help
>  	  Enable this cpufreq governor when you either want to set the
>  	  CPU frequency manually or when a userspace program shall
> -	  be able to set the CPU dynamically, like on LART 
> +	  be able to set the CPU dynamically, like on LART
>  	  <http://www.lartmaker.nl/>.
>  
>  	  To compile this driver as a module, choose M here: the
> @@ -147,11 +147,11 @@ config CPU_FREQ_GOV_ONDEMAND
>  	select CPU_FREQ_GOV_COMMON
>  	help
>  	  'ondemand' - This driver adds a dynamic cpufreq policy governor.
> -	  The governor does a periodic polling and 
> +	  The governor does a periodic polling and
>  	  changes frequency based on the CPU utilization.
>  	  The support for this governor depends on CPU capability to
>  	  do fast frequency switching (i.e, very low latency frequency
> -	  transitions). 
> +	  transitions).
>  
>  	  To compile this driver as a module, choose M here: the
>  	  module will be called cpufreq_ondemand.
> @@ -367,4 +367,18 @@ config ACPI_CPPC_CPUFREQ_FIE
>  
>  endif

Unrelated changes ?

> +++ b/drivers/cpufreq/riscv-rpmi-cpufreq.c
> +static int rpmi_cpufreq_probe(struct platform_device *pdev)
> +{

> +fail_free_channel:
> +	mbox_free_channel(mpxy_ctx->chan);
> +
> +	return ret;
> +}
> +
> +static void rpmi_cpufreq_remove(struct platform_device *pdev)
> +{
> +	cpufreq_unregister_driver(&rpmi_perf_cpufreq_driver);

Don't need to free mpxy_ctx->chan ?

-- 
viresh

