Return-Path: <devicetree+bounces-6325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2124F7BAF44
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 01:20:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C5A0B28200C
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 23:20:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A9AD43A91;
	Thu,  5 Oct 2023 23:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="v+UouYNu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1A1F43693
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 23:20:02 +0000 (UTC)
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 164CA2720
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 16:20:01 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1c6185cafb3so36995ad.1
        for <devicetree@vger.kernel.org>; Thu, 05 Oct 2023 16:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1696548000; x=1697152800; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=g9+/T8jL1FueuqbJWbDBnW4JHhnHC6qNQT3btWThJAA=;
        b=v+UouYNuHRJZLn6qa9pJlSug21LceqYMP5xJLBs9AV3PUI6CY9ziCJvFykObqwWyZI
         93HL2qRPazgPcjnAqexgNvuIaSVfnlvgzFDZscbBOeCwL2y26LlCy7Fc501aHKwe/bIU
         xzBXd8VCKDpYeict0m6yZtkzqiobtvwhJrnc18eD0QPziGC0YVN5ykkAYcklcpcnlqNl
         eu0rKyhDl5cuZKlyNCsN8pq+JtkEV8u49VyWRqAeOI7MUuSxjrHO0/XqvTFSqxKeEFfz
         V4PV2sV92v40eI0by02BJttTmjFBd+K6BPQ4oV5brWXrSmtrdnitnLQylHgXN5gBFwhg
         qK2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696548000; x=1697152800;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g9+/T8jL1FueuqbJWbDBnW4JHhnHC6qNQT3btWThJAA=;
        b=t6qFBUZcDQ8BoFQBEue5c0nitkOYHA69FTmU/YbXlxkqChiMgOuZAThxr/4JTWyVO8
         KULl8tPypnPsipTBZ/+VnGvf1kk+Vj2ug+SPvsle2A6Y5P5zlxLsr1Clm9LooN4UZUBO
         uAS5xrrI5v+yv2JoiEGtK0ItYUX1Mn3gtxebZmnKSVjdKX+yz0BVWmk+z0/qUIHS87gd
         VBMi6bDbgm9NtHA4G5PRZZj0tsePo+0L08kAVALuKX7ihT1wETTuZaxfd3vYHcFFZpC+
         lRdpAvtM5sKsj+guGZFr9z59CUKUrV9jDEX5NKA+dUnxljP3Fx67+CnoLA1xBtoAE9/M
         TCOA==
X-Gm-Message-State: AOJu0YzLHMFu/5E7wbfaujjq3MniITOQ/gfEx6YxmbYywXEAgVaTthod
	x1FFLMkeank0rZ4UdXLjAGhINA==
X-Google-Smtp-Source: AGHT+IG6SUbZdWjUlwVKgWGyn2h7w47kdQ+sEw89YZgLkBjRn4vrO6PiIxtJlw/+S61vF8DHpPNtxw==
X-Received: by 2002:a17:902:d506:b0:1c4:4470:bfa7 with SMTP id b6-20020a170902d50600b001c44470bfa7mr232458plg.29.1696548000224;
        Thu, 05 Oct 2023 16:20:00 -0700 (PDT)
Received: from google.com (13.65.82.34.bc.googleusercontent.com. [34.82.65.13])
        by smtp.gmail.com with ESMTPSA id rm10-20020a17090b3eca00b0026d214a2b33sm4130541pjb.7.2023.10.05.16.19.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 16:19:59 -0700 (PDT)
Date: Thu, 5 Oct 2023 16:19:56 -0700
From: William McVicker <willmcvicker@google.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	Peter Griffin <peter.griffin@linaro.org>, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
	conor+dt@kernel.org, sboyd@kernel.org, tomasz.figa@gmail.com,
	s.nawrocki@samsung.com, linus.walleij@linaro.org,
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com,
	will@kernel.org, arnd@arndb.de, olof@lixom.net,
	cw00.choi@samsung.com, tudor.ambarus@linaro.org,
	andre.draszik@linaro.org, semen.protsenko@linaro.org,
	soc@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-watchdog@vger.kernel.org,
	kernel-team@android.com
Subject: Re: [PATCH 18/21] arm64: dts: google: Add initial Google gs101 SoC
 support
