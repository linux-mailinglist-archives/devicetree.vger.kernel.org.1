Return-Path: <devicetree+bounces-141485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B33A20E87
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 17:27:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C03353A787F
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 16:27:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 764A41DE2C0;
	Tue, 28 Jan 2025 16:27:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="xEld7KT9"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot03.ext.ti.com (fllvem-ot03.ext.ti.com [198.47.19.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 781851DD88E;
	Tue, 28 Jan 2025 16:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.245
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738081640; cv=none; b=QHiMhEkkrLr5QBsb0TqNCjTrXc0B2SI3pPB7Sp4M4AlEFEwBxWd5jMO23XIBeOLSYCeBrbfuycXjG9El6j2iBL1wMvzWDGmtPijv5ih3BwsKwaNXJKxIiPLcsBXI97NNxX7JMTUZHx27Dm8FSC4oFmRA6yh1CYpvL+5L4Tbxq0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738081640; c=relaxed/simple;
	bh=F5EKCT5c1ITZ5+JYI2KVdo4O1adnaZxGxVOQ15Cfnms=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=b5WeDIBsv+4Hl1ajRSc0u9Q4N3xznClO+oGAsaLiAhyOVv/TNrmDOESAxErFnzXho6UG0rVVcXvb+P2vURHjBByJxmOpFmL/xHkREV6muQCMUFQrnqdCDt55ByfkDUWoNYcDry2na5KjQAzGGFYZWyNDBtgbzwYOCIieTnhuM9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=xEld7KT9; arc=none smtp.client-ip=198.47.19.245
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllvem-ot03.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 50SGRCHl1991342
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 28 Jan 2025 10:27:12 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1738081632;
	bh=cC0KMS0vR8Sacv6KHUAZ+n02/v/BMfPwtB7yIm17/P8=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=xEld7KT9eRIA/7mzjTT9W4raW+WMASjsjsN6IHKWABf2f4WKkIqdWk2WBJUtnOyU4
	 q63Rm9RXiRuCdduncfAzTtIVRR/kt/M2YDTo48fc6wqo0pM3fyfrdoANnW06IsbJ6a
	 VGhLLH/cjdyELze/3ceAaz8A7NALP2cWqYc9HtmQ=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 50SGRCxj024979
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 28 Jan 2025 10:27:12 -0600
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 28
 Jan 2025 10:27:11 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 28 Jan 2025 10:27:11 -0600
Received: from [128.247.81.105] (judy-hp.dhcp.ti.com [128.247.81.105])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 50SGRBoE088372;
	Tue, 28 Jan 2025 10:27:11 -0600
Message-ID: <6d896633-0545-4e2c-ac7d-a05686a0df49@ti.com>
Date: Tue, 28 Jan 2025 10:27:11 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] arm64: dts: ti: k3-am62-wakeup: Add wakeup r5f node
To: Andrew Davis <afd@ti.com>, Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra
	<vigneshr@ti.com>
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Devarsh Thakkar
	<devarsht@ti.com>,
        Hari Nagalla <hnagalla@ti.com>
References: <20250127221631.3974583-1-jm@ti.com>
 <20250127221631.3974583-2-jm@ti.com>
 <950a1e23-a943-41b0-979a-4e7a4a264fdd@ti.com>
Content-Language: en-US
From: Judith Mendez <jm@ti.com>
In-Reply-To: <950a1e23-a943-41b0-979a-4e7a4a264fdd@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi Andrew,

On 1/28/25 10:22 AM, Andrew Davis wrote:
> On 1/27/25 4:16 PM, Judith Mendez wrote:
>> From: Hari Nagalla <hnagalla@ti.com>
>>
>> AM62 SoC devices have a single core R5F processor in wakeup domain.
>> The R5F processor in wakeup domain is used as a device manager
>> for the SoC.
>>
>> Co-authored-by: Devarsh Thakkar <devarsht@ti.com>
>> Signed-off-by: Hari Nagalla <hnagalla@ti.com>
>> [Judith: Fix commit message header]
>> Signed-off-by: Judith Mendez <jm@ti.com>
>> ---
>>   arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi | 24 ++++++++++++++++++++++
>>   1 file changed, 24 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi 
>> b/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi
>> index 9b8a1f85aa15c..79708c1c214f8 100644
>> --- a/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi
>> @@ -106,6 +106,30 @@ wkup_rti0: watchdog@2b000000 {
>>           status = "reserved";
>>       };
>> +    wkup_r5fss0: r5fss@78000000 {
>> +        compatible = "ti,am62-r5fss";
>> +        #address-cells = <1>;
>> +        #size-cells = <1>;
>> +        ranges = <0x78000000 0x00 0x78000000 0x8000>,
>> +                 <0x78100000 0x00 0x78100000 0x8000>;
>> +        power-domains = <&k3_pds 119 TI_SCI_PD_EXCLUSIVE>;
>> +
>> +        wkup_r5fss0_core0: r5f@78000000 {
>> +            compatible = "ti,am62-r5f";
>> +            reg = <0x78000000 0x00008000>,
>> +                  <0x78100000 0x00008000>;
>> +            reg-names = "atcm", "btcm";
>> +            ti,sci = <&dmsc>;
>> +            ti,sci-dev-id = <121>;
>> +            ti,sci-proc-ids = <0x01 0xff>;
>> +            resets = <&k3_reset 121 1>;
>> +            firmware-name = 
>> "ti-sysfw/ti-fs-stub-firmware-am62x-gp-signed.bin";
> 
> What is this firmware name? This doesn't exist in linux-firmware,
> should use the normal name like "am62-wkup-r5f0_0-fw", then we
> can use symlinks in our userspace to map to whatever firmware we
> want to run.

Understood, will respin with fixed name, thanks.

~ Judith

> 
> Andrew
> 
>> +            ti,atcm-enable = <1>;
>> +            ti,btcm-enable = <1>;
>> +            ti,loczrama = <1>;
>> +        };
>> +    };
>> +
>>       wkup_vtm0: temperature-sensor@b00000 {
>>           compatible = "ti,j7200-vtm";
>>           reg = <0x00 0xb00000 0x00 0x400>,


