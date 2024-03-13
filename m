Return-Path: <devicetree+bounces-50239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F233287A6AC
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 12:07:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ACED9282FD1
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 11:07:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B4E13D548;
	Wed, 13 Mar 2024 11:04:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6026513AF9
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 11:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710327876; cv=none; b=kfGYJZHXQeBboUpOgFIYaKhZgVaUysnLVCZSrPKIbxCjDrs66h26uY5KakpspLDudKeHVc2tdKAwPXxaDpZrMYa4jb+Wr4oojAkOH9VZzDSILsRGW7Pt+GeNkxg0uWs+9DpJsvHWQS1wKQwz7Td/6DnipB04PiVOSoQsEJcnIzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710327876; c=relaxed/simple;
	bh=dAX+cA9zPdJofcNhWsOe3dFbFBgKyLHPr8FuKGSzUpw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WHCCuq5/LvdDDvTzeGInAHl9cPfKFWtGHNjBhTar1PJ9rkLgz2o06PIQeuG2nNInqkf/lodLm2hQik4YN2iBQuYauXccwJfJKiRw+/wFau47kYlKloCA4gzXWj0235DYyJS6mYSfJ3aKyy/5O1QjD8caiR/6vk8mDSmN5cnMbpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8A39A1007;
	Wed, 13 Mar 2024 04:05:10 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C78853F73F;
	Wed, 13 Mar 2024 04:04:31 -0700 (PDT)
Date: Wed, 13 Mar 2024 11:04:29 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Nikunj Kela <quic_nkela@quicinc.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	<krzysztof.kozlowski+dt@linaro.org>,
	Vincent Guittot <vincent.guittot@linaro.org>, <robh+dt@kernel.org>,
	<conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>,
	"Trilok Soni (QUIC)" <quic_tsoni@quicinc.com>
Subject: Re: DT Query on "New Compatible vs New Property"
Message-ID: <ZfGIPfHH-3r8pWMf@bogus>
References: <94a62a78-961a-4286-804c-fc0b9098b8a1@quicinc.com>
 <CAPDyKFrL2QcB-YbE25smGgJjf3iBEsSSB4ui3V98zJKghNNhKA@mail.gmail.com>
 <20240228140239.gkzcytw6cmb4opja@bogus>
 <799268ac-7ffb-4b99-b037-d5bb93d37f13@linaro.org>
 <20240228160925.fcitj2yz7hisidsl@bogus>
 <CAPDyKFqEDu1KRsT2YWv7MhoosCSj_bgV4xE=-2hDaS1ZP7AkvQ@mail.gmail.com>
 <2b0a11f4-f54e-461c-91e7-8f313d91abe8@linaro.org>
 <CAPDyKFoo+-2AF096Sbn8EHP1H4Zw2+2sFnSyuq65sWGmMmXU0A@mail.gmail.com>
 <ZeWp_UjYfWsnEB-K@bogus>
 <321069a8-2c46-4871-b85a-5e9cbdda5b5d@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <321069a8-2c46-4871-b85a-5e9cbdda5b5d@quicinc.com>

On Tue, Mar 12, 2024 at 09:52:56AM -0700, Nikunj Kela wrote:
> +Trilok
>
> On 3/4/2024 3:01 AM, Sudeep Holla wrote:
> > arch/arm64/boot/dts/arm/juno-scmi.dts
> >
> > One is with old firmware interface and -scmi is with SCMI. No new top
> > level compatible change is needed. I understand it was switch from one
> > interface to the another and not like Qcom platforms which is moving
> > from in-kernel solution to firmware solution. But the general rule applies
> > here as well unless there are specific reasons for needing that exception.
> > I am not against it or ruling that out, just curious to understand them.
>
> Thank you all for all your inputs on this. I discussed this with Srini and
> he suggested that we could use a new optional DT property like "qcom,
> fw-managed" to ascertain if we are running on firmware managed variant. Thus
> each device node in the dts can add this. I did ask him if, instead of
> putting it to each device node, we can use it at the board level however he
> thinks that it would not be easy to update yaml documentation on DT nodes
> with board level property. So if everyone here agrees with this approach, I
> would like to close this thread.

The counter argument from me for that is simple. If you are OK to manage with
one board level compatible/property(doesn't matter for this discussion), then
why can't that be the compatible of the firmware itself(SCMI and RPMI both
must have their own compatible already). The main point is why do you need
any extra information when they are already present. My comment is just for
this one board level compatible/property.

--
Regards,
Sudeep

