Return-Path: <devicetree+bounces-51669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A81A880067
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 16:17:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8BCB21C21B94
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 15:17:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EC4A65198;
	Tue, 19 Mar 2024 15:17:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71D2C2D05E
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 15:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710861463; cv=none; b=UIpS78uvXQVCxsDfV6HjPXOZQtTqALC/pFyhTkxJD9f43GZVsAD1jqdfSge0MrPNtPuR4iUoLkEYOM1Uf6f7/tpj2jSbORYALlNDRN8oO2oyFYNZyRhOKIBO29x+ED4vNvs1qyg2TDOQmQq2uilP12CpU0fCNXefK0lYgi0NAhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710861463; c=relaxed/simple;
	bh=eTIXRNIRNX/fLNBK02HtS5G0zRRMrYvz9hFaM+PVrg8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cwL0L7tp1Pdqm6Dlmf7ag6xLuNNXVCj8wwkxPUpUTZVTMkjazeOZ50x0e9++lga+N+mi3DCJbGxR63zAB6bdbv2sZVy0Q8TvlhyTcbTGCNh+kJ7m6XgzbgqL1a8YINThOqfjEqtZkF96JgVOSQ+F7pbsC1jnNKmgKf5chRMQ2V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 82762106F;
	Tue, 19 Mar 2024 08:18:14 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AB1F73F762;
	Tue, 19 Mar 2024 08:17:37 -0700 (PDT)
Date: Tue, 19 Mar 2024 15:17:34 +0000
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
Message-ID: <Zfmsjg2rb_ZMc4tA@bogus>
References: <321069a8-2c46-4871-b85a-5e9cbdda5b5d@quicinc.com>
 <ZfGIPfHH-3r8pWMf@bogus>
 <3e8e7c8c-c14a-452c-a861-e2a07994119a@linaro.org>
 <ZfLXsCaeycRlQg3I@bogus>
 <487f91af-722f-44eb-a1a2-61dec586d686@quicinc.com>
 <ZfMZ9ATxuvONcGpz@bogus>
 <0411f99d-231a-af4b-d681-7f7748361aa3@quicinc.com>
 <904978d8-eab4-4936-86dc-b0b1e7c40256@linaro.org>
 <Zfl-Z3vm-3sQ5TN5@bogus>
 <d51ef79a-012e-4701-ac8c-4d1da1827dd8@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d51ef79a-012e-4701-ac8c-4d1da1827dd8@linaro.org>

On Tue, Mar 19, 2024 at 02:40:32PM +0000, Srinivas Kandagatla wrote:
> 
> On 19/03/2024 12:00, Sudeep Holla wrote:
> >
> > OTH, my argument so far is that the presence of SCMI node indicates some
> > or more SCMI features are available on this platform. The SCMI node itself
> > then will have the resource provider nodes(like clock, power, perf, reset,
> > regulator,...etc). If the individual device nodes are consumers of those
> > resources, they will be pointing to those instead of non-SCMI clock, reset,
> > ...etc resource providers. So ideally we don't need anything more in the
> > DT.
> 
> The situation that you described is perfect case of SCMI.
> 
> With SCMI perf device support case,  combination of these clks, regulators
> and reset are moved under the perf domain. Its no more the same type of
> resource provider. So the DT bindings will change drastically.
>

Not sure what you refer as "drastic". Ulf added binding to represent
both power and performance domains extending the current binding used
for power domains and used by genpd framework.

The whole idea with abstraction i.e. clks, regulators, reset all moved
into the firmware under one perf domains means you need less information
in the device tree. So this whole discussion about adding more info to
deal with it sounds moot to me and hence all my arguments.

I am not debating on the implementation just to be clear. I accept changes
might be needed there. The $subject is all about DT bindings and what need
to be changes and for me nothing, just use existing bindings and if there
are issues there, let us discuss it with specifics.

> so the existing driver that was expecting clk/regulators/resets now has to
> deal with perf domain.
>

Agreed.

--
Regards,
Sudeep

