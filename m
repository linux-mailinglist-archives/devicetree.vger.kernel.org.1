Return-Path: <devicetree+bounces-10100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D18F7CFA5E
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 15:05:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0DD7B1F239E4
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 13:05:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4785F225C6;
	Thu, 19 Oct 2023 13:05:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gerhold.net header.i=@gerhold.net header.b="ZrGWmf/5";
	dkim=permerror (0-bit key) header.d=gerhold.net header.i=@gerhold.net header.b="7dyg0Eud"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D52BE1A290
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 13:05:23 +0000 (UTC)
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [81.169.146.165])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53EBE119;
	Thu, 19 Oct 2023 06:05:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1697720717; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=HQkJwUGjXxiVocX2+JRqv+20JKUah3fIpKJawr5qqY13Qlmh8/IC8xybss6bgFO3sT
    mzIhLYpqmwxnkWVoA+n9gJBY0kdtehdVgQsOyb+3tEcbi61JfcEykbPOHc9P+5+YOr1N
    8tfQgfVON770jRcTQLeyRPZ3VPeQ9oy66DJQFjYTF6XBi8GLnNndqh7K2vq3hx9dsuhP
    4lYHrIZ7Xi3Ky9scvNKSzCxA4SUkNpIK11G03rDP/+E26q4u8PjeDhEv2wweZ3wJT5Nd
    SplQiaXuLVF6zbdNd94BEJrS/UObr3zsOwne84QeyjlZd3gmxl9CkokblxHWuGBfxymR
    GYVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1697720717;
    s=strato-dkim-0002; d=strato.com;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=xxfgo5/03Ivn9KxKr/YiTmmInTNFF0S4txFCc5wo/cY=;
    b=Eq4Wd/oVZVv8nQOqi892ovadJ81VegZ1Ry7+gW2HoW3mrRIWqTiJ/L0QD2dL53dxPG
    a78fuBUBAFcK9kHkeLmMpNrJp8HfFPwy2n+vkRsV1Fty+phWf1X8Cy84ofvrlt2Spz3N
    s8woUuKWXSHzKyqBwfU+jYiJ9umxZQlW+KNVpooy7gsjeNZWoeEOUjHZzp1quxMVErml
    mYcppjd8iwAaisRvWzmuhr8JutQ//JOVqPXB3t3a84nkuVptWmXmc5QBJ705BnZMwE/+
    OyfdcaAf9KRYtkgNPo4alq7Lwg1tPcM+uQjW0iHoXtMsfWSzlvdY8vk13FOgk9fcxaes
    GHiQ==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1697720717;
    s=strato-dkim-0002; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=xxfgo5/03Ivn9KxKr/YiTmmInTNFF0S4txFCc5wo/cY=;
    b=ZrGWmf/5PgbELJxxzjqKdMd0xAbnF4jJst4iFXsrTVkkZ6UbIETPjNeae5tsdUX061
    CY4tV7zFCwzEoo+o6dSUw3XR37sTVGW9mO8jg5nh4wS6CzL7bE0hCygsymGdB0iG4me1
    jNCQ5jGMdCT9hVtq2/1gmNn2zji7joORpbene1WxfgGuLwH/kYjxRPbgV/Gi4AnlnE83
    tF2XDacGZuguHUEKMYEGU/Out7azl3HR0Aa9UolUdAO5YzgzBndTR3Z3HlD+3amvlzJ5
    hFwsEbqdWykZezHIIVoozhlE0K6CuUdHA60sKs267EmiBnsBH0ty2GuoJOZIMKYmNe3R
    DnTg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1697720717;
    s=strato-dkim-0003; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=xxfgo5/03Ivn9KxKr/YiTmmInTNFF0S4txFCc5wo/cY=;
    b=7dyg0EudhUTJj5c11LTuz5JIN03XClSzW5niCEYEngNkgfQTe3UUFazbzrpgFyVi5+
    7fFwWSvQTXhjqQQ4yxAA==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u261EJF5OxJD4paA95vh"
Received: from gerhold.net
    by smtp.strato.de (RZmta 49.9.0 DYNA|AUTH)
    with ESMTPSA id j34a49z9JD5HDef
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Thu, 19 Oct 2023 15:05:17 +0200 (CEST)
Date: Thu, 19 Oct 2023 15:05:11 +0200
From: Stephan Gerhold <stephan@gerhold.net>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Stephan Gerhold <stephan.gerhold@kernkonzept.com>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Ilia Lin <ilia.lin@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH v2 2/3] cpufreq: qcom-nvmem: Enable virtual power domain
 devices
Message-ID: <ZTEph19CAvbgbN_E@gerhold.net>
References: <20231018-msm8909-cpufreq-v2-0-0962df95f654@kernkonzept.com>
 <20231018-msm8909-cpufreq-v2-2-0962df95f654@kernkonzept.com>
 <CAPDyKFot9=M1ooP_Q1AOgG5o_4DTQ2qsyai1ZdXAzBwf89W4uA@mail.gmail.com>
 <CAPDyKFr5A-P=UhWs4rUMBWup3pH75WAhcZ56Y2_Sfk3=WfxRCQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPDyKFr5A-P=UhWs4rUMBWup3pH75WAhcZ56Y2_Sfk3=WfxRCQ@mail.gmail.com>
