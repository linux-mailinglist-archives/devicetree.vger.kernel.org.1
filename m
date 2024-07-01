Return-Path: <devicetree+bounces-81958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A088791E0B8
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 15:29:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2C9F11F21095
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 13:29:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A3F515E5AB;
	Mon,  1 Jul 2024 13:29:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQBRTvjf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2595446525
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 13:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719840569; cv=none; b=WpNePQeHBB7+bgrZs0VYtH+uvBg6HRm95qtvQfBevVmxSdJGbSrokTvHwBVVYUkUbUM+mlwQL3hdOMZcz/dNnFsn93qb+1Yhq2ZiOVTwdAeVwMK46oo3EJuFpHW8Zd3m5tjym2uuPAEOdB/M7Av1YtzVoh3F3+K9fnVp9/TtZN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719840569; c=relaxed/simple;
	bh=jaZdLdbdsuT6CSyzIJRZ5TzPxqN66zdO7jFcKdLse7A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C464TuoFnjOqS03pfZJjIzPsCKApogedFIJrEsjxSU7sYySS0upNseKWQNt+xnXN2jjsuSGoIzOkZJVxbmePM4P8B9BNF5Rm4Fb6W0u4YqG5bl2q6M7hy0JJrhaPD+gb1HQb0mKDOaSx2prhKj9QB3q6/w6mo8BMpBgRD/cevHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQBRTvjf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FD20C116B1;
	Mon,  1 Jul 2024 13:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719840568;
	bh=jaZdLdbdsuT6CSyzIJRZ5TzPxqN66zdO7jFcKdLse7A=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=GQBRTvjf2JrtNZi2zy4nLydQNtlh3jp/qZsdo5lojbq6hKc6ywMCS8JroMbmQFtnU
	 8eR3W26V9e4BlRq12XoMX4Fi2UVOYWBhXMKn/nDkkGzn7UgWDTD/QlktYizudV34xq
	 bKU1mP8RSrdKNAKG5pQDlEyy6UL3YIS7H8+p4DYYJp2Dp7uaS0h1Ouw74oqlLUMBzp
	 JKVxUqqX0yPQM4/yPKbFRtTMErXJJgCIvv+hJdTc/AMdwRskXv94iGVcHyI7b559C0
	 vM5goMWxj3ibZdCr5GKQgQAa0OfXk6oQFOz/akYtYSElaoLQjqrS90RgggwmmW6bj2
	 noYWDI2eKyj3Q==
Message-ID: <9204b028-736b-424f-8f3c-085de5927aec@kernel.org>
Date: Mon, 1 Jul 2024 15:29:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] ARM: dts: marvell: add support for D-Link DNS-320L
To: Andrew Lunn <andrew@lunn.ch>
Cc: Zoltan HERPAI <wigyori@uid0.hu>, gregory.clement@bootlin.com,
 sebastian.hesselbarth@gmail.com, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20240629113450.127561-1-wigyori@uid0.hu>
 <20240629113450.127561-3-wigyori@uid0.hu>
 <b55a888d-9e64-40fb-9d78-26703835d1e6@kernel.org>
 <8632249f-331b-4045-bfae-78f90907e666@lunn.ch>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <8632249f-331b-4045-bfae-78f90907e666@lunn.ch>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 01/07/2024 15:25, Andrew Lunn wrote:
