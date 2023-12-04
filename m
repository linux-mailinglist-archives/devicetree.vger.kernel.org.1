Return-Path: <devicetree+bounces-21173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF31802ABB
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 05:12:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 57421280C43
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 04:12:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E4664A34;
	Mon,  4 Dec 2023 04:12:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="WQW1AIp9"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA69DD5;
	Sun,  3 Dec 2023 20:12:43 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B44CTFw072609;
	Sun, 3 Dec 2023 22:12:29 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701663149;
	bh=/frd/I0E8PCItu7auYP7y0viegT7LnlUyS8kGezkDwQ=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=WQW1AIp9c4e/tPIk1tPlLOl4jxAtRTM15MFJ0BQUxsFyQEPN04TgwQmcqlRO6NTIq
	 UYagCMLCy733mz9IsJ7Kk5rwifEz57nsZUjFPEymxemBWxEsW8L9hKoC8N6HvKQUiM
	 etjL23FzAVN1PahDaxs/DboiZovK70yKwx3XiBrI=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B44CT9P061178
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Sun, 3 Dec 2023 22:12:29 -0600
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Sun, 3
 Dec 2023 22:12:29 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Sun, 3 Dec 2023 22:12:29 -0600
Received: from [172.24.227.36] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B44COk1043073;
	Sun, 3 Dec 2023 22:12:24 -0600
Message-ID: <9eb2010a-5039-4b51-b0f6-5f92d6d80c9c@ti.com>
Date: Mon, 4 Dec 2023 09:42:23 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 0/7] Add TPS6594 PMIC support on several boards
To: "Kumar, Udit" <u-kumar1@ti.com>, <nm@ti.com>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <a-nandan@ti.com>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <eblanc@baylibre.com>,
        <jneanne@baylibre.com>, <aseketeli@baylibre.com>,
        <jpanis@baylibre.com>, <j-luthra@ti.com>, <vaishnav.a@ti.com>,
        <hnagalla@ti.com>, <devarsht@ti.com>
References: <20231128055230.342547-1-n-francis@ti.com>
 <2cbb60f0-3dfc-48f2-9b61-41adf14648c7@ti.com>
Content-Language: en-US
From: Neha Malcom Francis <n-francis@ti.com>
In-Reply-To: <2cbb60f0-3dfc-48f2-9b61-41adf14648c7@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Hi Udit,

On 04/12/23 09:39, Kumar, Udit wrote:
> 
> On 11/28/2023 11:22 AM, Neha Malcom Francis wrote:
>> TPS6594 is a Power Management IC which provides regulators and others
>> features like GPIOs, RTC, watchdog, ESMs (Error Signal Monitor), and
>> PFSM (Pre-configurable Finite State Machine). The SoC and the PMIC can
>> communicate through the I2C or SPI interfaces.
>> TPS6594 is the super-set device while TPS6593 and LP8764 are derivatives.
> 
> Please consider adding bootph property in avs regulator node.
> 
> Thanks
> 
> Udit
> 

Thanks for catching that, I'll send out v9 with the bootph property added.

