Return-Path: <devicetree+bounces-46861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FF686B04E
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 14:28:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 09A2FB22CC7
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 13:28:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D90D14EFE0;
	Wed, 28 Feb 2024 13:28:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IE807fkp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C98C314E2CD
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 13:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709126889; cv=none; b=nqGv8pxDFM3OpIWQg5FdYP5IFqjVpQDubSdyRtgNUOP1oSTKplRCl3oxoKiCdZdK8or6xb+sD39cxy2H8PCk6mGT9aUHLJm44zg9JaH2Rb/Wa2nEPw6joVew5p6q5C6to4r+lTGGv/zy5/0FVRQXfL6LqnrqJgVlPKLZnXD/jqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709126889; c=relaxed/simple;
	bh=sQUP02yw9n/ExRojHwDFBVxQXrs8rTdCCejle9P6XeU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=i4Y3renTdxiU91Ev+9pjrE2G1rxpZpnk9EmrxLXpoOoNsEjCriOZk4QIzMwvDtfxe0qQqWN08Gl8/fSOEdNZZlfvNnynOHAupxxRdjAg0pARItGDDtwUT+BU65TN1NLo/BO/YJ2JA1AOrIPcWpOC9Pw6a4b87G/ffHAzshMxZMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IE807fkp; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-608cf2e08f9so50657717b3.0
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 05:28:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709126887; x=1709731687; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fINyfbsTy4Kdy2kYGSDa4g9IBxlv7x8oGVSyvqlcUg8=;
        b=IE807fkpPphDBFw+T+i0vqbMWzlxe4UTzw26sqnHbo5FU+J9NtEtQHyUQAAylTad9o
         KQdzwgCr6CdWD0MGUkFoSEajq1pH2nJCtnyuJVGB7Arlhbybe/92CVnnDWCxjxA23gRm
         sx5E46mecT0QkoIjBcZYpDOVVn0Pm0BUE7mdgwGUMmC/3PPn88vZ7/uqYtJE7ClRMwVD
         FtYms6XaJBpRBMqMBmiJmTMaXcfLiXy5fKd02tvc7KSR5uJkhMMzFSzKnCnTI/Y6pByx
         Z0Z9Wfq5PYRxrP8o/BqBPfZUfaPwY8hLw72FpWcxJgpbi8nTeNONJuePnE00rVPOVUXH
         r9gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709126887; x=1709731687;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fINyfbsTy4Kdy2kYGSDa4g9IBxlv7x8oGVSyvqlcUg8=;
        b=CFC5dDt3WDbtgDSr4a1gWfNuMK9SV26nR3dwgSCmQw7CC10jZZ3AZt9Q8xsLUqyx76
         +BNa3TL44f1jtid/orXIL8hbHkKXzNS5GAqWlFE3p5559xbo+nRGDCQ28/824FL3LKZl
         AtVUjKUdsDZX9HegGuGsSuzgJb/ABM6bHyGfmcis3D7hDbUZ4L6IDgcfBzSJp1lgtkMJ
         YayHyJepbWPTpV9ONzJVgsh+EpqcA8PM+lmimzzZSF28Kunx+lMrr+L70u1riFTSWeEH
         OmAxOrwMqWXTDfneGVAwduwccaqhghSnD0Q7Ef3j+zIiNvC0dtmmkjYzhr4nT3aXygu1
         e++A==
X-Forwarded-Encrypted: i=1; AJvYcCVaSDBKIksaVGw/g+8APrKcmu04iLqBrI3MEWkzBvD8bMqc23Qw615A89BK91y4IAZj8C0B5MP2qbZGLSg386OBfotQYe2lQvKyaw==
X-Gm-Message-State: AOJu0YwpDhWxAsY6Qv03OpCbbpWjstteGZWFB4pIRlZkhQzaLmC0VErk
	CQWVlvv/KXAd66RLLC/DwNBF6SE9NPbUo7t1Q5+UgVq2Hesgy/57t8tB34vFHiu6dUNcY3I6Z59
	4Ab/II0mX11daUBFM3cQoR2pVPuHlcP8k1tre6Q==
