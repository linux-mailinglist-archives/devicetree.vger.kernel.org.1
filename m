Return-Path: <devicetree+bounces-136192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A942A042A7
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 15:34:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3A78E1881733
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 14:34:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBA7B1EE7CB;
	Tue,  7 Jan 2025 14:34:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA13E1E9B00;
	Tue,  7 Jan 2025 14:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736260485; cv=none; b=VSgkjGSR16fX9xA3XCBTX9jJf+1Lmg4UWpQd8D0Nw4e1oyqlidRNFGk7yh8ICIVWk/5F0AmukuCSjPmSaxAMhANe8+LIqFFK87nyvEsh6a/KyvMLuebAK8riVKyMSUu3/rkojexI3LeXBOv8lAEQ4D409WT0ODFCiWUWedurVBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736260485; c=relaxed/simple;
	bh=NnEuU732Q2GHB9/XmZ0w1TBbyujLhtEnhhQNwBl2Ylk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pQBLUQRATZjIPvzo6HVs1b3AtTftM8mW+35sjTn/9tGlHlqvz8DYscUpgc4X1RHvwThjLS12CpFzeFOgTjQr0jH3eXrOLBHQbs5mzqe7dCPe8F0+/wA3f4HgRUvFM01JwbZ7b+ntm9j0Thyx8pHeHAQqOCrcAocKRCxetVDOd4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 520CC1424;
	Tue,  7 Jan 2025 06:35:10 -0800 (PST)
Received: from [10.57.4.77] (unknown [10.57.4.77])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 40AF73F59E;
	Tue,  7 Jan 2025 06:34:40 -0800 (PST)
Message-ID: <bb0c95b6-760d-4de1-bc28-8f82e2fc5dd5@arm.com>
Date: Tue, 7 Jan 2025 14:34:38 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] arm64: dts: morello: Add support for common
 functionalities
Content-Language: en-GB
To: Jessica Clarke <jrtc27@jrtc27.com>, Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Russell King <linux@armlinux.org.uk>
References: <20250103181623.1980433-1-vincenzo.frascino@arm.com>
 <20250103181623.1980433-3-vincenzo.frascino@arm.com>
 <CAL_JsqLYu_z6yNA-MgKgoA=nC5ftzOEH5UNkswA_=xTJiOB0+g@mail.gmail.com>
 <Z30kbmA-3h-Rhg7l@Jessicas-MacBook-Pro>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
In-Reply-To: <Z30kbmA-3h-Rhg7l@Jessicas-MacBook-Pro>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Jessica,

Thank you for your review.

On 07/01/2025 12:56, Jessica Clarke wrote:
> On Fri, Jan 03, 2025 at 04:14:31PM -0600, Rob Herring wrote:
>> On Fri, Jan 3, 2025 at 12:16 PM Vincenzo Frascino
>> <vincenzo.frascino@arm.com> wrote:
>>> +       cpus {
>>> +               #address-cells = <2>;
>>> +               #size-cells = <0>;
>>> +
>>> +               cpu0: cpu@0 {
>>> +                       compatible = "arm,neoverse-n1";
>>
>> I'm pretty sure the N1 doesn't support CHERI/morello. Perhaps
>> "arm,neoverse-n1-morello" if we want to capture what it is derived
>> from and since "arm,morello" is taken already.
> 
> Rainier is the codename of the core itself, and Morello LLVM recognises
> -mcpu=rainier not -mcpu=morello (there's -march=morello instead), so
> perhaps it should really be "arm,rainier". Though SMBIOS reports it as
> Morello-R0P1 so it may be best to use "arm,morello" here.
> 

We agree on the concept. It should either be "arm,rainier" or "arm,morello-r0p1"
if we want to capture the information of SMBIOS. When we reach consensus I will
update the patches accordingly (Please have a look at my reply to Rob).

> The real problem is that the board compatible has changed to include a
> generic "arm,morello" node, with the argument that a v2 board could
> appear. So why not instead change *that* to be something like:
> 
>   compatible = "arm,morello-sdp-v1", "arm,morello-sdp";
> 
> Then you can use "arm,morello" here for the cores.>

The name morello on its own is too overloaded of meaning if we do not specify to
what we are referring to.

> Though some of this may depend on what the FVP's DTS looks like; is it
> going to claim to be a Morello SDP, or does there need to be a common
> denominator compatible beneath that it can use?
> 

I still did not start bringing up to speed the DTS for FVP but I think that we
should distinguish in between SDP and FVP since not everything is the same,
hence it should have something similar to:

	compatible = "arm,morello-fvp", "arm,morello";

> Please CC me on future versions of this series.
> 

Will do.

> Jess

-- 
Regards,
Vincenzo


