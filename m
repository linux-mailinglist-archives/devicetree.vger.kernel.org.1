Return-Path: <devicetree+bounces-51702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 22520880199
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 17:13:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D0C78282F16
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 16:13:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9643965BAA;
	Tue, 19 Mar 2024 16:13:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AC6F80611
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 16:13:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710864802; cv=none; b=gOH3XZ1VP+HeVY+luqlxpuNnyRK58vkl4bO61+QljUga3nBMSqiI9voPX5ZrH2vhXmdFP2fxpn74XaR+C00tlzVpSjL8fa7vAO2v/sw40FB17wIh+UxyE4GpkJahfCxJ85vygQmqp2XJpYZFn+13YvvaPJ2M7IcN0YyMcrK4GKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710864802; c=relaxed/simple;
	bh=1WPalXZzbxQzT4QNE19BYKy1rQFObEfrbbh3IttYjl8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D8Y1c0YWmHR1zsi/v5nevs4vMVYBHAcSHpyOQwrhx84ssppjr50+Y084itlSjmAUfGYLpYWSynGj7hA9tvaHkZEd053kPjpmT720E3fdnMG6ZNlqdCAHLaPTIrcviIiZOC5jCwokZItB+SJxjryOD04E+js5+UHH5F2Ptncxi6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 936E0106F;
	Tue, 19 Mar 2024 09:13:54 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BD66F3F67D;
	Tue, 19 Mar 2024 09:13:17 -0700 (PDT)
Date: Tue, 19 Mar 2024 16:13:15 +0000
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
Message-ID: <Zfm5m2zp4A06ZunW@bogus>
References: <3e8e7c8c-c14a-452c-a861-e2a07994119a@linaro.org>
 <ZfLXsCaeycRlQg3I@bogus>
 <487f91af-722f-44eb-a1a2-61dec586d686@quicinc.com>
 <ZfMZ9ATxuvONcGpz@bogus>
 <0411f99d-231a-af4b-d681-7f7748361aa3@quicinc.com>
 <904978d8-eab4-4936-86dc-b0b1e7c40256@linaro.org>
 <Zfl-Z3vm-3sQ5TN5@bogus>
 <d51ef79a-012e-4701-ac8c-4d1da1827dd8@linaro.org>
 <Zfmsjg2rb_ZMc4tA@bogus>
 <33783999-227b-4837-9924-2fd99b210cbb@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <33783999-227b-4837-9924-2fd99b210cbb@linaro.org>

On Tue, Mar 19, 2024 at 03:41:40PM +0000, Srinivas Kandagatla wrote:
> 
> On 19/03/2024 15:17, Sudeep Holla wrote:
> > I am not debating on the implementation just to be clear. I accept changes
> > might be needed there. The $subject is all about DT bindings and what need
> > to be changes and for me nothing, just use existing bindings and if there
> > are issues there, let us discuss it with specifics.
> > 
> How can changes to dt bindings be nothing? All the resources
> clk/regulators/resets will become optional and a new power or perf domain
> will become required for each device with firmwares that support SCMI Perf.
>

Correct, sorry to miss the point that few properties are now optional from
mandatory before. Very good point. I was so caught up with the addition of
the new "firmware controlled blah blah" property/compatible that I missed
to observe mandatory->optional as a change. Thanks for correcting me.

--
Regards,
Sudeep

