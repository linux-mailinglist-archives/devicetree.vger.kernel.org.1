Return-Path: <devicetree+bounces-162997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9E5A7A99F
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 20:40:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3E7553B7443
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 18:39:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6372E253B44;
	Thu,  3 Apr 2025 18:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="iGS4weRP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628C4252906
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 18:39:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743705572; cv=none; b=prHY/koTuOtJth1KpfePMpo5mFXbGwfE3MhZh/k/afbLjLB2MoimHRnUljSgcen3ffuuNmecP4JyFs/EO88H8C+sXHbbp4bPW116zhKNjGm+030V23igRvUm4olCr1x2S65qgpT/5tXel3BCD9ZIOza9A9XPFizH//fy4PBrk68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743705572; c=relaxed/simple;
	bh=MI0PfKYpQBkW3noUT5Lwg4IeL13JXEDg3xWq9pSaoG8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iFnDLJGt1Xv9s6RNkprqhHPKjzMb+1KZA58Zc6D2ZQO/9A4CgrOGd8mCMx33wMAuQ7cSBGaYAJ/cNSNz8d0boZosIJSBxzM5DB4kJZLIKAaC/xlHSDTvJhZhUfL+lPi/bveGwBElbEmMy3yLsOTqVAT973T/lYGc8ztrFlOdVN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=iGS4weRP; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-739be717eddso1007126b3a.2
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 11:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1743705569; x=1744310369; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=09ptcXZfcBhfJGnGO0uRHBsRknDiljVX3LNPLnOx7vU=;
        b=iGS4weRPMLJMa+0G6Dxucj5p7Lsbodmkubc42VKmuFXeIHazvq8M2WGTxtaFG4ABWk
         NvqQgzzlrTr1E0ORUJ1wqM6HuWAXD4AjE8gCv76WmCMqvXK5OYuRjC61gtzrEyjZAQIb
         7CY9/znW0h1ovE+WQCGolm79IyE83XD44spvEm4lLkpiRosLE2heuIqsJlrygOCnKsUY
         96OCQva14LJBh/nS3ecRi5SFZ7mbKpHWum6A0tRuCwprKMBNQ6j3re7s8TRxMZzJSKbl
         qGWeppvyiMoHITiHKu/fsPOYrECAeLNXVS9rOPRpwtl2y1+nVfJV2ois76dM6wNE89Ir
         PINA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743705569; x=1744310369;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=09ptcXZfcBhfJGnGO0uRHBsRknDiljVX3LNPLnOx7vU=;
        b=ssIBEp9PZOYvslEn2ce1Bs/iC88TqyVjcifVtDo8diU3vlY7T+qIUfduu+GU1p+40X
         sp5YdFg+wG+qbgfmqiTcsfsyWuAn+q/o2x2plrf+/HMqhs7zLwzDDmR46hIvDTZf4uta
         XPAFQh0w5/Xd9gO48YPb7b9H3bFcieDq8kLyiroU+H6pKlKn+orNFK2ayxCEXaxgyVK1
         Iu2mmYXq7ilUmLDA6/A9lido7AU1OtG9BGSbivVHo3tVEgJynDktIH2rhVeW8yz3VgKh
         MIAtY7GCcEgUhFVWL0yr7FRnKTN4X9qyLQLXP8W2o64Z2aoGbxS+n1jmjkDfKjUA23hz
         wF4Q==
X-Forwarded-Encrypted: i=1; AJvYcCXGoiMAS6u+YJ1kW4k39Wz9ptx1epwanBHnXw9HJ0QgUCHb/sP49pElqiB0qJfx0XBt6MExbw3AKsMN@vger.kernel.org
X-Gm-Message-State: AOJu0YzWmmTybjJQ1dohUcRq+jnhRuBykYyUFbcDsoVHN1PBRrdSMISa
	gBkhZ5wcQ6RmBDCO5KtetF2ePpBQGMSoHLO84VjBB7GelbWKteU1PfrMk0rPnA==
X-Gm-Gg: ASbGncunOE26abwq48LqHR4LtWwBSHjUvSZSmjMNPMllrxdctjWNwOYxSeyDT1yUiYQ
	YPRX3zq9WhkmsjH4UgAzuTHLi2TjpR+r6uRKHbD4yrXY9RYbBiPqcatHqkgK79HvJnIc6WF1pIV
	C76lEHnuQ3s6rGM6QMKooeS82TAa7Ww6ayj4ielMn7f9PNEJtSzay0STGdr0iMsFXroSOb1GWwf
	DCvSw8o5wmqKlvrEb7ckrUaFlEwh90+yw3USQKw5P9me/+o+fYrwQiSuI9dizKNoP/N0wiQ5WZv
	xq/ykhyZctjcClnjJRuD3uZoyRMl82+bpYSpKFHJ3U7RI7+JNx5+oNHDzqWp8JymFrze7JyppxF
	XxFaUe9PVzR3+Ft17jqC9b1NmhQ==
X-Google-Smtp-Source: AGHT+IHKo1uB12F2qz0Bx8hQv5MdUl4S9SkNNYXXluY/VdcwwTA2jfjTiNcrEuMi7fkWuEP6PC+AGA==
X-Received: by 2002:a05:6a21:338e:b0:1ee:e655:97ea with SMTP id adf61e73a8af0-2010474336emr652313637.41.1743705568300;
        Thu, 03 Apr 2025 11:39:28 -0700 (PDT)
