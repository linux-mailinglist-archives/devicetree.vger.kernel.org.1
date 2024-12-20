Return-Path: <devicetree+bounces-133109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D92409F93E2
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 15:03:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA53B189BC39
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 13:58:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEF81216E13;
	Fri, 20 Dec 2024 13:56:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5D101C3F3B;
	Fri, 20 Dec 2024 13:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734702961; cv=none; b=JBo11a8ZEYR5gGfLp0Nbhb1buLJryAuo0tu5UzHOWWKdA8QwrX32JmkaHu6pr8vIPZshEhzgT1cFNTdE8NPuUSZHRgrS/lemGhHXVMjMkZ8Y/SYsZeDyE1GNRx4Sl19YSJR70y5hi3OuGVSq6L3uHox7HNb2lawFBs5N40LhueQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734702961; c=relaxed/simple;
	bh=qXY5JiIr4Cqs4La6RH/6fpDV63+Jqd7arwepbXYjIfw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KYCDDDyE2dffLUzrjmwvaJv/1BdtOexQFH6cou+eAWvwWNma+XGaj9ihwY97Dt3WLz4xv0CRLE3uc6hK3ult32zLWi7rqEnMgKq+4FmpowFHFLohnJeqPw0Bi+bYhQJqBqE9WV6tppruckUOZ0913UXD2DeyadmLDRkpUDY3Rg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EAA231480;
	Fri, 20 Dec 2024 05:56:26 -0800 (PST)
Received: from bogus (e133711.arm.com [10.1.196.55])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1CC9F3F720;
	Fri, 20 Dec 2024 05:55:56 -0800 (PST)
Date: Fri, 20 Dec 2024 13:55:54 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Subject: Re: [PATCH 1/3] dt-bindings: arm,psci: Allow S2RAM power_state
 parameter description
Message-ID: <Z2V3amqWYDUWA2uM@bogus>
References: <20241028-topic-cpu_suspend_s2ram-v1-0-9fdd9a04b75c@oss.qualcomm.com>
 <20241028-topic-cpu_suspend_s2ram-v1-1-9fdd9a04b75c@oss.qualcomm.com>
 <Z1LQOmEfFy640PjG@bogus>
 <54cc4221-ba5f-4741-9033-20874265ca01@oss.qualcomm.com>
 <Z2VUiHWHgbWowdal@bogus>
 <349bac70-87e0-4870-a3f0-9f6a3b3e6824@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <349bac70-87e0-4870-a3f0-9f6a3b3e6824@oss.qualcomm.com>

On Fri, Dec 20, 2024 at 01:54:45PM +0100, Konrad Dybcio wrote:
> On 20.12.2024 12:27 PM, Sudeep Holla wrote:
> > On Thu, Dec 19, 2024 at 08:43:27PM +0100, Konrad Dybcio wrote:
> >> On 6.12.2024 11:21 AM, Sudeep Holla wrote:
> >>> On Mon, Oct 28, 2024 at 03:22:57PM +0100, Konrad Dybcio wrote:
> >>>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >>>>
> >>>> Certain firmware implementations (such as the ones found on Qualcomm
> >>>> SoCs between roughly 2015 and 2023) expose an S3-like S2RAM state
> >>>> through the CPU_SUSPEND call, as opposed to exposing PSCIv1.0's
> >>>> optional PSCI_SYSTEM_SUSPEND.
> >>>>
> >>>
> >>> If so, can you elaborate why s2idle doesn't work as an alternative to what
> >>> you are hacking up here.
> >>
> >> Please see other branches of this thread
> >>
> >>>
> >>>> This really doesn't work well with the model where we associate all
> >>>> calls to CPU_SUSPEND with cpuidle. Allow specifying a single special
> >>>> CPU_SUSPEND suspend parameter value that is to be treated just like
> >>>> SYSTEM_SUSPEND from the OS's point of view.
> >>>>
> >>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >>>> ---
> >>>>  Documentation/devicetree/bindings/arm/psci.yaml | 6 ++++++
> >>>>  1 file changed, 6 insertions(+)
> >>>>
> >>>> diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
> >>>> index cbb012e217ab80c1ca88e611e7acc06c6d56fad0..a6901878697c8e1ec1cbfed62298ae3bc58f2501 100644
> >>>> --- a/Documentation/devicetree/bindings/arm/psci.yaml
> >>>> +++ b/Documentation/devicetree/bindings/arm/psci.yaml
> >>>> @@ -98,6 +98,12 @@ properties:
> >>>>        [1] Kernel documentation - ARM idle states bindings
> >>>>          Documentation/devicetree/bindings/cpu/idle-states.yaml
> >>>>
> >>>> +  arm,psci-s2ram-param:
> >>>> +    $ref: /schemas/types.yaml#/definitions/uint32
> >>>> +    description:
> >>>> +      power_state parameter denoting the S2RAM/S3-like system suspend state
> >>>
> >>> Yet another NACK as this corresponds to PSCI SYSTEM_SUSPEND and as per
> >>> specification it takes no such parameter. This is just misleading.
> >>>
> >>
> >> Yeah PSCI_SYSTEM_SUSPEND takes care of this on platforms that expose it.
> >>
> >
> > And those that don't advertise/expose don't get to use, simple.
>
> The spec says:
>
> "The call is equivalent to using the CPU_SUSPEND call for the
> deepest possible platform powerdown state."
>

Please take a look at the preconditions for both the calls. They are
different.

--
Regards,
Sudeep

