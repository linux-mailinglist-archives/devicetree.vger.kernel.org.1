Return-Path: <devicetree+bounces-9421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A876A7CCF86
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 23:51:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D768C1C209E1
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 21:51:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA6A92F507;
	Tue, 17 Oct 2023 21:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tUifuL9+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8042F50A
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 21:51:01 +0000 (UTC)
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DE0EF9
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 14:50:58 -0700 (PDT)
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-d9b9adaf291so3447466276.1
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 14:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697579457; x=1698184257; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BfSq4fUe022kDtkFJa2azWpgcNmqdZxJ8fBh51QJEV8=;
        b=tUifuL9+/C4O6RqXx9beMS8lhbBgG42woTccPBBbhbPVUNIm8zDKUDe/JU42ywRYQH
         ALtxXdQjdzeMNzrWD0TbMDqBl83CSGjRy2yQzrBYyztrdkOh4zB2dwYsFuoStdIYevI6
         bpSQ4/NnbpitUQP6O4NVmq3dwIaRGdab6sWrrQ0nb3uhkQLEKITy4c+5gZ06pDICEHvN
         nJW9R2/7PRgNlIUUUf2yHSeTlVqKcYZZfU8GoYdXUENWiHZAz9kLf5CgW/1ji9P9GNQa
         BA5rVV9uyiw6flCSONyeuSiA3mF4Md2pb/j+FdWcOMZ2mWmi9i7/18NQdfMIVT4tdDpC
         /kPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697579457; x=1698184257;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BfSq4fUe022kDtkFJa2azWpgcNmqdZxJ8fBh51QJEV8=;
        b=pFVUouO/sMhCIUnFsW59WFCivBv7TMdVT1rK+BvqAyWMZxZ/HINImWgt2sprS5y07n
         WCHlNevOa8VK8iOikxUeHcqIYPaggTuOpE946csoPK1uzGyuYfCA9+GRhDVvhAKPgfLv
         GNUILnBDWTA2ZVm652h1pQMXC6sUNgrpQaIhn/XHN5Sccj7gAd6WO90M4Ozs9Q252hx6
         Nq79h9xr///UCyUduGrEP745jfEK77+gLepRlILMmmq00EROeoldOmTvdTSnuZUsCSur
         K/xgX5npL8tlOCbNAf+uEnIB7QOYDkrBCCUvvQ451bJVnE8NxqguGmFqwNKqh6bn0Nb7
         aj2A==
X-Gm-Message-State: AOJu0YxmO8SUDwslqMu4bkH1U3wKlBC82idanZ3vEFiiIepW2Sl2Zh9u
	c4pLGS2ZG8RdjN+JWRX7vip1l9+Cc91d9rlGsW/rog==
X-Google-Smtp-Source: AGHT+IH4mYBk2x6zSCe/oj9jgMckIfEgIIlbaCnHdu+xq/07HUwai6hGnMdCcSxiF6naVzSWPbRy3VdGUHd2529Uuiw=
X-Received: by 2002:a25:254:0:b0:d9b:6264:b79e with SMTP id
 81-20020a250254000000b00d9b6264b79emr3129729ybc.53.1697579457419; Tue, 17 Oct
 2023 14:50:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912-msm8909-cpufreq-v1-0-767ce66b544b@kernkonzept.com>
 <20230912-msm8909-cpufreq-v1-1-767ce66b544b@kernkonzept.com>
 <CAPDyKFq6U-MR4Bd+GmixYseRECDh142RhydtKbiPd3NHV2g6aw@mail.gmail.com>
 <ZQGqfMigCFZP_HLA@gerhold.net> <CAPDyKFppdXe1AZo1jm2Bc_ZR18hw5Bmh1x+2P7Obhb_rJ2gc4Q@mail.gmail.com>
 <ZRcC2IRRv6dtKY65@gerhold.net> <CAPDyKFoiup8KNv=1LFGKDdDLA1pHsdJUgTTWMdgxnikEmReXzg@mail.gmail.com>
 <ZSg-XtwMxg3_fWxc@gerhold.net> <CAPDyKFoH5EOvRRKy-Bgp_B9B3rf=PUKK5N45s5PNgfBi55PaOQ@mail.gmail.com>
 <ZS70aZbP33fkf9dP@gerhold.net>
In-Reply-To: <ZS70aZbP33fkf9dP@gerhold.net>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 17 Oct 2023 23:50:21 +0200
Message-ID: <CAPDyKFpwZdx=vyuAZSv1WGYCyiohfnt87LM1jw=fhKsF5Ks1Yw@mail.gmail.com>
Subject: Re: [PATCH 1/4] cpufreq: qcom-nvmem: Enable virtual power domain devices
To: Stephan Gerhold <stephan@gerhold.net>
Cc: Stephan Gerhold <stephan.gerhold@kernkonzept.com>, Viresh Kumar <viresh.kumar@linaro.org>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Ilia Lin <ilia.lin@kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

[...]

> >
> > *) The pm_runtime_resume_and_get() works for QCS404 as a fix. It also
> > works fine when there is only one RPMPD that manages the performance
> > scaling.
> >
>
> Agreed.
>
> > **) In cases where we have multiple PM domains to scale performance
> > for, using pm_runtime_resume_and_get() would work fine too. Possibly
> > we want to use device_link_add() to set up suppliers, to avoid calling
> > pm_runtime_resume_and_get() for each and every device.
> >
>
> Hm. What would you use as "supplied" device? The CPU device I guess?

The consumer would be the device that is used to probe the cpureq
driver and the supplier(s) the virtual devices returned from genpd
when attaching.

>
> I'm looking again at my old patch from 2020 where I implemented this
> with device links in the OPP core. Seems like you suggested this back
> then too :)
>
>   https://lore.kernel.org/linux-pm/20200826093328.88268-1-stephan@gerhold.net/
>
> However, for the special case of the CPU I think we don't gain any code
> simplification from using device links. There will just be a single
> resume of each virtual genpd device, as well as one put during remove().
> Exactly the same applies when using device links, we need to set up the
> device links once for each virtual genpd device, and clean them up again
> during remove().
>
> Or can you think of another advantage of using device links?

No, not at this point.

So, in this particular case it may not matter that much. But when the
number of PM domains starts to vary between platforms it could be a
nice way to abstract some logic. I guess starting without using
device-links and seeing how it evolves could be a way forward too.

>
> > ***) Due to the above, we don't need a new mechanism to avoid
> > "caching" performance states for genpd. At least for the time being.
> >
>
> Right. Given *) and **) I'll prepare a v2 of $subject patch with the
> remove() cleanup fixed and an improved commit description.
>
> I'll wait for a bit in case you have more thoughts about the device
> links.

One more thing though that crossed my mind. In the rpmpd case, is
there anything we need to care about during system suspend/resume that
isn't already taken care of correctly?

Kind regards
Uffe

