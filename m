Return-Path: <devicetree+bounces-11293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4357D50FE
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:07:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F59828120A
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 13:07:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 346FC28E0A;
	Tue, 24 Oct 2023 13:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernkonzept.com header.i=@kernkonzept.com header.b="ADmrSkg2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3AB6208AF
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 13:07:16 +0000 (UTC)
Received: from mx.kernkonzept.com (serv1.kernkonzept.com [IPv6:2a01:4f8:1c1c:b490::2])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC173D79;
	Tue, 24 Oct 2023 06:07:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kernkonzept.com; s=mx1; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Content-Transfer-Encoding:Reply-To:
	Content-ID:Content-Description;
	bh=C0NEbr2Bu1GmyIhx8+vqJqdrFza7J7tVm5zNmo+rtEM=; b=ADmrSkg2+Vo/nMsjS9JnEWQIXA
	qnIPxpsVa5vX7hU+d2iFiLkMCbCus5t3gQGnyi/Gna15ztciE7bHOxhxrsXZaUV/2TeSYz1WMSsYD
	kxPy56li/HGPSAwcHTe4xw85iNjin0Zjh2I+PyE4IfCYnAXr5/pey5fxNFQ5k10fqmdKQQHZouWJL
	91VwJaUsi1eW8Q9gNB4QAWNxAOaU4S8gF4clamZmBpWYe/3x0cQ+P9Fc0x5C2V8luReOAN9Z/4DUI
	+MQno+CJaHqrMc2o0/48DLGBKayjODFol44/kHZYXjfhJgx5d1luLDZN+XjrVUsmLRSReydprX5iA
	QmAY6MjQ==;
Received: from [10.22.3.24] (helo=kernkonzept.com)
	by mx.kernkonzept.com with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim 4.96)
	id 1qvH7k-000kF4-06;
	Tue, 24 Oct 2023 15:07:07 +0200
Date: Tue, 24 Oct 2023 15:07:02 +0200
From: Stephan Gerhold <stephan.gerhold@kernkonzept.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Viresh Kumar <viresh.kumar@linaro.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Ilia Lin <ilia.lin@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, Stephan Gerhold <stephan@gerhold.net>,
	stable@vger.kernel.org
Subject: Re: [PATCH v2 2/3] cpufreq: qcom-nvmem: Enable virtual power domain
 devices
Message-ID: <ZTfBZqBwqskhFydZ@kernkonzept.com>
References: <20231018-msm8909-cpufreq-v2-0-0962df95f654@kernkonzept.com>
 <20231018-msm8909-cpufreq-v2-2-0962df95f654@kernkonzept.com>
 <CAPDyKFot9=M1ooP_Q1AOgG5o_4DTQ2qsyai1ZdXAzBwf89W4uA@mail.gmail.com>
 <CAPDyKFr5A-P=UhWs4rUMBWup3pH75WAhcZ56Y2_Sfk3=WfxRCQ@mail.gmail.com>
 <ZTeyhR7YY7VgWQlU@kernkonzept.com>
 <CAPDyKFrcV8iJnJ904j1jkx0E8PaOLmiTZ7CKk7EV8qQ71AZdbA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPDyKFrcV8iJnJ904j1jkx0E8PaOLmiTZ7CKk7EV8qQ71AZdbA@mail.gmail.com>

On Tue, Oct 24, 2023 at 02:49:32PM +0200, Ulf Hansson wrote:
> On Tue, 24 Oct 2023 at 14:03, Stephan Gerhold
> <stephan.gerhold@kernkonzept.com> wrote:
> >
> > On Thu, Oct 19, 2023 at 01:26:19PM +0200, Ulf Hansson wrote:
> > > On Thu, 19 Oct 2023 at 12:24, Ulf Hansson <ulf.hansson@linaro.org> wrote:
> > > >
> > > > On Wed, 18 Oct 2023 at 10:06, Stephan Gerhold
> > > > <stephan.gerhold@kernkonzept.com> wrote:
> > > > >
> > > > > The genpd core caches performance state votes from devices that are
> > > > > runtime suspended as of commit 3c5a272202c2 ("PM: domains: Improve
> > > > > runtime PM performance state handling"). They get applied once the
> > > > > device becomes active again.
> > > > >
> > > > > To attach the power domains needed by qcom-cpufreq-nvmem the OPP core
> > > > > calls genpd_dev_pm_attach_by_id(). This results in "virtual" dummy
> > > > > devices that use runtime PM only to control the enable and performance
> > > > > state for the attached power domain.
> > > > >
> > > > > However, at the moment nothing ever resumes the virtual devices created
> > > > > for qcom-cpufreq-nvmem. They remain permanently runtime suspended. This
> > > > > means that performance state votes made during cpufreq scaling get
> > > > > always cached and never applied to the hardware.
> > > > >
> > > > > Fix this by enabling the devices after attaching them and use
> > > > > dev_pm_syscore_device() to ensure the power domains also stay on when
> > > > > going to suspend. Since it supplies the CPU we can never turn it off
> > > > > from Linux. There are other mechanisms to turn it off when needed,
> > > > > usually in the RPM firmware (RPMPD) or the cpuidle path (CPR genpd).
> > > >
> > > > I believe we discussed using dev_pm_syscore_device() for the previous
> > > > version. It's not intended to be used for things like the above.
> > > >
> > > > Moreover, I was under the impression that it wasn't really needed. In
> > > > fact, I would think that this actually breaks things for system
> > > > suspend/resume, as in this case the cpr driver's genpd
> > > > ->power_on|off() callbacks are no longer getting called due this,
> > > > which means that the cpr state machine isn't going to be restored
> > > > properly. Or did I get this wrong?
> > >
> > > BTW, if you really need something like the above, the proper way to do
> > > it would instead be to call device_set_awake_path() for the device.
> > >
> >
> > Unfortunately this does not work correctly. When I use
> > device_set_awake_path() it does set dev->power.wakeup_path = true.
> > However, this flag is cleared again in device_prepare() when entering
> > suspend. To me it looks a bit like wakeup_path is not supposed to be set
> > directly by drivers? Before and after your commit 8512220c5782 ("PM /
> > core: Assign the wakeup_path status flag in __device_prepare()") it
> > seems to be internally bound to device_may_wakeup().
> >
> > It works if I make device_may_wakeup() return true, with
> >
> >         device_set_wakeup_capable(dev, true);
> >         device_wakeup_enable(dev);
> >
> > but that also allows *disabling* the wakeup from sysfs which doesn't
> > really make sense for the CPU.
> >
> > Any ideas?
> 
> The device_set_awake_path() should be called from a system suspend
> callback. So you need to add that callback for the cpufreq driver.
> 
> Sorry, if that wasn't clear.
> 

Hmm, but at the moment I'm calling this on the virtual genpd devices.
How would it work for them? I don't have a suspend callback for them.

I guess could loop over the virtual devices in the cpufreq driver
suspend callback, but is my driver suspend callback really guaranteed to
run before the device_prepare() that clears "wakeup_path" on the virtual
devices?

Or is this the point where we need device links to make that work?
A quick look suggests "wakeup_path" is just propagated to parents but
not device links, so I don't think that would help, either.

Thanks,
-- 
Stephan Gerhold <stephan.gerhold@kernkonzept.com>
Kernkonzept GmbH at Dresden, Germany, HRB 31129, CEO Dr.-Ing. Michael Hohmuth