> 
>> This series adds device tree nodes for TI TPS6594 PMICs found in the
>> following boards:
>> - J721EXSOMXEVM:
>>    Link: https://www.ti.com/tool/J721EXSOMXEVM
>> - J721S2XSOMXEVM:
>>    Link: https://www.ti.com/tool/J721S2XSOMXEVM
>> - J7200XSOMXEVM:
>>    Link: https://www.ti.com/tool/J7200XSOMXEVM
>> - J784S4XEVM
>>    Link: https://www.ti.com/tool/J784S4XEVM
>> - SK-AM69
>>    Link: https://www.ti.com/tool/SK-AM69
>> - SK-TDA4VM (J721E-SK)
>>    Link: https://www.ti.com/tool/SK-TDA4VM
>>
>> Boot Logs with required config (DONOTMERGE patch) enabled:
>> https://gist.github.com/nehamalcom/f47fcd6183360ed8a146c9ba456202c3
>> Boot Logs without config enabled:
>> https://gist.github.com/nehamalcom/58217b100e614ae55726f314e02b5001
>>
>> ---
>> Changes from v7:
>> https://lore.kernel.org/all/20231122104513.2335757-1-n-francis@ti.com/
>> - (New Patches) Add support for SK boards that have TPS6594xx PMIC
>>    present (J721E-SK and AM69-SK)
>> - Add DONOTMERGE defconfig patch to show test logs
>>
>> Changes from v6:
>> https://lore.kernel.org/all/20230810-tps6594-v6-0-2b2e2399e2ef@ti.com/
>> - Modify patch series to include only patches not merged (J7)
>> - Add boot logs for all affected boards
>>
>> Changes from v5:
>> https://lore.kernel.org/all/20230809-tps6594-v5-0-485fd3d63670@ti.com
>> - Range-diff: http://0x0.st/H_fD.diff
>> - Reword the patch fixing interrupt ranges for mcu domain gpio intr, and
>>    add Fixes: tag
>> - Also fix interrupt ranges for main domain gpio intr in the same patch
>> - Change pinctrl node names to end in -pins to fix dtbs_check warnings
>> - (New Patch) Enable TPS6594 in defconfig
>>
>> Changes from v4:
>> https://lore.kernel.org/all/20230727130908.10656-1-eblanc@baylibre.com/
>> - Range-diff: https://0x0.st/H_L7.diff
>> - Rebased on top of linux-next
>> - Fix min voltage on vdd_usb_3v3 regulator (ldo2) on j721e-som
>> - Use 3-hex-digit format for pinctrl values
>>
>> Changes from v3:
>> https://lore.kernel.org/all/20230417154832.216774-1-eblanc@baylibre.com/
>> - Rebased on top of v6.5-rc1.
>> - Change pinctrl number for irq pin as wkup_pmx0 was split on some boards.
>> - Use already present wkup_i2c0 node instead of creating a new one.
>>
>> Changes from v2:
>> https://lore.kernel.org/lkml/20230414112843.1358067-1-eblanc@baylibre.com/
>> - Change node name as per Krzysztof review.
>> - Add a fix for the interrupt range of wakeup gpio used by TPS6594 pmic
>>    on J784S4.
>>    The interruptions of the PMIC were not working before that.
>> - Remove dependencies on other patch series as that was a mistake, see
>>    https://lore.kernel.org/lkml/CRYY2V3HJ0CP.96JQ18PLZB3C@burritosblues/
>>
>> Changes from v1:
>> https://lore.kernel.org/lkml/20230329142948.833800-1-eblanc@baylibre.com/
>> - Harmonize regulators names across the different boards.
>> - Adjust AVS voltage range.
>> - Remove some outdated comments.
>> - Add PMIC to J784S4 board.
>> - Compatible string modified to match dt-bindings.
>> - Add gpio-controller and gpio-cells properties.
>>
>> Esteban Blanc (2):
>>    arm64: dts: ti: k3-j7200-som-p0: Add TP6594 family PMICs
>>    arm64: dts: ti: k3-j721s2-som-p0: Add TP6594 family PMICs
>>
>> Jerome Neanne (2):
>>    arm64: dts: ti: k3-j721e-som-p0: Add TP6594 family PMICs
>>    arm64: dts: ti: k3-j784s4-evm: Add support for TPS6594 PMIC
>>
>> Neha Malcom Francis (3):
>>    arm64: dts: ti: k3-am69-sk: Add support for TPS6594 PMIC
>>    arm64: dts: ti: k3-j721e-sk: Add TPS6594 family PMICs
>>    DONOTMERGE: arm64: defconfig: Enable TPS6594 PMIC for J7 devices
>>
>>   arch/arm64/boot/dts/ti/k3-am69-sk.dts        | 100 ++++++++++
>>   arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi  | 157 +++++++++++++++
>>   arch/arm64/boot/dts/ti/k3-j721e-sk.dts       | 154 ++++++++++++++
>>   arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi  | 163 +++++++++++++++
>>   arch/arm64/boot/dts/ti/k3-j721s2-som-p0.dtsi | 199 +++++++++++++++++++
>>   arch/arm64/boot/dts/ti/k3-j784s4-evm.dts     | 104 ++++++++++
>>   arch/arm64/configs/defconfig                 |   2 +-
>>   7 files changed, 878 insertions(+), 1 deletion(-)
>>

-- 
Thanking You
Neha Malcom Francis

