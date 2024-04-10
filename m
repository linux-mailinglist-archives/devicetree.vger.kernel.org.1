Return-Path: <devicetree+bounces-57870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF4089F185
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 13:56:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BF47CB22CE4
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 11:56:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F7A115ADB6;
	Wed, 10 Apr 2024 11:56:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3jRSI8k"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B34515ADB4
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 11:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712750200; cv=none; b=p3ZtAfnFfL+sUKIzCdaMV/5xNWPHnyMWaRDUWqGp4HjVVBvaMwBW+/eIVvUIW9NCu45DlbfTvHenpIfKONnA+0Bz1o1ECCkipTgrYKMXfPJm4Lq8LP3eeme8pEzHOsnawB4NETRX3IOo0fTUre9PbFZyh/ZxzcD5yeKyDMtwPe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712750200; c=relaxed/simple;
	bh=h4rJ1BWUa6Fn9iMSZK/APmjQKXECH3I4VEf2yEnegm0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ad0RCuPYPro3aGScf1eHOdrlkbx2qROaCXsmYoUPCyzAeJSE9qqDIe9gRzJNkIVtOOndHzSdnTcF00KMjbfZ8zScmyY17dmQeYU8VEDPYv2IgGWA4uD/Bs0NNQQ1aKSMdV21xs1xcX8nlOh2S2Hs5yLt/w2zja+inVcPLaNtz3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3jRSI8k; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61796C433C7;
	Wed, 10 Apr 2024 11:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712750199;
	bh=h4rJ1BWUa6Fn9iMSZK/APmjQKXECH3I4VEf2yEnegm0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u3jRSI8ktYA8H+HtKWUUG2cPxJnso++uC+r0eqERopv/d/kJMUlU7hWJrMiOP6WeS
	 gMRCr8erDT1WYe1GyiCozFdVaE1iQy+QJhV2RdjbfBjuFS+XSRL9ZTnTmZC3llJvYH
	 PhyNSB7gTkWxVzmLtWtpQP3wzzH69RVPkdO1Rq/dKjUUHxsKh97onLu/qU1U6SMFF0
	 qHEjj0+dP3F/bh2Y9a/+91KqUiGUxpApg1J+Ishr/zELI+w1gh/NNi5TgTLEpINGhL
	 sVxPI841Ig6hraZyHACZefRLXvzXml8h7dkqo9iD/eKStrI0xZS2aRBta6vaS/oC6S
	 NP8l8A5mj7LNg==
Date: Wed, 10 Apr 2024 06:56:37 -0500
From: Rob Herring <robh@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: firmware: arm,scmi: Update examples for
 protocol@13
Message-ID: <20240410115637.GA4042282-robh@kernel.org>
References: <20240403111106.1110940-1-ulf.hansson@linaro.org>
 <Zg1fP57mixbKTjJf@bogus>
 <CAPDyKFpthS4eZKTTYJ=aoE=FbExD6kd_bcc_WRNLh=2BzNVHPw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPDyKFpthS4eZKTTYJ=aoE=FbExD6kd_bcc_WRNLh=2BzNVHPw@mail.gmail.com>

On Thu, Apr 04, 2024 at 12:52:08PM +0200, Ulf Hansson wrote:
> On Wed, 3 Apr 2024 at 15:53, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Wed, Apr 03, 2024 at 01:11:06PM +0200, Ulf Hansson wrote:
> > > Recently we extended the binding for protocol@13 to allow it to be modelled
> > > as a generic performance domain. In a way to promote using the new binding,
> > > let's update the examples.
> > >
> >
> > Does it make sense to keep one DVFS example with #clock-cells until we
> > mark it as deprecated ? Otherwise it may be confusing as the binding still
> > lists. Or leave some comment in the example or something, I am open for
> > suggestions.
> 
> I am certainly fine with either way!
> 
> However, if we intend to make #clock-cells deprecated down the road,
> maybe it's better to start avoiding the use of it already now. That
> said, what do you think of following up $subject patch with an update
> to Juno's dts(i) to move to #power-domains-cells too? That would mean
> we get a nice reference for how to use this too.
> 
> >
> > Other than that,
> >
> > Acked-by: Sudeep Holla <sudeep.holla@arm.com>
> 
> Are you picking this via your scmi tree, or which route is this going?

Please take via SCMI tree.

Acked-by: Rob Herring <robh@kernel.org>

