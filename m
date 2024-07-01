Return-Path: <devicetree+bounces-81823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1740891D9C4
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 10:15:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 46A4E1C2170C
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 08:15:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51412383AB;
	Mon,  1 Jul 2024 08:15:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from trabant.uid0.hu (trabant.uid0.hu [81.0.124.200])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4DA2F9E6
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 08:15:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=81.0.124.200
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719821752; cv=none; b=jqRr5jPIr2ixMo6yOq31Rht4Wu7IGEykgQhswGrRDr4Khva7W5o8HcQZulx32plOL/nZuV+8oeUha9M0XKgF9yWL1+TRJFWLs+vFLxR1x+6LmPAdNBctffgjZpe57YdXDTcx/nblS71DvMdj8rvt2eKwVgKgUks/jYvN2ay6hw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719821752; c=relaxed/simple;
	bh=OsPWm1S6HB2sz+JzB9xSwr+fjB/oBfQNZ+BhqWyyqDA=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=KBVTAdIUEhlkF1cn/u3UQyH9jiNaSDo6hvh1wr5jszX5qUJ0UpAZKeiuC1PhcDSpbS582s18eZEd3eAS0X2yh17hEUOIEA7+AVcXVM0xvv6Qhv5K2kdAfVe+FsoyXl48sb0Ro7vgzGSmhxzqB85KDGoJzpDU3lK4KnUT+8qB4N8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=uid0.hu; spf=pass smtp.mailfrom=uid0.hu; arc=none smtp.client-ip=81.0.124.200
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=uid0.hu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=uid0.hu
Received: from catv-178-48-128-215.catv.fixed.vodafone.hu ([178.48.128.215]:60170 helo=[10.1.1.1])
	by trabant.uid0.hu with esmtpsa (Exim 4.92 #3 (Debian))
	id 1sOCCK-0003Q4-E5
	from <wigyori@uid0.hu>; Mon, 01 Jul 2024 10:15:42 +0200
Message-ID: <de10d5e3-9160-4966-bba9-5893a68f0c00@uid0.hu>
Date: Mon, 1 Jul 2024 10:15:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Zoltan Herpai <wigyori@uid0.hu>
Subject: Re: [PATCH 3/3] ARM: dts: marvell: add support for D-Link DNS-320L
To: Andrew Lunn <andrew@lunn.ch>
Cc: gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20240629113450.127561-1-wigyori@uid0.hu>
 <20240629113450.127561-3-wigyori@uid0.hu>
 <b8c1ffed-8d91-48cf-8b8c-bea4021c272b@lunn.ch>
Content-Language: en-US
In-Reply-To: <b8c1ffed-8d91-48cf-8b8c-bea4021c272b@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Andrew,

On 06/29/2024 16:34, Andrew Lunn wrote:
> It has been a long time since i reviewed a kirkwood DT
> description. Also, best practices have changed, so the example you
> copied is probably doing things which today would be classed as wrong.
>
>> +// SPDX-License-Identifier: GPL-2.0-or-later
> It is typical to use a dual license now:
>
> // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>
> However, if this is mostly Sunke Schluters work, you probably cannot
> change the license without his agreement.
That's correct, a significant portion of the DTS was taken from Sunke, 
and there is at least one other DTS with this license, so I didn't want 
to change this.

>> +/*
>> + * Device Tree file for D-Link DNS-320L
>> + *
>> + * Copyright (C) 2024, Zoltan HERPAI<wigyori@uid0.hu>
>> + * Copyright (C) 2015, Sunke Schluters<sunke-dev@schlueters.de>
>> + *
>> + * This file is based on the works of:
>> + * - Sunke Schluters<sunke-dev@schlueters.de>
>> + *   -https://github.com/scus1/dns320l/blob/master/kernel/dts/kirkwood-dns320l.dts
>> + * - Andreas Bohler<dev@aboehler.at>:
>> + *   -http://www.aboehler.at/doku/doku.php/projects:dns320l
>> + *   -http://www.aboehler.at/hg/linux-dns320l/file/ba7a60ad7687/linux-3.12/kirkwood-dns320l.dts
>> + */
>> +
>> +/dts-v1/;
>> +
>> +#include "kirkwood.dtsi"
>> +#include "kirkwood-6281.dtsi"
>> +
>> +/ {
>> +	model = "D-Link DNS-320L";
>> +	compatible = "dlink,dns320l", "marvell,kirkwood-88f6702", "marvell,kirkwood";
>> +
>> +	memory {
>> +		device_type = "memory";
>> +		reg = <0x00000000 0x10000000>;
>> +	};
>> +
>> +	chosen {
>> +		bootargs = "console=ttyS0,115200n8 earlyprintk";
>> +		stdout-path = &uart0;
> I _think_ current best practice is to make the serial port speed part
> of the stdout-path
>
> 	stdout-path = &uart0:115200n8;
>
> Also, earlyprintk is a debug flag, it should not be needed for a
> production DT file.
Indeed, I'll update these.

>> +	};
>> +
>> +	gpio-keys {
>> +		compatible = "gpio-keys";
>> +		#address-cells = <1>;
>> +		#size-cells = <0>;
>> +		pinctrl-0 = <&pmx_buttons>;
>> +		pinctrl-names = "default";
>> +
>> +		button@1 {
>> +			label = "Reset push button";
>> +			linux,code = <KEY_RESTART>;
>> +			gpios = <&gpio0 28 1>;
> Please use GPIO_ACTIVE_LOW rather than 1. Also for other places gpios
> are used.
Ack, will send a v2 with these updates - thanks for reviewing.

Regards,
Zoltan Herpai


