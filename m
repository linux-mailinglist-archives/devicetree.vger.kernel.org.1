Return-Path: <devicetree+bounces-80930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A0991AC3E
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 18:05:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E5D4CB2637B
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 16:05:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0209B199397;
	Thu, 27 Jun 2024 16:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="iIXggi/X"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252EA199253
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 16:05:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719504311; cv=none; b=qXZq75nZQT/2n3h3xxl9Gf6D/7fcLEL08EoHz8XAxqjdD8bTm78dRXDwVvMpbGACovsWYyng8+bSdX5mrMY+D87kFoGbxUSYsbqaEGBWCh/PKvNluawlqlPnGybCTZO1SnZGS2XXMoV5/IuOk8C4NNyLxXBkmmq+Sc1PeJ0U4+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719504311; c=relaxed/simple;
	bh=zHRcjEaJqaS74pwD4stLNNMgQ3MGcIEAEQ7luzjZP7E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZQF3e0TKaQS+3p44yWen5UGx3sxxW8n0UTog3NZjD10bQZv3wmds4sqKpbJ60SiX0YRKdwb9CBMWiqlld+4ufnriMY0XB+ELIFE/rhnkkacdBI7b25WAm1wF1krjg5uVLoPspvVVQPy1KhLtjsB9hvmQLtM4p882AxwgGxbzuz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=iIXggi/X; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 04A0A87D1A;
	Thu, 27 Jun 2024 18:05:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1719504307;
	bh=1u9Inh2kN+quodN02T07jrr+3Ha30I2d5OAEnpc8VWQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=iIXggi/XS5YolYFm5Z839qtktsKq5+rVa92/S3OlUW8RBG2NRF6EuxfrNvsw3xk4L
	 F/D+smq90BqTQlqas+REsoIx+m5VH+6im0LoZGnMVBQCNVnAI2PaybC6cg2nk3XITP
	 m6b0gzTORJa7OI15FSTO51zMKsFDiaAnYkWfRd0GyjK5Pk+/jda3xmBdY7ZQlWcfRN
	 AUBwBWhv31oH3PIkbz5o/nP7AKPZSHzqfrsi15HkV/Y3iBHoQs0pTMRmABR525Aws4
	 +D0y1m3MTfuc0U9tg2FKmb1m88aJxKaUaCQ0FtHs/iY1o5LKSuaJByeVsVPb9eiQFU
	 uLKm6RvILsUkg==
Message-ID: <05062715-8ba9-4bfd-bc07-8f5ddc708555@denx.de>
Date: Thu, 27 Jun 2024 17:20:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: Deduplicate rproc mboxes and IRQs
To: Alexandre TORGUE <alexandre.torgue@foss.st.com>,
 linux-arm-kernel@lists.infradead.org
Cc: Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Richard Cochran <richardcochran@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, devicetree@vger.kernel.org, kernel@dh-electronics.com,
 linux-stm32@st-md-mailman.stormreply.com
References: <20240623194954.79988-1-marex@denx.de>
 <0ab8fe8a-2017-432f-80fc-5c2c381d1fd0@foss.st.com>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <0ab8fe8a-2017-432f-80fc-5c2c381d1fd0@foss.st.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 6/27/24 12:48 PM, Alexandre TORGUE wrote:
> Hi Marek

Hi,

> On 6/23/24 21:49, Marek Vasut wrote:
>> Pull mboxes, mbox-names, interrupt-parent, interrupts properties of the
>> m4_rproc into stm32mp151.dtsi to deduplicate multiple copies of the same
>> in multiple board files. Worse, those copies were starting to get out of
>> sync, so this should prevent any such issues in the future.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> ---
>> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
>> Cc: Conor Dooley <conor+dt@kernel.org>
>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
>> Cc: Richard Cochran <richardcochran@gmail.com>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> Cc: devicetree@vger.kernel.org
>> Cc: kernel@dh-electronics.com
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: linux-stm32@st-md-mailman.stormreply.com
>> ---
>>   arch/arm/boot/dts/st/stm32mp151.dtsi                        | 4 ++++
>>   arch/arm/boot/dts/st/stm32mp157a-icore-stm32mp1.dtsi        | 2 --
>>   arch/arm/boot/dts/st/stm32mp157a-microgea-stm32mp1.dtsi     | 2 --
>>   arch/arm/boot/dts/st/stm32mp157c-ed1.dts                    | 4 ----
>>   arch/arm/boot/dts/st/stm32mp157c-emstamp-argon.dtsi         | 4 ----
>>   arch/arm/boot/dts/st/stm32mp157c-odyssey-som.dtsi           | 4 ----
>>   arch/arm/boot/dts/st/stm32mp157c-phycore-stm32mp15-som.dtsi | 4 ----
>>   arch/arm/boot/dts/st/stm32mp15xx-dhcom-som.dtsi             | 4 ----
>>   arch/arm/boot/dts/st/stm32mp15xx-dhcor-som.dtsi             | 4 ----
>>   arch/arm/boot/dts/st/stm32mp15xx-dkx.dtsi                   | 4 ----
>>   arch/arm/boot/dts/st/stm32mp15xx-osd32.dtsi                 | 4 ----
>>   11 files changed, 4 insertions(+), 36 deletions(-)
>>
> ...
> 
> It is an old story we already discussed in the past:
> 
> https://lore.kernel.org/linux-arm-kernel/81f4574d-38c2-21f2-b947-d13e5fc99c60@denx.de/T/#mef3a4050ab4ff181416fe5681f1d5cb9fb744573
> 
> My position remains the same. Those interrupts depends on your 
> system/firmware you plan to use. So we give one example in our ST board 
> which relies on firmware we load in OpenSTLinux. But it is just an 
> example. For example depending the firmware used, the detach could be 
> used or not.
> 
> So I would prefer to not take it.

Ugh, I had it in my upstreaming tree so I resubmitted it, lemme drop it.

Thanks for the reminder and constant vigilance.

