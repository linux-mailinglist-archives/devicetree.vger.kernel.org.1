Return-Path: <devicetree+bounces-196471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 818BCB05856
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 13:04:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9EF514A47A0
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 11:04:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4274C2DE71A;
	Tue, 15 Jul 2025 11:03:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GgIuQ772"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323F42DE712
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 11:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752577395; cv=none; b=tzSDB1iBxTam3Tsrkq5WxiGVQYopxIxAMFUeGx8WENbeHJi/fRjylvzVRZlQ/XaNf6qlRa9vtI1dBkBerZzL5QgpOHhWY+340ZavmNpUtiTmhaKQwN76V23kytS0SO3QytsIKYeX+iIL5mdwytbPEehnT5uQaMh8BDH6AvfPuwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752577395; c=relaxed/simple;
	bh=dUS8eQbu1c5UaxNDR+gbiEvORXK1+GXu12FFyLzIm/I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iCHXErYFLZduAZGZTSzsQGNcL+lkki5DRx82M/dHsflpunHy5o0ZBHcREHubbILgrW/yjHwVgEb+mN+arrhZeX2Jfg0TQLwWzaEy8H6sIvZDGl9KGf6cxOp6RCX8y300uwte+fmtflVyjUXIvgP7oW4xYhJ+NvE+RjnOp0ISAsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GgIuQ772; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-45600581226so32788965e9.1
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 04:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752577391; x=1753182191; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CQ3KsY7RuJMCeoFmZ+VPC2LvIrEx59LTT+bBZVmw8v0=;
        b=GgIuQ772O7XqHT7/kEP4jCyB4XbZ95KV87VBSuJYJJ8uleFmdyYIxuciotl9fpDT8P
         KbmLLK/oAS50UwDOMRd5/C9C+sFhhBZXspJcETy5k+kLonqOuHwHc93YsHMIeuV3fHBM
         +pgJgWDT4+cgktKVMdu/5uzjU/gwT2Z8nx5NZWP9XbtLgbywn40jdok4I09arE+TsW+I
         ZK1pBpgsfIF9xd56CVIyjq+XEPLRXoz4pfYEuNCPEKgvJIX9ZSnbLWtWU/BkHT1u0Thc
         PUb4XuUT7kh1OfbLN+VSltXYisUS43R2sY0Utzi41OmHGNilynbegLmm6PowSzggVzG9
         PCfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752577391; x=1753182191;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CQ3KsY7RuJMCeoFmZ+VPC2LvIrEx59LTT+bBZVmw8v0=;
        b=uKau8R5UQs2OFEsquLGsSgj7wSriugla24ykEs+5lhj0iFlhcxlzjhULltT0cZ+q7s
         A2vilbmPYYWMAEop72UuUZIerjqb+OcH30xDYxIAnWyT0qgI94WoO36CUuDJ5diHahoK
         2L98jIeG9iWOFT4nRuix1DXmpC0FGX2s9x7jYMyZwjM1fFZnacdLT/0Q/5L087zku3/M
         HNdZv0xSk342Fozlf4nt/6aZRAwQArQEkGV7xmLFOAH31LO5ZuJHKvlpywBH5qYvEPnZ
         b02Hu6g1WttmIqn7UANG294lxDyDC7HEMWK0EtiUkQJNt8pEe3YgB7OzJaFjatwfXmzD
         F65A==
X-Forwarded-Encrypted: i=1; AJvYcCXnc5q6+1wNms6iMTVNYRSag96AiA5B7zCDKPw7ir/p1ANbI0ZYmdIJ+DnvtskEzPP/YQMSkwQmjntC@vger.kernel.org
X-Gm-Message-State: AOJu0YylexT7fAdvgz4K1NDLdgp/W3L1m4U2orns2I5HMoKO40XRZFPV
	jPwUiRWogXmxLOZnuoPMGgb1vAiosNrbYMuVRB0P0CsMuzTNrmPQ4FbjtxnGC3WdMf8=
X-Gm-Gg: ASbGncuTA7J9YMwLCv1HUDxKIhi1CnsBelCgbEbp8v+k7Gvxve267wnAp/eLcuj93DM
	/i7zjn/DgBDtm37mepgib5S6o0+fFmSI970ImJ+Me1StBc6SXdHhwqxMcUMLbfYONGVlCimVRNK
	oBxVZ3hf9sbjXc7SuVzqKg1Fj0KLBdBE1NC2nnVpsgTSDJNVelRQpaLEMif2QfvQpu5xXpj/I2g
	FUuEZJ2yDBLdt4BFpyssNyz9TqHrEkQuq7uQCVY+Trgexe7yului4LV9pK3/fLvp25G42NDwfY+
	8z9kV65Ha7bNPjt4xINGmOUgw97aeeDD7WiNCAsCXQIElIEDCrsnegFAvmXI9CVrjkgQ/ltpjIH
	wgEEYAKtjFz/oNuN2Ik50lFnzzMa0+bhELppQEd2OqxmyQyGVMVv/Xf3xvysz
