Return-Path: <devicetree+bounces-34707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4DF83AA46
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 13:49:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CDAE91C20B8D
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 12:49:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCE1577639;
	Wed, 24 Jan 2024 12:49:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E4FC77634
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 12:48:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706100541; cv=none; b=JLdxjhQr3aWkrf6fLZE3xcwm5hxoeS/nT2EZmIAOKXXDUeRTSh0JwVxX+etipNQkHdqrEWdD7tDS9wnf8C9eZx85yvGKglc2TKM/hBA+y3Ln8vGuXzHn/lqHKzPP2ZfdeGroymRzf+upFBgjvpLDkB962DxotEUUN9CZgrE7K3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706100541; c=relaxed/simple;
	bh=smhRY3ly2cixEy4YTzZci6eQVsrlsFAgpbVwWXBPsBc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iD73e+VCRbWIjlTdzhlM29+oX1stXJFI8bWS0vhNTDLSvynNooBHdkCscUfl343YeH1YOC5QXUS6h4UoR5Jjnxdjq1Rep5Twrd9Ady5ovyu99BC93wwQM66NdveLUJ/C717sF8Chu6AzDEeDZojg2kUGQbRMru484M4j0owb67Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 138B11FB;
	Wed, 24 Jan 2024 04:49:44 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7F5CD3F5A1;
	Wed, 24 Jan 2024 04:48:57 -0800 (PST)
Date: Wed, 24 Jan 2024 12:48:55 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Nikunj Kela <quic_nkela@quicinc.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	<robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>,
	<srinivas.kandagatla@linaro.org>, <vincent.guittot@linaro.org>,
	<ulf.hansson@linaro.org>
Subject: Re: DT Query on "New Compatible vs New Property"
Message-ID: <ZbEHNyLE8bQlZHSZ@bogus>
References: <82115165-6089-4214-b47b-2c2c0dfb8c66@linaro.org>
 <1935cb82-648c-f079-8852-d461dc9f8609@quicinc.com>
 <20231214061742.GG2938@thinkpad>
 <66f82e2c-0c42-4ead-93f5-2136ad478df2@linaro.org>
 <7768258d-4748-84f7-0da2-43988138e5cc@quicinc.com>
 <20240123161231.GG19029@thinkpad>
 <ZbDlLJRHu2ebdxc6@bogus>
 <20240124104530.GK4906@thinkpad>
 <ZbDuO_iV5i8mE01Q@bogus>
 <a053261e-6e05-4673-b5dd-2ce8f3c73ac9@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a053261e-6e05-4673-b5dd-2ce8f3c73ac9@quicinc.com>

On Wed, Jan 24, 2024 at 04:27:55AM -0800, Nikunj Kela wrote:
> 
> On 1/24/2024 3:02 AM, Sudeep Holla wrote:
> > Not really, still puzzled may be more than before as I don't understand
> > what is going on with the approach as it seem to be deviating from my
> > initial understanding.
> > 
> > May be take an example of one driver, present the DT binding and driver
> > changes to make sure there is no misunderstanding from my side. But I am
> > not convinced with the explanation so far.
> 
> Hi Sudeep,
> 
> We are not using clock protocol to deal with clocks individually. We are
> trying to define different perf domains for peripherals where we are
> grouping clocks/regulators/interconnect bandwidth into these perf domains
> and use OPP levels via SCMI perf protocol.

That clarifies on what you are trying to achieve.

> This is done so as to avoid individual scmi calls for these resources
> hence avoiding any race conditions and minimizing the traffic between SCMI
> client and server to get better KPIs.

Fair enough, why can't you just use genpd perf APIs to achieve that ?

> This is being planned for sa8775p platform and any subsequent platforms will
> use the same approach. The idea of using perf protocol for peripherals is
> new and Qualcomm is first one trying to use that.

Sure.

> Therefore existing peripheral drivers will require a way to distinguish between the
> two different configurations. Hope this provides little more context and
> insight.
>

While I agree this is new, use custom APIs to control standard resources
is simply *VERY VERY BAD IDEA* IMO. You may be fine to have these custom
API calls in qcom specific drivers. But what if this is needed in some
generic IP driver. Just not scalable and why should the maintainer of
such driver accept you custom API.

So I would suggest to work towards using std framework APIs or create one
if you can justify the need for it. Please stop creating custom APIs for
using SCMI. It defeats the whole standardisation it is meant to provide.

-- 
Regards,
Sudeep

