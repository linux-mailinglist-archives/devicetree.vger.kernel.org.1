Return-Path: <devicetree+bounces-162699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 432EBA797EA
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 23:59:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F06001718F0
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 21:59:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 930661F4CAF;
	Wed,  2 Apr 2025 21:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="xZq14Bl/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32070155382
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 21:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743631179; cv=none; b=MM7vPpGBbdsKAkk/gHtt30W5PTHCSski+Z+tdepDy9plLhBFehf6pJ9lnKN+m2bbCZMxOcicIzTnbUnjXmdR63YIEy1kIdK9LwWz0CHHC93DZnfR2ftN8cCsvLdYWK0omzIaWjMqKpuyRc2qbeh88nwpf+qhX6NEp1kr01ALqB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743631179; c=relaxed/simple;
	bh=Z/xOV2Rb8NgoEvjLqYQw+xu9IJFae4Mb5dAPjpppXrk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DTUzcjmuaM7ia3sMJmlgkDAbpdG9VMU1KNN0Ja7+iK8vftnqEnwErSMPLlu5mzwgSeF+IDaWAZy8a5Q5F7hGTYFyba860v1oim002YL9suTQ3z+J5YFzhSOdofslRYDiXF8osu9TgsOLYZzI4rzZnqyhEldBumyDb4aaJz4GDHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=xZq14Bl/; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2264aefc45dso4320435ad.0
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 14:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1743631176; x=1744235976; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WqllMbVSzlYmSg4e9MsN3Hg5U+KXq66OHOKXxPOPhW8=;
        b=xZq14Bl/GyyNlhPUpwTuaLjWoGIgqv8F1cDdpDwbEEPnjy94s6VIJDUB7F3K0h7fAD
         5jDL17EWS1I8eaxbcoII1dKiCgWRqojvygllrZXFwBs2FXIZQI6L/+DW9j0w3vl3nf7/
         ZQfWi1jQfSv+DnahlIPTKf04gFEIIvU0YdH7y8dYh9oRMOz6AbJvbRlt02LTWSt0MMlb
         QWszKp4Qiz7zh1mhYqXSinmUx925sejMoBPCQ0clziuF+bwmkyQrmxz36O3BExFwWg+c
         jRM0cp7PZwkPPzBWMFjO8a7YLfEd8Wnatl2/Tsp2fSi8uJZMEkJHBoDIzQN4gLcpoxMG
         znEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743631176; x=1744235976;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WqllMbVSzlYmSg4e9MsN3Hg5U+KXq66OHOKXxPOPhW8=;
        b=B5gEEkftbb5IWapKyIW8SvVQPg7jAFx5yvMvmuas19l+sAph7r5XZgqCKZWUhxYQzV
         O+MrtBNeTHnWzhvGyKGgU8zrGO8F1U6nLx2aelAimxAiX2yjDkSDCv18GLNKUrYYeBr6
         FFo6NF8bzlHX28SgrzSfWvDmF2iKsl7YmtACuA+974YGky/yID9rXrg0nz7lY882WrI6
         /1oaARH26ISjPL2MiwbW15xzpzyAg+hW+r9/AfyfvMM0Bhi6WKJHNbreoSJcG/vcMrjs
         NL7UbVQ052C8ZyRLNYVtb/9ZdZaxxf2gP4td0wp/S1haS2rjlh/WDEMBlEhHB+je8nT0
         +RHw==
X-Forwarded-Encrypted: i=1; AJvYcCXDbt4o6LXX9FhFhDH7+vCYtsqS9ZxNkF5jhMhPPKU2ojEk5drrtVYrkyrKeIlcznnUU3+sEv+cax37@vger.kernel.org
X-Gm-Message-State: AOJu0YzCiAgVme+2Fu0F8tiqJ4IJlpm+qHN8TIzHC9KpWP4T+IUX2m3U
	JaA+B1Osnd+ZJq7Orrxwau147Rq1prJt6PBDz2Gh7tVEqW0kh4QVjTUDBJCFRQ==
X-Gm-Gg: ASbGnctxYrAD9LlC9maLRl4Ga8aBkwOqMeooIEZsY1TlNjFc0LRWtkn71sypft+VXCG
	v2MaMhvb6dwhKomMCYw/ah4jbNPfuS0mTJJBmYFhdcqyXytbry6YUdDbEBm/WjhzQz2rchVKl2d
	myYLj23H+3N9RrY/PBmW7O+SPNN2zB0BGA+pfNpMwrbp/I3VJXrhMm83DlF/bEIpBvhp+km0Q9h
	U0aQBEIsISorow5fx/hqGkufWA0QFCgZ17bL10o6TRPNNIAp3CMaUwkIsIMBkJ8W6iaD8iRyR5T
	wHrmzSMbBHHZ1PYJ+b0XE6QX+hY340qO8PEMtsRChO+Hf7chY1rthVkAyms4KpCjVckEsMvmTLB
	FNPTSGiAb1f7BlYs=
