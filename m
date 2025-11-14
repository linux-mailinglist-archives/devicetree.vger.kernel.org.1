Return-Path: <devicetree+bounces-238545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7FAC5C380
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:20:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id AAD55359573
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 09:13:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C0E03019A2;
	Fri, 14 Nov 2025 09:13:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FB563016F5
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 09:13:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763111607; cv=none; b=bvibA7R2P68P1Z6GGi3cP6e0fz0ZZ4p7q8OfdbyFA1rgp2QYrGYV/MoFpciYqT0I97acBKNuJsaKeTTWNoB+TOYZh48fj90hml/kOmorcmYn8V6TuUW3r1jjuqoW+RVTdUo9T0fUpCmmkQRZ/gHEfrAtwenU9I1QUc7FwDCvZi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763111607; c=relaxed/simple;
	bh=6LrMT6fLj+iv1yLZb8ItSUp5jt/lmz6XNCB2t0q+WHE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RJ3vyjJdocVa9DgwpiNPKF1a+OCDSbCfLFkRAEEZ0DG/7idgtqmMLV4GpfLS+gqM7taIclOqkDAdIKw2knNHPEYLP0vVZGAuKqBNXD/dxD3MHlK5C0ikgEyQ0+RL00dz4QojWC/dQX/XztAoHclMndhH5tSJlRr9yNBesv1TBBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vJprv-00042R-Pw; Fri, 14 Nov 2025 10:13:23 +0100
Message-ID: <806aa26a-9987-4962-892b-281c98ea2cc3@pengutronix.de>
Date: Fri, 14 Nov 2025 10:13:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: SoC-specific device tree aliases?
To: Rob Herring <robh@kernel.org>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree-spec@vger.kernel.org,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, quentin.schulz@cherry.de
References: <ebc08400-c16d-4ed0-b487-9aabe13bbf0f@pengutronix.de>
 <CAL_JsqKHqEtYoSuoLd=tR5B+P-_nDyOfpqEUZ_f=ws3yt5qORw@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <CAL_JsqKHqEtYoSuoLd=tR5B+P-_nDyOfpqEUZ_f=ws3yt5qORw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hi Rob,

On 11/13/25 7:04 PM, Rob Herring wrote:
> On Thu, Nov 13, 2025 at 2:29 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>
>> Hello,
>>
>> With /chosen/bootsource now part of dt-schema, I would like to raise a
>> related point: The need for SoC-specific device tree aliases.
>>
>> For many SoCs, there is a canonical numbering for peripherals; it's used
>> in the datasheet and BootROMs often makes use of it at runtime to report
>> the bootsource as a pair:
>>
>>   - One value to enumerate type of boot medium (e.g. mmc, spi-nor..)
>>   - Another value that describes which instance (e.g. SDHC1, SPI3, ...)
>>
>> Some examples, where this is the case, are AT91, STM32MP or i.MX.
>>
>> barebox has traditionally used /aliases to translate BootROM information
>> to a device tree node to fixup /chosen/bootsource.
> 
> So bootsource will be populated "mmc0" or "spinor1" for example?

It will be populated by the full device tree node path:

barebox$ of_diff /mnt/nfs/boot/imx8mp-tqma8mpql-mba8mpxl.dtb +  # to show fixups
chosen {
+         bootsource = "/soc@0/bus@30800000/mmc@30b50000";
+         reset-source = "POR";
+         reset-source-device = "/soc@0/bus@30800000/i2c@30a20000/pmic@25";
};
[...]

>> This doesn't work out for many newer SoC support, because of different
>> expectations: For upstream, aliases are relevant to a board, while
>> barebox traditionally expected them to be SoC-specific (because they
>> used to be on i.MX, probably).
> 
> But usually the numbering follows the SoC numbering. Sometimes it
> follows the PCB numbering, but I think that's mainly serial ports.
> I've certainly steered people away from vendor specific instance
> numbering properties towards aliases (if the need can't be eliminated
> entirely).
> 
> The board specific part I think is more that the board defines what
> devices are present and not present. It would be weird to have a
> serial3 alias when that's not wired up. And board .dts files are going
> to forget to remove it. Though I guess it is somewhat harmless.

I think differing from the established numbering in SoC datasheet and as
Heiko correctly notes most schematics is weirder.

> I think the real change here is it would make aliases required when
> currently they aren't really. Though I guess populating bootsource is
> entirely optional?

Yes, of course. If the bootloader doesn't have enough information to
resolve the bootsource, then it will just be missing.

I looked at the first 10 matches for of_alias_get_id in drivers/ and
6 from them used the alias as more than just ID, so renumbering would
actually break them.

Such driver could also benefit if we had a mechanism to unambiguously
represent SoC numbering in the device tree.

Cheers,
Ahmad

> 
> Rob
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |


