Return-Path: <devicetree+bounces-237993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A9073C564EB
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 09:39:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 658134E5834
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 08:29:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C81A3271EB;
	Thu, 13 Nov 2025 08:29:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D2A7280329
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 08:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763022544; cv=none; b=NbyHB+pQBwqCklySXxLzZe+4D0aJ6hFgvD19b6g181+5khM/ZCAlwxjRC1OLbJMh3BZC8FZk1UYdiIvi4/zv29jTmP/A6Hebdh0si+q5yZ+Rdr1McOXaKPzlwgGyV7+zRLyMtC5IrB0H7FLiS4nImSiKhQRx5tvPmJekGuS0eL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763022544; c=relaxed/simple;
	bh=WkwkFGhjSe/RTTW/9W8KFbpvM90IQfQ0/X6XqByt9+g=;
	h=Message-ID:Date:MIME-Version:From:To:Cc:Subject:Content-Type; b=RbPlPDXsbwE48OknLyseb6kVvQiCwdgR0tXSFYnNPH0ibXWnWXoG27fdku8uqHWnh+7HrKzUNkjJlXvGUutRvXmvYcUdstq44ecE/S+3x3Aeohk55fhshNE1MbsKy4CpaMSFD31KhWwgByoVjO8MjRFtyijknxUczfjz+XC9dCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vJShN-0007EK-Ij; Thu, 13 Nov 2025 09:28:57 +0100
Message-ID: <ebc08400-c16d-4ed0-b487-9aabe13bbf0f@pengutronix.de>
Date: Thu, 13 Nov 2025 09:28:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree-spec@vger.kernel.org
Cc: "kernel@pengutronix.de" <kernel@pengutronix.de>, quentin.schulz@cherry.de
Subject: SoC-specific device tree aliases?
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hello,

With /chosen/bootsource now part of dt-schema, I would like to raise a
related point: The need for SoC-specific device tree aliases.

For many SoCs, there is a canonical numbering for peripherals; it's used
in the datasheet and BootROMs often makes use of it at runtime to report
the bootsource as a pair:

  - One value to enumerate type of boot medium (e.g. mmc, spi-nor..)
  - Another value that describes which instance (e.g. SDHC1, SPI3, ...)

Some examples, where this is the case, are AT91, STM32MP or i.MX.

barebox has traditionally used /aliases to translate BootROM information
to a device tree node to fixup /chosen/bootsource.

This doesn't work out for many newer SoC support, because of different
expectations: For upstream, aliases are relevant to a board, while
barebox traditionally expected them to be SoC-specific (because they
used to be on i.MX, probably).

To accommodate this, barebox nowadays extends upstream device trees with
/chosen/barebox,bootsource-${alias} properties, which can be used as
translation table instead of aliases.

This solves the issue, but there is occasional breakage when upstream
decides to remove aliases from the SoC DTSI and move them into the
boards until barebox is made to add the /chosen/barebox, overrides.

As described above, I think the data sheet numbering is pretty much an
aspect of the hardware and it has a place in the upstream SoC DTSI.


So what are the thoughts on adding /soc/aliases or some other top-level
node to hold this information?
Or would a h"ardware-label" property or similar be more tenable?


Thanks!
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |


