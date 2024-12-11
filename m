Return-Path: <devicetree+bounces-129607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6B49EC4FA
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 07:46:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9BA0D18879C8
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 06:46:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 171C71BD004;
	Wed, 11 Dec 2024 06:46:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgbr2.qq.com (smtpbgbr2.qq.com [54.207.22.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2332E46BF
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 06:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.207.22.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733899569; cv=none; b=WKqwf4q/eh6+QoaYFlxH0138Y41oVuHcsxK6jyUTGux+Eody98vCr73xYRkVQoC5EOVZGMpXcLRN8xgPobtyHmO3buJbBw84Tt9fNzgcCxBaNNcVOxqf85uRJM86dIMtkPe/0Wuy8kdy9iujN4UUbYEkC0tNX6Ph7Zq3+X76Ndg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733899569; c=relaxed/simple;
	bh=JsLMh/E9UR4vux8SHx9nwrSwK9SL1fHUroLMlscWSVY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VLToAjIEaSJtYHZcxztwhNAFY7sQ1KO3DGXOVRgomK9YNaBFPBIEBBHoSQwS/U0B4tr7QYa+p3zYgyKE0Zv7gB6C2V66g59joBPubSBtuu487LFB619/+4q5oluiOoIq+TUQFlqogJTDWPRjiHaYWykspoLquhrJt2qu8xfWMA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.207.22.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip2t1733899481taganfs
X-QQ-Originating-IP: tpkQmNVQxR3dRVrRmzOKQtyi/1JHE+2mRyLL+ZjgCrg=
Received: from [IPV6:240f:10b:7440:1:b238:648b ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 11 Dec 2024 14:44:36 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 13522001219215429364
Message-ID: <FE22A7AEB0707DE7+903efcab-b291-4a12-a9a5-ba1cc3658016@radxa.com>
Date: Wed, 11 Dec 2024 15:44:36 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: arm: rockchip: add Radxa ROCK 5C Lite
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, macromorgan@hotmail.com, jonas@kwiboo.se,
 andyshrk@163.com, liujianfeng1994@gmail.com, tim@feathertop.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20241211060936.57452-1-naoki@radxa.com>
 <c6ba70f1681bb635190e9452ecb22d59@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <c6ba70f1681bb635190e9452ecb22d59@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: Mm/Yx8ZY6QnDP4UcM5U5HndmKWWzuZ0GYlWfdvdxKXYrS0RY6tyt4ViT
	FLAZy96jnYJ6iLQHLWM6vCYu2lcAk3GhtxULYnYpkDLJfAwioNSHzdh395o1yFiUWFILsog
	NHrQzheyOllqlw4K7B0PDvl6WrWQtQKoQbEXZLRiZ+y4dphInNhWTS4mvbeHfHYjsBYVHrF
	PQRq8VtYbB4jNq1lQzOWG7sTDVOxVwhxq8sdeOPZK87kc6veacp2LVdZOF+k7tBorVV/7vu
	wGsOJQaCz7pfhd2W4OF1Py26GBzHXYn2KNCOk8qc7h2pHxT/TMN4ljz9ogX04ALGVB5kypD
	xjjJ1e/qpnOlZpT+ex0z4p0CjJksqDnnelDPBtaSS7NG2Oa1N+0GQP31sq8SmHS1asP1UKi
	1FS4MeJXUDrinsQrV5RMklwjvSgSw4v7KBVtFJCQ0xZlL34Kw2Z7Y6/Qf4tEhx28Wai1Wxx
	xR5SdTBuv5M/XDrT+nz6rxSKjuLEMC8px3yQ0lXbHFOPEph/rnCkX9Z9NyiIIGlY4JviyOd
	dAYec/8Jc7sAo5hbN6DmSzig8rn0OYonT91m7fOoxn27vz5oqIYzu5Qg6eXUi5qErvChYuu
	jwkUaEpvlGyRah8BTMSPFHb1nIHrPzutsKO/mB2IwXd/1i12r7cOpQsfru+ivSHFXro4Oi+
	labVc3itfkT685Gm3XCyssZO6Pdt9VgAE/D9IFvzMYS+z6u991UoiBW8JnN7aPPdi9/oHR5
	bt0hbcwYCOJS9rtCv+tHWZrjKMlh278bCdgwi41hd/jCUBuGAT7tE+imqKzaCJsTGgAfcPG
	2pRGZQT+hdK/0i3igC5kE92Op/28OgCKjkjs9sq2v2zHuOdyqnodwhPwhfQ08yNGfggC7xC
	kXOQgRuymD++Xr7XmXkKivAyO0ssle535kKrEbF4SwGBtmgtFxD5vIexFkmdOaTXFrYSP86
	7GE4UPfgRaBzxOFEUC+Wonr+rQQuBmqZ4B+g=
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
X-QQ-RECHKSPAM: 0

Hi Dragan,

On 12/11/24 15:36, Dragan Simic wrote:
> Hello Fukaumi,
> 
> On 2024-12-11 07:09, FUKAUMI Naoki wrote:
>> The Radxa ROCK 5C Lite uses a different SoC (RK3582) compared to the
>> Radxa ROCK 5C (RK3588S2), but the two are compatible from a software
>> perspective.
>>
>> Fixes: df4e08a5eed1 ("dt-bindings: arm: rockchip: add Radxa ROCK 5C")
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>>  Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> index 753199a12923..2254ee079094 100644
>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> @@ -895,7 +895,7 @@ properties:
>>            - const: radxa,rock-5b
>>            - const: rockchip,rk3588
>>
>> -      - description: Radxa ROCK 5C
>> +      - description: Radxa ROCK 5C/5C Lite
>>          items:
>>            - const: radxa,rock-5c
>>            - const: rockchip,rk3588s
> 
> I think it would be better to use "rockchip,rk3582" here, to allow
> us to possibly use that information later.  For example, we might
> want to be able to recognize RK3582-based boards in U-Boot without
> the need to look into the e-fuses at some point, for which purpose
> having a clear designator in the DT would fit perfectly.

It may be okay to introduce "rockchip,rk3582", but reading e-fuse is 
still required in U-Boot because which unit (cpu coreX, gpu, etc) is 
broken cannot be determined without reading e-fuse at run-time.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> As a reminder, using "rockchip,rk3582" would also require a small
> addition to drivers/irqchip/irq-gic-v3-its.c.
> 



