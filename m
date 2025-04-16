Return-Path: <devicetree+bounces-167810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB11A905FD
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 16:18:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C53268E0849
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 14:11:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37A211A5BB5;
	Wed, 16 Apr 2025 14:04:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA646155300
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 14:04:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744812292; cv=none; b=UWBRpcAkIToWGn4vrfHNO+gdPhqdQK+e+g57GjE0dsq8iZ35D+TUc+2kWuRtQxvo6kkqdEeOcPL1oHYKWMy1fqHOxEdwxDt76zmmPFnMqsq+0MpjyQprOGaQv7Xa7D1XSbZ9hqpT77Gw6t2VgERkfJtXszSVC+Kko0TkyWlO7+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744812292; c=relaxed/simple;
	bh=rt4LVlUiTSj0UZdNZvaIcUxulNvJteVLNDUDXR5Mv9c=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:Cc:
	 In-Reply-To:Content-Type; b=H4HjFxTKbH1Yu6IyQNPqKrr3rF2Xa0l1vIPc2wz2Bw9hy/5cytN7k3c3hJYX3QQouTeJiPSDgWvNgXWTjSENUPX96VmDW6eE1fnywuoxYh7JgBEFjj1IXtL+xOOSfjtRpjNNkdsRBr1SdRtUcmFK1yvuePi5qAY4M67b8REAvrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u53NE-0003zg-Oo; Wed, 16 Apr 2025 16:04:20 +0200
Message-ID: <fcdb9283-07aa-4d50-ac4d-317b0a4e5f7e@pengutronix.de>
Date: Wed, 16 Apr 2025 16:04:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] ARM: dts: microchip: Remove additional compatible
 string from PIO3 pinctrl nodes
To: claudiu beznea <claudiu.beznea@tuxon.dev>,
 Manikandan Muralidharan <manikandan.m@microchip.com>,
 linus.walleij@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240814061315.112564-1-manikandan.m@microchip.com>
 <20240814061315.112564-3-manikandan.m@microchip.com>
 <605ff021-0770-4363-9734-ad8114a429f9@tuxon.dev>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: lsc@pengutronix.de, "kernel@pengutronix.de" <kernel@pengutronix.de>
In-Reply-To: <605ff021-0770-4363-9734-ad8114a429f9@tuxon.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hello,

On 8/24/24 16:32, claudiu beznea wrote:
> 
> 
> On 14.08.2024 09:13, Manikandan Muralidharan wrote:
>> The driver data specific to each pinctrl GPIO bank compatible nodes are not
>> the sameand declaring additional compatible string as fallback has no
>> specific purpose

That's incorrect. A compatible for the old IP core means that the new
revision is still compatible with it and old drivers should work for either.

> , hence, removing the additional compatible string from the
>> pinctrl nodes in DT to comply with atmel,at91-pinctrl.txt documentation.

The correct resolution would be to add an extra compatible to the
binding instead of breaking non-Linux users of the device tree.

>> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>
>> Acked-by: Linus Walleij <linus.walleij@linaro.org>

Me and Lars stumbled upon your patch, because it broke the barebox
bootloader console on SAMA5D3 boards after it was imported.

Fortunately, the system still booted, because the first stage bootloader
sets up SD host controller pinmux without referring to the device tree.

We'll submit a driver patch on the barebox side, but please keep DT
compatibility in mind with similar changes in the future.

Thanks,
Ahmad

> 
> Applied to at91-dt, thanks!
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |


