Return-Path: <devicetree+bounces-18183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 448A77F593C
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 08:30:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D8BF4B20B63
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 07:30:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41BA2168B2;
	Thu, 23 Nov 2023 07:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="D1gRKmlA"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4DD8109;
	Wed, 22 Nov 2023 23:29:53 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AN7Tjf3065713;
	Thu, 23 Nov 2023 01:29:45 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1700724585;
	bh=wy+AArczhqD2eJgxhDaS70CmHp/SA4oujPEr8UXrRwk=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=D1gRKmlAmIWn6tHkQ6PCEtbmo09lqJdHBzevP5EQvYCimfGvmA18lOaCTyI/BLP5y
	 onM9FweYP1kfYvgvA7T2w9lZPlPOx5CVZbRmrxTndG7+UU5HjrmU4pOAvYfoIo34M0
	 Sqz9JrhFDDYJavlqj49gruzYRLQ4/xGpqh0z96U4=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AN7Tj1w031488
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 23 Nov 2023 01:29:45 -0600
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 23
 Nov 2023 01:29:45 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 23 Nov 2023 01:29:45 -0600
Received: from [172.24.227.36] (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AN7Td5q114800;
	Thu, 23 Nov 2023 01:29:40 -0600
Message-ID: <42054d03-e1fe-4f57-a74d-9338dadb5e43@ti.com>
Date: Thu, 23 Nov 2023 12:59:39 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 0/4] Add TPS6594 PMIC support on several boards
To: Nishanth Menon <nm@ti.com>
CC: <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <a-nandan@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <eblanc@baylibre.com>, <jneanne@baylibre.com>,
        <aseketeli@baylibre.com>, <jpanis@baylibre.com>, <u-kumar1@ti.com>,
        <j-luthra@ti.com>, <vaishnav.a@ti.com>, <hnagalla@ti.com>,
        <devarsht@ti.com>
References: <20231122104513.2335757-1-n-francis@ti.com>
 <20231123072402.2pscgotxhc6mffe2@carnivore>
Content-Language: en-US
From: Neha Malcom Francis <n-francis@ti.com>
In-Reply-To: <20231123072402.2pscgotxhc6mffe2@carnivore>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Hi Nishanth,

On 23/11/23 12:54, Nishanth Menon wrote:
> On 16:15-20231122, Neha Malcom Francis wrote:
>> TPS6594 is a Power Management IC which provides regulators and others
>> features like GPIOs, RTC, watchdog, ESMs (Error Signal Monitor), and
>> PFSM (Pre-configurable Finite State Machine). The SoC and the PMIC can
>> communicate through the I2C or SPI interfaces.
>> TPS6594 is the super-set device while TPS6593 and LP8764 are derivatives.
>>
>> This series adds device tree nodes for TI TPS6594 PMICs found in the
>> following boards:
>> - J721EXSOMXEVM:
>>    Link: https://www.ti.com/tool/J721EXSOMXEVM
>> - J721S2XSOMXEVM:
>>    Link: https://www.ti.com/tool/J721S2XSOMXEVM
>> - J7200XSOMXEVM:
>>    Link: https://www.ti.com/tool/J7200XSOMXEVM
>> - J784S4XEVM
>>    Link: https://www.ti.com/tool/J784S4XEVM
>>
>> Boot Logs:
>> https://gist.github.com/nehamalcom/384cf594e37739a34f8a08664830e37a
>>
>> ---
>> Changes from v6:
>> https://lore.kernel.org/all/20230810-tps6594-v6-0-2b2e2399e2ef@ti.com/
>> - Modify patch series to include only patches not merged (J7)
>> - Add boot logs for all affected boards
> 
> So what changed for j721s2?
> https://lore.kernel.org/all/20230810024700.4qhgygd6mma4sw2u@kobold/
> 
> And, there is no defconfig patch? Then how did the test work? if you
> have done local .config changes, that should have been defconfig patch.

Sorry about that... sending a next version with the defconfig patch.

> 
> Also did you audit the SKs to make sure they don't need this?
> 

I did a test run across all SKs (although I didn't add that in the cover-letter) 
but didn't double-check whether they need it, I'll do that too, thanks for 
reviewing!

> 

-- 
Thanking You
Neha Malcom Francis

