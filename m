Return-Path: <devicetree+bounces-10320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F9B7D0D04
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 12:20:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E02BC1C204F8
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 10:20:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4D5A15EBB;
	Fri, 20 Oct 2023 10:20:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wUelx8ma"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C827015EB6
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 10:20:50 +0000 (UTC)
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com [IPv6:2607:f8b0:4864:20::b34])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8375CD45
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 03:20:48 -0700 (PDT)
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-d9ac9573274so655428276.0
        for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 03:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697797248; x=1698402048; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=W79U9iklHwLSbhR/94JhGNefp7ntZs362QatUfI3IfI=;
        b=wUelx8maAcMkjFBOko9QmpgdlFDuWcxKe6u+5URU03+vf0PewF4uQluqQ3VoBk5LMl
         tEbgtUEvE6eiJ7f3UT2H7Aw2cVTtErE7u66M0FFExRck5z3lpNFzJUjoc+0T6uA3fi+n
         BmvvwN/MuPpJjwCBgCVs10oGZd/6gypxZex4D7k2+APDm9PvDzHYoDVuRs9xqKrr+pua
         36aPlEFhj5aqaIE5MFqstOqW92LkMd7uNdz6Ur/EDH6EmLTZYiAiAdl4HbecAuMIJ3cH
         iMV7IJ3fdhINFm/VyHMmvuAo8ZmPt9EsuhpjaYNb2uNm09dRb058yqGlLoxW/qZ0YcNd
         GqPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697797248; x=1698402048;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W79U9iklHwLSbhR/94JhGNefp7ntZs362QatUfI3IfI=;
        b=km1RoAadjAQ61Np1IU6qFDHV6PLmPXr28R+INNVEafe9k0h38uGqoyA2o7Zg06QWs4
         XgyYdCwwOZWZwuZHnCltzwkrY+FT6BznvVAbAx0MGGPfSnkP0omrmDFEXaCUZagj6GuQ
         9N/E51VNIb5GcI+V/dj1Qp4bvEtOLrEbmrWWC4qFVKHbIq7oCLX2n2AuJkdJmajR2Oxa
         CtVclD0dkw+7dlYLvaqriMpE1YTFV82fyajvvE8tUYZpdMCMqjG4pwaw/QeE8Rtv+D2A
         LClexoLn68MF7Q2F8U99Bu+LkLfLQl61i0EskbDH2b0hyaj4Xm5W678+dVx9TG+tnanR
         sYlg==
X-Gm-Message-State: AOJu0YwpK0hSTgETniUuPaSQi0X71YMW25hzL56SRWuc5FrL5hokzNxv
	5J/7mxI3vaurqHsJi8imSo4fhtWS3FjaNBN64iEL+A==
X-Google-Smtp-Source: AGHT+IFppxZveglONFPIGli2rJYFfP862ng1fj8gvWuwqd6m5OzeXOk1StoswlMPW+jNGU8qSha8o4+c/CfPZy2DJjA=
X-Received: by 2002:a5b:f4c:0:b0:d9a:3bf1:35e9 with SMTP id
 y12-20020a5b0f4c000000b00d9a3bf135e9mr1288441ybr.3.1697797247740; Fri, 20 Oct
 2023 03:20:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231018-msm8909-cpufreq-v2-0-0962df95f654@kernkonzept.com>
 <20231018-msm8909-cpufreq-v2-2-0962df95f654@kernkonzept.com>
 <CAPDyKFot9=M1ooP_Q1AOgG5o_4DTQ2qsyai1ZdXAzBwf89W4uA@mail.gmail.com>
 <CAPDyKFr5A-P=UhWs4rUMBWup3pH75WAhcZ56Y2_Sfk3=WfxRCQ@mail.gmail.com>
 <ZTEph19CAvbgbN_E@gerhold.net> <CAPDyKFo1PVZYsdW_=92EtMmTT9hmkm-mBR69N_WvPh4f-Hw=NA@mail.gmail.com>
 <ZTFBzjLAaaUHux4O@gerhold.net> <CAPDyKFruYqngQoW21Ra+hm4ybjS7LoD4casYbo8bP4J+hLUnaA@mail.gmail.com>
 <ZTFiXJ2XO4WQN_gu@gerhold.net>
