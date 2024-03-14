Return-Path: <devicetree+bounces-50448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1837E87BB96
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 11:56:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AB19B1F23EDD
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 10:56:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54AF55DF26;
	Thu, 14 Mar 2024 10:55:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15AA26EB55
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 10:55:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710413752; cv=none; b=HOOfizN108Co9z43s4HYc7JcNEPAvX8z6deB69k2QsOYNabwYCtiT+TcJpwD1SJMpd9iSCt000RoU2j1w+/oF1Usjr9gqGwApXFC/ltwe2KPE7I01WJJnclZLPaR/xkmrA4Qpkn/1ylprn6/lSUetJnsP55j5ITb5jCZl1qqqMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710413752; c=relaxed/simple;
	bh=IHbMpVyEcSgiRpgjO07kmKa8DPm/8PwrWWWuK3+Dp/o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SI4Pf4LRudG07qZTuFy7miwZWwybYsUqbocGtGnxKXIGuEWGmhUmsibJw+S1XK3JxdyxS1MyZSRm3oTHGAIZ9zTs27OoJhM6V2NEA83vbDY8l8l7aWHSAjFy8WT8xRIk6zJPGi9rKnp9PEWHY/Lvv3OFl4gQR9iIp9p6N9w30P8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6114CDA7;
	Thu, 14 Mar 2024 03:56:25 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4FD813F73F;
	Thu, 14 Mar 2024 03:55:47 -0700 (PDT)
Date: Thu, 14 Mar 2024 10:55:44 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: Nikunj Kela <quic_nkela@quicinc.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	krzysztof.kozlowski+dt@linaro.org,
	Vincent Guittot <vincent.guittot@linaro.org>, robh+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>,
	"Trilok Soni (QUIC)" <quic_tsoni@quicinc.com>
Subject: Re: DT Query on "New Compatible vs New Property"
Message-ID: <ZfLXsCaeycRlQg3I@bogus>
References: <20240228140239.gkzcytw6cmb4opja@bogus>
 <799268ac-7ffb-4b99-b037-d5bb93d37f13@linaro.org>
 <20240228160925.fcitj2yz7hisidsl@bogus>
 <CAPDyKFqEDu1KRsT2YWv7MhoosCSj_bgV4xE=-2hDaS1ZP7AkvQ@mail.gmail.com>
 <2b0a11f4-f54e-461c-91e7-8f313d91abe8@linaro.org>
 <CAPDyKFoo+-2AF096Sbn8EHP1H4Zw2+2sFnSyuq65sWGmMmXU0A@mail.gmail.com>
 <ZeWp_UjYfWsnEB-K@bogus>
 <321069a8-2c46-4871-b85a-5e9cbdda5b5d@quicinc.com>
 <ZfGIPfHH-3r8pWMf@bogus>
 <3e8e7c8c-c14a-452c-a861-e2a07994119a@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3e8e7c8c-c14a-452c-a861-e2a07994119a@linaro.org>

On Wed, Mar 13, 2024 at 01:04:15PM +0000, Srinivas Kandagatla wrote:
> 
> 
> On 13/03/2024 11:04, Sudeep Holla wrote:
> > On Tue, Mar 12, 2024 at 09:52:56AM -0700, Nikunj Kela wrote:
> > > +Trilok
> > > 
> > > On 3/4/2024 3:01 AM, Sudeep Holla wrote:
> > > > arch/arm64/boot/dts/arm/juno-scmi.dts
> > > > 
> > > > One is with old firmware interface and -scmi is with SCMI. No new top
> > > > level compatible change is needed. I understand it was switch from one
> > > > interface to the another and not like Qcom platforms which is moving
> > > > from in-kernel solution to firmware solution. But the general rule applies
> > > > here as well unless there are specific reasons for needing that exception.
> > > > I am not against it or ruling that out, just curious to understand them.
> > > 
> > > Thank you all for all your inputs on this. I discussed this with Srini and
> > > he suggested that we could use a new optional DT property like "qcom,
> > > fw-managed" to ascertain if we are running on firmware managed variant. Thus
> > > each device node in the dts can add this. I did ask him if, instead of
> > > putting it to each device node, we can use it at the board level however he
> > > thinks that it would not be easy to update yaml documentation on DT nodes
> > > with board level property. So if everyone here agrees with this approach, I
> > > would like to close this thread.
> > 
> > The counter argument from me for that is simple. If you are OK to manage with
> > one board level compatible/property(doesn't matter for this discussion), then
> > why can't that be the compatible of the firmware itself(SCMI and RPMI both
> > must have their own compatible already). The main point is why do you need
> > any extra information when they are already present. My comment is just for
> > this one board level compatible/property.
> 
> Board specific compatible might not scale, as this will bring in changes to
> every driver and bindings with new board addition.
> 
> BoardLevel property, how are we going to reflect this each device DT
> bindings?
> 
> Is this new property going to be part of scmi/rpmi firmware node?
> 

Nope, the point was will the presence of (available) scmi/rpmi device
node suffice if we are thinking of single board level property or
compatible. I was not mixing the discussion of whether adding such
a property to each needed device node in this discussion to keep it
simple. I have already expressed my opinion on that.

I am sure qcom will go and do what they want which may work fine for
qcom specific drivers but it will not work for a generic IP driver
used by many vendors. Not sure if Qcom SoCs are just bundle of Qcom
specific IPs or they do have some generic non-Qcom IPs. Lets us take
SMMU as example. If the SCMI/RPMI controls the power to it, would you
go and add this new compatible in the generic SMMU bindings and add
support in the driver for that ? That is big NO as the driver would
just need to use std framework interface(doesn't matter Runtime PM/Clock/
Reset/genpd/PM OPP). That means they don't need any specific bindings
to inform SMMU driver that the power is f/w managed.

Hope I have conveyed my point better with example this time.

--
Regards,
Sudeep

