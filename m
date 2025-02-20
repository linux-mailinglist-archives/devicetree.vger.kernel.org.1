Return-Path: <devicetree+bounces-148955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FA2A3DD0E
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 15:38:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F1371174A48
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 14:36:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1D841C5F22;
	Thu, 20 Feb 2025 14:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="JJvQBzuL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E45F1E32BD
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 14:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.156.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740062214; cv=none; b=fKrmp2onjyVPpdG1m9XUI8oWjSN/RYOdOl9BcgGe7RQ49cqpkn7gR3Nx9T4OljjH2AzJFSu1fi1ow8DKMACn471cN3xb20s7MxgedaUsbWZzknxUhXDlDwb4CSnw34fQ0tvOStTCbG5dDYsnrsmmpuKw4669Mok5PzhgHhP9mZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740062214; c=relaxed/simple;
	bh=b/IjsmAntOgTykdp7E2rSd+9hOUy8W2m3Cz63I89g0k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gVJxBA+UKP4DAoiMNHaeWeWgHqodTV9sFQ+rJ0BXtv8B+lPY6DYf7O8CX4urWJP0Cl4vsH7y4GrjdXf03vn3PV7UgrsAz9l+mOyvqnSc+D0WxFedsTlb+t+gDGg6P8ElOF4m0UTeS+mI5kCy9dLyFK9njnCUfiY/r6JVZveXMOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=JJvQBzuL; arc=none smtp.client-ip=148.163.156.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0356517.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51KBGPnT012316;
	Thu, 20 Feb 2025 14:36:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pp1; bh=LvAve/
	4dkDe4Xg3pY33uohABuN5Ael5Y3OV6lbiTz/8=; b=JJvQBzuLGxq64136OfYCzU
	yvUE6dBAUN8BnQVzbCRrJQ4mN8xVHaEQC+ou770SGNls3AaJ9BuMrZXmt0kqfHYO
	A2DGViQvkEVQZkOxhsStz4GCBRRP4A3ZaEHPDmYp203rjjroOCw7fgxdeNnEoqCx
	stU/2BfFlIngjidKrTg/qmPq1n5c2LaRJYRF5qiKuEfMGCZV/CzwtwVHyqYhsNg2
	1hc064XMUj7Wr/DvOOZU3J8TW2FF6dnKAJ8qkTPOUj74m2B0GFFSepo7x0aDt5iC
	sUlKjfqwMdygHEA6pfbLzxUohL09GWC6U/YEQsGcoFiLxA800yXuwNS/d3Qug1gA
	==
Received: from ppma12.dal12v.mail.ibm.com (dc.9e.1632.ip4.static.sl-reverse.com [50.22.158.220])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44wreabxt0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 20 Feb 2025 14:36:42 +0000 (GMT)
Received: from pps.filterd (ppma12.dal12v.mail.ibm.com [127.0.0.1])
	by ppma12.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 51KBbF4l002336;
	Thu, 20 Feb 2025 14:36:41 GMT
Received: from smtprelay01.wdc07v.mail.ibm.com ([172.16.1.68])
	by ppma12.dal12v.mail.ibm.com (PPS) with ESMTPS id 44w03xaejt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 20 Feb 2025 14:36:40 +0000
Received: from smtpav06.wdc07v.mail.ibm.com (smtpav06.wdc07v.mail.ibm.com [10.39.53.233])
	by smtprelay01.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 51KEaekW29164202
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 20 Feb 2025 14:36:40 GMT
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 28C9E58054;
	Thu, 20 Feb 2025 14:36:40 +0000 (GMT)
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id CA5B558055;
	Thu, 20 Feb 2025 14:36:39 +0000 (GMT)
Received: from [9.61.48.195] (unknown [9.61.48.195])
	by smtpav06.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Thu, 20 Feb 2025 14:36:39 +0000 (GMT)
Message-ID: <97e9990b-7c08-41c7-aa8d-b6d13be2a2a7@linux.ibm.com>
Date: Thu, 20 Feb 2025 08:36:37 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] ARM: dts: aspeed: Add Balcones system
To: Andrew Jeffery <andrew@codeconstruct.com.au>,
        linux-aspeed@lists.ozlabs.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org
References: <20250219212735.1365050-1-eajames@linux.ibm.com>
 <20250219212735.1365050-4-eajames@linux.ibm.com>
 <379b87b84ae79ce6cb49ee27410e628518e0e269.camel@codeconstruct.com.au>
Content-Language: en-US
From: Eddie James <eajames@linux.ibm.com>
In-Reply-To: <379b87b84ae79ce6cb49ee27410e628518e0e269.camel@codeconstruct.com.au>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: teamT-6vmMHbdymMoxeWy7jWGTWxFoNu
X-Proofpoint-GUID: teamT-6vmMHbdymMoxeWy7jWGTWxFoNu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-20_06,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 priorityscore=1501 suspectscore=0 bulkscore=0 mlxscore=0 adultscore=0
 spamscore=0 impostorscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502200104


On 2/19/25 18:41, Andrew Jeffery wrote:
> Hi Eddie,
>
> I have some minor comments inline:
>
> On Wed, 2025-02-19 at 15:27 -0600, Eddie James wrote:
>> The Balcones system is similar to Bonnell but with a POWER11 processor.
> Can you add some commentary about the P11 dual vs quad changes here?


Yes I will.


