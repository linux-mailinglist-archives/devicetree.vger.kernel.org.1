Return-Path: <devicetree+bounces-48085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BC086FFB2
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 12:01:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C7E21F279CE
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 11:01:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CBF739AFC;
	Mon,  4 Mar 2024 11:01:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF8CA3838B
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 11:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709550086; cv=none; b=P/7LcjmZWG0ekACtJ8yjBnz6Bcng0kFOU24V2ymMkfmSg/i2p0C7k/ebWFB/WZxg65W8l8JiK0b+5xf1qf+3x+4/df5e6pVOzxzG+LuVIWZo3Dy3UrLja/jWpxv+Kk6qg1WSfEqzpQCom2RFMtqVFYUdknj1aOI47DGy6tiBDjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709550086; c=relaxed/simple;
	bh=rPnzcP1vUSuEyJVfcHS1u9ofVzQT809yxFX5Ovx8UCI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oXlZY+w4fRpXlkYgeugUjZttmGu1QFspVW5EaFYdciE40n7ggTv3P//71fmPMNGYHsHE7hXE94sBpUpu4PyJMMQ7zwGkQpDfx/TMfhRIGFWIGHzISvmv7KRhi3H6WVCmGpExEqPU7u/ZcYP1brJpwDxnmvKuljO6Y+e04dgjfNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B1DE71FB;
	Mon,  4 Mar 2024 03:01:58 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 31F003F738;
	Mon,  4 Mar 2024 03:01:20 -0800 (PST)
Date: Mon, 4 Mar 2024 11:01:17 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Nikunj Kela <quic_nkela@quicinc.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	krzysztof.kozlowski+dt@linaro.org,
	Vincent Guittot <vincent.guittot@linaro.org>, robh+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>
Subject: Re: DT Query on "New Compatible vs New Property"
Message-ID: <ZeWp_UjYfWsnEB-K@bogus>
References: <ZbFH0UE9zZQFWm8Z@bogus>
 <32092ee9-018f-4cfb-950e-26c69764f35a@quicinc.com>
 <94a62a78-961a-4286-804c-fc0b9098b8a1@quicinc.com>
 <CAPDyKFrL2QcB-YbE25smGgJjf3iBEsSSB4ui3V98zJKghNNhKA@mail.gmail.com>
 <20240228140239.gkzcytw6cmb4opja@bogus>
 <799268ac-7ffb-4b99-b037-d5bb93d37f13@linaro.org>
 <20240228160925.fcitj2yz7hisidsl@bogus>
 <CAPDyKFqEDu1KRsT2YWv7MhoosCSj_bgV4xE=-2hDaS1ZP7AkvQ@mail.gmail.com>
 <2b0a11f4-f54e-461c-91e7-8f313d91abe8@linaro.org>
 <CAPDyKFoo+-2AF096Sbn8EHP1H4Zw2+2sFnSyuq65sWGmMmXU0A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPDyKFoo+-2AF096Sbn8EHP1H4Zw2+2sFnSyuq65sWGmMmXU0A@mail.gmail.com>

