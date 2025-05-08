Return-Path: <devicetree+bounces-175161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AE9AAFF93
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 17:52:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C059E1C05412
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 15:52:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6CA5278E7A;
	Thu,  8 May 2025 15:52:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBB434B1E6E
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 15:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746719522; cv=none; b=fm/f3B9E9+cR2VobNv7mSHNZK3N2jT+vG5uka27wGYaCsJPJchpjJwzZPZf3nJ967XmatGDla1OSofHOr4vCte3sdgK28+vbNIvZRS2y/dNyf2ROnbgvdzrfHV/D8XIfsX4QdC3774m8ssCeFzfyQ8PVHJ92ysbYKsTGM77bcSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746719522; c=relaxed/simple;
	bh=bUpCkNfqNxknfWdXNScSb+I3EdMMRFUs2k0vpA4Q30c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JRchglnymS2Iia9V42w1OyE9rYAEVfXfSiT+GmMj/0LeZpeyWrqNUZ+O++eQm02UIl4PElNw63YofuiZo1rO0M3vzwluzAIlOCWdF1+gk4L/DWWNxOcVyqbLN5hXQE/EmXnK6KkrdTjRfEXdfWpQ7ZBQkHYf4utWQUEIF6ziWPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8A9081E2F;
	Thu,  8 May 2025 08:51:49 -0700 (PDT)
Received: from bogus (e133711.arm.com [10.1.196.55])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BC5353F5A1;
	Thu,  8 May 2025 08:51:58 -0700 (PDT)
Date: Thu, 8 May 2025 16:51:55 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ben Horgan <ben.horgan@arm.com>
Cc: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Liviu Dudau <liviu.dudau@arm.com>, Leo Yan <leo.yan@arm.com>
Subject: Re: [PATCH 1/3] arm64: dts: fvp: Add CPU idle states for Rev C model
Message-ID: <20250508-manipulative-positive-fossa-27dff8@sudeepholla>
References: <20250508103225.354925-1-sudeep.holla@arm.com>
 <9183535a-2866-4fa5-9ed4-96695f0437ee@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9183535a-2866-4fa5-9ed4-96695f0437ee@arm.com>

Hi Ben,

Thanks for taking a look at this.

On Thu, May 08, 2025 at 02:25:19PM +0100, Ben Horgan wrote:
> Hi,
> 
> On 5/8/25 11:32, Sudeep Holla wrote:
> > Add CPU idle state definitions to the FVP Rev C device tree to enable
> > support for CPU lower power modes. This allows the system to properly
> > enter low power states during idle. It is disabled by default as it is
> > know to impact performance on the models.
> > 
> > Note that the power_state parameter(arm,psci-suspend-param) doesn't use
> > the Extended StateID format for compatibility reasons on FVP.
> > 
> > Tested on the FVP Rev C model with PSCI support enabled firmware.
> > 
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >   arch/arm64/boot/dts/arm/fvp-base-revc.dts | 32 +++++++++++++++++++++++
> >   1 file changed, 32 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
> > index 9e10d7a6b5a2..ff4e6f4d8797 100644
> > --- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
> > +++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
> > @@ -44,6 +44,30 @@ cpus {
> >   		#address-cells = <2>;
> >   		#size-cells = <0>;
> > +		idle-states {
> > +			entry-method = "arm,psci";
> > +
> > +			CPU_SLEEP_0: cpu-sleep-0 {
> > +				compatible = "arm,idle-state";
> > +				local-timer-stop;
> > +				arm,psci-suspend-param = <0x0010000>;
> > +				entry-latency-us = <40>;
> > +				exit-latency-us = <100>;
> > +				min-residency-us = <150>;
> > +				status = "disabled";
> > +			};
> > +
> > +			CLUSTER_SLEEP_0: cluster-sleep-0 {
> > +				compatible = "arm,idle-state";
> > +				local-timer-stop;
> > +				arm,psci-suspend-param = <0x1010000>;
> > +				entry-latency-us = <500>;
> > +				exit-latency-us = <1000>;
> > +				min-residency-us = <2500>;
> > +				status = "disabled";
> > +			};
> > +		};
> Do we need a cpu-map so we know which cpus the cluster idle affects?

Generally we only infer the CPU topology information from cpu-map.
We can reuse the cluster idle state node with CPUs on 2 different
clusters if they both has similar characteristics as each CPUs carry
this information independent of each other. On new DSU style clusters
with 3 different types of cpus within a single cluster, each type may
have different idle state characteristics and may need different nodes
for both cpu and cluster level idle states.

In short, the term cluster used here doesn't mean anything specific and
may not co-relate to the CPU topology.

-- 
Regards,
Sudeep

