Return-Path: <devicetree+bounces-132598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DFC9F78B0
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 10:42:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BF7B1165216
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 09:41:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 819A4221473;
	Thu, 19 Dec 2024 09:41:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8080A221459;
	Thu, 19 Dec 2024 09:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734601314; cv=none; b=nBlDcAn/WDdi3y9zPNS2lc2Pm4Hnd8NsqzEYnBrc/Fexq9bSUpk8VNZEj0r2Z72HiVyzZ5mBETW/EKZXRFwP95vE5tRIcpqWwNKPp4PGJjS3uHYmEBGOyaQmUn+qfOfNhnFaEmFbhP9i0KrwP9U1TOEHF9FhEx8gboGmLetcvcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734601314; c=relaxed/simple;
	bh=fMKYSxROt3LrHu7//XrbAkdEvS91eTOrtOHKY9av6pU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rr6d8rqXoXnnGFnr8gy1pGJHgay2VN5PMWaml/8aqfveTj4hdX/tm60cPTBBa9kj6YhrUh0Ekuh5UFwKzynnjRc0I5Vsspz8w/Wi7ZM0CVnmi/2Ze2aIhGFgBKEjBT+K8cU6+PHr96IMvYZ1zL2YmKjdOMOyCxpkw2ig43g35dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
Received: from [IPV6:2605:59c8:31de:bf00:37c2:fe62:c21b:ab46] (unknown [IPv6:2605:59c8:31de:bf00:37c2:fe62:c21b:ab46])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id E20F8B221243;
	Thu, 19 Dec 2024 10:41:38 +0100 (CET)
Message-ID: <4ae45ee4-69ed-4fe8-9350-9f83c13a9c89@freeshell.de>
Date: Thu, 19 Dec 2024 01:41:36 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] riscv: dts: starfive: jh7110-common: Use named definition
 for mmc1 card detect
To: Conor Dooley <conor@kernel.org>
Cc: Hal Feng <hal.feng@starfivetech.com>,
 Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Jianlong Huang <jianlong.huang@starfivetech.com>,
 Jisheng Zhang <jszhang@kernel.org>, Conor Dooley
 <conor.dooley@microchip.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Emil Renner Berthing <emil.renner.berthing@canonical.com>
References: <20241210040652.164030-1-e@freeshell.de>
 <20241216-elixir-cupped-f7a83bce4e12@spud>
 <ZQ2PR01MB1307F1FC7EEB8701525AC9DEE604A@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
 <bd4df536-0a5d-4ba9-ad0c-51a7828acd9c@freeshell.de>
 <20241217-strained-latch-52bf7d03716d@spud>
Content-Language: en-US
From: E Shattow <e@freeshell.de>
In-Reply-To: <20241217-strained-latch-52bf7d03716d@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/17/24 10:33, Conor Dooley wrote:
> On Mon, Dec 16, 2024 at 07:25:59PM -0800, E Shattow wrote:
>> Hi, Hal
>>
>> On 12/16/24 18:02, Hal Feng wrote:
>>>> On 17.12.24 04:13, Conor Dooley wrote:
>>>> On Mon, 09 Dec 2024 20:06:46 -0800, E Shattow wrote:
>>>>> Use named definition for mmc1 card detect GPIO instead of numeric literal.
>>>>>
>>>>>
>>>>
>>>> Applied to riscv-dt-for-next, thanks!
>>>>
>>>> [1/1] riscv: dts: starfive: jh7110-common: Use named definition for mmc1
>>>> card detect
>>>>         https://git.kernel.org/conor/c/c96f15d79172
>>>
>>> No, here "41" means the GPIO number, but GPI_SYS_SDIO1_CD means the
>>> multiplexed function and should be used by pinctrl pinmux not gpio subsystem.
>>> Although GPI-SYS_SDIO1_CD is numerically the same as 41.
>>>
>>> Best regards,
>>> Hal
>>
>> You're right, Hal. I'm confused trying to make sense of this.
>>
>>  From dts/upstream/src/riscv/starfive/jh7110-pinfunc.h:
>>
>> "gpio nr:  gpio number, 0 - 63"
>>
>> And yet in dts/upstream/src/riscv/starfive/jh7110-common.dtsi there's:
>>
>>>                         pinmux = <PINMUX(64, 0)>,
>>>                                  <PINMUX(65, 0)>,
>>>                                  <PINMUX(66, 0)>,
>>>                                  <PINMUX(67, 0)>,
>>>                                  <PINMUX(68, 0)>,
>>>                                  <PINMUX(69, 0)>,
>>>                                  <PINMUX(70, 0)>,
>>>                                  <PINMUX(71, 0)>,
>>>                                  <PINMUX(72, 0)>,
>>>                                  <PINMUX(73, 0)>;
>>
>>
>> Loosely on the subject of MMC interface and GPIO numbering, what is the
>> above code doing? These are not GPIO numbers 0-63 so what is this?
>>
>> I'm trying to understand this so I can write the Mars CM (-Lite) dts.
>>
> 
> 
>> Conor, and Hal: sorry for the mistake there.
> 
> No worries, I've dropped the patch.

Okay. I was able to find pad definitions in the vendor Linux source: 
https://github.com/starfive-tech/linux/blob/5dfc879916d946dcc2521ef1eccd1d8bfb06a75e/include/dt-bindings/pinctrl/starfive%2Cjh7110-pinfunc.h

There are definitions for GPIO indexes beyond 0-63:

 > #define   PAD_SD0_CLK     64
 > #define   PAD_SD0_CMD     65
 > #define   PAD_SD0_DATA0   66
 > #define   PAD_SD0_DATA1   67
 > #define   PAD_SD0_DATA2   68
 > #define   PAD_SD0_DATA3   69
 > #define   PAD_SD0_DATA4   70
 > #define   PAD_SD0_DATA5   71
 > #define   PAD_SD0_DATA6   72
 > #define   PAD_SD0_DATA7   73
 > #define   PAD_SD0_STRB    74
 > #define   PAD_GMAC1_MDC   75
 > #define   PAD_GMAC1_MDIO  76
 > #define   PAD_GMAC1_RXD0  77
 > #define   PAD_GMAC1_RXD1  78
 > #define   PAD_GMAC1_RXD2  79
 > #define   PAD_GMAC1_RXD3  80
 > #define   PAD_GMAC1_RXDV  81
 > #define   PAD_GMAC1_RXC   82
 > #define   PAD_GMAC1_TXD0  83
 > #define   PAD_GMAC1_TXD1  84
 > #define   PAD_GMAC1_TXD2  85
 > #define   PAD_GMAC1_TXD3  86
 > #define   PAD_GMAC1_TXEN  87
 > #define   PAD_GMAC1_TXC   88
 > #define   PAD_QSPI_SCLK   89
 > #define   PAD_QSPI_CSn0   90
 > #define   PAD_QSPI_DATA0  91
 > #define   PAD_QSPI_DATA1  92
 > #define   PAD_QSPI_DATA2  93
 > #define   PAD_QSPI_DATA3  94

Where I got lost is that these are in mainline with 
include/dt-bindings/pinctrl/starfive,jh7110-pinctrl.h

I did not find these pad definitions above index 63 mentioned in the 
JH7110 Technical Reference Manual.

Is it worth sending a patch to use those definitions in jh7110-common.dtsi?

-E

