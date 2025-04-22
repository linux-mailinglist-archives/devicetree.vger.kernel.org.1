Return-Path: <devicetree+bounces-169525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0660FA97377
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 19:19:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 059AC189DCD6
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 17:19:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 835FB2973A4;
	Tue, 22 Apr 2025 17:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="NraC96FR"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot01.ext.ti.com (lelvem-ot01.ext.ti.com [198.47.23.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5642D2980B0
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 17:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745342367; cv=none; b=FF+ySnUV4ZbyASmUYqFcDsGC/Bw4KR3nyUx6pseZbWV1+OrJ924ZnqQ5wY13aS/kliRA9hEcdrEABYFFP//bPk5xg8pZrZshd//fjGTNVerzWW+wgKZsOcDCKAnughs8/BrQMdM3ObGV1Eab6TNV39Dgff4cpuFt/IfZMwgADIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745342367; c=relaxed/simple;
	bh=+8dodPam0ZHUruvisBw0IyVvK8u/zVW6/zs4Kru8rzQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=RSm5t8P7AmzpA6n0mxPr0BWP+rCu28fHvpnVqdBQ0H+/hCsjqlysOMO+q8Y3Q1zdTBeFkfNFQ75dWf0/EvcQSzvxRg8yuAYhCcO1JwKV88mJxLR4Q/Pf/iVUsGPC8XFT+WtUOnCQmLLhLknE8jT0Qsv2sfjSEtVpAVBThJ3S5f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=NraC96FR; arc=none smtp.client-ip=198.47.23.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 53MHJB5v1288307
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 22 Apr 2025 12:19:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1745342351;
	bh=Te7Gv5UjpurtX8eYF0wNNRibtVhqh8MFhbmu5ug5EmA=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=NraC96FRzJ/kO7IRCGeefUAGB3Y8kNOkcOmDIYfXNQMf/REd+v4DrH9Z7I+UPfZVv
	 iOiUcJ166FOAg2prr5VmStS9bhC0QN47E3xxgjSZ/TJ/cS1S3mcX+hGxW2yQtbAseJ
	 sfslF+f3c2pYXqUTFYzPCRPTMmJJYJv5nL18l/VU=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 53MHJBK0076493
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 22 Apr 2025 12:19:11 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 22
 Apr 2025 12:19:11 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 22 Apr 2025 12:19:11 -0500
Received: from [10.249.141.75] ([10.249.141.75])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 53MHJ7uk089948;
	Tue, 22 Apr 2025 12:19:08 -0500
Message-ID: <2f33eb19-40b0-47be-a57f-f071b9bc9e08@ti.com>
Date: Tue, 22 Apr 2025 22:49:06 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] arm64: dts: ti: Add basic support for
 phyBOARD-Izar-AM68x
To: Dominik Haller <D.Haller@phytec.de>, "robh@kernel.org" <robh@kernel.org>,
        "kristo@kernel.org" <kristo@kernel.org>,
        "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "vigneshr@ti.com" <vigneshr@ti.com>, "nm@ti.com" <nm@ti.com>,
        "m-chawdhry@ti.com" <m-chawdhry@ti.com>
CC: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>,
        "upstream@lists.phytec.de"
	<upstream@lists.phytec.de>,
        <u-kumar1@ti.com>
References: <20250417125921.100580-1-d.haller@phytec.de>
 <20250417125921.100580-2-d.haller@phytec.de>
 <385e8f6a-6f25-4729-8ccc-877a551a3e9b@ti.com>
 <e1e2e4c0d831f917728d3a4245d8e18ae1186288.camel@phytec.de>
Content-Language: en-US
From: "Kumar, Udit" <u-kumar1@ti.com>
In-Reply-To: <e1e2e4c0d831f917728d3a4245d8e18ae1186288.camel@phytec.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi Dominik,


On 4/22/2025 9:14 PM, Dominik Haller wrote:
> On Sun, 2025-04-20 at 10:08 +0530, Kumar, Udit wrote:
>> Hello Dominik,
>>
>> Thanks for patch.
>>
>> Few minor feedback
> Hello Udit,
>
> thanks for the feedback.
>> On 4/17/2025 6:29 PM, Dominik Haller wrote:
>>> The phyCORE-AM68x/TDA4x [1] is a SoM (System on Module) featuring
>>> TI's
>>> AM68x/TDA4x SoC. It can be used in combination with different
>>> carrier
>>> boards. This module can come with different sizes and models for
>>> DDR,
>>> eMMC, SPI NOR Flash and various SoCs from the AM68x/TDA4x (J721S2)
>>> family.
>>>
>>> A reference carrier board design, called phyBOARD-Izar is used for
>>> the
>>> phyCORE-AM68x/TDA4x development kit [2].
>>>
>>> Supported features:
>>> * Debug UART
>>> * 2x SPI NOR Flash
>>> * eMMC
>>> * 2x Ethernet
>>> * Micro SD card
>>> * I2C EEPROM
>>> * I2C RTC
>>> * 2x I2C GPIO Expander
>>> * LEDs
>>> * USB 5 Gbit/s
>>> * PCIe
>>>
>>> For more details see the product pages for the SoM and the
>>> development kit:
>>>
>>> [1]
>>> https://www.phytec.eu/en/produkte/system-on-modules/phycore-am68x-tda4x/
>>> [2]
>>> https://www.phytec.eu/en/produkte/development-kits/phyboard-izar/
>>>
>>> Signed-off-by: Dominik Haller <d.haller@phytec.de>
>>> Acked-by: Moteen Shah <m-shah@ti.com>
>>> ---
>>>
>>> Notes:
>>>       Bootlog:
>>>
>>> [..]
>>> Please have bootph-all in case, this is boot device
> I only plan to add OSPI0 as boot source in mainline U-boot since
> booting from OSPI1/QSPI won't work with the same binaries.

Ok,


>>
>>> [..]
>>> +
>>> +   wkup_uart0_pins_default: wkup-uart0-default-pins {
>>> +           pinctrl-single,pins = <
>>> +                   J721S2_WKUP_IOPAD(0x070, PIN_INPUT, 0) /*
>>> (E25) WKUP_GPIO0_6.WKUP_UART0_CTSn */
>>> +                   J721S2_WKUP_IOPAD(0xas OSPI1/QSPI needs at
>>> least a different CONFIG_SF_DEFAULT_BUS.074, PIN_OUTPUT, 0) /*
>>> (F28) WKUP_GPIO0_7.WKUP_UART0_RTSn */
>>> +                   J721S2_WKUP_IOPAD(0x048, PIN_INPUT, 0) /*
>>> (D28) WKUP_UART0_RXD */
>>> +                   J721S2_WKUP_IOPAD(0x04c, PIN_OUTPUT, 0) /*
>>> (D27) WKUP_UART0_TXD */
>>> +           >;
>>> +           bootph-all;
>> Since this is shared with TIFS fw (debug prints), then i suggest not
>> to
>> have flow control on this UART
> So if you see the flow control pins causing issues with tifs I'll drop
> them. And if you recommend setting the wkup_uart0 to "reserved" in the
> devicetree by default to begin with I'll do that too.

For debug port, often flow control is not used.

I am not sure, what use case you are targeting with wkup_uart0.

But if possible , I suggest to leave this for fw usage,

reference EVM you can refer at below

https://github.com/torvalds/linux/blob/master/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts#L322 



>>
>>> +   };
>>> +};
>>> [..]

