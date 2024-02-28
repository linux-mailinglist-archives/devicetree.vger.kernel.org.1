Return-Path: <devicetree+bounces-46926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F7F86B438
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 17:09:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 91D03282EF3
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 16:09:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 230B815CD6E;
	Wed, 28 Feb 2024 16:09:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BB3C15D5C8
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 16:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709136573; cv=none; b=IcIcUM5osViOthBeF02YVsdKeaRti/Q/9lS23m8gmAzbX33EP6qN9CiuCTG9A75mGctHodd0LrOdHLggsHXvxBmomwBppHGQFAa1MRBovCuofuhP9O4oS57/FzgAG3rGhLe64esufsgGu72XkbSJWpYRG7QdTsPyUh65eWANH5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709136573; c=relaxed/simple;
	bh=gVTFIUnyBhfVXZUzI+rgslpMPypmByyudLTimO3ifVQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Spy9UNWBB5YnEDCJC3dAoZlViVjtqwEVIHcnmawgyiIEjW8laeGts5Nkym/jPSMmpEugSdGPJGD81tczmxk+Nj/NVNNXRV5Dg0BGfbR9xXId1tpwBd72ns0F7AxCcpNBwfsUWGtJCNFBHHHH+1+YqRsBDlmSrNdUstbInTS8nGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BE03EC15;
	Wed, 28 Feb 2024 08:10:09 -0800 (PST)
Received: from bogus (unknown [10.57.94.75])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AC5A33F762;
	Wed, 28 Feb 2024 08:09:28 -0800 (PST)
Date: Wed, 28 Feb 2024 16:09:25 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	Nikunj Kela <quic_nkela@quicinc.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	krzysztof.kozlowski+dt@linaro.org,
	Vincent Guittot <vincent.guittot@linaro.org>, robh+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>,
	srinivas.kandagatla@linaro.org
Subject: Re: DT Query on "New Compatible vs New Property"
Message-ID: <20240228160925.fcitj2yz7hisidsl@bogus>
References: <7910de2d-6184-4f78-a286-d2e6e50c7a36@quicinc.com>
 <CAKfTPtCjR_MBO9Lh7=CU+dcFaigkbeKc27rVgCa-aEJyHyfK9A@mail.gmail.com>
 <ZbEY2X8CfOc-vPbe@bogus>
 <16db3da8-dfdd-4e06-b348-33e9197fe18d@quicinc.com>
 <ZbFH0UE9zZQFWm8Z@bogus>
 <32092ee9-018f-4cfb-950e-26c69764f35a@quicinc.com>
 <94a62a78-961a-4286-804c-fc0b9098b8a1@quicinc.com>
 <CAPDyKFrL2QcB-YbE25smGgJjf3iBEsSSB4ui3V98zJKghNNhKA@mail.gmail.com>
 <20240228140239.gkzcytw6cmb4opja@bogus>
 <799268ac-7ffb-4b99-b037-d5bb93d37f13@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <799268ac-7ffb-4b99-b037-d5bb93d37f13@linaro.org>

On Wed, Feb 28, 2024 at 03:20:44PM +0100, Krzysztof Kozlowski wrote:
> On 28/02/2024 15:02, Sudeep Holla wrote:
> > On Wed, Feb 28, 2024 at 02:27:30PM +0100, Ulf Hansson wrote:
> >> On Mon, 26 Feb 2024 at 15:24, Nikunj Kela <quic_nkela@quicinc.com> wrote:
> >>>
> >>> Hi Sudeep,
> >>>
> >>> I would like to conclude on this thread. I was discussing this with Ulf.
> >>> He thinks that using the domain names to identify if platform is
> >>> abstracting clocks etc. are not scalable and sufficient. Instead he
> >>> thinks that the change in the interface to OS(and FW) is a good
> >>> candidate for a new compatible(even though HW is same).  Even for SCMI,
> >>> we do change phandle in DT to SCMI protocol phandle so that is like a
> >>> different platform altogether. Could you please let me know if you still
> >>> think that using a different compatible in this case is not warranted.
> >>
> >> My apologies for joining this discussion at this late state. Yet, I
> >> just wanted to confirm what Nikunj said above.
> >>
> >> In the end we are indeed talking about adding a new platform, as
> >> changing the FW interface from a QCOM proprietary one into SCMI,
> >> simply requires updates to a DTS file(s) that is platform specific.
> >>
> > 
> > The way I read this sounds like all this are platform specific and need
> > new compatible.
> > 
> >> That said, it also seems reasonable to me to use a compatible string,
> >> to allow us to describe the update of HW for various affected devices.
> >>
> > 
> > While I agree with the above statement, it depends on what you refer as
> > update of HW above. It is all Qcom specific and there is so much turn
> > between SoCs that this shouldn't matter but I would like to take example
> > and describe what I initially mentioned/argued against.
> > 
> > Lets us assume 2 SoCs: A and B. A is old and didn't use SCMI while B is
> > new and migrated to use SCMI. Now let us assume both A and B SoCs have
> > exact same version/revision of an IP: X. Now just because B uses SCMI,
> > should X have one compatible to be used in A and another in B. That
> > doesn't sound right IMO.
> 
> That's trivial to answer, because these are different SoCs. Compatibles
> are SoC specific and every SoC-IP-block needs its compatible. Rob was
> repeating this many times that versioned compatibles are discouraged.

OK I may have confused or derailed the discussion with the mention of
"exact same version/revision" of X. This is not related versioned compatibles.
Let me try to explain it with some real example. If you look at all the
users of "arm,coresight-tpiu", they all have same compatible on all the
platforms irrespective of the clock/reset/voltage/power domain providers
on these platforms.

E.g. on juno it is based on SCMI while on qcom-msm8974/apq8064 or
hi3660/hi6220 it is platform specific clock/power domain providers.
However all these platform have the same compatible "arm,coresight-tpiu".
That was the point I was trying to make and not related to versioned
compatible for different versions on an IP.


-- 
Regards,
Sudeep

