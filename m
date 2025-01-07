Return-Path: <devicetree+bounces-136194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C2ECAA042F0
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 15:44:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B58081885651
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 14:44:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 377231F37D0;
	Tue,  7 Jan 2025 14:42:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D76741F190E;
	Tue,  7 Jan 2025 14:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736260922; cv=none; b=iV0Pvst9wUtO7v8HoPbX40M4isOiGDZSrWKq6o47MJAHjMd7PLEYvuj83eyzBY20MnMoVLqfDX5nwR67Jdjhkd8liAW/PGUl6MVmUzjxIBjJEYm9A53gN7YWXdFi7WWzmuSJt6lg7IcoxvjGlwAytm8zwOJHlYS1z4EJMqwm2Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736260922; c=relaxed/simple;
	bh=wpYSL1UHSPpFPfk45/F7Zcc59XGpWsYpJkJdimXDfgA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ex9jyyzcVtTM9L9zgQaY5+BFibG/b9vf33DbIsMUHUszzCmoyjst/YXEzb18CO35zw0sluaiE/EBuFeS1Pb3wW+mRMkR7Frih7jZPXfN7FfR+UMle/FuNf8yZRAxS4m+noCgquDNgnM07429DpAgbus7CaL12l/aTaKdcdq5Z2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6E5FA1424;
	Tue,  7 Jan 2025 06:42:26 -0800 (PST)
Received: from [10.57.4.77] (unknown [10.57.4.77])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BDF0E3F59E;
	Tue,  7 Jan 2025 06:41:56 -0800 (PST)
Message-ID: <881c5084-3487-4ae2-9140-8d393e934652@arm.com>
Date: Tue, 7 Jan 2025 14:41:55 +0000
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
To: Rob Herring <robh@kernel.org>
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
 <CAL_JsqJ9y92aHUYhD9_YX8GKvZC-GioWbMr+gjcQiMA_XQ0RaQ@mail.gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
In-Reply-To: <CAL_JsqJ9y92aHUYhD9_YX8GKvZC-GioWbMr+gjcQiMA_XQ0RaQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 03/01/2025 22:26, Rob Herring wrote:
> On Fri, Jan 3, 2025 at 12:16 PM Vincenzo Frascino
> <vincenzo.frascino@arm.com> wrote:
>>
>> The Morello architecture is an experimental extension to Armv8.2-A,
>> which extends the AArch64 state with the principles proposed in
>> version 7 of the Capability Hardware Enhanced RISC Instructions
>> (CHERI) ISA.
>>
>> The Morello Platform (soc) and the Fixed Virtual Platfom (fvp) share
>> some functionalities that have conveniently been included in
>> morello.dtsi to avoid duplication.
> 
> One more thing...
> 
>> +               i2c0: i2c@1c0f0000 {
>> +                       compatible = "cdns,i2c-r1p14";
>> +                       reg = <0x0 0x1c0f0000 0x0 0x1000>;
>> +                       interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
>> +                       clocks = <&dpu_aclk>;
>> +
>> +                       #address-cells = <1>;
>> +                       #size-cells = <0>;
>> +
>> +                       status = "disabled";
>> +
>> +                       hdmi_tx: hdmi-transmitter@70 {
>> +                               compatible = "nxp,tda998x";
> 
> It is odd that you add this node here, but don't enable i2c. If this
> is shared with fvp, then enable i2c here. If it isn't, then move this
> to the soc/sdb .dts.
>

This node should be on the dts file. I had it there in v2 and I can't recall the
rationale for which I moved it here. It is clearly wrong. I will move it back in
v5.

> I'd rather see the FVP dts now rather than later so we can review how
> you split things. It's a little odd not being soc.dtsi and board.dts,
> but that's fine I think.

I do not have a complete DTS for FVP yet (I was planning to work on after this
series is merged). Is it OK if I post it with a future series and we move things
around at that stage if there is a need?

>
>> +                               reg = <0x70>;
>> +                               video-ports = <0x234501>;
>> +                               port {
>> +                                       tda998x_0_input: endpoint {
>> +                                               remote-endpoint = <&dp_pl0_out0>;
>> +                                       };
>> +                               };
>> +                       };
>> +               };

-- 
Regards,
Vincenzo