In-Reply-To: <ZTFiXJ2XO4WQN_gu@gerhold.net>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 20 Oct 2023 12:20:11 +0200
Message-ID: <CAPDyKFoRhDnx7SOiT1czcyteMJ=2KMOwZvn7ynDJsYtePthnxA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] cpufreq: qcom-nvmem: Enable virtual power domain devices
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

On Thu, 19 Oct 2023 at 19:08, Stephan Gerhold <stephan@gerhold.net> wrote:
>
> On Thu, Oct 19, 2023 at 05:19:53PM +0200, Ulf Hansson wrote:
> > On Thu, 19 Oct 2023 at 16:49, Stephan Gerhold <stephan@gerhold.net> wrote:
> > > On Thu, Oct 19, 2023 at 04:12:56PM +0200, Ulf Hansson wrote:
> > > > On Thu, 19 Oct 2023 at 15:05, Stephan Gerhold <stephan@gerhold.net> wrote:
> > > > > On Thu, Oct 19, 2023 at 01:26:19PM +0200, Ulf Hansson wrote:
> > > > > > BTW, if you really need something like the above, the proper way to do
> > > > > > it would instead be to call device_set_awake_path() for the device.
> > > > > >
> > > > > > This informs genpd that the device needs to stay powered-on during
> > > > > > system suspend (assuming that GENPD_FLAG_ACTIVE_WAKEUP has been set
> > > > > > for it), hence it will keep the corresponding PM domain powered-on
> > > > > > too.
> > > > >
> > > > > Thanks, I can try if this works as alternative to the
> > > > > dev_pm_syscore_device()!
> > > >
> > > > Yes, please. We don't want to abuse the dev_pm_syscore_device() thingy.
> > >
> > > Could you clarify the idea behind GENPD_FLAG_ACTIVE_WAKEUP? Would I set
> > > it conditionally for all RPMPDs or just the ones consumed by the CPU?
> > > How does the genpd *provider* know if one of its *consumer* devices
> > > needs to have its power domain kept on for wakeup?
> >
> > We are thinking of the GENPD_FLAG_ACTIVE_WAKEUP as a platform
> > configuration type of flag for the genpd in question. The consumer
> > driver shouldn't need to know about the details of what is happening
> > on the PM domain level - only whether it needs its device to remain
> > powered-on during system suspend or not.
> >
>
> Thanks! I will test if this works for RPMPD and post new versions of the
> patches. By coincidence I think this flag might actually be useful as
> temporary solution for CPR. If I:
>
>  1. Change $subject patch to use device_set_awake_path() instead, and
>  2. Set GENPD_FLAG_ACTIVE_WAKEUP for the RPMPD genpds, but
>  3. Do *not* set GENPD_FLAG_ACTIVE_WAKEUP for the CPR genpd.
>
> Then the genpd ->power_on|off() callbacks should still be called
> for CPR during system suspend, right? :D

Yes, correct, that should work fine!

>
> > I suspect that the GENPD_FLAG_ACTIVE_WAKEUP is probably okay to set
> > for most genpds, but there may be some exceptions.
> >
>
> Out of curiosity, do you have an example for such an exception where
> GENPD_FLAG_ACTIVE_WAKEUP shouldn't be set, aside from workarounds like
> I just described?
>
> As you said, the consumer device should just say that it wants to stay
> powered for wakeup during suspend. But if its power domains get powered
> off, I would expect that to break. How could a genpd driver still
> provide power without being powered on? Wouldn't that rather be a low
> performance state?

I think this boils down to how the power-rail that the genpd manages,
is handled by the platform during system suspend.

In principle there could be some other separate logic that helps a
FW/PMIC to understand whether it needs to keep the power-rail on or
not - no matter whether the genpd releases its vote for it during
system suspend.

This becomes mostly hypothetical, but clearly there are a lot of
genpd/platforms that don't use GENPD_FLAG_ACTIVE_WAKEUP too. If those
are just mistakes or just not needed, I don't actually know.

Kind regards
Uffe

