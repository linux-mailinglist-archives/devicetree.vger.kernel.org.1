Return-Path: <devicetree+bounces-57895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A67D89F261
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 14:36:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B2F031F22464
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 12:36:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A94D158D76;
	Wed, 10 Apr 2024 12:35:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B3E52BAFC
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 12:35:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712752555; cv=none; b=QX46ZCX5r33rawIpWMJbCHVhqum8E5J1rtvLZfdnHoQdyxD7vU3/5DcMM/Sf7SL9cNmzr2mfJ35Z7vo10e7DXjl7dhMIbAyzHSTsy3z50+6HyUAx1uFX19B3eLuSPWldSYNk1omoMPA/s9D2RBYZEkSVu7wvNW7o75TgelEgp2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712752555; c=relaxed/simple;
	bh=95ohHFHwkpGENyEhl5ROyHQR0kMyL4UbUY27yOFmZ6g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UcQxf486eBibUKuQhjAk12BWOaqT0pJoORsAPyCaYulG7Oks5DOUb0FfXXlOjelBZNReDZ6hH1TW1plNqOl4TVJASjgKzOLeyy+Hr7SxTDP7VyMikzYucYvNCkpMjGMaXhp+Rf+EjJOsYBN9jo+4VrxePPmKBXCyr6d/M1ZrL6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C3858139F;
	Wed, 10 Apr 2024 05:36:21 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 141CE3F6C4;
	Wed, 10 Apr 2024 05:35:50 -0700 (PDT)
Date: Wed, 10 Apr 2024 13:35:48 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Rob Herring <robh@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: firmware: arm,scmi: Update examples for
 protocol@13
Message-ID: <ZhaHpKLlPhr-eAvl@bogus>
References: <20240403111106.1110940-1-ulf.hansson@linaro.org>
 <Zg1fP57mixbKTjJf@bogus>
 <CAPDyKFpthS4eZKTTYJ=aoE=FbExD6kd_bcc_WRNLh=2BzNVHPw@mail.gmail.com>
 <20240410115637.GA4042282-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240410115637.GA4042282-robh@kernel.org>

On Wed, Apr 10, 2024 at 06:56:37AM -0500, Rob Herring wrote:
> On Thu, Apr 04, 2024 at 12:52:08PM +0200, Ulf Hansson wrote:
> > On Wed, 3 Apr 2024 at 15:53, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > >
> > > On Wed, Apr 03, 2024 at 01:11:06PM +0200, Ulf Hansson wrote:
> > > > Recently we extended the binding for protocol@13 to allow it to be modelled
> > > > as a generic performance domain. In a way to promote using the new binding,
> > > > let's update the examples.
> > > >
> > >
> > > Does it make sense to keep one DVFS example with #clock-cells until we
> > > mark it as deprecated ? Otherwise it may be confusing as the binding still
> > > lists. Or leave some comment in the example or something, I am open for
> > > suggestions.
> > 
> > I am certainly fine with either way!
> > 
> > However, if we intend to make #clock-cells deprecated down the road,
> > maybe it's better to start avoiding the use of it already now. That
> > said, what do you think of following up $subject patch with an update
> > to Juno's dts(i) to move to #power-domains-cells too? That would mean
> > we get a nice reference for how to use this too.
> > 
> > >
> > > Other than that,
> > >
> > > Acked-by: Sudeep Holla <sudeep.holla@arm.com>
> > 
> > Are you picking this via your scmi tree, or which route is this going?
>

Sorry Ulf, this slipped through the cracks, will queue it.

> Please take via SCMI tree.
>

Sure

> Acked-by: Rob Herring <robh@kernel.org>

Thanks

-- 
Regards,
Sudeep

