Return-Path: <devicetree+bounces-58215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F378A0C3A
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 11:23:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F1812840B3
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 09:23:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7CB11448EA;
	Thu, 11 Apr 2024 09:23:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46F741448E2
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 09:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712827429; cv=none; b=GgbAJi3obR7rNddX7rNpGjBc7j31yL9Q3jNoyHvhjhYp6VPlInnaWo3hqwoBd+R3h9/SAiyvRx5IdZzlfimKiDRzY4p230q+hoG8yY3qKqP3lzyZT2BdWUeBDT4TrqVIZR6sQTiEY4M7poqGiwwZsytvBlLMujkh+3hTVMqOuIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712827429; c=relaxed/simple;
	bh=zaXOHAwB9RVp90LJkiG0jAfc4yIRXlJLhVe84L0maag=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nH1cfDzwOfSXmcu+GaT6/B3CO32eDYH3Q8CbvBGupU3zWiNlIn2loTBqQLwCnGRzwoQJMYBr4Avm8mSgeA0fCi2ohc+qE2fcm8626vW55VNeQEa7kRxGFikuRyi/mNmiFwzld5j59ZZqiuztLOQKIxwm4yRH2GcDli355Hq2eeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 53A11113E;
	Thu, 11 Apr 2024 02:24:17 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 25C3C3F6C4;
	Thu, 11 Apr 2024 02:23:46 -0700 (PDT)
Date: Thu, 11 Apr 2024 10:23:43 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Nikunj Kela <quic_nkela@quicinc.com>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Trilok Soni <quic_tsoni@quicinc.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	<krzysztof.kozlowski+dt@linaro.org>,
	Vincent Guittot <vincent.guittot@linaro.org>, <robh+dt@kernel.org>,
	<conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>
Subject: Re: DT Query on "New Compatible vs New Property"
Message-ID: <ZhesH9ikZiy8ah6J@bogus>
References: <487f91af-722f-44eb-a1a2-61dec586d686@quicinc.com>
 <ZfMZ9ATxuvONcGpz@bogus>
 <0411f99d-231a-af4b-d681-7f7748361aa3@quicinc.com>
 <904978d8-eab4-4936-86dc-b0b1e7c40256@linaro.org>
 <Zfl-Z3vm-3sQ5TN5@bogus>
 <d51ef79a-012e-4701-ac8c-4d1da1827dd8@linaro.org>
 <Zfmsjg2rb_ZMc4tA@bogus>
 <33783999-227b-4837-9924-2fd99b210cbb@linaro.org>
 <Zfm5m2zp4A06ZunW@bogus>
 <c66f280b-aa29-4b18-98f1-701f60cbc63d@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c66f280b-aa29-4b18-98f1-701f60cbc63d@quicinc.com>

On Wed, Apr 10, 2024 at 09:55:24AM -0700, Nikunj Kela wrote:
> 
> On 3/19/2024 9:13 AM, Sudeep Holla wrote:
> > On Tue, Mar 19, 2024 at 03:41:40PM +0000, Srinivas Kandagatla wrote:
> > > On 19/03/2024 15:17, Sudeep Holla wrote:
> > > > I am not debating on the implementation just to be clear. I accept changes
> > > > might be needed there. The $subject is all about DT bindings and what need
> > > > to be changes and for me nothing, just use existing bindings and if there
> > > > are issues there, let us discuss it with specifics.
> > > > 
> > > How can changes to dt bindings be nothing? All the resources
> > > clk/regulators/resets will become optional and a new power or perf domain
> > > will become required for each device with firmwares that support SCMI Perf.
> > > 
> > Correct, sorry to miss the point that few properties are now optional from
> > mandatory before. Very good point. I was so caught up with the addition of
> > the new "firmware controlled blah blah" property/compatible that I missed
> > to observe mandatory->optional as a change. Thanks for correcting me.
> > 
> If there are no more questions on this and everyone is on the same page, I
> would like to conclude this thread in favor of using a new DT property
> 'qcom,firmware-managed-resources'.
>

This is exactly opposite to what I have advocated so far in this thread.
Not sure how you drew to this conclusion. Check [1] and [2] for example.
The point was not to have qcom specific compatibles or properties as it
doesn't scale well. Please chime into those if you have argument and how
you came to this conclusion.

--
Regards,
Sudeep

[1] https://lore.kernel.org/all/ZfMZ9ATxuvONcGpz@bogus
[2] https://lore.kernel.org/all/0411f99d-231a-af4b-d681-7f7748361aa3@quicinc.com

