Return-Path: <devicetree+bounces-51611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 661B687FD42
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 13:00:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 57DDE1C21D6E
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 12:00:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A7537F480;
	Tue, 19 Mar 2024 12:00:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46CDB7F47F
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 12:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710849647; cv=none; b=XVhZ4Yr7Odkc8Bz+m3udME7P/+/6JG3Ez7RKLgV2JXPRterQr4feMQwyPGk1B08cH+wVocV/dVdmxNmMi/qNd738LxFh/NJD1vY1RkGBiV5vroOQt4NUCWd0McpWT6AyJf04iz+CO6macQe9GKxGupCC92m0RnUZSMRhkuv+asM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710849647; c=relaxed/simple;
	bh=hlkaV+Vl/9VCBOnbut5fEvdJjycGiT8IwfwoBtWBlX4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S2WguyGkcmK7JxD9nSZ24cnMxLFdD23ec6lA+/W1keV52Lisu9N2iMrPMayN2gvweYoEdjq509LNZX3ykBMRQNOH+qV8h3zQxTRQI+uuGlqhj/dq6PpSGPcL7yzgpcnnxozYITv02HlbsHRsB3xNKRJOgeZWcNRPtYiq/08rEdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3705B153B;
	Tue, 19 Mar 2024 05:01:19 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 708603F67D;
	Tue, 19 Mar 2024 05:00:42 -0700 (PDT)
Date: Tue, 19 Mar 2024 12:00:39 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: Trilok Soni <quic_tsoni@quicinc.com>,
	Nikunj Kela <quic_nkela@quicinc.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	krzysztof.kozlowski+dt@linaro.org,
	Vincent Guittot <vincent.guittot@linaro.org>, robh+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>
Subject: Re: DT Query on "New Compatible vs New Property"
Message-ID: <Zfl-Z3vm-3sQ5TN5@bogus>
References: <CAPDyKFoo+-2AF096Sbn8EHP1H4Zw2+2sFnSyuq65sWGmMmXU0A@mail.gmail.com>
 <ZeWp_UjYfWsnEB-K@bogus>
 <321069a8-2c46-4871-b85a-5e9cbdda5b5d@quicinc.com>
 <ZfGIPfHH-3r8pWMf@bogus>
 <3e8e7c8c-c14a-452c-a861-e2a07994119a@linaro.org>
 <ZfLXsCaeycRlQg3I@bogus>
 <487f91af-722f-44eb-a1a2-61dec586d686@quicinc.com>
 <ZfMZ9ATxuvONcGpz@bogus>
 <0411f99d-231a-af4b-d681-7f7748361aa3@quicinc.com>
 <904978d8-eab4-4936-86dc-b0b1e7c40256@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <904978d8-eab4-4936-86dc-b0b1e7c40256@linaro.org>