> On Mon, Jul 01, 2024 at 08:01:46AM +0200, Krzysztof Kozlowski wrote:
>> On 29/06/2024 13:34, Zoltan HERPAI wrote:
> 
>>> +++ b/arch/arm/boot/dts/marvell/kirkwood-dns320l.dts
>>> @@ -0,0 +1,197 @@
>>> +// SPDX-License-Identifier: GPL-2.0-or-later
>>> +/*
>>> + * Device Tree file for D-Link DNS-320L
>>> + *
>>> + * Copyright (C) 2024, Zoltan HERPAI <wigyori@uid0.hu>
>>> + * Copyright (C) 2015, Sunke Schluters <sunke-dev@schlueters.de>
>>> + *
>>> + * This file is based on the works of:
>>> + * - Sunke Schluters <sunke-dev@schlueters.de>
>>> + *   - https://github.com/scus1/dns320l/blob/master/kernel/dts/kirkwood-dns320l.dts
>>> + * - Andreas Bohler <dev@aboehler.at>:
>>> + *   - http://www.aboehler.at/doku/doku.php/projects:dns320l
>>> + *   - http://www.aboehler.at/hg/linux-dns320l/file/ba7a60ad7687/linux-3.12/kirkwood-dns320l.dts
>>> + */
>>> +
>>> +/dts-v1/;
>>> +
>>> +#include "kirkwood.dtsi"
>>> +#include "kirkwood-6281.dtsi"
>>> +
>>> +/ {
>>> +	model = "D-Link DNS-320L";
>>> +	compatible = "dlink,dns320l", "marvell,kirkwood-88f6702", "marvell,kirkwood";
>>> +
>>> +	memory {
>>> +		device_type = "memory";
>>> +		reg = <0x00000000 0x10000000>;
>>> +	};
>>> +
>>> +	chosen {
>>> +		bootargs = "console=ttyS0,115200n8 earlyprintk";
>>> +		stdout-path = &uart0;
>>> +	};
>>> +
>>> +	gpio-keys {
>>> +		compatible = "gpio-keys";
>>> +		#address-cells = <1>;
>>> +		#size-cells = <0>;
>>
>> Nope, these cannot be there.
> 
> Depends. The kernel, which is what really matters, is happy with them
> there. Have a look at all the other kirkwood dts files.

They cannot be here because the binding does not allow it. They are
redundant though, in a way that kernel will work.

> 
>> It does not look like you tested the DTS against bindings. Please run
>> `make dtbs_check W=1` (see
>> Documentation/devicetree/bindings/writing-schema.rst or
>> https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
>> for instructions).
> 
> I suspect that is not going to be easy to interpret. kirkwood is very
> old, much older than the YAML descriptions. DT descriptions of this
> age were considered correct if the kernel understood them, and the
> kernel is much more flexible than the YAML bindings. As a result,
> there are going to be a huge number of warnings, and it will take a
> lot of skill to pick out real warning which can be fixed from the
> noise. Also, nobody really cares, because these devices have been out
> of production for a decade. Nobody is going to clean up the DT files.

One can just read the binding. Is there address/size cells?

That's true that you need cleaned up platform to make efficient use of
the tools, but one can test one particular schema which would print just
limited amount of bindings.

> 
>>> +		pinctrl-0 = <&pmx_buttons>;
>>> +		pinctrl-names = "default";
>>> +
>>> +		button@1 {
>>> +			label = "Reset push button";
>>> +			linux,code = <KEY_RESTART>;
>>> +			gpios = <&gpio0 28 1>;
>>> +		};
>>> +
>>> +		button@2 {
>>> +			label = "USB unmount button";
>>> +			linux,code = <KEY_EJECTCD>;
>>> +			gpios = <&gpio0 27 1>;
>>> +		};
>>> +	};
>>> +
>>> +	gpio-leds {
>>> +		compatible = "gpio-leds";
>>> +		pinctrl-0 = <&pmx_leds>;
>>> +		pinctrl-names = "default";
>>> +
>>> +		blue-usb {
>>
>> It does not look like you tested the DTS against bindings. Please run
>> `make dtbs_check W=1` (see
>> Documentation/devicetree/bindings/writing-schema.rst or
>> https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
>> for instructions).
> 
>>> +	ocp@f1000000 {
>>
>> Why you are not overriding by label/phandle?
> 
> Look at the old .dts files. That is the way it was done 10 years
> ago. This is uniform with other kirkwood .dts files. There is
> something to be said for being uniform with other files of the same
> sort.

That's ok.

> 

Best regards,
Krzysztof