>
>> Signed-off-by: Eddie James <eajames@linux.ibm.com>
>> ---
>>   arch/arm/boot/dts/aspeed/Makefile             |   1 +
>>   .../dts/aspeed/aspeed-bmc-ibm-balcones.dts    | 594 +++++++++++++
>>   .../arm/boot/dts/aspeed/ibm-power11-dual.dtsi | 779 ++++++++++++++++++
>>   .../arm/boot/dts/aspeed/ibm-power11-quad.dtsi | 769 +----------------
>>   4 files changed, 1376 insertions(+), 767 deletions(-)
>>   create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dts
>>   create mode 100644 arch/arm/boot/dts/aspeed/ibm-power11-dual.dtsi
>>
>> diff --git a/arch/arm/boot/dts/aspeed/Makefile b/arch/arm/boot/dts/aspeed/Makefile
>> index 2e5f4833a073b..71b2d67fdbac8 100644
>> --- a/arch/arm/boot/dts/aspeed/Makefile
>> +++ b/arch/arm/boot/dts/aspeed/Makefile
>> @@ -34,6 +34,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
>>          aspeed-bmc-facebook-yamp.dtb \
>>          aspeed-bmc-facebook-yosemitev2.dtb \
>>          aspeed-bmc-facebook-yosemite4.dtb \
>> +       aspeed-bmc-ibm-balcones.dtb \
>>          aspeed-bmc-ibm-blueridge.dtb \
>>          aspeed-bmc-ibm-bonnell.dtb \
>>          aspeed-bmc-ibm-everest.dtb \
>> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dts
>> new file mode 100644
>> index 0000000000000..0fe99a748b63b
>> --- /dev/null
>> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dts
>> @@ -0,0 +1,594 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later
>> +// Copyright 2025 IBM Corp.
>> +/dts-v1/;
>> +
>> +#include <dt-bindings/gpio/aspeed-gpio.h>
>> +#include <dt-bindings/i2c/i2c.h>
>> +#include <dt-bindings/leds/leds-pca955x.h>
>> +#include "aspeed-g6.dtsi"
>> +#include "ibm-power11-dual.dtsi"
>> +
>> +/ {
>> +       model = "Balcones";
>> +       compatible = "ibm,balcones-bmc", "aspeed,ast2600";
>> +
>>
> ...
>
>> +};
>> +
>> +&i2c0 {
>> +       status = "okay";
>> +
>> +       eeprom@51 {
>> +               compatible = "atmel,24c64";
>> +               reg = <0x51>;
>> +       };
>> +
>> +       gpio@20 {
> Can you please follow the DTS coding style and order the nodes by unit
> address?
>
> https://docs.kernel.org/devicetree/bindings/dts-coding-style.html#order-of-nodes
>
> Ordering the top-level label references alphabetically would be
> appreciated too. It doesn't seem like they're in an order reflecting
> e.g. the unit address, it feels kind of arbitrary.


Oops yep, I'll fix all these.


>
>> +               compatible = "ti,tca9554";
>> +               reg = <0x20>;
>> +               gpio-controller;
>> +               #gpio-cells = <2>;
>> +
>> +               gpio-line-names =
>> +                       "",
>> +                       "RUSSEL_FW_I2C_ENABLE_N",
>> +                       "RUSSEL_OPPANEL_PRESENCE_N",
>> +                       "BLYTH_OPPANEL_PRESENCE_N",
>> +                       "CPU_TPM_CARD_PRESENT_N",
>> +                       "",
>> +                       "",
>> +                       "DASD_BP_PRESENT_N";
>> +       };
>> +};
>> +
> ...
>
>> +
>> +&i2c5 {
>> +       status = "okay";
>> +
>> +       eeprom@52 {
>> +               compatible = "atmel,24c64";
>> +               reg = <0x52>;
>> +       };
>> +
>> +       temperature-sensor@4e {
> Ordering again here.
>
>> +               compatible = "ti,tmp435";
>> +               reg = <0x4e>;
>> +       };
>> +};
>>
> ...
>
>> +
>> +&kcs3 {
>> +       status = "okay";
>> +       aspeed,lpc-io-reg = <0xca2>;
>> +       aspeed,lpc-interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
>> +};
>> diff --git a/arch/arm/boot/dts/aspeed/ibm-power11-dual.dtsi b/arch/arm/boot/dts/aspeed/ibm-power11-dual.dtsi
>> new file mode 100644
>> index 0000000000000..e5f65258e082f
>> --- /dev/null
>> +++ b/arch/arm/boot/dts/aspeed/ibm-power11-dual.dtsi
>> @@ -0,0 +1,779 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later
>> +// Copyright 2025 IBM Corp.
>> +
>> +/ {
>>
> ...
>
>> +
>> +&fsim0 {
>> +       #address-cells = <2>;
>> +       #size-cells = <0>;
>> +       status = "okay";
>> +       bus-frequency = <100000000>;
>> +       cfam-reset-gpios = <&gpio0 ASPEED_GPIO(Q, 0) GPIO_ACTIVE_HIGH>;
>> +
>> +       cfam@0,0 {
>> +               reg = <0 0>;
>> +               #address-cells = <1>;
>> +               #size-cells = <1>;
>> +               chip-id = <0>;
>> +
>> +
> ...
>
>> +
>> +               sbefifo@2400 {
>> +                       compatible = "ibm,p9-sbefifo";
>> +                       reg = <0x2400 0x400>;
>> +
>> +                       occ {
>> +                               compatible = "ibm,p10-occ";
> I assume this doesn't need a new compatible for P11 (given you're
> moving it out of the quad DTSI).


That is correct. FSI all remains the same for P11.


Thanks for the review!

Eddie


>
> Andrew

