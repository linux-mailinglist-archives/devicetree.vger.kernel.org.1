Return-Path: <devicetree+bounces-11369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 930657D57A2
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 18:12:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B597A1C20C3C
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 16:12:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2321539934;
	Tue, 24 Oct 2023 16:12:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fB3MCDso"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433233993C
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 16:12:16 +0000 (UTC)
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABC1610D9
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 09:12:12 -0700 (PDT)
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-d9b9adaf291so3669620276.1
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 09:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698163931; x=1698768731; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/pjBUbLx3Wj6CmYiqOhDTL336nEXm92LuAjn2RJuUXA=;
        b=fB3MCDsolGJfkZXE5b8zs4f5XmqwhLMBgbB63lp+7mMp6sdBnXj0+8fG32rdlNOzED
         nDHFNuIb4n/gIJJCzocYGTwdtgxCI7PjaTVsDNZ3v14s2WumO6QrZhl2Mhck8tJRXo/Y
         zsjOOW04UFSUuJ6ADYxYcA72/jt56mREbjTyZi2plqrWuDONU2fkEQPSPyD6AQ4vMZ0D
         WI7WweU045zlyBPLvk3xpDtdxjGS8nmlxHIdTnBQTI1HjPK/SKzjznzdixWHnhbZ8bwc
         aIj6n/lQiU3H7WR+lmsKymv4nj7Xmy6A9SAhQvIoobUsfKSwVvRFXhS1nmSbFprCA3Zy
         MC9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698163931; x=1698768731;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/pjBUbLx3Wj6CmYiqOhDTL336nEXm92LuAjn2RJuUXA=;
        b=upfuD0ThpE5svgAtGV3yyO/TLy5JOWDSU5N4mZtD/HMWbRlUQ5VE+Mdochd2/fARL+
         R8H7htndbvz9ChJBNppduHq9uV/ZckcAaA4B6NstFZdvIPCtueFh2Rp/UjTEePol4H7M
         yL+mdcrSDNCE5PwnlLH8wm4WCmK/t8QN7xBL8ltkE3VRCAA7JIV8Olu/HO9wVyukExiX
         oKEmJvL4gAUp5cgylQOUsRjyMqv8qbfDASQpBUXXSYuc3ggYdQgpROQ7064w7i7qXP/d
         4rz5d2cpDShNQvYFFaKAgyv2FCRxr2g5cu9h/lHAHJz39wXhPEWH8FMa74rmae15/wL8
         C1Cg==
X-Gm-Message-State: AOJu0Ywy8OFzsVFLKe5udO8OcjRQx1664VqP9CvZ3vG0Hs5dMY5/aq0Z
	O99gUxn6RLMzz7ezfsXc7mcLPaMtzE0PpB59WYQ+rA==
X-Google-Smtp-Source: AGHT+IGTTwt4rHCuJ4w6CclzOwAHuYNSeyL9ErpNapwRYZRld/tKa5wE03Hs0mv9jEAhPtzgvqw2DogicE9JUIqA2Ug=
X-Received: by 2002:a25:b203:0:b0:da0:50e6:12c5 with SMTP id
 i3-20020a25b203000000b00da050e612c5mr1524017ybj.62.1698163931147; Tue, 24 Oct
 2023 09:12:11 -0700 (PDT)
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
 <ZTeyhR7YY7VgWQlU@kernkonzept.com> <CAPDyKFrcV8iJnJ904j1jkx0E8PaOLmiTZ7CKk7EV8qQ71AZdbA@mail.gmail.com>
 <ZTfBZqBwqskhFydZ@kernkonzept.com>