Content-Transfer-Encoding: 7bit

On Thu, Oct 19, 2023 at 01:26:19PM +0200, Ulf Hansson wrote:
> On Thu, 19 Oct 2023 at 12:24, Ulf Hansson <ulf.hansson@linaro.org> wrote:
> > On Wed, 18 Oct 2023 at 10:06, Stephan Gerhold
> > <stephan.gerhold@kernkonzept.com> wrote:
> > >
> > > The genpd core caches performance state votes from devices that are
> > > runtime suspended as of commit 3c5a272202c2 ("PM: domains: Improve
> > > runtime PM performance state handling"). They get applied once the
> > > device becomes active again.
> > >
> > > To attach the power domains needed by qcom-cpufreq-nvmem the OPP core
> > > calls genpd_dev_pm_attach_by_id(). This results in "virtual" dummy
> > > devices that use runtime PM only to control the enable and performance
> > > state for the attached power domain.
> > >
> > > However, at the moment nothing ever resumes the virtual devices created
> > > for qcom-cpufreq-nvmem. They remain permanently runtime suspended. This
> > > means that performance state votes made during cpufreq scaling get
> > > always cached and never applied to the hardware.
> > >
> > > Fix this by enabling the devices after attaching them and use
> > > dev_pm_syscore_device() to ensure the power domains also stay on when
> > > going to suspend. Since it supplies the CPU we can never turn it off
> > > from Linux. There are other mechanisms to turn it off when needed,
> > > usually in the RPM firmware (RPMPD) or the cpuidle path (CPR genpd).
> >
> > I believe we discussed using dev_pm_syscore_device() for the previous
> > version. It's not intended to be used for things like the above.
> >

Sorry, looks like we still had a misunderstanding in the conclusion of
the previous discussion. :')

> > Moreover, I was under the impression that it wasn't really needed. In
> > fact, I would think that this actually breaks things for system
> > suspend/resume, as in this case the cpr driver's genpd
> > ->power_on|off() callbacks are no longer getting called due this,
> > which means that the cpr state machine isn't going to be restored
> > properly. Or did I get this wrong?
> 

We strictly need the RPMPDs to be always-on, also across system suspend
[1]. The RPM firmware will drop the votes internally as soon as the
CPU(s) have entered deep cpuidle. We can't do this from Linux, because
we need the CPU to continue running until it was shut down cleanly.

For CPR, we strictly need the backing regulator to be always-on, also
across system suspend. Typically the hardware will turn off the
regulator as soon as the CPU(s) enter deep cpuidle. Similarly, we can't
do this from Linux, because we need the CPU to continue running until it
was shut down cleanly.

My understanding was that we're going to pause the CPR state machine
using the system suspend/resume callbacks on the driver, instead of
using the genpd->power_on|off() callbacks [2]. I can submit a separate
patch for this.

I didn't prioritize this because QCS404 (as the only current user of
CPR) doesn't have proper deep cpuidle/power management set up yet. It's
not entirely clear to me if there is any advantage (or perhaps even
disadvantage) if we pause the CPR state machine while the shared L2
cache is still being actively powered by the CPR power rail during
system suspend. I suspect this is a configuration that was never
considered in the hardware design.

Given the strict requirement for the RPMPDs, I only see two options:

 1. Have an always-on consumer that prevents the power domains to be
    powered off during system suspend. This is what this patch tries to
    achieve.

Or:

 2. Come up with a way to register the RPMPDs used by the CPU with
    GENPD_FLAG_ALWAYS_ON. This would also be doable, but isn't as
    straightfoward as "regulator-always-on" in the DT because the rpmpd
    DT node represents multiple genpds in a single DT node [3].

What do you think? Do you see some other solution perhaps? I hope we can
clear up the misunderstanding. :-)

[1]: https://lore.kernel.org/linux-arm-msm/ZQGqfMigCFZP_HLA@gerhold.net/
[2]: https://lore.kernel.org/linux-arm-msm/CAPDyKFoiup8KNv=1LFGKDdDLA1pHsdJUgTTWMdgxnikEmReXzg@mail.gmail.com/
[3]: https://lore.kernel.org/linux-arm-msm/ZSg-XtwMxg3_fWxc@gerhold.net/

> BTW, if you really need something like the above, the proper way to do
> it would instead be to call device_set_awake_path() for the device.
> 
> This informs genpd that the device needs to stay powered-on during
> system suspend (assuming that GENPD_FLAG_ACTIVE_WAKEUP has been set
> for it), hence it will keep the corresponding PM domain powered-on
> too.
> 

Thanks, I can try if this works as alternative to the
dev_pm_syscore_device()!

I will wait for your thoughts on the above before accidentally going
into the wrong direction again. :-)

Thanks!
Stephan