X-Google-Smtp-Source: AGHT+IHteXxFO7jbKx3k3Jy9PnUQzjVaQtKgEm+NOfEcxdPjDfCVTFwPG/5wPWOnq7Eh2M3nBNvUdw==
X-Received: by 2002:a17:902:ea03:b0:223:536d:f67b with SMTP id d9443c01a7336-2292f9f607fmr329229995ad.38.1743631176289;
        Wed, 02 Apr 2025 14:59:36 -0700 (PDT)
Received: from google.com (198.103.247.35.bc.googleusercontent.com. [35.247.103.198])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-229785c2791sm636175ad.80.2025.04.02.14.59.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 14:59:35 -0700 (PDT)
Date: Wed, 2 Apr 2025 14:59:31 -0700
From: William McVicker <willmcvicker@google.com>
To: Youngmin Nam <youngmin.nam@samsung.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	=?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Saravana Kannan <saravanak@google.com>, kernel-team@android.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
	Will Deacon <willdeacon@google.com>
Subject: Re: [PATCH v1 4/6] arm64: dts: exynos: gs101: Add 'local-timer-stop'
 to cpuidle nodes
Message-ID: <Z-2zQ-PcvxFTBc6M@google.com>
References: <20250331230034.806124-1-willmcvicker@google.com>
 <CGME20250331230151epcas2p486a7c6d7153737f4168cfef74249742f@epcas2p4.samsung.com>
 <20250331230034.806124-5-willmcvicker@google.com>
 <Z+y4zxfifkQqLxKF@perf>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z+y4zxfifkQqLxKF@perf>

Hi Youngmin,

On 04/02/2025, Youngmin Nam wrote:
> On Mon, Mar 31, 2025 at 04:00:26PM -0700, Will McVicker wrote:
> > From: Will Deacon <willdeacon@google.com>
> > 
> > In preparation for switching to the architected timer as the primary
> > clockevents device, mark the cpuidle nodes with the 'local-timer-stop'
> > property to indicate that an alternative clockevents device must be
> > used for waking up from the "c2" idle state.
> > 
> > Signed-off-by: Will Deacon <willdeacon@google.com>
> > [Original commit from https://android.googlesource.com/kernel/gs/+/a896fd98638047989513d05556faebd28a62b27c]
> > Signed-off-by: Will McVicker <willmcvicker@google.com>
> > ---
> >  arch/arm64/boot/dts/exynos/google/gs101.dtsi | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> > index 3de3a758f113..fd0badf24e6f 100644
> > --- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> > +++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> > @@ -155,6 +155,7 @@ ananke_cpu_sleep: cpu-ananke-sleep {
> >  				idle-state-name = "c2";
> >  				compatible = "arm,idle-state";
> >  				arm,psci-suspend-param = <0x0010000>;
> > +				local-timer-stop;
> >  				entry-latency-us = <70>;
> >  				exit-latency-us = <160>;
> >  				min-residency-us = <2000>;
> > @@ -164,6 +165,7 @@ enyo_cpu_sleep: cpu-enyo-sleep {
> >  				idle-state-name = "c2";
> >  				compatible = "arm,idle-state";
> >  				arm,psci-suspend-param = <0x0010000>;
> > +				local-timer-stop;
> >  				entry-latency-us = <150>;
> >  				exit-latency-us = <190>;
> >  				min-residency-us = <2500>;
> > @@ -173,6 +175,7 @@ hera_cpu_sleep: cpu-hera-sleep {
> >  				idle-state-name = "c2";
> >  				compatible = "arm,idle-state";
> >  				arm,psci-suspend-param = <0x0010000>;
> > +				local-timer-stop;
> >  				entry-latency-us = <235>;
> >  				exit-latency-us = <220>;
> >  				min-residency-us = <3500>;
> > -- 
> > 2.49.0.472.ge94155a9ec-goog
> > 
> Hi Will.
> 
> Are you using this property in production?
> If so, have you noticed any performance improvements?

On Pixel 6, I have only recently switched to using the arch_timer as the
default clocksource. I haven't noticed any major perf improvements to the main
benchmarks, but also haven't seen any regressions. Based on the ChromeOS perf
analysis in [1,2], there was a significant perf difference found.

[1] https://lore.kernel.org/linux-samsung-soc/CAJFHJrrgWGc4XGQB0ysLufAg3Wouz-aYXu97Sy2Kp=HzK+akVQ@mail.gmail.com/
[2] https://lore.kernel.org/linux-samsung-soc/CAASgrz2Nr69tpfC8ka9gbs2OvjLEGsvgAj4vBCFxhsamuFum7w@mail.gmail.com/

If it helps, I found that Pixel 8 and 9 devices (didn't check Pixel 7)
are already using the arch_timer with this 'local-timer-stop' as the default
clocksource in the production kernel.

Thanks,
Will

[...]

