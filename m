Return-Path: <devicetree+bounces-77534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DD990F1AE
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 17:06:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D333D1C21EE2
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 15:06:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E424770FC;
	Wed, 19 Jun 2024 15:06:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="IisJwlKz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F40776F303
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 15:06:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718809568; cv=none; b=hBZqHtAMNo8pVBkUJv4Z3ezregKQ7G2pSuqpoFGVKNguZ6khLvq7mhQ4wJu++UbnXbIUo3DxPO4xfJsLLc2xxfkKIJGAvHVVF/Mw+bxwJeuMW02zT3KmdhfZ5VLbD2/M8dGVvcz3IBC9CUOtYq9D2jN47yDjzfozMYv14nBvXfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718809568; c=relaxed/simple;
	bh=QxUuoZb025IZeShJVay96/hkBF7NB5IEnijOgrn+2Ig=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oWzoMKPZ9gFsOgdNMiigUcQpKKI9NY6qRxmH+r9wrtlX6VKKP6onL74U+ODxYj1hoZ9KN0vxkufYPHoJcbBshEVk67x+KAB+ZTfsX9ZCD3KdMYDODmwARs/+5mGN/klHsKaZNQzdBzCbp9bY48To1hOrMOcSbJumbEoiY87jU4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=IisJwlKz; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1718809557;
 bh=2clTSyAeM3L9zwU4eZsW15p5bMx3zomkzOUGqycGyaw=;
 b=IisJwlKzLXPiTRMyYPZh9jbK4Udwr5v697uajmsxhwn2cH+2dKLhaIWQSEGaEt+n0hqbwnDlR
 zid4e6LTg1s6wIUePAMrX+mpbhYH5GrsEO7erEprCPHjRBi1xNP7eH2Gl0bIKoT0wdtgUtcRdfD
 93mZWZJu+8WnqS8WQAz4kEuiVmGyuQgrqBCoMVKfwbBvmpJmzzIDMm+819ZWioqeTkgNTIC9wZ/
 zXAgTHI8lr9Z0KUQVxOksNTp8ywSdrd2g57EGVct4yhfOc4XjVUf8u+C4+DG43iM3qcj4jsvn0O
 w/uftwqLmE7vG+hWfg/uoIFE+GaCJXE0Pc01Ii3SL8Jg==
Message-ID: <95b10d88-be5b-4fcb-a30b-414dc90d18fe@kwiboo.se>
Date: Wed, 19 Jun 2024 17:05:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] dt-bindings: mfd: rk809: Add missing audio codec
 properties
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Lee Jones
 <lee@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Chris Zhong <zyw@rock-chips.com>, Zhang Qing
 <zhangqing@rock-chips.com>, Chris Morgan <macromorgan@hotmail.com>, Furkan
 Kardame <f.kardame@manjaro.org>, Michael Riesch
 <michael.riesch@wolfvision.net>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240619-rk809-fixes-v1-0-fa93bc5313f4@collabora.com>
 <20240619-rk809-fixes-v1-2-fa93bc5313f4@collabora.com>
 <dc71686e-a3fa-48f7-83a9-34d0f365ff07@kwiboo.se>
 <f6fcbca9-a5cd-42a6-a911-9515d131d992@collabora.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <f6fcbca9-a5cd-42a6-a911-9515d131d992@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 6672f3d3051772142ba2b9d3

Hi Cristian,

On 2024-06-19 14:53, Cristian Ciocaltea wrote:
> Hi Jonas,
> 
> On 6/19/24 3:20 PM, Jonas Karlman wrote:
>> Hi Cristian,
>>
>> On 2024-06-19 13:23, Cristian Ciocaltea wrote:
>>> The RK809 MFD provides a RK817 compatible audio codec, supported by the
>>> rk817_codec driver.
>>>
>>> This has been already in use by several boards: rk3566-quartz64-b,
>>> k3566-roc-pc, rk3568-evb1-v10, rk3568-lubancat-2, rk3568-odroid-m1,
>>> rk3568-rock-3a.  However, dtbs_check fails for all of them:
>>>
>>>   DTC_CHK arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dtb
>>>   rk3568-rock-3a.dtb: pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-clocks', 'clock-names', 'clocks', 'codec' do not match any of the regexes: 'pinctrl-[0-9]+'
>>>     from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#
>>>
>>> Document the missing audio codec properties as found on the
>>> rockchip,rk817 schema.
>>
>> This is duplicate of "dt-bindings: mfd: rk809: Add audio codec properties"
>> part of "arm64: dts: rockchip: Add Radxa ROCK 3B" series.
>>
>> https://lore.kernel.org/all/20240505134120.2828885-3-jonas@kwiboo.se/
>>
>> A v2 of that series with fixes for reported issues is imminent.
>> How do you want me to preceded with such v2 series?
> 
> Oh, it seems both of us made the same mistake and wrongly assumed the
> rockchip,rk817 schema is good enough to be used as a reference. :-)

Hehe, yeah :-)

> 
> Since both rockchip,rk817 and rockchip,rk809 files share most of the
> content, I also think this might be a good opportunity to get them
> merged into a single schema.
> 
> I can do this in v2, unless you prefer to handle it as part of your series.

I was planning on sending the following, merging the schemas may also be
an option.

https://github.com/Kwiboo/linux-rockchip/compare/619509e6c853...next-20240618-rock-3b-orangepi-3b/

Main purpose of my series was to add ROCK 3B and also Orange Pi 3B,
fixing rockchip,rk809 binding is just a prerequisite.

If you want to merge the bindings, please do :-), I can wait a few more
days to send out a ROCK 3B + Orange Pi 3B v2 series.

Please also include the vcc8/9 fix if you send a v2.

Regards,
Jonas

> 
> Thanks,
> Cristian


