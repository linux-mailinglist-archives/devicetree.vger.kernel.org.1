Return-Path: <devicetree+bounces-50541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCB687C07E
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 16:39:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5C0A31F21FC7
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 15:39:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03EA07174B;
	Thu, 14 Mar 2024 15:38:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE2C17175B
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 15:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710430715; cv=none; b=ih9TlKknK5N4lrTwgsIqVPLSTU1vTjfEzWfhvk3uefOkDp3/7GXalFWbMs6msnxWR/U+zp6PbdoW+VHsktLFeKxQlmoI3c/MbHXz4ZQdgVi/itIo/nEPmRaJw8V4k+WtzI1BzJ9XfjGrM7nnA+ZYXpL/I67kLdJ6bK7kjm4ndrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710430715; c=relaxed/simple;
	bh=wshhTXkGMbYmj2t7Dm9ghQkUnZn8KhXotmfuvu12uNg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JcByDJfbe3b1leROqmLu/KnTAETLQzJDZMQDgiGDrPvCYwjiB1fb3WwiaWkf/PVvZyqC4Ozf+Qf6SIUOYV1aSMSkpylHiHTRTYcGAJM9x7IoSdDXo/buzkwj1Z5TDzPp8sX+jfkZGhpY38ZoiZILgQsfhfxw5CyyWgTpWSPruzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 542181007;
	Thu, 14 Mar 2024 08:39:09 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5A15D3F762;
	Thu, 14 Mar 2024 08:38:31 -0700 (PDT)
Date: Thu, 14 Mar 2024 15:38:28 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Nikunj Kela <quic_nkela@quicinc.com>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	<krzysztof.kozlowski+dt@linaro.org>,
	Vincent Guittot <vincent.guittot@linaro.org>, <robh+dt@kernel.org>,
	<conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>,
	"Trilok Soni (QUIC)" <quic_tsoni@quicinc.com>
Subject: Re: DT Query on "New Compatible vs New Property"
Message-ID: <ZfMZ9ATxuvONcGpz@bogus>
References: <20240228160925.fcitj2yz7hisidsl@bogus>
 <CAPDyKFqEDu1KRsT2YWv7MhoosCSj_bgV4xE=-2hDaS1ZP7AkvQ@mail.gmail.com>
 <2b0a11f4-f54e-461c-91e7-8f313d91abe8@linaro.org>
 <CAPDyKFoo+-2AF096Sbn8EHP1H4Zw2+2sFnSyuq65sWGmMmXU0A@mail.gmail.com>
 <ZeWp_UjYfWsnEB-K@bogus>
 <321069a8-2c46-4871-b85a-5e9cbdda5b5d@quicinc.com>
 <ZfGIPfHH-3r8pWMf@bogus>
 <3e8e7c8c-c14a-452c-a861-e2a07994119a@linaro.org>
 <ZfLXsCaeycRlQg3I@bogus>
 <487f91af-722f-44eb-a1a2-61dec586d686@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <487f91af-722f-44eb-a1a2-61dec586d686@quicinc.com>

On Thu, Mar 14, 2024 at 05:35:23AM -0700, Nikunj Kela wrote:
> 
> On 3/14/2024 3:55 AM, Sudeep Holla wrote:
> > > 
> > Nope, the point was will the presence of (available) scmi/rpmi device
> > node suffice if we are thinking of single board level property or
> > compatible. I was not mixing the discussion of whether adding such
> > a property to each needed device node in this discussion to keep it
> > simple. I have already expressed my opinion on that.
> > 
> > I am sure qcom will go and do what they want which may work fine for
> > qcom specific drivers but it will not work for a generic IP driver
> > used by many vendors. Not sure if Qcom SoCs are just bundle of Qcom
> > specific IPs or they do have some generic non-Qcom IPs. Lets us take
> > SMMU as example. If the SCMI/RPMI controls the power to it, would you
> > go and add this new compatible in the generic SMMU bindings and add
> > support in the driver for that ? That is big NO as the driver would
> > just need to use std framework interface(doesn't matter Runtime PM/Clock/
> > Reset/genpd/PM OPP). That means they don't need any specific bindings
> > to inform SMMU driver that the power is f/w managed.
>
> For SMMU, we dont need to make any changes in the existing driver. Simple
> power-domain over SCMI will suffice since we don't need to do clock scaling
> etc. for SMMU. We will use this new property in Qualcomm emac, UFS, USB,
> QUPs(i2c,spi,uart) drivers.

Sure, as I mentioned in the beginning itself, it is all in the Qcom
specific drivers, well you can hack it in any ugly way you want to get
things working even in the upstream.

But just stop and think for a moment how would you solve this problem
if you had few Synopsys Designware IPs instead of all those Qcom specific
IPs. Will your suggested solution work or if it works will that even scale ?

As I said I will shut up and you can do whatever in your drivers, but I
just don't want this to set bad example for other vendors who may not have
all their own IPs and may use some generic ones which means they will now
follow your solution and go and change those drivers now.

The main point I am trying to make is the provide blocks/nodes should
have the information that it is firmware managed. The consumer nodes
have no business to know that information.

I will leave it to you now as I can't stop what you define as Qcom specific
and what changes you can make in those Qcom specific drivers.

--
Regards,
Sudeep

