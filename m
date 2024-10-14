Return-Path: <devicetree+bounces-111126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D86C799D586
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 19:21:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 01ECAB25D81
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 17:21:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 170811BFE10;
	Mon, 14 Oct 2024 17:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="Dt9B/1in"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2267D824A0
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 17:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728926475; cv=none; b=TfMhSUpX4lt8bahRCgpgVDch5ULMbUPklcVvBTHS8GR5F2TfLRavMYfEMKnm+9u6mZSA4d2ireaacsc/9XQQ902XaBElEKHqx0e/r9PhHACdRsCAzq0Vug7yjFZs8D6eXP6TDTd0kjp4155nL7/RJy/gv/e13/nBLDsWD/NCY8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728926475; c=relaxed/simple;
	bh=bVUKFFIO3CP2EidpD2tJ+MDbCXamwgFEkpMBss5MeJQ=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=HHgF/dTjN2X92CaISQY10oVX+wa3200zK1PY0z83SGNvjOLv6AmLb4MtnAw3Kjb3UqlnV4QFszeAdGO9NxxYWoClV4taWqQJdlfngpkA4OZb12vLnwgmXpArVqtvBKRwMB21VsEptW8tlwudGlUnxh3drYGdV0othOcCyu3Orqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=Dt9B/1in; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728926467;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DMmhl3YWDH8vofB+g5MILdfNPylqUE7QKhzS8Ir96FA=;
	b=Dt9B/1inCbY/jL4CbneOqgJgO1lvlKErqgPAv6N8cGE0ie7Vc1ogSnVrlPaoOvT9hV8kHL
	d7/lm1AYWn0pNbK0RINWwVX/p/IvcsyvqII2P5/DqO1YCHMwH4WNSPmKO8y0547q4lp4GW
	i+jrLMpsa1LdbEDuF38HVP3jzMTisHYe6wtGmGh+T/BHkHmQiklgdwzIWK97XCi2UrCnEC
	C92iQ7Qp50f4AOWKywy4Ne2m2F9dSsgW+uwYgE78cgLkIwAcspQ4P9iuEdj/m2al8nIkIx
	I7FCvPOjIAFgZdF2NjgaUcrwv7ReCbs+4sICvx2JybU5WFt0/nGiyP9phpwOXQ==
Date: Mon, 14 Oct 2024 19:21:07 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Quentin
 Schulz <quentin.schulz@theobroma-systems.com>, Klaus Goger
 <klaus.goger@theobroma-systems.com>
Subject: Re: [PATCH v2 06/14] arm64: dts: rockchip: Remove #cooling-cells from
 fan on Theobroma boards
In-Reply-To: <64ad124d-ac39-4d44-8117-9467f1e7472e@cherry.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-7-heiko@sntech.de>
 <3fe3561f1839ed17dfa74ba0a408482d@manjaro.org>
 <4f8a87da-76b1-4fa6-8755-5dbf10bfd74e@cherry.de>
 <ff20557655d689571590d5b908b705c1@manjaro.org>
 <64ad124d-ac39-4d44-8117-9467f1e7472e@cherry.de>
Message-ID: <57031b70ebef4e795c5386021f32fe7d@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Quentin,

