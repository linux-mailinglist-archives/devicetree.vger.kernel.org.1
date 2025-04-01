Return-Path: <devicetree+bounces-162364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AB1A78074
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 18:31:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 382D33AFC89
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 16:27:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9F2620CCDC;
	Tue,  1 Apr 2025 16:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="AQ+aq70X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F921C860D
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 16:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743524837; cv=none; b=sRgLJrCzJAUPNpR66+/e0A95v0aXM/Pfy9KAEZ7R2LgEioh3J3KVlPcFfBjdN5vp0U3FwZyztZgrDlcoi/nBEePbWEvQr3zocQgjXBw4vJhyXSpmoKPpnVGB0n0jS6ASDf9eh376NQvLv2H1x8Zh0F6VRhZPcC6kva7eIyEfrGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743524837; c=relaxed/simple;
	bh=xFFHZyQ7IPDD28Vh2LQSW7R0qVQrzUftnErUZO0zbqw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eJD8a15Qp1x6xVOazXNmaoShnfg9IkFmi+ijfUry52mupL006WIiOGQq0jQTtmUh33b9TG1VfnEHU6vKbnOQPCKRlG99ma6a8cRsSMm9xDm3p08OedGH2nQXg1eUXt1cAZqK09MtnbssggHZnW+vpxkOaMKwat0+14S7IQBtF/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=AQ+aq70X; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-224171d6826so88344095ad.3
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 09:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1743524834; x=1744129634; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eiCJ+0nvHppI8Z1iMldDvXvFUvNA7Z2vIeGOxDeUG3A=;
        b=AQ+aq70XfvVuAK3CkMwLjagKL832ARHex9vvjNlDw+WPTCW+h2K4eoctA5X9YwEtbH
         ztzIKu+9IHTvbor7a7mVVJlk5GByTki4mwzjG5ytgSHPnABsUylAkVhaZY2a7OQZZIXo
         5600SbZCMc0HAgijst8KNIrlDws/MmkwI1XNUSoOG2cfpxgyAVIc+qeiFL6r1tojFlwL
         1R+8g7wmC4mOJuHTx7RAc8v7i71R0tp/pdYsLMI7gJZeFjLCfkHWTxu1PDC7CVgqqNui
         CRNsrd8xyoPHthgHdwhmRvVIIHDPlecx8QxjoO/RMd0SXTYmoKaTuy9CN7DZLV2irlqQ
         kkUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743524834; x=1744129634;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eiCJ+0nvHppI8Z1iMldDvXvFUvNA7Z2vIeGOxDeUG3A=;
        b=tMlJjSMZP/oB1Z60DZ+wrlwTshmwxH1Aj1ehD7CODvIK9mt7FCpppMn2QJWI/Fnkbx
         O0Vvd1nTY5fS65CiWjjOjFl+JGBdCIdic6bJqqbdB+A77VmcqEx7qfbh8NXOxAcQ4MYV
         IUCpeI/xxM9nytRCdUK7Sh/BOFdfK3XlzUTyrQBSk9ruPDXv/bVgmm8gncCW2hBj9Ret
         nN25Xvmit8zg7xdXS2XDe87ur2pLZ5Ogdza9bOBKpfwbn4lQsOqIcnL/L+xwBKH31ggK
         kKGVCmffnLAi93FouAFreIzTfjAYShtM7V0LskY1PkoEkRD+dBw9vAufjo+VFxTAuSH6
         fHDw==
X-Forwarded-Encrypted: i=1; AJvYcCURXV87W/udjwHhw3j7IOLWw+te0zDtvj+/+garbzqHJ2Mgb6K347rwb7Mbe4e4OhfyoPA9fAMA4NOS@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8brAmxZEp+8BTW2MoLmxt9Rbjc310kLIqkvZTRpVjH+gDsubm
	fIRpYJ/8mBnj9PJfG9IMdwgoSxRcHSBHWlgDAaZeQgrT00T/AhgC6d8gNOBIbA==
X-Gm-Gg: ASbGncvxTbLoC284PvNIo6jFtYrhaaz3Yf2nQcgPEwpG8OmPKz9ibI1FTtCBDuxsuti
	1qtD4blIb6HEgg39U37wOtv2HruocyCAZmCPopNT0zaKFgDfPvrOv4xBa0+KRzZytGxUbHCRWaX
	Yx5z//xsBW1RFGL8WzZN4/TwYf53w9vKESjX3nWkPqOxe2CPNpFgmFwwAIYFGDh71rPDGbuIWdm
	GFB2YRlx8kBoJlXkGX1cfu+2mluOkHojMIYK6jBnivmnXgYJIL/pu18r/cBhE2inRJwS+IhkWrZ
	UVr8FPXl0xzAhLcM5/P6EffpJsNdxD+oficxHJtYE2Nn0zjdds/NOm1wVB06JwEEo4DB2WXuTp5
	QFJ4R8eMDKPE3uTs=