X-Google-Smtp-Source: AGHT+IFT6+e+1LHPoHL9zRhZjHAJcWyBIubOz9pyvb5+t2eyC4mO5maHD0gKqNkv9qAY4Y+9Ky5qRQ==
X-Received: by 2002:a5d:4291:0:b0:3a5:8d0b:600c with SMTP id ffacd0b85a97d-3b60a145bc0mr1397391f8f.3.1752577391366;
        Tue, 15 Jul 2025 04:03:11 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8dc9349sm14634243f8f.45.2025.07.15.04.03.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 04:03:10 -0700 (PDT)
Date: Tue, 15 Jul 2025 13:03:08 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Will McVicker <willmcvicker@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Donghoon Yu <hoony.yu@samsung.com>,
	Hosung Kim <hosung0.kim@samsung.com>, kernel-team@android.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	John Stultz <jstultz@google.com>,
	Youngmin Nam <youngmin.nam@samsung.com>,
	Peter Griffin <peter.griffin@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	=?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 0/6] Add module support for Arm64 Exynos MCT driver
Message-ID: <aHY1bPeEMXycbKjR@mai.linaro.org>
References: <20250620181719.1399856-1-willmcvicker@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250620181719.1399856-1-willmcvicker@google.com>

On Fri, Jun 20, 2025 at 11:17:03AM -0700, Will McVicker wrote:
> This series adds support to build the Arm64 Exynos MCT driver as a module.
> This is only possible on Arm64 SoCs since they can use the Arm architected
> timer as the clocksource. Once the Exynos MCT module is loaded and the
> device probes, the MCT is used as the wakeup source for the arch_timer to
> ensure the device can wakeup from the "c2" idle state.
> 
> These patches are originally from the downstream Pixel 6 (gs101) kernel
> found at [1] and have been adapted for upstream. Not only has the Exynos MCT
> driver been shipping as a module in the field with Android, but I've also
> tested this series with the upstream kernel on my Pixel 6 Pro.
> 
> In addition, I verified that the Exynos MCT module cannot be unloaded on my
> Pixel 6. This is due to /sys/module/exynos_mct/refcnt > 0. So if you try,
> you'll get this:
> 
>   root@google-gs:~# rmmod exynos_mct
>   rmmod: ERROR: Module exynos_mct is in use
>   root@google-gs:~# cat /sys/module/exynos_mct/refcnt
>   9
> 
> Thanks,
> Will
> 
> Note1, instructions to build and flash a Pixel 6 device with the upstream
> kernel can be found at [2].
> 
> Note2, this series is based off of krzk/for-next commit a15edf91668b ("Merge
> branch 'next/dt64' into for-next") with [3] on top.
> 
> [1] https://android.googlesource.com/kernel/gs/+log/refs/heads/android-gs-raviole-5.10-android12-d1
> [2] https://git.codelinaro.org/linaro/googlelt/pixelscripts/-/blob/clo/main/README.md?ref_type=heads
> [3] https://lore.kernel.org/linux-arm-kernel/20250602151853.1942521-1-daniel.lezcano@linaro.org/
> 
> Cc: Alim Akhtar <alim.akhtar@samsung.com>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Donghoon Yu <hoony.yu@samsung.com>
> Cc: Hosung Kim <hosung0.kim@samsung.com>
> Cc: kernel-team@android.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Cc: Rob Herring <robh@kernel.org>
> Cc: Saravana Kannan <saravanak@google.com>
> Cc: John Stultz <jstultz@google.com>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Youngmin Nam <youngmin.nam@samsung.com>
> Cc: Peter Griffin <peter.griffin@linaro.org>
> Cc: Tudor Ambarus <tudor.ambarus@linaro.org>
> Cc: André Draszik <andre.draszik@linaro.org>
> Cc: Will Deacon <will@kernel.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Cc: linux-samsung-soc@vger.kernel.org
> 
> ---
> Changes in v4:
> - Missed the "v3" string in the previous series for the actual patches
> - Re-generated patches with --base a15edf91668beefdb5171c53fa698c9b43dd1e0d
>   for kernel test robot.
> 
> Changes in v3:
> - Rebased on top of Daniel's timer modularization prep series [3] and
>   krzk/for-next commit a15edf91668b ("Merge branch 'next/dt64' into
>   for-next")
> - Added owner references to Exynos MCT clocksource and clockevent objects.
> - Dropped #ifdef MODULE conditional section in favor of just using
>   module_platform_driver() which will properly handle setting up the
>   of_device_id table based on if the driver is built-in or a module.
> - Update commit message for patch 2 based on John's feedback.
> - Dropped DT change from v2 as it was picked up by Krzysztof for CPU Idle.
> 
> Changes in v2:
> - Re-worked patch v1 5 based on Rob Herring's review to use the compatible
>   data for retrieving the mct_init function pointer.
> - Updated the Kconfig logic to disallow building the Exynos MCT driver as
>   a module for ARM32 configurations based on Krzysztof Kozlowski's findings.
> - Added comments and clarified commit messages in patches 1 and 2 based on
>   reviews from John Stultz and Youngmin Nam.
> - Fixed an issue found during testing that resulted in the device getting
>   stuck on boot. This is included in v2 as patch 5.
> - Collected *-by tags
> - Rebased to the latest linux-next/master.
> ---

Applied, thanks

  -- Daniel

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

