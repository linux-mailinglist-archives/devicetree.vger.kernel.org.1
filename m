Return-Path: <devicetree+bounces-34715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2E383AB4D
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 15:01:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BCAE11C297E1
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 14:01:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7CD277F38;
	Wed, 24 Jan 2024 14:01:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D65C22084
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 14:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706104903; cv=none; b=okxfobGqfE+pgbu1i4e3u/CBIMrrs9oNDkfYoGY6EKewOEyYOw/5db2844u5iWsKHgWrtvB17/JsR5/IwycjXF6d091RAUJF8mT8Fe5al/rzysvz6WuxrVJ1qCc0BehYS1iTfepdlXktF2oyN43iJt6J6GhzJxR3bHv8OJARW4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706104903; c=relaxed/simple;
	bh=XO0zbCxcvawPyab3ap25uaGaxL3B/PphZ30HWINPtdE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Mnc9PSatcwTRZifCpzbjzF9exHmPe80uJdEza600smtqK6uh+GfMY2b8IkVqeuvFXpokMqF7kpYOxltwi5UKu7vgR0DadFJv2DXVP2YD9uvu+sokqOhzsC9wWmhXJpbRxQV70enGktZqciEgkw8p3vpS6O3CJ9C2wa+4oUH5R4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E035B1FB;
	Wed, 24 Jan 2024 06:02:22 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5ECE63F5A1;
	Wed, 24 Jan 2024 06:01:36 -0800 (PST)
Date: Wed, 24 Jan 2024 14:01:33 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Nikunj Kela <quic_nkela@quicinc.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	"Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>,
	Sudeep Holla <sudeep.holla@arm.com>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<devicetree@vger.kernel.org>,
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>,
	<srinivas.kandagatla@linaro.org>, <vincent.guittot@linaro.org>,
	<ulf.hansson@linaro.org>
Subject: Re: DT Query on "New Compatible vs New Property"
Message-ID: <ZbEYPU0JWP-oHG0o@bogus>
References: <20231214061742.GG2938@thinkpad>
 <66f82e2c-0c42-4ead-93f5-2136ad478df2@linaro.org>
 <7768258d-4748-84f7-0da2-43988138e5cc@quicinc.com>
 <20240123161231.GG19029@thinkpad>
 <ZbDlLJRHu2ebdxc6@bogus>
 <20240124104530.GK4906@thinkpad>
 <ZbDuO_iV5i8mE01Q@bogus>
 <a053261e-6e05-4673-b5dd-2ce8f3c73ac9@quicinc.com>
 <ZbEHNyLE8bQlZHSZ@bogus>
 <7910de2d-6184-4f78-a286-d2e6e50c7a36@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7910de2d-6184-4f78-a286-d2e6e50c7a36@quicinc.com>

On Wed, Jan 24, 2024 at 05:17:09AM -0800, Nikunj Kela wrote:
> 
> On 1/24/2024 4:48 AM, Sudeep Holla wrote:
> > On Wed, Jan 24, 2024 at 04:27:55AM -0800, Nikunj Kela wrote:
> > > On 1/24/2024 3:02 AM, Sudeep Holla wrote:
> > > > Not really, still puzzled may be more than before as I don't understand
> > > > what is going on with the approach as it seem to be deviating from my
> > > > initial understanding.
> > > > 
> > > > May be take an example of one driver, present the DT binding and driver
> > > > changes to make sure there is no misunderstanding from my side. But I am
> > > > not convinced with the explanation so far.
> > > Hi Sudeep,
> > > 
> > > We are not using clock protocol to deal with clocks individually. We are
> > > trying to define different perf domains for peripherals where we are
> > > grouping clocks/regulators/interconnect bandwidth into these perf domains
> > > and use OPP levels via SCMI perf protocol.
> > That clarifies on what you are trying to achieve.
> > 
> > > This is done so as to avoid individual scmi calls for these resources
> > > hence avoiding any race conditions and minimizing the traffic between SCMI
> > > client and server to get better KPIs.
> > Fair enough, why can't you just use genpd perf APIs to achieve that ?
> 
> OPP is built on top of genpd perf only and was recommended by Ulf(PM
> maintainer from Linaro) hence we decided to use OPP APIs instead of directly
> genpd perf API.
> 
> 
> > 
> > > This is being planned for sa8775p platform and any subsequent platforms will
> > > use the same approach. The idea of using perf protocol for peripherals is
> > > new and Qualcomm is first one trying to use that.
> > Sure.
> > 
> > > Therefore existing peripheral drivers will require a way to distinguish between the
> > > two different configurations. Hope this provides little more context and
> > > insight.
> > > 
> > While I agree this is new, use custom APIs to control standard resources
> > is simply *VERY VERY BAD IDEA* IMO. You may be fine to have these custom
> > API calls in qcom specific drivers. But what if this is needed in some
> > generic IP driver. Just not scalable and why should the maintainer of
> > such driver accept you custom API.
> 
> Apologies if it wasn't clear but we are not using custom APIs. We are using
> standard OPP APIs to set to opp level of the perf domain.
> Example-dev_pm_opp_set_opp(). As mentioned above, we are following PM
> framework maintainers recommendation to use OPP.
>

Right, this is std API, but the way it was explained before seemed like a
custom API that builds and sends SCMI command and hence the objection.

I assume dev_pm_opp_set_opp() uses the attached genpd perf domain to make
the request, so it is fine.

> > 
> > So I would suggest to work towards using std framework APIs or create one
> > if you can justify the need for it. Please stop creating custom APIs for
> > using SCMI. It defeats the whole standardisation it is meant to provide.
> 
> Not sure I understand what you refer to as custom APIs here. The OPP APIs
> are not custom APIs. They are from OPP framework built on top of genpd perf.
> [1] and [2] patch series might provide you more insight into the work that
> Ulf did to support SCMI perf with OPP framework.
> 

As mentioned above, agreed. It was not clear before and it was explained as
if you are using custom methods.

Anyways, why do you need know what is the backend provider if you just
use this dev_pm_opp_set_opp() unconditionally. That part is still not clear.
Things like this should be handled without any explicit DT changes IMO, but
happy to hear if I am missing something.

-- 
Regards,
Sudeep

