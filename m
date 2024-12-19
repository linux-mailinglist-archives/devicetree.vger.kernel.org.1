Return-Path: <devicetree+bounces-132785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF819F81BC
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 18:26:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DEB68189633B
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 17:21:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2800219D08F;
	Thu, 19 Dec 2024 17:20:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 351B417DE16;
	Thu, 19 Dec 2024 17:20:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734628814; cv=none; b=PbGsM2RwDLivE8W+SILQoIzXosEhKMpbMBi04Jz5mC8VpWc/qT37kL7pUQdZGh2+x1YV2VMJnSw+dTYWad9k1UjorQyIEj5zJpI207dpTJ+uUDRYANxLdweyGRoLE58ZErwP+YL3EUm7KAuKD1dRGiJfhdnoYp+Zk6MqezxRGP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734628814; c=relaxed/simple;
	bh=6U8MfpUUkjDu4nrVt9FbtDWpoSA/Y2+ksf/PaWNbBV4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F49zRsOXWoP7M1emubaZJgGPGNQlu6hdWZlmYwV8T3p34piI5BtnmIvMwVavCfL2pAhC3e3iUbnDpIB+2FqHnHsA7u3eG7cD8LevieECkyDTXTkjIJvkCPjrnNAELvSiuFYvZuGM2oTRsIecoGNanUMAL9n93eG8AySrDh9LFEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A99E11480;
	Thu, 19 Dec 2024 09:20:39 -0800 (PST)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AB2953F528;
	Thu, 19 Dec 2024 09:20:10 -0800 (PST)
Message-ID: <0ebfe23b-be90-4007-babe-02fc6476869a@arm.com>
Date: Thu, 19 Dec 2024 17:20:09 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/8] arm64: dts: morello: Add support for soc dts
To: Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Sudeep Holla <sudeep.holla@arm.com>, Rob Herring <robh@kernel.org>
References: <20241213163221.3626261-1-vincenzo.frascino@arm.com>
 <20241213163221.3626261-5-vincenzo.frascino@arm.com>
 <c01fab26-876f-4ffa-9360-c6746bbb467e@kernel.org>
Content-Language: en-US
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
In-Reply-To: <c01fab26-876f-4ffa-9360-c6746bbb467e@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 14/12/2024 10:12, Krzysztof Kozlowski wrote:
> On 13/12/2024 17:32, Vincenzo Frascino wrote:
>> The Morello architecture is an experimental extension to Armv8.2-A,
>> which extends the AArch64 state with the principles proposed in
>> version 7 of the Capability Hardware Enhanced RISC Instructions
>> (CHERI) ISA.
>>
>> Introduce Morello SoC dts.
> 
> So Morello is an architecture, not a board or platform? You cannot have
> both...
> 
> 

So, Morello is an architecture an SoC and a platform.

To distinguish them I propose:
- arm,morello for # the SoC
- arm,morello-sdp # for the platform.

sdp: Software Development Platform.

> 
> 
>>
>> Cc: Sudeep Holla <sudeep.holla@arm.com>
>> Cc: Rob Herring <robh@kernel.org>
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>> ---
>>  arch/arm64/boot/dts/arm/morello-soc.dts | 267 ++++++++++++++++++++++++
>>  1 file changed, 267 insertions(+)
>>  create mode 100644 arch/arm64/boot/dts/arm/morello-soc.dts
>>
>> diff --git a/arch/arm64/boot/dts/arm/morello-soc.dts b/arch/arm64/boot/dts/arm/morello-soc.dts
>> new file mode 100644
>> index 000000000000..3c5247121e4d
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/arm/morello-soc.dts
>> @@ -0,0 +1,267 @@
>> +// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
>> +/*
>> + * Copyright (c) 2021-2024, Arm Limited. All rights reserved.
>> +
>> + */
>> +
>> +/dts-v1/;
>> +#include "morello.dtsi"
>> +
>> +/ {
>> +	model = "Arm Morello System Development Platform";
>> +
>> +	chosen {
>> +		stdout-path = "serial0:115200n8";
>> +	};
>> +
>> +	reserved-memory {
>> +		#address-cells = <2>;
>> +		#size-cells = <2>;
>> +		ranges;
>> +
>> +		secure-firmware@ff000000 {
>> +			reg = <0 0xff000000 0 0x01000000>;
>> +			no-map;
>> +		};
>> +	};
>> +
>> +	cpus {
>> +		#address-cells = <2>;
>> +		#size-cells = <0>;
>> +		cpu0: cpu0@0 {
>> +			compatible = "arm,neoverse-n1";
>> +			reg = <0x0 0x0>;
>> +			device_type = "cpu";
>> +			enable-method = "psci";
>> +			clocks = <&scmi_dvfs 0>;
>> +		};
>> +		cpu1: cpu1@100 {
>> +			compatible = "arm,neoverse-n1";
>> +			reg = <0x0 0x100>;
>> +			device_type = "cpu";
>> +			enable-method = "psci";
>> +			clocks = <&scmi_dvfs 0>;
>> +		};
>> +		cpu2: cpu2@10000 {
>> +			compatible = "arm,neoverse-n1";
>> +			reg = <0x0 0x10000>;
>> +			device_type = "cpu";
>> +			enable-method = "psci";
>> +			clocks = <&scmi_dvfs 1>;
>> +		};
>> +		cpu3: cpu3@10100 {
>> +			compatible = "arm,neoverse-n1";
>> +			reg = <0x0 0x10100>;
>> +			device_type = "cpu";
>> +			enable-method = "psci";
>> +			clocks = <&scmi_dvfs 1>;
>> +		};
>> +	};
>> +
>> +	/* The first bank of memory, memory map is actually provided by UEFI. */
>> +	memory@80000000 {
>> +		device_type = "memory";
>> +		/* [0x80000000-0xffffffff] */
>> +		reg = <0x00000000 0x80000000 0x0 0x7F000000>;
>> +	};
>> +
>> +	memory@8080000000 {
>> +		device_type = "memory";
>> +		/* [0x8080000000-0x83f7ffffff] */
>> +		reg = <0x00000080 0x80000000 0x3 0x78000000>;
>> +	};
>> +
>> +	smmu_pcie: iommu@4f400000 {
> 
> This all is weird. MMIO nodes outside of soc, soc pieces defined in DTS
> instead of DTSI.
> 
> Please look first how all other DTS and DTSI are done. Also carefully
> read DTS coding style.
> 
>

All right, will do.


> 
> Best regards,
> Krzysztof

-- 
Regards,
Vincenzo


