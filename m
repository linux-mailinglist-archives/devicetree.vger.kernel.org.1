Return-Path: <devicetree+bounces-180465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65042AC3AD3
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 09:41:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D9420173CE8
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 07:41:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39EFE1E1E19;
	Mon, 26 May 2025 07:41:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="PvmG6it4"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5C311E1A33
	for <devicetree@vger.kernel.org>; Mon, 26 May 2025 07:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748245281; cv=none; b=EmbFdFfZWAzvWIllwhjFvTh70ACXe7TGg54d3pvHBDPOAxGvyNPHhC2CNcBDKFT3xpvF60p9Qtc5zHOYcNlJ72llkEUpNYiOaKZZ9PoMM6vWWIOQSshZIIRjItaoo7ErKyHsmL4uZJ8gTFaBe1Ydg2gbx9SHKOJrKjM4XW3TAkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748245281; c=relaxed/simple;
	bh=sYWQzxn3Yrg2VuPgsg00KeSMz/trr3CKiaOX/nwLuMw=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=d2sBAQDHE4hU8sJUnIS75WAk54gvL5I/DKI8ojv0NwBedTo6yQnhjnXHZDa9e85QGeKkcpQ8KZKkW5xNuMEBIaA+l+7MvC0eaX9qWo9+EK4plbeTjvBigGuewd6SI48LC0CHvi0e0ghWHBZEYE6wNnICMZh8N6204QHB1MjWzsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=PvmG6it4; arc=none smtp.client-ip=198.47.23.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllvem-sh04.itg.ti.com ([10.64.41.54])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTP id 54Q7fBJ51487069;
	Mon, 26 May 2025 02:41:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1748245271;
	bh=Z4qHxF4gyCtPcoRPT+fHFC938Rc5DybOoRZ1bh0zYyM=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=PvmG6it4+lo3umLNRCsaT5qs/+XjbsG8V2wtq4rcr0rVwG9b9BYFYpqw2tSplvZbo
	 qss2E8lmX8fVviSUbIjh9IlfRulQwIVWy0DSj/hg4ucyVYhd9oa5cfsFRz9KbpnIqv
	 PlFuIksRwnfNvaNZMU9tOdbTZ0xPwjWtk+2nrH1s=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
	by fllvem-sh04.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 54Q7fBlx1993891
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Mon, 26 May 2025 02:41:11 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 26
 May 2025 02:41:10 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 26 May 2025 02:41:10 -0500
Received: from [10.24.68.154] (a0507176-hp-z2-tower-g9-workstation-desktop-pc.dhcp.ti.com [10.24.68.154])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 54Q7f6ko2664772;
	Mon, 26 May 2025 02:41:07 -0500
Message-ID: <ee73d587-59fd-4109-ae29-2237f1d3c954@ti.com>
Date: Mon, 26 May 2025 13:11:06 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ti: Modify J784S4 SoC SERDES lane controller
 register length
To: "Kumar, Udit" <u-kumar1@ti.com>, <nm@ti.com>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
CC: <n-francis@ti.com>, Gokul Praveen <g-praveen@ti.com>
References: <20250523134946.144461-1-g-praveen@ti.com>
 <80d7fc2f-1e96-45b6-a897-f5f4c9bb8288@ti.com>
Content-Language: en-US
From: Gokul Praveen <g-praveen@ti.com>
In-Reply-To: <80d7fc2f-1e96-45b6-a897-f5f4c9bb8288@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea


Hi Udit,

On 23/05/25 22:55, Kumar, Udit wrote:
> Hello Gokul
> 
> On 5/23/2025 7:19 PM, Gokul Praveen wrote:
>> Modify the J784S4 SoC SERDES lane controller register length from 0x30 
>> to 0x50
>> to enable SERDES4 registers.
>>
>> 'Fixes:9cc161a4509c2("arm64: dts: ti: Refactor J784s4 SoC files to a 
>> common
>> file")'
>> Signed-off-by: Gokul Praveen <g-praveen@ti.com>
>> ---
>>   arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi 
>> b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
>> index 1944616ab357..1fc0a11c5ab4 100644
>> --- a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
>> @@ -77,7 +77,7 @@ pcie1_ctrl: pcie1-ctrl@4074 {
>>           serdes_ln_ctrl: mux-controller@4080 {
>>               compatible = "reg-mux";
>> -            reg = <0x00004080 0x30>;
>> +            reg = <0x00004080 0x50>;
> 
> I assume above is already fixed with below patch >
> https://lore.kernel.org/all/20250423151612.48848-1-s-vadapalli@ti.com
> 
> or I am missing something

Yes,its the same fix Udit.Thanks for informing that.
> 
> 
> 
>>               #mux-control-cells = <1>;
>>               mux-reg-masks = <0x0 0x3>, <0x4 0x3>, /* SERDES0 lane0/1 
>> select */
>>                       <0x8 0x3>, <0xc 0x3>, /* SERDES0 lane2/3 select */

Regards
Gokul

