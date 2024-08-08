Return-Path: <devicetree+bounces-91991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A990994B7FE
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 09:38:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DB2D81C24121
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 07:38:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6CA8144306;
	Thu,  8 Aug 2024 07:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="zRbIfqE2"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFB3812E1C7;
	Thu,  8 Aug 2024 07:38:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.142
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723102734; cv=none; b=QZR+ahvEk0leKZ10l/hCtT20jg02PAy0b4GBBUFKTy7TEqL0O+sigGU4nkIH75VHzeWS/zyypYGRkOcBXSsCWvubjLLZFrBqiuN4wpXGof8fOW5zEh83OMU87zUnmchMjkt8aHpMwTO0yqfwt8xsDN/YCYbQY5oz3E+9la9aNZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723102734; c=relaxed/simple;
	bh=gwt2cHVb2K3mN/MfPH0++Ud16j32XeWRTc5IPmipN1g=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=hs40vQMt2v/7X0z4cZYp/vpWC4J7lxReCwgRvHHz49XpYYyWDZI5CdSBO0mawU9B2Vctupz/fTPfjxYLN3Ws0oi0MJ9Ema31ovlaUAde91LoobLLfi+bM2eRhhd+gJzybHGZdyASqBSKL9XL7znUxyL3A1+ZxxjEc/EG7kYRZkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=zRbIfqE2; arc=none smtp.client-ip=198.47.19.142
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 4787ck67125647;
	Thu, 8 Aug 2024 02:38:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1723102726;
	bh=lyT4LPycbQhR91Srg9X3tvzfQSxZ58CaFb8fLF9nTlk=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=zRbIfqE2pNcWN5kZ6J2+3MOOSjAnFc1/ok77tdzb3M4TLuihzq/0663vBKLUutTOf
	 sZQWUAecROPdx0CPzHDgiwN54dOlExUgNgKjE3RozebovxLOBty3+KwGLyOm3g0WMo
	 /dewr5d0hP0DJuf12qTJJbKxWLIDr/gDjdWHtEcw=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 4787ckip008043
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 8 Aug 2024 02:38:46 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 8
 Aug 2024 02:38:46 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 8 Aug 2024 02:38:45 -0500
Received: from [10.24.68.216] (a0498981-hp-z2-tower-g5-workstation.dhcp.ti.com [10.24.68.216])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 4787cgrG016932;
	Thu, 8 Aug 2024 02:38:42 -0500
Message-ID: <1319a6ac-6784-45d6-8a0e-170e40d3aa18@ti.com>
Date: Thu, 8 Aug 2024 13:08:41 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ti: k3-am68-sk-base-board: Add clklb pin mux
 for mmc1
Content-Language: en-US
To: Neha Malcom Francis <n-francis@ti.com>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <conor+dt@kernel.org>,
        <krzk+dt@kernel.org>, <robh@kernel.org>, <kristo@kernel.org>,
        <m-chawdhry@ti.com>, <vigneshr@ti.com>, <nm@ti.com>,
        <sinthu.raja@ti.com>
References: <20240807101624.2713490-1-b-kapoor@ti.com>
 <8fa39624-9a92-404d-8651-9ade5700a7d3@ti.com>
From: Bhavya Kapoor <b-kapoor@ti.com>
In-Reply-To: <8fa39624-9a92-404d-8651-9ade5700a7d3@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Hi Neha,

On 08/08/24 11:51 am, Neha Malcom Francis wrote:
> Hi Bhavya
>
> On 07/08/24 15:46, Bhavya Kapoor wrote:
>> mmc1 was not functional since pin mux for clklb was not present.
>> Thus, add clklb pin mux to get MMC working.
>>
>> Fixes: a266c180b398 ("arm64: dts: ti: k3-am68-sk: Add support for 
>> AM68 SK base board")
>> Signed-off-by: Bhavya Kapoor <b-kapoor@ti.com>
>> ---
>>
>> rebased to next-20240807
>>
>>   arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts 
>> b/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
>> index 90dbe31c5b81..d5ceab79536c 100644
>> --- a/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
>> +++ b/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
>> @@ -204,6 +204,7 @@ main_mmc1_pins_default: main-mmc1-default-pins {
>>           pinctrl-single,pins = <
>>               J721S2_IOPAD(0x104, PIN_INPUT, 0) /* (P23) MMC1_CLK */
>>               J721S2_IOPAD(0x108, PIN_INPUT, 0) /* (N24) MMC1_CMD */
>> +            J721S2_IOPAD(0x100, PIN_INPUT, 0) /* (###) MMC1_CLKLB */
>>               J721S2_IOPAD(0x0fc, PIN_INPUT, 0) /* (M23) MMC1_DAT0 */
>>               J721S2_IOPAD(0x0f8, PIN_INPUT, 0) /* (P24) MMC1_DAT1 */
>>               J721S2_IOPAD(0x0f4, PIN_INPUT, 0) /* (R24) MMC1_DAT2 */
>
> How is this different from the P23 pinmux for MMC1_CLK? Could you 
> explain what CLKLB is, since it doesn't have a ball number I'm finding 
> it difficult to understand what it is?
>
This pin needs to be setup so that MMC_CLK is looped back at pad level 
for highspeed SDIO operations (has been same across K3 family). MMC0/1 
has this pin configured as INPUT by reset default as these have boot media

  These pinmuxes are derived from pinmux file shared by EVM team during 
wakeup/board bringup.

Regards


