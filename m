Return-Path: <devicetree+bounces-98465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D12C29663C6
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 16:09:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 814FE1F22E44
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 14:09:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50A051B2516;
	Fri, 30 Aug 2024 14:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="trdoE/6L"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CF907DA94
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 14:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.207.212.93
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725026969; cv=none; b=gk0gyMfA301aUjpGyGS8oJDcT994WDmbT+b0th9so9UoOZo31j7DwVCCMud31Zv8WtSpbMNEzD4UtstNaexqW4SNKJg1GgUtkgZURdaA0teTYqzmRWQ0jDIilVTvOdo2VbYrziEL2dvGV2aVPjTtxUyPz7Cni+zvUxQRSF9Ux3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725026969; c=relaxed/simple;
	bh=Z8zuoo5zwwiLnWcaJWRmOCFQ4+9pBqW5fPGQjoW+1pY=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=QvkXXT3Evf72WW9SigXjqsN2psaU+gul828+tIUF+422598LlKhPBFFHZPrZUOkPwNBCmTopBPq2gddEOXQCWsjy9iQVUF8AxgW+9bwcWW4lqJZhTtsoqCd19wOWa6dS2wHYKwdxPTPHJBWq3dfLVUFNEIPbj5j6jKgGr/qj9Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=trdoE/6L; arc=none smtp.client-ip=91.207.212.93
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47UCXIK2000780;
	Fri, 30 Aug 2024 16:08:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	q89NqSKTjel4CPwEWPxv9YmdnbhHoK/5N0GdARaXWxY=; b=trdoE/6LmGgmf0vl
	nmxd+beSSPda8eGoveHUU6tkUC3x3yi91yf/QfbudxQdeIg7pMNMCY7J5iyUtfJY
	yAQpbeZN5GBh4cAmMbgj7lqm5oA5+cWAS84ROmbUf+9wedKm97skTUBjj7M0Jv0v
	vEl5QSNZgmDcJT57H8JC6TLFz3GkAZJ5vtoDB3AMtpi0oY9TsxY66bW/rh6GjGpR
	vf3Kp9nt7WudAjjcP7mwEp8LTF6eR6nQMRxvM1ji3mFRxxX1w6+e2eSZkdIy+ffV
	IiUHSrAw75mQJCMlasZ9uigHhH7Z2ybtE1YeAQXdJqBcijdVfrHLdB5A44nWgKyl
	ZwW5ZQ==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 41b14uk949-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Aug 2024 16:08:26 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 1F45440044;
	Fri, 30 Aug 2024 16:08:22 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id EDE5426E530;
	Fri, 30 Aug 2024 16:07:45 +0200 (CEST)
Received: from [10.252.12.18] (10.252.12.18) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Fri, 30 Aug
 2024 16:07:45 +0200
Message-ID: <8c56f13a-35a1-4dc5-8b3a-18251879c776@foss.st.com>
Date: Fri, 30 Aug 2024 16:07:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: Describe PHY LEDs in DH STM32MP13xx
 DHCOR DHSBC board DT
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
CC: <kernel@dh-electronics.com>,
        Christophe Roullier
	<christophe.roullier@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Maxime Coquelin
	<mcoquelin.stm32@gmail.com>,
        Rob Herring <robh@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20240705215402.257070-1-marex@denx.de>
 <e38b8da5-349d-4ee2-97d4-9c46c116120c@foss.st.com>
 <b2bb5061-01e0-4f47-877b-edccedcf1aef@denx.de>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <b2bb5061-01e0-4f47-877b-edccedcf1aef@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-30_08,2024-08-30_01,2024-05-17_01



On 8/30/24 14:57, Marek Vasut wrote:
> On 8/30/24 2:47 PM, Alexandre TORGUE wrote:
>> Hi Marek
> 
> Hi,
> 
>> I have a yaml validation issue applying this patch.
>>
>>    DTC_CHK arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb
>> /local/home/frq08678/STLINUX/kernel/my-kernel/stm32/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: ethernet-phy@1: Unevaluated properties are not allowed ('interrupt-parent', 'interrupts', 'reg', 'reset-assert-us', 'reset-deassert-us', 'reset-gpios' were unexpected)
>>      from schema $id: 
>> http://devicetree.org/schemas/net/realtek,rtl82xx.yaml#
>> /local/home/frq08678/STLINUX/kernel/my-kernel/stm32/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: ethernet-phy@1: leds:led@0:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
>>      'netdev' is not one of ['backlight', 'default-on', 'heartbeat', 
>> 'disk-activity', 'disk-read', 'disk-write', 'timer', 'pattern', 
>> 'audio-micmute', 'audio-mute', 'bluetooth-power', 'flash', 
>> 'kbd-capslock', 'mtd', 'nand-disk', 'none', 'torch', 'usb-gadget', 
>> 'usb-host', 'usbport']
>>      'netdev' does not match '^cpu[0-9]*$'
>>      'netdev' does not match '^hci[0-9]+-p
>>
>> Can you have a look please ?
> 
> See this commit in linux-next, with that the validation should pass:
> 
> 616dbed65485 ("dt-bindings: leds: Document "netdev" trigger")

Thanks Marek !!

Applied on stm32-next.

Cheers
Alex