On Tue, Mar 19, 2024 at 10:17:32AM +0000, Srinivas Kandagatla wrote:
>
> On 16/03/2024 19:30, Trilok Soni wrote:
> > On 3/14/2024 11:38 AM, Sudeep Holla wrote:
> > > On Thu, Mar 14, 2024 at 05:35:23AM -0700, Nikunj Kela wrote:
> > > >
> > > > On 3/14/2024 3:55 AM, Sudeep Holla wrote:
> > > > > >
> > > > > Nope, the point was will the presence of (available) scmi/rpmi device
> > > > > node suffice if we are thinking of single board level property or
> > > > > compatible. I was not mixing the discussion of whether adding such
> > > > > a property to each needed device node in this discussion to keep it
> > > > > simple. I have already expressed my opinion on that.
> > > > >
> > > > > I am sure qcom will go and do what they want which may work fine for
> > > > > qcom specific drivers but it will not work for a generic IP driver
> > > > > used by many vendors. Not sure if Qcom SoCs are just bundle of Qcom
> > > > > specific IPs or they do have some generic non-Qcom IPs. Lets us take
> > > > > SMMU as example. If the SCMI/RPMI controls the power to it, would you
> > > > > go and add this new compatible in the generic SMMU bindings and add
> > > > > support in the driver for that ? That is big NO as the driver would
> > > > > just need to use std framework interface(doesn't matter Runtime PM/Clock/
> > > > > Reset/genpd/PM OPP). That means they don't need any specific bindings
> > > > > to inform SMMU driver that the power is f/w managed.
> > > >
> > > > For SMMU, we dont need to make any changes in the existing driver. Simple
> > > > power-domain over SCMI will suffice since we don't need to do clock scaling
> > > > etc. for SMMU. We will use this new property in Qualcomm emac, UFS, USB,
> > > > QUPs(i2c,spi,uart) drivers.
> > >
> > > Sure, as I mentioned in the beginning itself, it is all in the Qcom
> > > specific drivers, well you can hack it in any ugly way you want to get
> > > things working even in the upstream.
> > >
> > > But just stop and think for a moment how would you solve this problem
> > > if you had few Synopsys Designware IPs instead of all those Qcom specific
> > > IPs. Will your suggested solution work or if it works will that even scale ?
> > >
> > > As I said I will shut up and you can do whatever in your drivers, but I
> > > just don't want this to set bad example for other vendors who may not have
> > > all their own IPs and may use some generic ones which means they will now
> > > follow your solution and go and change those drivers now.
> > >
> > > The main point I am trying to make is the provide blocks/nodes should
> > > have the information that it is firmware managed. The consumer nodes
> > > have no business to know that information.
> > >
> > > I will leave it to you now as I can't stop what you define as Qcom specific
> > > and what changes you can make in those Qcom specific drivers.
> >
> > I agree with what Sudeep has brought up for the SMMU and USB is another example
> > where we can have 3rd party phy / Synopsys IPs on the QC devices.
>
> This needs more discussion before we even consider adding scmi perf to these
> drivers.

Agreed.


> Big question here is implementation details of the Device SCMI perf
>
> With new SCMI Perf changes all the driver resources handling are moved to
> perf or power domains.
>

Correct and matches my understanding.

> But is this abstraction correct?
>

Don't know, patches were on the list. But I agree only interested parties
reviewed it back then and now more are interested in it and their views
may differ. Open to hear them all.

> Any standards followed Or Is any of this documented?
>

Not sure what you are looking for as answer here TBH.

> AFAIU, The whole resources moving to SCMI perf are done in pretty adhoc
> way.(ex: making regulators as power domains, and clks as perf domains.. and
> in some cases clks are power domains, ...)
>

Hmm, do we have examples for there ? Because I am interested to know more.
1. Regulators as power domains
	IMO this may have happened before the dedicated regulator protocol
	was added to the SCMI specification.
2. Clocks as perf domains
	Not sure if this ever happened, though I admit clocks property
	were used to refer SCMI perf domains in the DT but they(perf/OPP
	domains) were never integrated into clock framework.
3. Clocks as power domains
	Again this hasn't happened in DT or Linux SCMI implementation
	side. I can't speak about firmware implementation side but
	not conforming to the spec may make it hard to work well with
	generic drivers. Conformance tests must catch them ideally but
	writing the conformance tests and running them on the real
	hardware are 2 things that probably not happening at all(not
	even to some extent).

> How can we make sure that other vendors also abstract device resources
> exactly like what Qualcomm SCMI Server?
>

We can't. That is the advantage of platform specific firmware
implementation. But that said, the firmware should be conformant to the
specification. They can't go wild and implement things in a way that
makes it incompatible or non-conformant to the specification. In which
case the standard upstream SCMI drivers can't simply support that platform.

> What I feel so far is that all of the resources are moved to scmi perf in a
> very Qualcomm implementation way.
>

It depends on what exactly this "very Qualcomm implementation way" mean
when we break down to individual details. Sorry there is no other way
to answer or address this. Anything you see as Qcom specific can be
either put into conformant or non-conformant bucket with respect to the
SCMI specification.

> I have no objections to having a generic property or way to determine this
> more generically. As long as this is explicitly documented as part of Device
> tree binding for all the devices and done correctly.
>

OTH, my argument so far is that the presence of SCMI node indicates some
or more SCMI features are available on this platform. The SCMI node itself
then will have the resource provider nodes(like clock, power, perf, reset,
regulator,...etc). If the individual device nodes are consumers of those
resources, they will be pointing to those instead of non-SCMI clock, reset,
...etc resource providers. So ideally we don't need anything more in the
DT.

--
Regards,
Sudeep

