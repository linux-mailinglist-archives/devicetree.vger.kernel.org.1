Return-Path: <devicetree+bounces-141661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E2076A21D30
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 13:34:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2425518866FC
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 12:34:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19E8A36D;
	Wed, 29 Jan 2025 12:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kF0lSQlb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6BDE184
	for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 12:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738154075; cv=none; b=Mq0ZvUSAg3S4L7PUy9f/5A00INKLTs729fPWQcKnAVXpOASC6mG05qdXczTRQoQv9HmTSJGsyEEg5jemV2tCIiC7+HPOeMJSXQkwHET5AhrHuGpjpQGyGXu+gzqETxzBA8q34130wvBmAf6nGu4gU6MS+LkvNe1h5u0JxF2FLcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738154075; c=relaxed/simple;
	bh=/xCPOxS9MHed4/6koZ+OlF34MW+zuUIEreZew4rYwzI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nWqXIBAvzBEjnPR3i7l6yv8+Tm4JQMZ98nzg4qNxSBCsjpO1zJ9+h+EoA00wTB29A3eusXNdYaPDQV/1s/pug7uP5TdOMRysilwV2J7PqId+IlGWvcYgPPOmQYoE0diPfgsTk2qeCKgdRRkX3S5cEqFPHxwQ2fcd0F9vKH4gqrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kF0lSQlb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D4A4C4CED3;
	Wed, 29 Jan 2025 12:34:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738154074;
	bh=/xCPOxS9MHed4/6koZ+OlF34MW+zuUIEreZew4rYwzI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=kF0lSQlbNkE71DP4ddlRlCkt+bRPjgErAEy6Idr8ApcO6ssMHfZnofRnQ10PxqJfN
	 pxesURtVOVWPRE28EMphRzRZgSqB+gu8Le9BvcGeoApg6PnFNU/E0v7sOhGB+ZEn4e
	 Mx4CCgnBhi60+H0N3Hmn2sRCqV/RmvhdhfFxb6upuQobrH5996YhrxGBGUOWmDS2I6
	 sCnob4CJZwq4lHgmuO+YGgaTrKcNNXqHafT8jorlIodGqiyZ7PZTW3NMuunKOyrTCZ
	 K3W0BJewMjwrPyMK6gOqgN2ZbMzwbZWd9CdS1HjYT+o5amYHE/Oz/4tJl0TY3dKFmZ
	 BgChaTEK+KTrQ==
Message-ID: <7bef8677-b002-46bc-822a-16fc975d41b1@kernel.org>
Date: Wed, 29 Jan 2025 13:34:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH] ARM: dts: socfpga: Add basic support for
 Terrasic's de10-nano
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20250128172917.4565-2-u.kleine-koenig@baylibre.com>
 <fa163bab-1461-479d-b149-4e018935ac57@kernel.org>
 <kxdipj2oktcyivl7o7mtyyacqm437jm7dpjihi7e7hcrmll6xb@5dywwnt5wpz5>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <kxdipj2oktcyivl7o7mtyyacqm437jm7dpjihi7e7hcrmll6xb@5dywwnt5wpz5>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 29/01/2025 13:19, Uwe Kleine-König wrote:
> Hello Krzysztof,
> 
> On Wed, Jan 29, 2025 at 10:27:22AM +0100, Krzysztof Kozlowski wrote:
>> On 28/01/2025 18:29, Uwe Kleine-König wrote:
>>> This dts is enough to make the board boot to Linux with the rootfs on
>>> a micro SD card.
>>>
>>> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
>>> ---
>>> diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dts
>>> new file mode 100644
>>> index 000000000000..d1f23a57a94d
>>> --- /dev/null
>>> +++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dts
>>> @@ -0,0 +1,90 @@
>>> +// SPDX-License-Identifier: GPL-2.0+
>>> +/*
>>> + * Copyright (C) 2017, Intel Corporation
>>> + *
>>> + * based on socfpga_cyclone5_de0_nano_soc.dts
>>> + */
>>> +/dts-v1/;
>>> +
>>> +#include "socfpga_cyclone5.dtsi"
>>> +#include <dt-bindings/interrupt-controller/irq.h>
>>> +#include <dt-bindings/gpio/gpio.h>
>>> +
>>> +/ {
>>> +	model = "Terasic DE10-Nano";
>>> +	compatible = "altr,socfpga-cyclone5", "altr,socfpga";
>>
>> Incorrect compatible. It's not cyclone5 board. cyclone5 is the SoC.
> 
> OK, adding "terasic,de10-nano".
> 
>> There is no altr,socfpga
> 
> What does that mean?
> `git grep \"altr,socfpga\" linus/master:arch/arm/boot` gives me 15
> matches from other boards with socfpga SoCs. If you give me a bit more
> verbose description for the problem you're pointing out here, I can work
> on that.

My bad, some poor git grep result. There is such compatible, so it is fine.

> 
>> This wasn't ever tested with bindings.
> 
> I tried
> 
> 	dt-validate -m -u Documentation/devicetree/bindings -p ~/work/kbuild/arm/Documentation/devicetree/bindings/processed-schema.json ~/work/kbuild/arm/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb

That's unusual way of running the check, but of course might work.

> 
> which emitted a bunch of warnings and after processing some of them I
> gave up because they were all triggered by the soc.dtsi file. I started

These are fine, but you introduce issues purely here.

> another try comparing the output for "my" socfpga_cyclone5_de10nano.dts
> with one for a file that only has the includes and the machine
> compatible. (Which generates 124 lines and 123 lines respectively.)
> 
> I'll work on the diff between the two for the next revision. Or would
> you recommend a different approach?
> 
>>> +	chosen {
>>> +		stdout-path = "serial0:115200n8";
>>> +	};
>>> +
>>> +	memory@0 {
>>> +		/* 1 GiB */
>>> +		device_type = "memory";
>>> +		reg = <0x0 0x40000000>;
>>> +	};
>>> +
>>> +	soc {
>>> +		fpga_axi: axi_h2f_lw_bridge@ff200000 {
>>
>> Follow DTS coding style. You just sent us something from downstream.
> 
> Indeed this is from downstream. Looking at the matching dt-validate
> output I guess just "axi@ff200000" would be appropriate?!

bus@

> 
>>> +			compatible = "simple-bus";
>>> +			reg = <0xff200000 0x00200000>;
>>> +			#address-cells = <1>;
>>> +			#size-cells = <1>;
>>
>> ranges would be after reg, but they are pointless here, no?
> 
> I thought it's "compatible", "reg" at the start, "status" at the end and
> the rest in-between in alphabetic order. What is the right ordering?

DTS coding style could be clearer here. It exactly says what is the
first, what is the second and what is the third.

> 
>> Where is the child?
> 
> I intend to add children using dt-overlays. I have a prototype here, but
> that's still to embarrassing to show.

The entire bus is in such case a bit confusing. If you have nothing
connected here in the base board, does it really exist in FPGA bitstream?



Best regards,
Krzysztof

