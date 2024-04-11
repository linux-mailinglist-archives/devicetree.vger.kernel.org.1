Return-Path: <devicetree+bounces-58224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 606D48A0C69
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 11:30:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E2941B24AC4
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 09:30:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77E921448EB;
	Thu, 11 Apr 2024 09:30:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0982213FD8B
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 09:30:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712827804; cv=none; b=oVGIMNQWp2KTTpc30Ozz/15FQTMdgIajOvaPtkyUDps/+pwJ8RNuqOehCVZ9sJo+Zc5zVXyGp6+O+k9Kqo2QB3B5eGQz+84pzoG4VEGrAGkL4+ptRzBlfp6jWfZ9nJ34E31Xuiz3ls2jpX7JbLnk2I5PrmRGKK7dk+06pHbloRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712827804; c=relaxed/simple;
	bh=+dr9VpdU4LXng/4kXBjftjej+nQPdxjETJyRoFokhns=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HsI7+SSvIVwESOOh5YPaeexvbXQCLFsYNS0VFtfMxoIpMnRgGULX43JO0T7AwODo5+4HSA1Rs5eYKkb6xR9Iekczj/1IqGHWOQffesZmDh2+Ri/JqltVcIjHAbthaXbp9ay0yX60TZwbav9SpbisKPa5BWhqHkZc/dm+32CAyEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D2C18113E;
	Thu, 11 Apr 2024 02:30:31 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A2A5F3F6C4;
	Thu, 11 Apr 2024 02:30:00 -0700 (PDT)
Date: Thu, 11 Apr 2024 10:29:58 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Nikunj Kela <quic_nkela@quicinc.com>
Cc: Trilok Soni <quic_tsoni@quicinc.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	"Ulf Hansson" <ulf.hansson@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	"Manivannan Sadhasivam" <manivannan.sadhasivam@linaro.org>,
	<krzysztof.kozlowski+dt@linaro.org>,
	Vincent Guittot <vincent.guittot@linaro.org>, <robh+dt@kernel.org>,
	<conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>
Subject: Re: DT Query on "New Compatible vs New Property"
Message-ID: <Zhetlv18NuswFtne@bogus>
References: <2b0a11f4-f54e-461c-91e7-8f313d91abe8@linaro.org>
 <CAPDyKFoo+-2AF096Sbn8EHP1H4Zw2+2sFnSyuq65sWGmMmXU0A@mail.gmail.com>
 <ZeWp_UjYfWsnEB-K@bogus>
 <321069a8-2c46-4871-b85a-5e9cbdda5b5d@quicinc.com>
 <3aad2e6b-88fd-06ab-95c5-d07f012e8306@quicinc.com>
 <bd2dde74-e4b9-4cf8-b1f1-9bc52f3b83da@linaro.org>
 <989dee90-9c44-09b9-6940-687082109ae7@quicinc.com>
 <bc1c7152-e46a-47f0-9bad-d524fb624ae8@linaro.org>
 <c02952a7-20a1-be77-35a5-d6a8b760e2f0@quicinc.com>
 <ad457e65-aee4-44ce-bf41-2568c335d910@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ad457e65-aee4-44ce-bf41-2568c335d910@quicinc.com>

On Wed, Apr 10, 2024 at 09:53:36AM -0700, Nikunj Kela wrote:

[...]

> So now you can see dealing with individual clocks etc. would not be always
> possible in our scenario. Therefore, we need to use ‘qcom,
> firmware-managed-resources’ property to figure out if we are abstracting
> resources or not.
> > 

No

-- 
Regards,
Sudeep

P.S.: skipping all the details as it's already in the thread

