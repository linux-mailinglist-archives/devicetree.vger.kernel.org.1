Return-Path: <devicetree+bounces-29813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAE4824D8C
	for <lists+devicetree@lfdr.de>; Fri,  5 Jan 2024 04:57:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 06B291C21C6E
	for <lists+devicetree@lfdr.de>; Fri,  5 Jan 2024 03:57:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC3DE4405;
	Fri,  5 Jan 2024 03:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="eubRL2z+"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFDA7440E;
	Fri,  5 Jan 2024 03:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 4053unah124949;
	Thu, 4 Jan 2024 21:56:49 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1704427009;
	bh=eCcQINE1gNlg8v+eYFOWY5Ps37bGRwJ7TfV5v+LjEzM=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=eubRL2z+4ymoCTLm/V27akX7aREf1HvCUTPnJDdDzoA977fUBxF6UHfvWxmnkjvuY
	 +Vhf5B8u0z9TwZjjzY14yH4GM/3h+efvsM/dZ4G1Zcvz601JB6hAb5RAQ2lmjzkONy
	 KrltyGysFc/y1MYmCwimbTTzll8j9mA37ch8/7wE=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 4053unRA043379
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 4 Jan 2024 21:56:49 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 4
 Jan 2024 21:56:49 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 4 Jan 2024 21:56:48 -0600
Received: from [172.24.227.36] (a0497641-hp-z2-tower-g9-workstation-desktop-pc.dhcp.ti.com [172.24.227.36])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 4053ujBL126449;
	Thu, 4 Jan 2024 21:56:46 -0600
Message-ID: <f930c208-b121-4416-afc9-26812471e1ab@ti.com>
Date: Fri, 5 Jan 2024 09:26:45 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: ti: k3-j721e: Add support for DFS in J721E
 A72
Content-Language: en-US
To: Nishanth Menon <nm@ti.com>
CC: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <vigneshr@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <a-nandan@ti.com>, <kristo@kernel.org>, <u-kumar1@ti.com>
References: <20240104111922.832040-1-n-francis@ti.com>
 <20240104151650.my3cuhgase4yf7gj@luminance>
From: Neha Malcom Francis <n-francis@ti.com>
In-Reply-To: <20240104151650.my3cuhgase4yf7gj@luminance>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Hi Nishanth,

On 04/01/24 20:46, Nishanth Menon wrote:
> On 16:49-20240104, Neha Malcom Francis wrote:
>> Add 2G, 1G, 500M and 250M as the supported frequencies for A72. This
>> enables support for Dynamic Frequency Scaling (DFS). Note that Dynamic
>> Voltage and Frequency Scaling (DVFS) is not supported on J7 devices.
>>
>> J721E SoC has three different speed grade devices (see [1], 7.5
>> Operating Performance Points) which as of today are indiscernible in
>> software, users of a different speed grade device must manually change
>> the DTS to ensure their maximum speed frequency is supported.
>>
>> To obtain clock-latency-ns, the maximum time was found to switch from/to
>> any frequency for a CPU and this value was rounded off and set.
>>
>> [1] https://www.ti.com/lit/gpn/tda4vm
>>
>> Signed-off-by: Neha Malcom Francis <n-francis@ti.com>
>> ---
>> Test and boot logs:
>> https://gist.github.com/nehamalcom/33608837ab5ad3332ff11a7fa7a602e2
>>
>> Changes since v1:
>> https://lore.kernel.org/all/20231214075637.176586-1-n-francis@ti.com/
>> - removed OPPs 1.5G and 750M as they introduced boot regression in
>>    J721E-SK
> 
> I do not think this is the right approach precisely for the above
> reason.
> 
> See my comment in V1: https://lore.kernel.org/all/20231214125130.zqtq6ioj4c533wha@elbow/
> 
> "
> I am also concerned if the table should be separated out as a dtsi and
> included at board.dts level to prevent downstream users going crazy..
> "
> 
> I suspect there is no magic opp configuration that will work with all
> downstream and board variations. instead of creating a trimmed down
> non-datasheet tuples of OPP configuration, use the data sheet provided
> OPP configurations into each dtsi and the boards can apply the dtsi
> based on the type of sample they have.
> 
> I don't see any other scheme (overlays, maybe?).. but this approach is
> broken and your note above proves why this approach is broken.
> 

Understood... I believed OPPs were an SoC specific thing until this failure came 
about and it makes sense to take it at the board level now. Will factor this in 
for v3.

>> - Nishanth
>> 	- indicated DVFS not supported in commit message
>> 	- moved critical data sheet info from below tear line to commit
>> 	  message
>> 	- added opp-shared property
>> 	- added clock-latency-ns property
>>
>>   arch/arm64/boot/dts/ti/k3-j721e.dtsi | 31 ++++++++++++++++++++++++++++
>>   1 file changed, 31 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-j721e.dtsi b/arch/arm64/boot/dts/ti/k3-j721e.dtsi
>> index a200810df54a..5de6c70bd989 100644
>> --- a/arch/arm64/boot/dts/ti/k3-j721e.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-j721e.dtsi
>> @@ -48,6 +48,9 @@ cpu0: cpu@0 {
>>   			d-cache-line-size = <64>;
>>   			d-cache-sets = <256>;
>>   			next-level-cache = <&L2_0>;
>> +			clocks = <&k3_clks 202 2>;
>> +			clock-names = "cpu";
>> +			operating-points-v2 = <&cpu0_opp_table>;
>>   		};
>>   
>>   		cpu1: cpu@1 {
>> @@ -62,6 +65,34 @@ cpu1: cpu@1 {
>>   			d-cache-line-size = <64>;
>>   			d-cache-sets = <256>;
>>   			next-level-cache = <&L2_0>;
>> +			clocks = <&k3_clks 203 0>;
>> +			clock-names = "cpu";
>> +			operating-points-v2 = <&cpu0_opp_table>;
>> +		};
>> +	};
>> +
>> +	cpu0_opp_table: opp-table {
>> +		compatible = "operating-points-v2";
>> +		opp-shared;
>> +
>> +		opp6-2000000000 {
>> +			opp-hz = /bits/ 64 <2000000000>;
>> +			clock-latency-ns = <300000>;
>> +		};
>> +
>> +		opp4-1000000000 {
>> +			opp-hz = /bits/ 64 <1000000000>;
>> +			clock-latency-ns = <300000>;
>> +		};
>> +
>> +		opp2-500000000 {
>> +			opp-hz = /bits/ 64 <500000000>;
>> +			clock-latency-ns = <300000>;
>> +		};
>> +
>> +		opp1-250000000 {
>> +			opp-hz = /bits/ 64 <250000000>;
>> +			clock-latency-ns = <300000>;
>>   		};
>>   	};
>>   
>> -- 
>> 2.34.1
>>
> 

-- 
Thanking You
Neha Malcom Francis