X-Google-Smtp-Source: AGHT+IFqKaykfzwfGYLJ2Etiy0PGFX2u/bI34YuaFlpekHPtMJ+/4D3vuplQBa7o21A7Nd/70Am/nOJRiwf4VQvQ9Fk=
X-Received: by 2002:a5b:651:0:b0:d80:68d1:b826 with SMTP id
 o17-20020a5b0651000000b00d8068d1b826mr2356177ybq.6.1709126886734; Wed, 28 Feb
 2024 05:28:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240123161231.GG19029@thinkpad> <ZbDlLJRHu2ebdxc6@bogus>
 <20240124104530.GK4906@thinkpad> <ZbDuO_iV5i8mE01Q@bogus> <a053261e-6e05-4673-b5dd-2ce8f3c73ac9@quicinc.com>
 <ZbEHNyLE8bQlZHSZ@bogus> <7910de2d-6184-4f78-a286-d2e6e50c7a36@quicinc.com>
 <CAKfTPtCjR_MBO9Lh7=CU+dcFaigkbeKc27rVgCa-aEJyHyfK9A@mail.gmail.com>
 <ZbEY2X8CfOc-vPbe@bogus> <16db3da8-dfdd-4e06-b348-33e9197fe18d@quicinc.com>
 <ZbFH0UE9zZQFWm8Z@bogus> <32092ee9-018f-4cfb-950e-26c69764f35a@quicinc.com> <94a62a78-961a-4286-804c-fc0b9098b8a1@quicinc.com>
In-Reply-To: <94a62a78-961a-4286-804c-fc0b9098b8a1@quicinc.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 28 Feb 2024 14:27:30 +0100
Message-ID: <CAPDyKFrL2QcB-YbE25smGgJjf3iBEsSSB4ui3V98zJKghNNhKA@mail.gmail.com>
Subject: Re: DT Query on "New Compatible vs New Property"
To: Nikunj Kela <quic_nkela@quicinc.com>, Sudeep Holla <sudeep.holla@arm.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, krzysztof.kozlowski+dt@linaro.org
Cc: Vincent Guittot <vincent.guittot@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, robh+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, 
	"Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>, srinivas.kandagatla@linaro.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 26 Feb 2024 at 15:24, Nikunj Kela <quic_nkela@quicinc.com> wrote:
>
> On 1/24/2024 9:33 AM, Nikunj Kela wrote:
> >
> > On 1/24/2024 9:24 AM, Sudeep Holla wrote:
> >> On Wed, Jan 24, 2024 at 06:28:33AM -0800, Nikunj Kela wrote:
> >>> Let me try another shot to convince you :) Currently, driver is
> >>> dealing with
> >>> clocks and regulators using individual framework APIs(e.g.
> >>> set_clk_rate,
> >>> regulator_set_voltage etc.). With defining perf to group them in OPP
> >>> APIs,
> >>> we need to now use set_opp. Therefore the driver needs to change to
> >>> use OPP
> >>> framework APIs instead of clocks/regulator APIs hence this query on
> >>> how to
> >>> distinguish the two configuration even though the hardware is same.
> >>>
> >> One option is to make dev_pm_opp_set_opp() work for both. IIUC, opp
> >> layer
> >> can deal with clocks and regulators. A quick look at
> >> dev_pm_opp_set_opp()
> >> seem to suggest that.
> > I did explore that and there are some complications due to the
> > abstraction we are trying to achieve.
> >>
> >> Another option is to try both one after another. Here I am assuming that
> >> clk_get() will fail and return error. One could check if it has
> >> pm_domain
> >> with "perf" support and use opp APIs.
> > This sounds promising so I would like to explore this further. IIUC,
> > you are suggesting that we check if genpd->set_performance_state() is
> > implemented when the clock APIs fail?
> >> I don't think we need DT changes to achieve what you have explained
> >> so far.
> >> At least not at a level of per device node compatible or extra property.
> >>
> Hi Sudeep,
>
> I would like to conclude on this thread. I was discussing this with Ulf.
> He thinks that using the domain names to identify if platform is
> abstracting clocks etc. are not scalable and sufficient. Instead he
> thinks that the change in the interface to OS(and FW) is a good
> candidate for a new compatible(even though HW is same).  Even for SCMI,
> we do change phandle in DT to SCMI protocol phandle so that is like a
> different platform altogether. Could you please let me know if you still
> think that using a different compatible in this case is not warranted.

My apologies for joining this discussion at this late state. Yet, I
just wanted to confirm what Nikunj said above.

In the end we are indeed talking about adding a new platform, as
changing the FW interface from a QCOM proprietary one into SCMI,
simply requires updates to a DTS file(s) that is platform specific.

That said, it also seems reasonable to me to use a compatible string,
to allow us to describe the update of HW for various affected devices.

Probably the best next step is to post a patch series showing how this
would really look like, as it would help us to understand more, I
think.

Kind regards
Uffe

