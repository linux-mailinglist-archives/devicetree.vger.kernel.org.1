Return-Path: <devicetree+bounces-133037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA8A9F912B
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 12:27:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D2F18188F0C0
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 11:27:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90A9A1C5F10;
	Fri, 20 Dec 2024 11:27:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 533C31ABEB7;
	Fri, 20 Dec 2024 11:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734694031; cv=none; b=Kk43zsCHaCCD+0cAL4oZrq3CR4IIzfyYqqysMKPY9RCoS7baGd7N4BINAO8IOQKASnnkjD8cg9zz8nrkAtpiesfDYXmALtZMo6t4UeCiVHLd5DFYPpkfhfxJDHgtowWjCP7hpKY/TVhxJUbFdvqUWNF6wlOB8jvwszW7NkM+Igw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734694031; c=relaxed/simple;
	bh=z1DjV6lFG0FNp3hEITPnp85ERL6hxq0qTRKArvOILnk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GzWoafqvdAbRbd0IcQElzuJWbGwDjig8Tj1w8f6kKadXrA14PuQjeEo6DQp+VQ/ctqGMTRkll5+prjwYWEHlA3dRtloffkLfCCmpx2km5kl8d57WDn0pea0X0Vv/l49g21CLRC9LYuFajASL3mIhGLpoQt/ZH4aEFBDa1gwAUKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CFB221480;
	Fri, 20 Dec 2024 03:27:36 -0800 (PST)
Received: from bogus (e133711.arm.com [10.1.196.55])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D60593F58B;
	Fri, 20 Dec 2024 03:27:06 -0800 (PST)
Date: Fri, 20 Dec 2024 11:27:04 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Subject: Re: [PATCH 1/3] dt-bindings: arm,psci: Allow S2RAM power_state
 parameter description
Message-ID: <Z2VUiHWHgbWowdal@bogus>
References: <20241028-topic-cpu_suspend_s2ram-v1-0-9fdd9a04b75c@oss.qualcomm.com>
 <20241028-topic-cpu_suspend_s2ram-v1-1-9fdd9a04b75c@oss.qualcomm.com>
 <Z1LQOmEfFy640PjG@bogus>
 <54cc4221-ba5f-4741-9033-20874265ca01@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <54cc4221-ba5f-4741-9033-20874265ca01@oss.qualcomm.com>

On Thu, Dec 19, 2024 at 08:43:27PM +0100, Konrad Dybcio wrote:
> On 6.12.2024 11:21 AM, Sudeep Holla wrote:
> > On Mon, Oct 28, 2024 at 03:22:57PM +0100, Konrad Dybcio wrote:
> >> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >>
> >> Certain firmware implementations (such as the ones found on Qualcomm
> >> SoCs between roughly 2015 and 2023) expose an S3-like S2RAM state
> >> through the CPU_SUSPEND call, as opposed to exposing PSCIv1.0's
> >> optional PSCI_SYSTEM_SUSPEND.
> >>
> > 
> > If so, can you elaborate why s2idle doesn't work as an alternative to what
> > you are hacking up here.
> 
> Please see other branches of this thread
> 
> > 
> >> This really doesn't work well with the model where we associate all
> >> calls to CPU_SUSPEND with cpuidle. Allow specifying a single special
> >> CPU_SUSPEND suspend parameter value that is to be treated just like
> >> SYSTEM_SUSPEND from the OS's point of view.
> >>
> >> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >> ---
> >>  Documentation/devicetree/bindings/arm/psci.yaml | 6 ++++++
> >>  1 file changed, 6 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
> >> index cbb012e217ab80c1ca88e611e7acc06c6d56fad0..a6901878697c8e1ec1cbfed62298ae3bc58f2501 100644
> >> --- a/Documentation/devicetree/bindings/arm/psci.yaml
> >> +++ b/Documentation/devicetree/bindings/arm/psci.yaml
> >> @@ -98,6 +98,12 @@ properties:
> >>        [1] Kernel documentation - ARM idle states bindings
> >>          Documentation/devicetree/bindings/cpu/idle-states.yaml
> >>  
> >> +  arm,psci-s2ram-param:
> >> +    $ref: /schemas/types.yaml#/definitions/uint32
> >> +    description:
> >> +      power_state parameter denoting the S2RAM/S3-like system suspend state
> > 
> > Yet another NACK as this corresponds to PSCI SYSTEM_SUSPEND and as per
> > specification it takes no such parameter. This is just misleading.
> > 
> 
> Yeah PSCI_SYSTEM_SUSPEND takes care of this on platforms that expose it.
>

And those that don't advertise/expose don't get to use, simple.

> DEN0022F.b Section 6.5. recommends that CPU_SUSPEND StateID includes
> a field for system-level power down states. This binding change only
> adds a way for DT-based platforms to associate such state with S2RAM
> suspend.
>

Sure, just use the CPU_SUSPEND bindings that already exist. No need to
define this as some special case if it is exposed as CPU_SUSPEND idle
state. Not sure why you want to do it differently. I understand the
need to handle it different in the kernel, but I don't understand to
define the new bindings for that. Just use the existing bindings for the
idle states. Again I see no exception for this case.

> That may be a bit Linux-specific whereas bindings are supposed to be
> OS-agnostic, but since we effectively want one PSCI state for deep
> suspend regardless of the OS, I would think this kind of hint is fine.
>

Exactly, that's the reason for not changing this into special case and
special binding for that special case created.

--
Regards,
Sudeep