On 2024-10-14 18:29, Quentin Schulz wrote:
> On 10/14/24 5:49 PM, Dragan Simic wrote:
>> On 2024-10-14 17:39, Quentin Schulz wrote:
>>> On 10/9/24 9:16 AM, Dragan Simic wrote:
>>>> On 2024-10-08 22:39, Heiko Stuebner wrote:
>>>>> All Theobroma boards use a ti,amc6821 as fan controller.
>>>>> It normally runs in an automatically controlled way and while it 
>>>>> may be
>>>>> possible to use it as part of a dt-based thermal management, this 
>>>>> is
>>>>> not yet specified in the binding, nor implemented in any kernel.
>>>>> 
>>>>> Newer boards already don't contain that #cooling-cells property, 
>>>>> but
>>>>> older ones do. So remove them for now, they can be re-added if 
>>>>> thermal
>>>>> integration gets implemented in the future.
>>>>> 
>>>>> Fixes: c484cf93f61b ("arm64: dts: rockchip: add PX30-µQ7 (Ringneck)
>>>>> SoM with Haikou baseboard")
>>>>> Fixes: d99a02bcfa81 ("arm64: dts: rockchip: add RK3368-uQ7 (Lion) 
>>>>> SoM")
>>>>> Fixes: 2c66fc34e945 ("arm64: dts: rockchip: add RK3399-Q7 (Puma) 
>>>>> SoM")
>>>>> Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>
>>>>> Cc: Klaus Goger <klaus.goger@theobroma-systems.com>
>>>>> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
>>>>> Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>
>>>> 
>>>> Looking good to me, thanks for the patch.  In addition to the 
>>>> amc6821
>>>> driver currently not supporting full integration into the thermal
>>>> framework, the "fan" DT node also isn't referenced in any cooling 
>>>> map,
>>>> so having it define the "cooling-cells" property is of no use.
>>>> 
>>>> By the way, it would be nice to see the amc6821 driver supporting 
>>>> fan
>>>> speed regulation, and test it to check who does a better job when it
>>>> comes to cooling and fan speed regulation, the thermal framework or
>>>> the chip's built-in logic. :)
>>> 
>>> Wasn't this feature added this summer by Guenter?
>>> 
>>> c.f. https://eur02.safelinks.protection.outlook.com/? 
>>> url=https%3A%2F%2Fgit.kernel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Ftorvalds%2Flinux.git%2Fcommit%2Fdrivers%2Fhwmon%2Famc6821.c%3Fid%3Dbecbd16ed2f8f427239ffda66b5d894008bc56af&data=05%7C02%7Cquentin.schulz%40cherry.de%7C6df77e4e73434d36a6fd08dcec67c21c%7C5e0e1b5221b54e7b83bb514ec460677e%7C0%7C0%7C638645177611948235%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C0%7C%7C%7C&sdata=4VaZrAKxDUTdEf7avUM1ewHLl9PIgBple841dE55o4w%3D&reserved=0
>>> 
>>> Mode 4 is
>>> https://eur02.safelinks.protection.outlook.com/? 
>>> url=https%3A%2F%2Felixir.bootlin.com%2Flinux%2Fv6.11.3%2Fsource%2Fdrivers%2Fhwmon%2Famc6821.c%23L367&data=05%7C02%7Cquentin.schulz%40cherry.de%7C6df77e4e73434d36a6fd08dcec67c21c%7C5e0e1b5221b54e7b83bb514ec460677e%7C0%7C0%7C638645177611979168%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C0%7C%7C%7C&sdata=uNnWR0Oux0BlNhpe20Xj4%2FEtGQJv%2FsU1hapm4fGn7Qk%3D&reserved=0
>>> ([FDRC1:FDRC0] = [01] -> Software-RPM Control Mode (Fan Speed
>>> Regulator) according to the datasheet).
>> 
>> Ah, SENSOR_DEVICE_ATTR_RW(fan1_target, fan, IDX_FAN1_TARGET)...
>> How did I miss that?  Hmm...  Maybe I was looking at some older
>> local branch, which happened not to include that commit.
>> 
>> Anywyay, good to know, thanks.
>> 
>>> In any case, we cannot compare those for our products as we do not
>>> have a genuine AMC6821 but a handmade simulation of the IP we run in
>>> an MCU.
>> 
>> I seem to remember your MCU that performs a few tasks, back from
>> some related discussions.  I wonder what was the reason to implement
>> it in software, instead of using actual fan controller chip?
> 
> This predates my joining the company, so... I don't know.
> 
> What I can say is, we have the following emulated in the MCU:
> - custom CAN over USB (UCAN; upstreamed already)
> - ISL1208 RTC
> - AMC6821 FAN controller
> - custom PWM controller (upstreaming pending)
> - a few bytes of NVRAM (AT24-based; upstreaming pending)
> - uncontrollable (from SoC PoV) watchdog, allows another MCU/system to
> trigger a full system reset
> - possibly, custom HW watchdog controllable over I2C (required to fix
> a very odd corner case in HW on PX30 Ringneck)

Nice, that's quite a lot of emulated stuff.

> Possibly more if we have the need for it and it fits into the MCU flash 
> :)

That's one of the benefits that come with an approach like this.
It's like some kind of PaaS (or whatever is the "cool" thing these
days) for hardware design. :)

> I assume this was born out of necessity to add support for CAN on
> RK3399 Puma since there's no CAN controller inside the SoC?

Could be, and the additional functionality, also required for the
board, was then just "offloaded" to the same MCU.

> I also think ISL1208 and AMC6821 aren't that easy to source anymore
> (RK3399 Puma has that MCU and its support started in ~2018 I seem to
> recall?). Considering the quantities and prices we get for the two
> MCUs flavors we have and how space constrained we are on some
> products, especially the uQ7 (PX30 Ringneck), it was probably I wise
> decision. The second MCU flavor came because STM32 was impossible to
> source at reasonable prices during the shortage 2-4 years ago.

Makes sense.  Instead of two or more separate additional chips,
whose availability can change at virtually any point, you now
depend on a single additional chip, which is also, presumably,
more widely used, so should be easier to source.

> This also means we can expand the set of features over time (which we
> are for example, with the custom PWM controller, NVRAM and I2C
> watchdog) since the MCU can be flashed once in the field too.

Yup, just like PaaS, SaaS or whatever. :)

> Obviously, you replace component cost and footprint with MCU FW
> development, so it's not necessarily cost-efficient but I'm not the
> one running the numbers so wouldn't be able to tell you ;)

Also good point.  Additional standalone chips are sometimes less
expensive than the equivalent manpower. :)

