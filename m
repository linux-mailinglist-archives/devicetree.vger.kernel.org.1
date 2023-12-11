Return-Path: <devicetree+bounces-23841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BFDCD80C7C7
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 12:17:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7B2672816C7
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 11:17:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35EFF35895;
	Mon, 11 Dec 2023 11:17:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Y8DiaeX3"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E0DEB0;
	Mon, 11 Dec 2023 03:17:07 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BBBGknS085705;
	Mon, 11 Dec 2023 05:16:46 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702293406;
	bh=fylZgBVW8i6eYuwRT+zXtBdya0Mm/BLDF11KB2kf4O8=;
	h=Date:CC:Subject:To:References:From:In-Reply-To;
	b=Y8DiaeX3iSpym58Lh2kBXEH2LoZDuNmRm1bYguvcqqSycOnXhlucl7CdxWx8FqgUp
	 P1vnM1VY3GTziiuSHEJtWCpY/ihet01OyKIhRfb/OWMLkIqRkfGD4dkPh9ax+OQz7S
	 0P4vE81r9VzjRa+3lF1NsMClEGUi6HyRBZyY3RBg=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BBBGkb0071434
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 11 Dec 2023 05:16:46 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 11
 Dec 2023 05:16:45 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 11 Dec 2023 05:16:45 -0600
Received: from [172.24.227.9] (uda0492258.dhcp.ti.com [172.24.227.9])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BBBGfgw063959;
	Mon, 11 Dec 2023 05:16:42 -0600
Message-ID: <750c2b6b-8f24-4b86-996f-6f50cf46d81b@ti.com>
Date: Mon, 11 Dec 2023 16:46:41 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
CC: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <r-gunasekaran@ti.com>,
        <srk@ti.com>, <s-vadapalli@ti.com>
Subject: Re: [PATCH v2 1/2] arm64: dts: ti: k3-j721e-evm: Add overlay for
 PCIE0 Endpoint Mode
Content-Language: en-US
To: Andrew Davis <afd@ti.com>
References: <20231115085204.3578616-1-s-vadapalli@ti.com>
 <20231115085204.3578616-2-s-vadapalli@ti.com>
 <c50f5dc2-8ab8-4213-a809-fcd4cd18589d@ti.com>
From: Siddharth Vadapalli <s-vadapalli@ti.com>
In-Reply-To: <c50f5dc2-8ab8-4213-a809-fcd4cd18589d@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Hello Andrew,

On 05/12/23 21:43, Andrew Davis wrote:
> On 11/15/23 2:52 AM, Siddharth Vadapalli wrote:
>> Add overlay to enable the PCIE0 instance of PCIe on J721E-EVM in
>> Endpoint mode of operation.
>>
>> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
>> ---
>>   arch/arm64/boot/dts/ti/Makefile               |  3 ++
>>   .../boot/dts/ti/k3-j721e-evm-pcie0-ep.dtso    | 53 +++++++++++++++++++
>>   2 files changed, 56 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-evm-pcie0-ep.dtso
>>
>> diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
>> index 77a347f9f47d..5620db44d4dc 100644
>> --- a/arch/arm64/boot/dts/ti/Makefile
>> +++ b/arch/arm64/boot/dts/ti/Makefile
>> @@ -66,6 +66,8 @@ dtb-$(CONFIG_ARCH_K3) += k3-j7200-evm.dtb
>>   k3-j721e-evm-dtbs := k3-j721e-common-proc-board.dtb
>> k3-j721e-evm-quad-port-eth-exp.dtbo
>>   dtb-$(CONFIG_ARCH_K3) += k3-j721e-beagleboneai64.dtb
>>   dtb-$(CONFIG_ARCH_K3) += k3-j721e-evm.dtb
>> +k3-j721e-evm-pcie0-ep-dtbs := k3-j721e-evm.dtb k3-j721e-evm-pcie0-ep.dtbo
>> +dtb-$(CONFIG_ARCH_K3) += k3-j721e-evm-pcie0-ep.dtb
> 
> Do you really need to produce this pre-combined DTB file? If you would rather
> just the overlay produced which could be applied at load-time (I prefer this),
> then you should do as Jai has done[0]. Add just the overlay, and test its
> application using a dummy target.

Thank you for pointing it out. I will implement your suggestion and post the v3
series.

-- 
Regards,
Siddharth.

