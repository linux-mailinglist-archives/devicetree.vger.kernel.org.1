Return-Path: <devicetree+bounces-25315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DE0812E28
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 12:07:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C48061C21498
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 11:07:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C752F3E48A;
	Thu, 14 Dec 2023 11:07:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="xVnYcrV3"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D50D199A;
	Thu, 14 Dec 2023 03:07:38 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BEB7IXs009855;
	Thu, 14 Dec 2023 05:07:18 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702552038;
	bh=MJdvSpo9tJ1Y6EEoQsVqXgql8Td3qFVMgQdjE+5SvuQ=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=xVnYcrV34L3QSOOFmVsRQlUZq80XvIjLyx8nKJLA8vIpeIC+Y6+BdXuqI8Q7aLiIy
	 olnyVpt7lf/flqmapKsdadr/kjpqfFi2pWXg+2ron9KA12VkcUctLsvCK73y72iPWO
	 8DEQnd0iovyH54MHw0k+yHyhx+MOrSgLHm1mHot0=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BEB7IlO116847
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 14 Dec 2023 05:07:18 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 14
 Dec 2023 05:07:17 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 14 Dec 2023 05:07:17 -0600
Received: from [10.24.69.37] (a0498981-hp-z2-tower-g5-workstation.dhcp.ti.com [10.24.69.37])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BEB7E0w093512;
	Thu, 14 Dec 2023 05:07:15 -0600
Message-ID: <6230e848-15b8-48ba-8af4-5f90d7e1408c@ti.com>
Date: Thu, 14 Dec 2023 16:37:13 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] arm64: dts: ti: Add Itap Delay Value For High Speed
 DDR
Content-Language: en-US
To: "Kumar, Udit" <u-kumar1@ti.com>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
CC: <conor+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <robh+dt@kernel.org>, <kristo@kernel.org>, <vigneshr@ti.com>,
        <nm@ti.com>
References: <20231201082045.790478-1-b-kapoor@ti.com>
 <30baf959-e486-4804-947b-516e53cce6fa@ti.com>
From: Bhavya Kapoor <b-kapoor@ti.com>
In-Reply-To: <30baf959-e486-4804-947b-516e53cce6fa@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180


On 06/12/23 12:01 am, Kumar, Udit wrote:
> Hi Bhavya
>
> On 12/1/2023 1:50 PM, Bhavya Kapoor wrote:
>> This Series adds Itap Delay Value for DDR52 speed mode for eMMC in
>> J7200 and for DDR50 speed mode for MMCSD in J721s2 and J784s4 SoC.
>>
>> Rebased to next-20231201
>>
>> Bhavya Kapoor (3):
>>    arm64: dts: ti: k3-j7200-main: Add Itap Delay Value For DDR52 speed
>>      mode
>>    arm64: dts: ti: k3-j721s2-main: Add Itap Delay Value For DDR50 speed
>>      mode
>>    arm64: dts: ti: k3-j784s4-main: Add Itap Delay Value For DDR50 speed
>>      mode
>
> Could you confirm, after adding itap values, above modes are working 
> fine apart from
>
> mode detection.
>
> Thanks
>
> Udit

Hi Udit, Below are the links to the test logs

j7200 ddr52 - 
https://gist.github.com/a0498981/f9b7b7d3592eaca591dec3e72de45585

j721s2 ddr50 - 
https://gist.github.com/a0498981/9861e1df3fe0fc7c050db4f7a8cc34b8

j784s4 ddr50 - 
https://gist.github.com/a0498981/7c598dd708424252e2629fe0c7458a6d

Thanks

~B-Kapoor

>
>
>> arch/arm64/boot/dts/ti/k3-j7200-main.dtsi  | 1 +
>>   arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi | 1 +
>>   arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi | 1 +
>>   3 files changed, 3 insertions(+)
>>

