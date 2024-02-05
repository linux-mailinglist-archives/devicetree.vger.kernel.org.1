Return-Path: <devicetree+bounces-38630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B3405849CB7
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 15:14:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D71F41C22C98
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 14:14:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B7A528DD0;
	Mon,  5 Feb 2024 14:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="OWGXeHac"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C75F24B35;
	Mon,  5 Feb 2024 14:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.249
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707142390; cv=none; b=KVrDjZLNJST4WAt5RPc0YFdg7VdV4ETPj1LAz7yTo6O09avQFyKXJRzDRKn1GLutVXjgV5TfqjZ4eqL1ehuLiZZHcAalreCTGomYITTVU45t9gXnpoPDviD3e5DJfQN9dUprpS+6oVSAVjLBx1LUw/e1vzqhHJvEJRph2up8sSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707142390; c=relaxed/simple;
	bh=Hi8wZwCud4mhV0w2TuyWLR03k6FBUKCj+AHEjVG6Jp4=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e45BxVKZeP+4mA7ssv8feFHFvvvkR/CqTt/LR/wf6nAQWAK8jI6DujHoIgJuYgBAHVToh9IM9krfxnz9aVRaqsjpVCD+VZIDdklz3nS/ZSSyc9pSIZKSGOHR7hEgIoWh2I8D5oyCwuEF4NpE5RBLw3utBTKd2Q/6JuX3UNgeKDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=OWGXeHac; arc=none smtp.client-ip=198.47.23.249
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 415ECuQB130717;
	Mon, 5 Feb 2024 08:12:56 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1707142376;
	bh=BAI8eu9V2b7DZkyRp5PokTcyumX/wQVTZ0C2zBeEpmw=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=OWGXeHac6O42zXEFSbFFN1ctU0EU0XMp9+Z7eaVggKrDltWAZGU5QjW847gip3UGf
	 QmHDDMolVyaovjyiRzlnnKfRMihqJI3iK14xP/c1Y6C6BCE7NKGAJfWg+SbPNo78gh
	 0C5RM+KzTYtNXSjtA4xjudjlateV1ycVfC986LcA=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 415ECu5e014515
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 5 Feb 2024 08:12:56 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 5
 Feb 2024 08:12:55 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 5 Feb 2024 08:12:55 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 415ECtgD060316;
	Mon, 5 Feb 2024 08:12:55 -0600
Date: Mon, 5 Feb 2024 08:12:55 -0600
From: Nishanth Menon <nm@ti.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
CC: Brandon Brnich <b-brnich@ti.com>, Nas Chung <nas.chung@chipsnmedia.com>,
        Jackson Lee <jackson.lee@chipsnmedia.com>,
        Mauro Carvalho Chehab
	<mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, <linux-media@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Darren
 Etheridge <detheridge@ti.com>
Subject: Re: [PATCH v2] dt-bindings: media: Add sram-size Property for Wave5
Message-ID: <20240205141255.z5kybm42qld44tdz@portfolio>
References: <20240201184238.2542695-1-b-brnich@ti.com>
 <1209b7cf-5be2-4107-aa6b-d67a32ea3737@linaro.org>
 <20240202125257.p4astjuxpzr5ltjs@dragster>
 <8091a8cf-c1c0-49b0-b136-1ad0d185aa6a@linaro.org>
 <20240202155813.szxvi7bfp5xh7rvw@babble>
 <adfef53c-d64e-4855-ab61-101b6fa419e5@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <adfef53c-d64e-4855-ab61-101b6fa419e5@linaro.org>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 17:08-20240202, Krzysztof Kozlowski wrote:
> On 02/02/2024 16:58, Nishanth Menon wrote:
> > On 14:56-20240202, Krzysztof Kozlowski wrote:
> >> On 02/02/2024 13:52, Nishanth Menon wrote:
> >>> On 11:47-20240202, Krzysztof Kozlowski wrote:
> >>>> On 01/02/2024 19:42, Brandon Brnich wrote:
> >>>>> Wave521c has capability to use SRAM carveout to store reference data with
> >>>>> purpose of reducing memory bandwidth. To properly use this pool, the driver
> >>>>> expects to have an sram and sram-size node. Without sram-size node, driver
> >>>>> will default value to zero, making sram node irrelevant.
> >>>>
> >>>> I am sorry, but what driver expects should not be rationale for new
> >>>> property. This justification suggests clearly it is not a property for DT.
> >>>>
> >>>
> >>> Yup, the argumentation in the commit message is from the wrong
> >>> perspective. bindings are OS agnostic hardware description, and what
> >>> driver does with the description is driver's problem.
> >>>
> >>> I will at least paraphrase my understanding:
> >>> In this case, however, the hardware block will limp along with
> >>> the usage of DDR (as is the current description), due to the
> >>> latencies involved for DDR accesses. However, the hardware block
> >>> has capability to use a substantially lower latency SRAM to provide
> >>> proper performance and hence for example, deal with higher resolution
> >>> data streams. This SRAM is instantiated at SoC level rather than
> >>> embedded within the hardware block itself.
> >>
> >> That sounds like OS policy. Why would different boards with the same
> >> component have this set differently? Based on amount of available
> >> memory? This, I believe, is runtime configuration because it might
> >> depend on user-space you run. Based on purpose (e.g. optimize for
> >> decoding or general usage)? Again, run-time because same hardware board
> >> can be used for different purposes.
> >>
> > 
> > Why is this OS policy? It is a hardware capability.
> 
> How amount of SRAM size is hardware capability? Each hardware can work
> probably with 1, 2 or 100 pages.
> 
> > Traditionally
> > many similar hardware blocks would have allocated local SRAM for
> > worst case inside the hardware block itself and don't need to use
> > DDR in the first place. However, for this hardware block, it has
> > capability to use some part of one of the many SRAM blocks in the SoC,
> > not be shared for some part of the system - so from a hardware
> > description perspective, we will need to call that out as to which
> > SRAM is available for the hardware block.
> 
> Just because more than one device wants some memory, does not mean this
> is hardware property. Drivers can ask how much memory available there
> is. OS knows how many users of memory there is, so knows how much to
> allocate for each device.
> 
> > 
> > Why would different boards need this differently? simply because
> > different cameras have different resolution and framerates - and you
> > dont want to pay the worst case sram penalty for all product
> > configuration.
> 
> Choice of resolution and framerate is runtime choice or use-case
> dependent, not board level configuration, therefore amount of SRAM size
> to use is as well.

I am arguing this is similar to what we have for remote-procs. Yes,
usecases usage come to a conclusion that sram size X is needed. Sure.
Lets even argue that sram = <&sram> has X+100 bytes available, so as
far as allocator is concerned, it can allocate. But how does the driver
know that 1k of that sram is already used by a remote core or some other
function?

This is no different from a remote proc usecase, following which, I
wonder if "memory-region" is the right way to describe this usage? That
would be a very specific bucket that is made available to the driver.
And I'd say sram and memory-region are two mutually exclusive option?

> 
> > 
> > Further, Linux is not the only thing that runs on these SoCs.. these are
> > mixed systems with autonomous operations of uC cores who may or maynot
> > (typically not) even need to communicate with MPU to state which part of
> > resource they are hogging (hence the board level definition).
> 
> OK that could be the case but I could also say choice of RTOS or any
> other is also board-independent.
-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