X-Google-Smtp-Source: AGHT+IFuDdi1VulATC8EaumQBhjKKw5JE43KeKuzHYuRoICEO7rhRETwg2aMwK6/jUYFXFP8w4bWLA==
X-Received: by 2002:a17:902:ea0a:b0:21f:617a:f1b2 with SMTP id d9443c01a7336-2292f9f981amr220280025ad.46.1743524834183;
        Tue, 01 Apr 2025 09:27:14 -0700 (PDT)
Received: from google.com (198.103.247.35.bc.googleusercontent.com. [35.247.103.198])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73970deed14sm9416725b3a.19.2025.04.01.09.27.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Apr 2025 09:27:13 -0700 (PDT)
Date: Tue, 1 Apr 2025 09:27:09 -0700
From: William McVicker <willmcvicker@google.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
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
	Donghoon Yu <hoony.yu@samsung.com>,
	Youngmin Nam <youngmin.nam@samsung.com>
Subject: Re: [PATCH v1 5/6] clocksource/drivers/exynos_mct: Add module support
Message-ID: <Z-wT3ciq7nL5wa1X@google.com>
References: <20250331230034.806124-1-willmcvicker@google.com>
 <20250331230034.806124-6-willmcvicker@google.com>
 <9f594cf1-f1c3-45fc-8d1f-a5abe6c84699@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9f594cf1-f1c3-45fc-8d1f-a5abe6c84699@kernel.org>

On 04/01/2025, Krzysztof Kozlowski wrote:
> On 01/04/2025 01:00, Will McVicker wrote:
> > From: Donghoon Yu <hoony.yu@samsung.com>
> > 
> > On Arm64 platforms the Exynos MCT driver can be built as a module. On
> > boot (and even after boot) the arch_timer is used as the clocksource and
> > tick timer. Once the MCT driver is loaded, it can be used as the wakeup
> > source for the arch_timer.
> > 
> > Signed-off-by: Donghoon Yu <hoony.yu@samsung.com>
> > Signed-off-by: Youngmin Nam <youngmin.nam@samsung.com>
> > [Original commit from https://android.googlesource.com/kernel/gs/+/8a52a8288ec7d88ff78f0b37480dbb0e9c65bbfd]
> > Signed-off-by: Will McVicker <willmcvicker@google.com>
> > ---
> >  drivers/clocksource/Kconfig      |  3 +-
> >  drivers/clocksource/exynos_mct.c | 47 +++++++++++++++++++++++++++-----
> >  2 files changed, 42 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> > index 487c85259967..e5d9d8383607 100644
> > --- a/drivers/clocksource/Kconfig
> > +++ b/drivers/clocksource/Kconfig
> > @@ -443,7 +443,8 @@ config ATMEL_TCB_CLKSRC
> >  	  Support for Timer Counter Blocks on Atmel SoCs.
> >  
> >  config CLKSRC_EXYNOS_MCT
> > -	bool "Exynos multi core timer driver" if COMPILE_TEST
> > +	tristate "Exynos multi core timer driver"
> > +	default y if ARCH_EXYNOS
> >  	depends on ARM || ARM64
> >  	depends on ARCH_ARTPEC || ARCH_EXYNOS || COMPILE_TEST
> I am not sure if you actually tested it as module. On arm I cannot build
> it even:
> 
> ERROR: modpost: "register_current_timer_delay"
> [drivers/clocksource/exynos_mct.ko] undefined!
> ERROR: modpost: "sched_clock_register"
> [drivers/clocksource/exynos_mct.ko] undefined!

I tested with the gs101 ARM64 configuration. You're right it won't work with
ARM32. Thanks for catching this! Since ARM32 architectures don't have the
arch_timer, I'm not sure if we can actually support Exynos MCT as a module as
you wouldn't have any available clocksource during boot. I'll update the
Kconfig for v2 to handle this and make sure it works for ARM32. I'm guessing
it'll work with something like:

config CLKSRC_EXYNOS_MCT
	tristate "Exynos multi core timer driver" if ARM64


Regards,
Will

[...]

