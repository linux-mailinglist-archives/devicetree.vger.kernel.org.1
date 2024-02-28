Return-Path: <devicetree+bounces-46886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 341D386B12F
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 15:03:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E369E28808B
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 14:03:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50FE414F995;
	Wed, 28 Feb 2024 14:02:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26D587352B
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 14:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709128967; cv=none; b=gu97IfjFlWQfj6g+dMUQZ+rV02kzAaxFXFJXVaciz2Cg6WacIv6Jlv0wcg7unav1aEsR3rMpxoYNhqTcvdPOdv4kztZ3Zhv0gCjvvsH0uVGcLm2r4fS+a1PPvXHyO4PrAB0le3Zq7GKQl+hHcZ06R0/QyxwbY+M9VTlGILQqEhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709128967; c=relaxed/simple;
	bh=3z5hhkxmL3+gwPj/3mgtGC6g537iZSf9fwYqXDCJHy0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CLf7UbaaI9Q2NT3L8xtov/4hSY4DAUxnQeaIHutYDzOPOBP7vdAQFaCcgtHIs3ZgXuI1v19LbSwGP3IBiO3LXNa0owRDx2cU8JKlMmNB+K/uHYQg1zhvmkYMscrYRjC17uqiNXOUbhRVe0yIh90hiBnZgSGwjtuBCW0+kuZS1Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 528C2C15;
	Wed, 28 Feb 2024 06:03:23 -0800 (PST)
Received: from bogus (unknown [10.57.94.75])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3D3843F73F;
	Wed, 28 Feb 2024 06:02:42 -0800 (PST)
Date: Wed, 28 Feb 2024 14:02:39 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Nikunj Kela <quic_nkela@quicinc.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	krzysztof.kozlowski+dt@linaro.org,
	Sudeep Holla <sudeep.holla@arm.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	robh+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>,
	srinivas.kandagatla@linaro.org
Subject: Re: DT Query on "New Compatible vs New Property"
Message-ID: <20240228140239.gkzcytw6cmb4opja@bogus>
References: <a053261e-6e05-4673-b5dd-2ce8f3c73ac9@quicinc.com>
 <ZbEHNyLE8bQlZHSZ@bogus>
 <7910de2d-6184-4f78-a286-d2e6e50c7a36@quicinc.com>
 <CAKfTPtCjR_MBO9Lh7=CU+dcFaigkbeKc27rVgCa-aEJyHyfK9A@mail.gmail.com>
 <ZbEY2X8CfOc-vPbe@bogus>
 <16db3da8-dfdd-4e06-b348-33e9197fe18d@quicinc.com>
 <ZbFH0UE9zZQFWm8Z@bogus>
 <32092ee9-018f-4cfb-950e-26c69764f35a@quicinc.com>
 <94a62a78-961a-4286-804c-fc0b9098b8a1@quicinc.com>
 <CAPDyKFrL2QcB-YbE25smGgJjf3iBEsSSB4ui3V98zJKghNNhKA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPDyKFrL2QcB-YbE25smGgJjf3iBEsSSB4ui3V98zJKghNNhKA@mail.gmail.com>

On Wed, Feb 28, 2024 at 02:27:30PM +0100, Ulf Hansson wrote:
> On Mon, 26 Feb 2024 at 15:24, Nikunj Kela <quic_nkela@quicinc.com> wrote:
> >
> > Hi Sudeep,
> >
> > I would like to conclude on this thread. I was discussing this with Ulf.
> > He thinks that using the domain names to identify if platform is
> > abstracting clocks etc. are not scalable and sufficient. Instead he
> > thinks that the change in the interface to OS(and FW) is a good
> > candidate for a new compatible(even though HW is same).  Even for SCMI,
> > we do change phandle in DT to SCMI protocol phandle so that is like a
> > different platform altogether. Could you please let me know if you still
> > think that using a different compatible in this case is not warranted.
>
> My apologies for joining this discussion at this late state. Yet, I
> just wanted to confirm what Nikunj said above.
>
> In the end we are indeed talking about adding a new platform, as
> changing the FW interface from a QCOM proprietary one into SCMI,
> simply requires updates to a DTS file(s) that is platform specific.
>

The way I read this sounds like all this are platform specific and need
new compatible.

> That said, it also seems reasonable to me to use a compatible string,
> to allow us to describe the update of HW for various affected devices.
>

While I agree with the above statement, it depends on what you refer as
update of HW above. It is all Qcom specific and there is so much turn
between SoCs that this shouldn't matter but I would like to take example
and describe what I initially mentioned/argued against.

Lets us assume 2 SoCs: A and B. A is old and didn't use SCMI while B is
new and migrated to use SCMI. Now let us assume both A and B SoCs have
exact same version/revision of an IP: X. Now just because B uses SCMI,
should X have one compatible to be used in A and another in B. That
doesn't sound right IMO.

If X on A has to manage clocks and voltage separately while the same X
on B uses SCMI to manage them together as performance domain, then the
presence(or absence) of those properties must indicate the difference and
not a change in compaible for the IP X. But it is upto Qcom platform
maintainer, IP driver maintainer and DT maintainers to decide, I will
leave that them. I just wanted to express my opinion on the matter.

> Probably the best next step is to post a patch series showing how this
> would really look like, as it would help us to understand more, I
> think.
>

Agreed.

--
Regards,
Sudeep

