Return-Path: <devicetree+bounces-78858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 583239138FE
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 10:20:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0523F1F21ABE
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 08:20:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C30CB2C6B7;
	Sun, 23 Jun 2024 08:20:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg150.qq.com (smtpbg150.qq.com [18.132.163.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D717715E83
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 08:20:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.132.163.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719130818; cv=none; b=f1IweP0lMKsOajVvaFbGvEMUp9uVLGkH5bm3/BbTTQttKfbIDd5HMc7fZz1M5PDdSjxpyqfZQ9c3EcfAqa9CnOMm9dfJc5UiY3ElQDjsqgCJwVXaj4woiGAQGWzP+9Ltji2KAkuX6McLdXpExktLtCLu2C46hoiCYqVB4Q9DEso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719130818; c=relaxed/simple;
	bh=+zUMpKFzqiiRYS3rFF3JW8+b68NnSmgfPQwvGe0dY04=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aWw/dimW/ctBkRR3zw7NqPhaH0pGR+BSOQkY4J7fJ83HvEGc+cPWfsibABeX/op5OuRTZ4WBfXJVMQ9M4u8NjYAjCMngzOLBTkpNWNDDAwfGCWkOSRTai02u95vPpbzmspXuV08N6rfCWXr9PsAi8UrCDCAoPm2CWVThXITOqlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=18.132.163.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpsz8t1719130741t9z4pqa
X-QQ-Originating-IP: 3WfoIsP1y1/hRCpT+9KdBFthcVVs8RrrukwZVyBJz/4=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sun, 23 Jun 2024 16:18:58 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 3802460711432902669
Message-ID: <9941941CA3B1175A+26e42825-e100-44b7-a565-f1a86ca3fff8@radxa.com>
Date: Sun, 23 Jun 2024 17:18:58 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: add dts for Radxa ROCK Pi E v3.0
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240623075318.80492-1-naoki@radxa.com>
 <8da8e56a-e24f-4b56-9861-df55369c984f@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <8da8e56a-e24f-4b56-9861-df55369c984f@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1

Hi,

thank you very much for your comment!

On 6/23/24 17:07, Krzysztof Kozlowski wrote:
> On 23/06/2024 09:53, FUKAUMI Naoki wrote:
>> Radxa ROCK Pi E v3.0 has DDR4 SDRAM instead of DDR3 SDRAM.
>>
>> for Linux, this change doesn't make any difference from a device tree
>> POV. but, for bootloader (U-Boot TPL), it makes a difference.
> 
> What difference?

U-Boot TPL initialize DDR SDRAM.

https://github.com/RadxaNaoki/u-boot/commit/16d823eb95fe311c82a8ebb31570b59b1c59c43b#diff-03ce6c241f5db74ae87d4d8654bfef5eeb5bc42a9f1ff3cc828b70b3b2ac51d2R4
https://github.com/RadxaNaoki/u-boot/commit/16d823eb95fe311c82a8ebb31570b59b1c59c43b#diff-31b80303774e7c10b527fb2dbc704b82e6c5ccdc6d53dd4f65861309ce0e7413R4

there is 1 letter difference, ddr"3" and ddr"4".

>> bootloader needs a separeted dts for v3, so I add new dts for it.
>> dtb can be shared between v3 and prior, so I don't touch Makefile.
> 
> I don't understand. If you have the same DTB then you do not need second
> DTS.

2nd dts is for bootloader. it's not needed for Linux.

but latest U-Boot uses upstream device tree for some targets.

> This change really lacks proper explanation or is just unnecessary. If
> change is proven as necessary, then you also miss compatible and model.

sorry, I should write proper explanation.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Krzysztof
> 
> 

