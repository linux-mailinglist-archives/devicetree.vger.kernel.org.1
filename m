Return-Path: <devicetree+bounces-251121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D34E2CEEF0B
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 17:04:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9EB36300661D
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 16:04:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88BD629DB99;
	Fri,  2 Jan 2026 16:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="k/DrkM8q"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E354329D287;
	Fri,  2 Jan 2026 16:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767369891; cv=none; b=Pkg9ADZHdxRGID6dONkVlTLGwPFQs3wuDv5k1o7oj2uRxCJWYrgAc7TeWGLCExBavSCAAawnVAZEMWtvEjele/8vyPmZoy1rGc+S0ecKv+y7znYQf6zoGdup32oe4Y/sCntTngf+IkFPyoWWKwXHUaha/whm6W0OXyYaBy5os8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767369891; c=relaxed/simple;
	bh=MTQLpKingEKtV/seZyycwDzSDN/2m5MELaR7E9Pydjs=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=hDGdCkqpFnWKi9JEdtTECmSVyY0ApFF6VwGqSuz/Ikmg/od0i9Odfb+v4vNYgEjxxVfGBiowqewsk+9VycEOLnxW3y9Gi2HxyZoPnBboNKGSPmpUA9giwqkwuFSH5OGITn6GH/0XHclDtXO2jioRPghl4VvRnLdiJfoeQfnC1YM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=k/DrkM8q; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1767369889; x=1798905889;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=MTQLpKingEKtV/seZyycwDzSDN/2m5MELaR7E9Pydjs=;
  b=k/DrkM8qCfJL0rJ8IhcRUXZnuQXOKTu9qNnYhCsSbKHApfoR6NNQyNv2
   RHu+oVEemOUapY9RFszokYmWs2bcLjmHCLBljA+XEAE6vr27Xhhq54zco
   8HpbVrFoPIM3dooUOpDXVKSTlX9imEUsxR28OoxZZiOT79r8ZQtjG9CTA
   F2cg6ZaaAuDnCVa6dXU2eYDNHCybi/r8q2lZj9i0FpfxR54r0Mg7Aj6av
   YukHDzik6ltFkKYzX+OMbmbzDutLH72Chvk2YEbgsbP6EK9oA0T2YnzmW
   ESPkqqGM87Sv4vQ6XKg8w/PtzUnaxgk0SAMhTmWVuK5kbsiET6rlnXj9T
   A==;
X-CSE-ConnectionGUID: eZJkrK9NSOiP4Ojlexg/kQ==
X-CSE-MsgGUID: GgMXeHNpTVOSy9Yuy8q04Q==
X-IronPort-AV: E=Sophos;i="6.21,197,1763449200"; 
   d="scan'208";a="218598843"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 02 Jan 2026 09:03:40 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Fri, 2 Jan 2026 09:03:23 -0700
Received: from [10.159.245.205] (10.10.85.11) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.58 via Frontend
 Transport; Fri, 2 Jan 2026 09:03:21 -0700
Message-ID: <276e53d3-46ae-46c6-ba64-f3337bb963d9@microchip.com>
Date: Fri, 2 Jan 2026 17:03:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] dt-bindings: timer: microchip,sam9x60-pit64b: convert
 to yaml
To: Rob Herring <robh@kernel.org>, Conor Dooley <conor.dooley@microchip.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>
CC: <devicetree@vger.kernel.org>, <alexandre.belloni@bootlin.com>,
	<linux-kernel@vger.kernel.org>, <conor+dt@kernel.org>, <conor@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <krzysztof.kozlowski+dt@linaro.org>
References: <20230525125602.640855-1-claudiu.beznea@microchip.com>
 <20230525125602.640855-4-claudiu.beznea@microchip.com>
 <20230525-straw-fidgeting-4c1099aa16fe@spud>
 <5edf3d3b-6f59-0af3-6414-940a278962bf@microchip.com>
 <20230526-knickers-aim-e01220e6a7cd@wendy>
 <5a5d25a2-e6b5-fd69-f615-cd3d6ed33b9f@microchip.com>
 <20230526-unsubtle-chowtime-ce329d7e5627@wendy>
 <20230608201707.GA3359628-robh@kernel.org>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Content-Language: en-US, fr
Organization: microchip
In-Reply-To: <20230608201707.GA3359628-robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

On 08/06/2023 at 22:17, Rob Herring wrote:
> On Fri, May 26, 2023 at 08:55:39AM +0100, Conor Dooley wrote:
>> On Fri, May 26, 2023 at 06:41:39AM +0000, Claudiu.Beznea@microchip.com wrote:
>>> On 26.05.2023 09:23, Conor Dooley wrote:
>>>> On Fri, May 26, 2023 at 04:47:28AM +0000, Claudiu.Beznea@microchip.com wrote:
>>>>> On 25.05.2023 20:14, Conor Dooley wrote:
>>>>>>> Convert Microchip PIT64B to YAML. Along with it clock-names binding has
>>>>>>> been added as the driver needs it to get PIT64B clocks.
>>>>>> I don't think both of these PIT things need to have different binding
>>>>>> files. 90% of it is the same, just the clock-names/number - so you can
>>>>>
>>>>> But these are different hardware blocks with different functionalities and
>>>>> different drivers.
>>>>
>>>> Having different drivers doesn't preclude having them in the same
>>>> binding provided the function/description etc are more or less
>>>> identical. I was confused by:
>>>>
>>>> +description:
>>>> +  The 64-bit periodic interval timer provides the operating system scheduler
>>>> +  interrupt. It is designed to offer maximum accuracy and efficient management,
>>>> +  even for systems with long response times.
>>>>
>>>> +description:
>>>> +  Atmel periodic interval timer provides the operating system’s scheduler
>>>> +  interrupt. It is designed to offer maximum accuracy and efficient management,
>>>> +  even for systems with long response time.
>>>>
>>>> Those seemed like they do the same thing to me!
>>>
>>> They do the same thing, they are timers... But the way they do it (from
>>> hardware perspective) is totally different. With this would you still
>>> prefer to have them merged?
>>
>> Yeah, one binding would be my preference.
> 
> I'd probably just leave them separate if they're pretty much unrelated.
> 
> Rob

I'd love to see this (old) thread revived and I'm ready to help.
In particular this pit64b or WDT pending conversion to yaml which 
generate some errors while running dtbs_check on recent Microchip board 
.dts.

I tend to think like Claudiu and Rob here, hardware are so different 
from so different era, that... well... I would keep them separated for 
the sake of simplicity and future proof.

Claudiu, tell me if I need to help with this?

Regards,
   Nicolas

