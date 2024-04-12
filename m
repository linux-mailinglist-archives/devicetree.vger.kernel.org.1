Return-Path: <devicetree+bounces-58659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 072388A2C04
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 12:12:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B32EB2859B2
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 10:12:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F252051C4C;
	Fri, 12 Apr 2024 10:12:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EE33535DC
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 10:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712916754; cv=none; b=oqeVUZ+23TlV42yNYMXZzUgDykkQioUQz3uUIyuQ33+VPJYzkT33xWLuD7EAWardp+3WxP8syhMaCZYeAPzVtZFNMJvaqO3hYOYvBgNFIHzS/bFRjELqYFE5ewynk/eA3PeSeronGLmjHWNuUqI4+O8qy1RWQqBFG96RZyH9kwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712916754; c=relaxed/simple;
	bh=2Rv2YFc8gDQ1ndQyokCmLdr09YpcBmBsZrm8a/rpxyc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KQ4e26as587ioLKn9vo08ShYkS38DXHLO4wERC/RTplNCKYCCM4HgLsBwaVsXg79Xf1/mpWAyBu6Mbvpe5rTMZXFczY3yZp+agvN4xsLhmg0gaL8/xZTkEK7bovTXIh3iVb0Xk0po1cnsQRWVzolZc4Ko9snP6sNyztVaJOqHxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 00DC5339;
	Fri, 12 Apr 2024 03:13:02 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1E7613F64C;
	Fri, 12 Apr 2024 03:12:31 -0700 (PDT)
Date: Fri, 12 Apr 2024 11:12:28 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Nikunj Kela <quic_nkela@quicinc.com>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Trilok Soni <quic_tsoni@quicinc.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	"Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	<krzysztof.kozlowski+dt@linaro.org>,
	Vincent Guittot <vincent.guittot@linaro.org>, <robh+dt@kernel.org>,
	<conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>
Subject: Re: DT Query on "New Compatible vs New Property"
Message-ID: <ZhkJDNQk1j8koG-H@bogus>
References: <0411f99d-231a-af4b-d681-7f7748361aa3@quicinc.com>
 <904978d8-eab4-4936-86dc-b0b1e7c40256@linaro.org>
 <Zfl-Z3vm-3sQ5TN5@bogus>
 <d51ef79a-012e-4701-ac8c-4d1da1827dd8@linaro.org>
 <Zfmsjg2rb_ZMc4tA@bogus>
 <33783999-227b-4837-9924-2fd99b210cbb@linaro.org>
 <Zfm5m2zp4A06ZunW@bogus>
 <c66f280b-aa29-4b18-98f1-701f60cbc63d@quicinc.com>
 <ZhesH9ikZiy8ah6J@bogus>
 <7d1491dc-fbe8-44e0-920d-b1bda1a64890@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7d1491dc-fbe8-44e0-920d-b1bda1a64890@quicinc.com>

On Thu, Apr 11, 2024 at 08:59:53AM -0700, Nikunj Kela wrote:
> 
> On 4/11/2024 2:23 AM, Sudeep Holla wrote:
> > On Wed, Apr 10, 2024 at 09:55:24AM -0700, Nikunj Kela wrote:
> > > On 3/19/2024 9:13 AM, Sudeep Holla wrote:
> > > > On Tue, Mar 19, 2024 at 03:41:40PM +0000, Srinivas Kandagatla wrote:
> > > > > On 19/03/2024 15:17, Sudeep Holla wrote:
> > > > > > I am not debating on the implementation just to be clear. I accept changes
> > > > > > might be needed there. The $subject is all about DT bindings and what need
> > > > > > to be changes and for me nothing, just use existing bindings and if there
> > > > > > are issues there, let us discuss it with specifics.
> > > > > > 
> > > > > How can changes to dt bindings be nothing? All the resources
> > > > > clk/regulators/resets will become optional and a new power or perf domain
> > > > > will become required for each device with firmwares that support SCMI Perf.
> > > > > 
> > > > Correct, sorry to miss the point that few properties are now optional from
> > > > mandatory before. Very good point. I was so caught up with the addition of
> > > > the new "firmware controlled blah blah" property/compatible that I missed
> > > > to observe mandatory->optional as a change. Thanks for correcting me.
> > > > 
> > > If there are no more questions on this and everyone is on the same page, I
> > > would like to conclude this thread in favor of using a new DT property
> > > 'qcom,firmware-managed-resources'.
> > > 
> > This is exactly opposite to what I have advocated so far in this thread.
> > Not sure how you drew to this conclusion. Check [1] and [2] for example.
> > The point was not to have qcom specific compatibles or properties as it
> > doesn't scale well. Please chime into those if you have argument and how
> > you came to this conclusion.
> > 
> > --
> > Regards,
> > Sudeep
> > 
> > [1] https://lore.kernel.org/all/ZfMZ9ATxuvONcGpz@bogus
> > [2] https://lore.kernel.org/all/0411f99d-231a-af4b-d681-7f7748361aa3@quicinc.com
> Hi Sudeep, we had a discussion with Linaro team on this and people suggested
> that this should be a vendor specific property since different vendors might
> abstract differently.

Unless you point to some public discussion or meeting notes it is hard to
understand what was discussed and how this conclusion was drawn, definitely
not evident from the thread. Any pointers to the meeting notes ? If it was
private, just assume it didn't happen when responding on public ML threads
like these. Otherwise it adds more confusion and won't be much of a help IMO.

> Moreover, our changes are only in Qualcomm drivers so
> it made sense to use vendor specific property. That being said, if you are
> suggesting that we remove Qcom from it, I can again discuss this. I will let
> Srini and other pitch in here if they want to add more to it.

Sorry, there are lots of points made on this thread which you have not
read(missed) or not yet responded. So I suggest you to go through the thread
and then either respond or better start a new thread summarising what is
addressed so far what is not addressed, if you have responses to those
questions.

Since this has become a huge thread now, it may make it hard for people
to follow, annoy few others 😉. So I suggest to start a new thread capturing
highlights of the discussion so far.

For me, you seem to have missed how you address this on a generic USB or
some other non-Qcom IP is the main question I have repeatedly asked and
haven't received any comments on that topic. Trilok suggested that case
needs to be considered even on Qcom SoC which makes you argument that I
will first address Qcom IPs only just weak.

So at this point, I have to conclude you are not interested in addressing
that if you continue in that direction and accept that you will go ahead
with Qcom specific solution anyways. If so, I may have to skip getting
involved in these discussions in the future as I believe it may be just
waste of my time. Sorry if that's harsh, nothing personal.

--
Regards,
Sudeep