On Fri, Mar 01, 2024 at 12:53:25PM +0100, Ulf Hansson wrote:
> On Wed, 28 Feb 2024 at 18:11, Srinivas Kandagatla
> <srinivas.kandagatla@linaro.org> wrote:
> >
> >
> >
> > On 28/02/2024 16:22, Ulf Hansson wrote:
> > > On Wed, 28 Feb 2024 at 17:09, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > >>
> > >> On Wed, Feb 28, 2024 at 03:20:44PM +0100, Krzysztof Kozlowski wrote:
> > >>> On 28/02/2024 15:02, Sudeep Holla wrote:
> > >>>> On Wed, Feb 28, 2024 at 02:27:30PM +0100, Ulf Hansson wrote:
> > >>>>> On Mon, 26 Feb 2024 at 15:24, Nikunj Kela <quic_nkela@quicinc.com> wrote:
> > >>>>>>
> > >>>>>> Hi Sudeep,
> > >>>>>>
> > >>>>>> I would like to conclude on this thread. I was discussing this with Ulf.
> > >>>>>> He thinks that using the domain names to identify if platform is
> > >>>>>> abstracting clocks etc. are not scalable and sufficient. Instead he
> > >>>>>> thinks that the change in the interface to OS(and FW) is a good
> > >>>>>> candidate for a new compatible(even though HW is same).  Even for SCMI,
> > >>>>>> we do change phandle in DT to SCMI protocol phandle so that is like a
> > >>>>>> different platform altogether. Could you please let me know if you still
> > >>>>>> think that using a different compatible in this case is not warranted.
> > >>>>>
> > >>>>> My apologies for joining this discussion at this late state. Yet, I
> > >>>>> just wanted to confirm what Nikunj said above.
> > >>>>>
> > >>>>> In the end we are indeed talking about adding a new platform, as
> > >>>>> changing the FW interface from a QCOM proprietary one into SCMI,
> > >>>>> simply requires updates to a DTS file(s) that is platform specific.
> > >>>>>
> > >>>>
> > >>>> The way I read this sounds like all this are platform specific and need
> > >>>> new compatible.
> > >>>>
> > >>>>> That said, it also seems reasonable to me to use a compatible string,
> > >>>>> to allow us to describe the update of HW for various affected devices.
> > >>>>>
> > >>>>
> > >>>> While I agree with the above statement, it depends on what you refer as
> > >>>> update of HW above. It is all Qcom specific and there is so much turn
> > >>>> between SoCs that this shouldn't matter but I would like to take example
> > >>>> and describe what I initially mentioned/argued against.
> > >>>>
> > >>>> Lets us assume 2 SoCs: A and B. A is old and didn't use SCMI while B is
> > >>>> new and migrated to use SCMI. Now let us assume both A and B SoCs have
> > >>>> exact same version/revision of an IP: X. Now just because B uses SCMI,
> > >>>> should X have one compatible to be used in A and another in B. That
> > >>>> doesn't sound right IMO.
> > >>>
> > >>> That's trivial to answer, because these are different SoCs. Compatibles
> > >>> are SoC specific and every SoC-IP-block needs its compatible. Rob was
> > >>> repeating this many times that versioned compatibles are discouraged.
> > >>
> > >> OK I may have confused or derailed the discussion with the mention of
> > >> "exact same version/revision" of X. This is not related versioned compatibles.
> > >> Let me try to explain it with some real example. If you look at all the
> > >> users of "arm,coresight-tpiu", they all have same compatible on all the
> > >> platforms irrespective of the clock/reset/voltage/power domain providers
> > >> on these platforms.
> > >>
> > >> E.g. on juno it is based on SCMI while on qcom-msm8974/apq8064 or
> > >> hi3660/hi6220 it is platform specific clock/power domain providers.
> > >> However all these platform have the same compatible "arm,coresight-tpiu".
> > >> That was the point I was trying to make and not related to versioned
> > >> compatible for different versions on an IP.
> > >
> > > That's perfectly fine, if that is sufficient. It would also be
> > > perfectly fine to extend it with a platform/soc specific compatible,
> > > when needed.
> > >
> > > An example could be:
> > > compatible = "qcom,sm8450-coresight-tpiu", "arm,coresight-tpiu";
> >
> > The issue is not the same as the above example.
> >
> > We already have a soc specific compatible in this case
> > ex: "qcom,sc8280xp-ufshc"
> >
> > making another compatible like "qcom,sc8280xp-ufshc-scmi" or
> > "qcom,sc8280xp-ufshc-xyz" based on how some of the resources (clks,
> > regulators) are provided in bindings does not really make sense.
> >
> > Fact is that we are representing the same IP block.
> >
> > AFAIU, we should go with same compatible irrespective of how the
> > resourcing needs are satisfied.
> 
> I get your point. Nevertheless, we need to create a new platform (new
> DTS file), as we are changing the FW interface to SCMI. That means the
> toplevel compatible for the platform will be a new one
> (Documentation/devicetree/bindings/arm/qcom.yaml).
>

While I don't understand the details of the above mentioned platform,
it should be a blanket rule that the toplevel compatible for the platform
has to be new.

Check
arch/arm64/boot/dts/arm/juno.dts
arch/arm64/boot/dts/arm/juno-scmi.dtsi
arch/arm64/boot/dts/arm/juno-scmi.dts

One is with old firmware interface and -scmi is with SCMI. No new top
level compatible change is needed. I understand it was switch from one
interface to the another and not like Qcom platforms which is moving
from in-kernel solution to firmware solution. But the general rule applies
here as well unless there are specific reasons for needing that exception.
I am not against it or ruling that out, just curious to understand them.

--
Regards,
Sudeep

