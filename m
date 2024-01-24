Return-Path: <devicetree+bounces-34716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAC783AB51
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 15:04:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2BAB51C21B84
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 14:04:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DE497A708;
	Wed, 24 Jan 2024 14:04:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7659622084
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 14:04:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706105057; cv=none; b=anxwTLX3RbA1N1txKL3+i+Z0iW1+EsO0h7ycf60oHzY2VoVNTlRhUGzYLh2NPpxwZL8m6BhMFCfWZY8IllCGGbv6oS9fuDvnheE/fwpsM9EN7pq2f7BkseJ9XlmjejITr20DRuoOlIJ3hTU87absortX8WV54BbBmblsXPKuIVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706105057; c=relaxed/simple;
	bh=DSzJJ6fZvRw5FFJyQD7ScT9IdC8VHnHiJP/V7YK1mlc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XOPON4zGJOhmq6/8YrIpXOeUg2RojVbR2oxKT38J33xoBPUPyn8eKf1VyhhJhoTDTEK72bc8rVcHCbk4NERjMMdTRNkoihs8AWFVkFa6j5N2M3AUR4o/1ZuCckK3+QtwU5fUxg6a1L/VCzUd3MdEvn8yjEPsPuAZwFlRPwtIMO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9D32D1FB;
	Wed, 24 Jan 2024 06:04:58 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1BE773F5A1;
	Wed, 24 Jan 2024 06:04:12 -0800 (PST)
Date: Wed, 24 Jan 2024 14:04:09 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Vincent Guittot <vincent.guittot@linaro.org>
Cc: Nikunj Kela <quic_nkela@quicinc.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>,
	srinivas.kandagatla@linaro.org, ulf.hansson@linaro.org
Subject: Re: DT Query on "New Compatible vs New Property"
Message-ID: <ZbEY2X8CfOc-vPbe@bogus>
References: <66f82e2c-0c42-4ead-93f5-2136ad478df2@linaro.org>
 <7768258d-4748-84f7-0da2-43988138e5cc@quicinc.com>
 <20240123161231.GG19029@thinkpad>
 <ZbDlLJRHu2ebdxc6@bogus>
 <20240124104530.GK4906@thinkpad>
 <ZbDuO_iV5i8mE01Q@bogus>
 <a053261e-6e05-4673-b5dd-2ce8f3c73ac9@quicinc.com>
 <ZbEHNyLE8bQlZHSZ@bogus>
 <7910de2d-6184-4f78-a286-d2e6e50c7a36@quicinc.com>
 <CAKfTPtCjR_MBO9Lh7=CU+dcFaigkbeKc27rVgCa-aEJyHyfK9A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKfTPtCjR_MBO9Lh7=CU+dcFaigkbeKc27rVgCa-aEJyHyfK9A@mail.gmail.com>

On Wed, Jan 24, 2024 at 02:38:54PM +0100, Vincent Guittot wrote:
> On Wed, 24 Jan 2024 at 14:17, Nikunj Kela <quic_nkela@quicinc.com> wrote:
> >
> >
> > On 1/24/2024 4:48 AM, Sudeep Holla wrote:
> > > On Wed, Jan 24, 2024 at 04:27:55AM -0800, Nikunj Kela wrote:
> > >> On 1/24/2024 3:02 AM, Sudeep Holla wrote:
> > >>> Not really, still puzzled may be more than before as I don't understand
> > >>> what is going on with the approach as it seem to be deviating from my
> > >>> initial understanding.
> > >>>
> > >>> May be take an example of one driver, present the DT binding and driver
> > >>> changes to make sure there is no misunderstanding from my side. But I am
> > >>> not convinced with the explanation so far.
> > >> Hi Sudeep,
> > >>
> > >> We are not using clock protocol to deal with clocks individually. We are
> > >> trying to define different perf domains for peripherals where we are
> > >> grouping clocks/regulators/interconnect bandwidth into these perf domains
> > >> and use OPP levels via SCMI perf protocol.
> > > That clarifies on what you are trying to achieve.
> > >
> > >> This is done so as to avoid individual scmi calls for these resources
> > >> hence avoiding any race conditions and minimizing the traffic between SCMI
> > >> client and server to get better KPIs.
> > > Fair enough, why can't you just use genpd perf APIs to achieve that ?
> >
> > OPP is built on top of genpd perf only and was recommended by Ulf(PM
> > maintainer from Linaro) hence we decided to use OPP APIs instead of
> > directly genpd perf API.
> >
> >
> > >
> > >> This is being planned for sa8775p platform and any subsequent platforms will
> > >> use the same approach. The idea of using perf protocol for peripherals is
> > >> new and Qualcomm is first one trying to use that.
> > > Sure.
> > >
> > >> Therefore existing peripheral drivers will require a way to distinguish between the
> > >> two different configurations. Hope this provides little more context and
> > >> insight.
> > >>
> > > While I agree this is new, use custom APIs to control standard resources
> > > is simply *VERY VERY BAD IDEA* IMO. You may be fine to have these custom
> > > API calls in qcom specific drivers. But what if this is needed in some
> > > generic IP driver. Just not scalable and why should the maintainer of
> > > such driver accept you custom API.
> >
> > Apologies if it wasn't clear but we are not using custom APIs. We are
> > using standard OPP APIs to set to opp level of the perf domain.
> > Example-dev_pm_opp_set_opp(). As mentioned above, we are following PM
> > framework maintainers recommendation to use OPP.
> >
> >
> > >
> > > So I would suggest to work towards using std framework APIs or create one
> > > if you can justify the need for it. Please stop creating custom APIs for
> > > using SCMI. It defeats the whole standardisation it is meant to provide.
> >
> > Not sure I understand what you refer to as custom APIs here. The OPP
> > APIs are not custom APIs. They are from OPP framework built on top of
> > genpd perf. [1] and [2] patch series might provide you more insight into
> > the work that Ulf did to support SCMI perf with OPP framework.
> 
> I think that you are speaking about the same thing. They plan to use
> SCMI power domain for idle states and SCMI performance domain for
> setting a performance mode. Then, the OPP library is used on top of
> perf domain to gather and manipulate the  different perf levels.
> 

Indeed, I just realise that after Nikunj's last email. Earlier to that,
it was not so clear and it sounded like some custom way. Anyways I am still
not convinced if this is something drivers need to handle with explicit
DT support for this distinction in particular.

-- 
Regards,
Sudeep

