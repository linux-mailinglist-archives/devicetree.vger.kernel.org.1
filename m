Return-Path: <devicetree+bounces-136183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E04A0423D
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 15:24:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0BC323A72BA
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 14:20:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 326861D8A16;
	Tue,  7 Jan 2025 14:17:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C19DB1F191B;
	Tue,  7 Jan 2025 14:17:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736259436; cv=none; b=C5/6oIOjfoPtHlNGL6keCrzvzUfyla6PsXoD/8ItTWCJVYt6rhZ3VOysoMEbVBukZM4x05NcvQt7FeNSQUjdftD5p9ohdiYvXdTIB6d97W4EkisZ5qZ0L1XZaVccIPmP7SRJyGNm6di5pXB9zpBbJ/aA06iq2sNR9mCrFiyT7Wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736259436; c=relaxed/simple;
	bh=2se2gh4B44q+Guz/4GkMeEwMrIcyvX/mgD7LEDTBGHw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AvX2zks8gBXFvjIeOeEW2ZME4C/S6VzDLGos4xM8Z9K+Hnu6I+gkHTZx4o4s/yE6dGeMCG2pCV9V6vo1gRitzdjVIpxAM3D6VMXK7Crp9ZqEq9qDJk8qZZ6UdtntshZspXoMsn1b2if6nuL6Dvyn3vghyfR8J4M970+6NzjM7Lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 225F81424;
	Tue,  7 Jan 2025 06:17:39 -0800 (PST)
Received: from [10.57.4.77] (unknown [10.57.4.77])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 23D6F3F59E;
	Tue,  7 Jan 2025 06:17:09 -0800 (PST)
Message-ID: <34f9c682-8a72-491e-9dbd-fc9002496d31@arm.com>
Date: Tue, 7 Jan 2025 14:17:08 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] arm64: dts: morello: Add support for common
 functionalities
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
 <CAL_JsqLYu_z6yNA-MgKgoA=nC5ftzOEH5UNkswA_=xTJiOB0+g@mail.gmail.com>
Content-Language: en-GB
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
In-Reply-To: <CAL_JsqLYu_z6yNA-MgKgoA=nC5ftzOEH5UNkswA_=xTJiOB0+g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Rob,

Happy new year!

On 03/01/2025 22:14, Rob Herring wrote:
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
>>
>> Introduce morello.dtsi.
>>
>> Note: Morello fvp will be introduced with a future patch series.
>>
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>> ---
>>  arch/arm64/boot/dts/arm/morello.dtsi | 467 +++++++++++++++++++++++++++
>>  1 file changed, 467 insertions(+)
>>  create mode 100644 arch/arm64/boot/dts/arm/morello.dtsi
>>
>> diff --git a/arch/arm64/boot/dts/arm/morello.dtsi b/arch/arm64/boot/dts/arm/morello.dtsi
>> new file mode 100644
>> index 000000000000..0089b4f2eca7
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/arm/morello.dtsi
>> @@ -0,0 +1,467 @@
>> +// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
>> +/*
>> + * Copyright (c) 2020-2024, Arm Limited. All rights reserved.
>> + */
>> +
>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>> +
>> +/ {
>> +       interrupt-parent = <&gic>;
>> +
>> +       #address-cells = <2>;
>> +       #size-cells = <2>;
>> +
>> +       clocks {
> 
> Drop this container node.
>

Will do in v5.

>> +               soc_refclk50mhz: clock-50000000 {
>> +                       compatible = "fixed-clock";
>> +                       #clock-cells = <0>;
>> +                       clock-frequency = <50000000>;
>> +                       clock-output-names = "apb_pclk";
>> +               };
>> +
>> +               soc_uartclk: clock-50000000-uart {
> 
> There's little point to having 2 fixed clocks with no s/w controls at
> the same frequency. Drop.
> 

Ok, will use the same reference for both.

>> +                       compatible = "fixed-clock";
>> +                       #clock-cells = <0>;
>> +                       clock-frequency = <50000000>;
>> +                       clock-output-names = "uartclk";
>> +               };
>> +
>> +               soc_refclk85mhz: clock-85000000 {
>> +                       compatible = "fixed-clock";
>> +                       #clock-cells = <0>;
>> +                       clock-frequency = <85000000>;
>> +                       clock-output-names = "iofpga:aclk";
>> +               };
>> +
>> +               dpu_aclk: clock-350000000 {
>> +                       /* 77.1 MHz derived from 24 MHz reference clock */
>> +                       compatible = "fixed-clock";
>> +                       #clock-cells = <0>;
>> +                       clock-frequency = <350000000>;
>> +                       clock-output-names = "aclk";
>> +               };
>> +
>> +               dpu_pixel_clk: clock-148500000 {
>> +                       compatible = "fixed-clock";
>> +                       #clock-cells = <0>;
>> +                       clock-frequency = <148500000>;
>> +                       clock-output-names = "pxclk";
>> +               };
>> +       };
>> +
>> +       cpus {
>> +               #address-cells = <2>;
>> +               #size-cells = <0>;
>> +
>> +               cpu0: cpu@0 {
>> +                       compatible = "arm,neoverse-n1";
> 
> I'm pretty sure the N1 doesn't support CHERI/morello. Perhaps
> "arm,neoverse-n1-morello" if we want to capture what it is derived
> from and since "arm,morello" is taken already.
> 

Thank you for this, is the type of feedback I was looking for. My interpretation
of "compatible" was that it is the common denominator in between in between two
or more elements (hence I used neoverse-n1), but clearly it was a bit off.

Since the CPU core is called Rainier, we could either use "arm,ranier" or
"arm,morello-r0p1" to be in line with the SMBIOS.

What do you think?

[...]

>> +
>> +       pmu {
>> +               compatible = "arm,armv8-pmuv3";
> 
> Missing the CPU specific compatible.
>

I will add it in v5.

[...]

>> +
>> +       soc: soc {
>> +               compatible = "simple-bus";
>> +               #address-cells = <2>;
>> +               #size-cells = <2>;
>> +               interrupt-parent = <&gic>;
>> +               ranges;
>> +
>> +               dp0: display@2cc00000 {
> 
> Sort nodes by address.
> 

Ok, I will do in v5.

[...]

>> +               pcie_ctlr: pcie@28c0000000 {
>> +                       device_type = "pci";
>> +                       compatible = "pci-host-ecam-generic";
>> +                       reg = <0x28 0xC0000000 0 0x10000000>;
>> +                       ranges = <0x01000000 0x00 0x00000000 0x00 0x6f000000 0x00 0x00800000>,
>> +                                <0x02000000 0x00 0x60000000 0x00 0x60000000 0x00 0x0f000000>,
>> +                                <0x42000000 0x09 0x00000000 0x09 0x00000000 0x1f 0xc0000000>;
>> +                       bus-range = <0 255>;
> 
> Not needed unless less than this range.
> 

Ok, I will remove it in v5.

[...]

-- 
Regards,
Vincenzo


