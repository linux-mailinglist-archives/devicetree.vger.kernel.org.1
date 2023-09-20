Return-Path: <devicetree+bounces-1598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF4A7A717E
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 06:17:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 704AA1C20A97
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 04:17:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A01C23AF;
	Wed, 20 Sep 2023 04:17:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97D2B20E0
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 04:17:45 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 021DA9C;
	Tue, 19 Sep 2023 21:17:41 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38K4HVxN044462;
	Tue, 19 Sep 2023 23:17:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695183451;
	bh=GUwHqxc3onQ7spFD8fjjdf2+aoWcY9FPLtzhvEFhHII=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=zT5WxjV4mqSn75di28081wd7911Dbwpa070x0Mmg9zwJSs/+Cgg6XKJRZWmTen6Em
	 vEdlj+O/C89ZuX+gLYNCNmIMWoGNv6DMQGV0ZKtkkhpMEy1iXWKAHL/rP1y8ehPBK9
	 RR9j4sByeJc9HVAyerIlAD1aYvqVAOhDTOTZZldI=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38K4HV4X010186
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 19 Sep 2023 23:17:31 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 19
 Sep 2023 23:17:31 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 19 Sep 2023 23:17:31 -0500
Received: from [172.24.227.83] (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38K4HRcY026403;
	Tue, 19 Sep 2023 23:17:28 -0500
Message-ID: <d5d98e74-97cf-62fc-c72c-9081073708d2@ti.com>
Date: Wed, 20 Sep 2023 09:47:27 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] arm64: dts: ti: k3-am654-base-board: Add I2C I/O expander
Content-Language: en-US
To: Andrew Davis <afd@ti.com>, <nm@ti.com>, <vigneshr@ti.com>
CC: <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
References: <20230919050340.16156-1-r-gunasekaran@ti.com>
 <3e4fb573-3439-5d5c-866d-75bc20732d92@ti.com>
From: Ravi Gunasekaran <r-gunasekaran@ti.com>
In-Reply-To: <3e4fb573-3439-5d5c-866d-75bc20732d92@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/19/23 5:51 PM, Andrew Davis wrote:
> On 9/19/23 12:03 AM, Ravi Gunasekaran wrote:
>> AM654 baseboard has two TCA9554 I/O expander on the WKUP_I2C0 bus.
>> The expander at address 0x38 is used to detect daughter cards.
>> Add a node for this I/O expander.
>>
>> Signed-off-by: Ravi Gunasekaran <r-gunasekaran@ti.com>
>> ---
>>   arch/arm64/boot/dts/ti/k3-am654-base-board.dts | 7 +++++++
>>   1 file changed, 7 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
>> index f5c26e9fba98..035b20386ef3 100644
>> --- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
>> +++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
>> @@ -381,6 +381,13 @@
>>           interrupt-controller;
>>           #interrupt-cells = <2>;
>>       };
>> +
>> +    pca9554_1: gpio@38 {
> 
> As this is at a lower address than the other expander(39), why
> not put it before that one to keep these in order?

Sure. I will reorder the placement of nodes.

> 
> Also, do you need the label(pca9554_1:) for anything, if not
> drop it for now.

The label is not needed at the moment. I will drop the label.

Thanks for reviewing the patch. I will make the changes and post v2.

> 
> Andrew
> 
>> +        compatible = "nxp,pca9554";
>> +        reg = <0x38>;
>> +        gpio-controller;
>> +        #gpio-cells = <2>;
>> +    };
>>   };
>>     &mcu_i2c0 {
>>
>> base-commit: dfa449a58323de195773cf928d99db4130702bf7

-- 
Regards,
Ravi