Received: from google.com (198.103.247.35.bc.googleusercontent.com. [35.247.103.198])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-af9bc3fd70csm1548787a12.56.2025.04.03.11.39.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 11:39:27 -0700 (PDT)
Date: Thu, 3 Apr 2025 11:39:23 -0700
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
Message-ID: <Z-7V27GKU85vba0B@google.com>
References: <20250331230034.806124-1-willmcvicker@google.com>
 <CGME20250331230151epcas2p486a7c6d7153737f4168cfef74249742f@epcas2p4.samsung.com>
 <20250331230034.806124-5-willmcvicker@google.com>
 <Z+y4zxfifkQqLxKF@perf>
 <Z-2zQ-PcvxFTBc6M@google.com>
 <Z+4Hve9pQoLeh9sZ@perf>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z+4Hve9pQoLeh9sZ@perf>

On 04/03/2025, Youngmin Nam wrote:
> On Wed, Apr 02, 2025 at 02:59:31PM -0700, William McVicker wrote:
> > Hi Youngmin,
> > 
> > On 04/02/2025, Youngmin Nam wrote:
> > > On Mon, Mar 31, 2025 at 04:00:26PM -0700, Will McVicker wrote:
> > > > From: Will Deacon <willdeacon@google.com>
> > > > 
> > > > In preparation for switching to the architected timer as the primary
> > > > clockevents device, mark the cpuidle nodes with the 'local-timer-stop'
> > > > property to indicate that an alternative clockevents device must be
> > > > used for waking up from the "c2" idle state.
> > > > 
> > > > Signed-off-by: Will Deacon <willdeacon@google.com>
> > > > [Original commit from https://android.googlesource.com/kernel/gs/+/a896fd98638047989513d05556faebd28a62b27c]
> > > > Signed-off-by: Will McVicker <willmcvicker@google.com>
> > > > ---
> > > >  arch/arm64/boot/dts/exynos/google/gs101.dtsi | 3 +++
> > > >  1 file changed, 3 insertions(+)
> > > > 
> > > > diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> > > > index 3de3a758f113..fd0badf24e6f 100644
> > > > --- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> > > > +++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> > > > @@ -155,6 +155,7 @@ ananke_cpu_sleep: cpu-ananke-sleep {
> > > >  				idle-state-name = "c2";
> > > >  				compatible = "arm,idle-state";
> > > >  				arm,psci-suspend-param = <0x0010000>;
> > > > +				local-timer-stop;
> > > >  				entry-latency-us = <70>;
> > > >  				exit-latency-us = <160>;
> > > >  				min-residency-us = <2000>;
> > > > @@ -164,6 +165,7 @@ enyo_cpu_sleep: cpu-enyo-sleep {
> > > >  				idle-state-name = "c2";
> > > >  				compatible = "arm,idle-state";
> > > >  				arm,psci-suspend-param = <0x0010000>;
> > > > +				local-timer-stop;
> > > >  				entry-latency-us = <150>;
> > > >  				exit-latency-us = <190>;
> > > >  				min-residency-us = <2500>;
> > > > @@ -173,6 +175,7 @@ hera_cpu_sleep: cpu-hera-sleep {
> > > >  				idle-state-name = "c2";
> > > >  				compatible = "arm,idle-state";
> > > >  				arm,psci-suspend-param = <0x0010000>;
> > > > +				local-timer-stop;
> > > >  				entry-latency-us = <235>;
> > > >  				exit-latency-us = <220>;
> > > >  				min-residency-us = <3500>;
> > > > -- 
> > > > 2.49.0.472.ge94155a9ec-goog
> > > > 
> > > Hi Will.
> > > 
> > > Are you using this property in production?
> > > If so, have you noticed any performance improvements?
> > 
> > On Pixel 6, I have only recently switched to using the arch_timer as the
> > default clocksource. I haven't noticed any major perf improvements to the main
> > benchmarks, but also haven't seen any regressions. Based on the ChromeOS perf
> > analysis in [1,2], there was a significant perf difference found.
> > 
> > [1] https://lore.kernel.org/linux-samsung-soc/CAJFHJrrgWGc4XGQB0ysLufAg3Wouz-aYXu97Sy2Kp=HzK+akVQ@mail.gmail.com/
> > [2] https://lore.kernel.org/linux-samsung-soc/CAASgrz2Nr69tpfC8ka9gbs2OvjLEGsvgAj4vBCFxhsamuFum7w@mail.gmail.com/
> > 
> > If it helps, I found that Pixel 8 and 9 devices (didn't check Pixel 7)
> > are already using the arch_timer with this 'local-timer-stop' as the default
> > clocksource in the production kernel.
> > 
> > Thanks,
> > Will
> > 
> > [...]
> > 
> 
> Hi Will,
> 
> Thanks for sharing the status of Pixel devices.
> 
> I agree that using the arch_timer as a clock source device brings significant benefits.
> The links you shared are definitely related to that.
> 
> However, I would also like to know whether arch_timer is used as a clock event device in Pixel production.

For Pixel 8 and 9, the arch_timer is used as both the clocksource and
clockevent device which is what my series is proposing for Pixel 6 upstream.
The MCT device is solely being used as the alternative clockevents device for
waking up from the "c2" state. The reason for using the arch_timer as the
clockevents device is because we were seeing hrtimer stability issues where
a 10ms interval timer would delay about 300ms-1s before starting the callback.
This resulted in several media-related latency issues.

Thanks,
Will

[...]