In-Reply-To: <ZTfBZqBwqskhFydZ@kernkonzept.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 24 Oct 2023 18:11:34 +0200
Message-ID: <CAPDyKFooPLCmJeqjhiMm7HRdW5UrEw0yHvGF9fgLvOigsgbWxg@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] cpufreq: qcom-nvmem: Enable virtual power domain devices
To: Stephan Gerhold <stephan.gerhold@kernkonzept.com>
Cc: Viresh Kumar <viresh.kumar@linaro.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Ilia Lin <ilia.lin@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Stephan Gerhold <stephan@gerhold.net>, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 24 Oct 2023 at 15:07, Stephan Gerhold
<stephan.gerhold@kernkonzept.com> wrote:
>
> On Tue, Oct 24, 2023 at 02:49:32PM +0200, Ulf Hansson wrote:
> > On Tue, 24 Oct 2023 at 14:03, Stephan Gerhold
> > <stephan.gerhold@kernkonzept.com> wrote:
> > >
> > > On Thu, Oct 19, 2023 at 01:26:19PM +0200, Ulf Hansson wrote:
> > > > On Thu, 19 Oct 2023 at 12:24, Ulf Hansson <ulf.hansson@linaro.org> wrote:
> > > > >
> > > > > On Wed, 18 Oct 2023 at 10:06, Stephan Gerhold
> > > > > <stephan.gerhold@kernkonzept.com> wrote:
> > > > > >
> > > > > > The genpd core caches performance state votes from devices that are
> > > > > > runtime suspended as of commit 3c5a272202c2 ("PM: domains: Improve
> > > > > > runtime PM performance state handling"). They get applied once the
> > > > > > device becomes active again.
> > > > > >
> > > > > > To attach the power domains needed by qcom-cpufreq-nvmem the OPP core
> > > > > > calls genpd_dev_pm_attach_by_id(). This results in "virtual" dummy
> > > > > > devices that use runtime PM only to control the enable and performance
> > > > > > state for the attached power domain.
> > > > > >
> > > > > > However, at the moment nothing ever resumes the virtual devices created
> > > > > > for qcom-cpufreq-nvmem. They remain permanently runtime suspended. This
> > > > > > means that performance state votes made during cpufreq scaling get
> > > > > > always cached and never applied to the hardware.
> > > > > >
> > > > > > Fix this by enabling the devices after attaching them and use
> > > > > > dev_pm_syscore_device() to ensure the power domains also stay on when
> > > > > > going to suspend. Since it supplies the CPU we can never turn it off
> > > > > > from Linux. There are other mechanisms to turn it off when needed,
> > > > > > usually in the RPM firmware (RPMPD) or the cpuidle path (CPR genpd).
> > > > >
> > > > > I believe we discussed using dev_pm_syscore_device() for the previous
> > > > > version. It's not intended to be used for things like the above.
> > > > >
> > > > > Moreover, I was under the impression that it wasn't really needed. In
> > > > > fact, I would think that this actually breaks things for system
> > > > > suspend/resume, as in this case the cpr driver's genpd
> > > > > ->power_on|off() callbacks are no longer getting called due this,
> > > > > which means that the cpr state machine isn't going to be restored
> > > > > properly. Or did I get this wrong?
> > > >
> > > > BTW, if you really need something like the above, the proper way to do
> > > > it would instead be to call device_set_awake_path() for the device.
> > > >
> > >
> > > Unfortunately this does not work correctly. When I use
> > > device_set_awake_path() it does set dev->power.wakeup_path = true.
> > > However, this flag is cleared again in device_prepare() when entering
> > > suspend. To me it looks a bit like wakeup_path is not supposed to be set
> > > directly by drivers? Before and after your commit 8512220c5782 ("PM /
> > > core: Assign the wakeup_path status flag in __device_prepare()") it
> > > seems to be internally bound to device_may_wakeup().
> > >
> > > It works if I make device_may_wakeup() return true, with
> > >
> > >         device_set_wakeup_capable(dev, true);
> > >         device_wakeup_enable(dev);
> > >
> > > but that also allows *disabling* the wakeup from sysfs which doesn't
> > > really make sense for the CPU.
> > >
> > > Any ideas?
> >
> > The device_set_awake_path() should be called from a system suspend
> > callback. So you need to add that callback for the cpufreq driver.
> >
> > Sorry, if that wasn't clear.
> >
>
> Hmm, but at the moment I'm calling this on the virtual genpd devices.
> How would it work for them? I don't have a suspend callback for them.
>
> I guess could loop over the virtual devices in the cpufreq driver
> suspend callback, but is my driver suspend callback really guaranteed to
> run before the device_prepare() that clears "wakeup_path" on the virtual
> devices?

Yes, that's guaranteed. dpm_prepare() (which calls device_prepare())
is always being executed before dpm_suspend().

>
> Or is this the point where we need device links to make that work?
> A quick look suggests "wakeup_path" is just propagated to parents but
> not device links, so I don't think that would help, either.

I don't think we need device-links for this, at least the way things
are working currently.

Kind regards
Uffe