Message-ID: <ZR9EnFw3vB92vlYM@google.com>
References: <20231005155618.700312-1-peter.griffin@linaro.org>
 <20231005155618.700312-19-peter.griffin@linaro.org>
 <ZR75cIvnQS2cqTT3@google.com>
 <2023100520-cleaver-sinless-fbae@gregkh>
 <99419159-cab0-4c79-a4a0-12229bfad3c0@linaro.org>
 <2023100513-mashing-scrubber-ea59@gregkh>
 <efc9f099-9c97-460b-b0c8-9891aa3b772a@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <efc9f099-9c97-460b-b0c8-9891aa3b772a@linaro.org>
X-Spam-Status: No, score=-15.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	ENV_AND_HDR_SPF_MATCH,HK_RANDOM_ENVFROM,HK_RANDOM_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_DKIM_WL,
	USER_IN_DEF_SPF_WL autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 10/05/2023, Krzysztof Kozlowski wrote:
> On 05/10/2023 21:23, Greg KH wrote:
> > On Thu, Oct 05, 2023 at 09:18:48PM +0200, Krzysztof Kozlowski wrote:
> >>>> I'd like to bring up this thread and discuss the option of not introducing
> >>>> another ARCH_* config:
> >>>>
> >>>>   https://lore.kernel.org/all/20200306103652.GA3634389@kroah.com/
> >>>
> >>> I agree, PLEASE don't add platform config options as that makes it
> >>> impossible to make a unified kernel image that works for more than one
> >>> platform at the same time.
> >>
> >> There is no single problem in making unified image as we were doing
> >> since beginning of ARM64. The ARCH_* is not a obstacle for this.
> > 
> > Then why are the ARCH_* options needed at all?  What does this help out
> > with?
> 
> It helps all the people and distros who do not want to build/package
> drivers or modules for unrelated hardware or architectures.
> 
> Let's take Samsung Exynos UART driver. It will never, 100% never, work
> on x86, x86_64. There is no single need to package it for kernels build
> for these products. It will not work on nVidia Tegra ARM64, Qualcomm
> ARM64 SoC, so if you do not want to run on Exynos, then you do no select
> ARCH_EXYNOS and have significantly smaller image.
> 
> Now, there is no problem to have one kernel for nVidia Tegra + Qualcomm
> + Samsung Exynos with everything you need. The ARCH_EXYNOS or SOC_EXYNOS
> or SOC_GOOGLE serves only the purpose to allow distros and people
> customize build for specific hardware.
> 
> It does not limit anyone on anything.

I'm glad you brought up Exynos UART because this is where one of the
limitations is introduced. For example, if you want to modularize out all the
vendor specific drivers from the core kernel to create a common arm64 kernel
binary that works on all ARM64 devices, you will not be able to build in the
early console UART drivers without enabling the respective ARCH_* configs.
Being able to include SERIAL_SAMSUNG and SERIAL_MSM without all the vendor
specific drivers that ARCH_EXYNOS and ARCH_QCOM select is very valuable for
debugging early boot issues.

I understand that ARCH_* configs are used to selectively pick which device tree
blobs are built, but forcing developers to pick all or nothing is where I have
a problem.

Regards,
Will

> 
> 
> 
> > 
> >>>> I especially don't like the "depends on ARCH_EXYNOS" because that forces one to
> >>>> include all the other Exynos drivers that ARCH_EXYNOS selects that Google
> >>>> Tensor SoCs don't need. Can we consider using SOC_GOOGLE instead and for all
> >>>> drivers that actually depend on the SoC hardware, we can just add "depends on
> >>>> SOC_GOOGLE"?
> >>>
> >>> Why do any of this at all?  It should not be needed.
> >>>
> >>>> The idea is that drivers should be tied to hardware -- not a specific vendor.
> >>>
> >>> And drivers should be auto-loaded.
> >>>
> >>> All of these drivers are not vendor-specific at all, they are based on
> >>> the same IP blocks as others, so that is how they should be unified.
> >>
> >> They are vendor specific. All of them are specifically for Exynos
> >> hardwre, because this is Exynos. We call it Google GS/Tensor SoC just
> >> for fancy convenience, but this just Exynos.
> > 
> > Ok, then why is this ARCH_ option needed if these IP blocks really are
> > from something else and are part of other drivers?
> 
> For the same reason above, because if I want to build kernel for
> Qualcomm, I want to drop easily anything not related. If I want to build
> kernel without I2C, I disable I2C bus which effectively disables all
> drivers which work on I2C. If I want to build kernel without Exynos, I
> disable ARCH_EXYNOS which effectively disables entire Exynos hardware.
> 
> Think of SoC as a bus or interface.
> 
> Best regards,
> Krzysztof
> 

