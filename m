Return-Path: <devicetree+bounces-3696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F977AFE3E
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 10:25:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 8FB31B20BD3
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 08:25:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DD51F9CE;
	Wed, 27 Sep 2023 08:25:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C7E33F1
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 08:25:15 +0000 (UTC)
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBC67DE;
	Wed, 27 Sep 2023 01:25:13 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38R8P8Up005152;
	Wed, 27 Sep 2023 03:25:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695803108;
	bh=7JCLfOz6vi/ZAWl1OetwVW/EMHbMuWTaPqKghyNaO+Y=;
	h=Date:Subject:From:To:CC:References:In-Reply-To;
	b=JbWc0Vn0XWM0m+nIRLLef+FHhnyaOsTZIVWnTDD1Ny9QqX5OZN+7tkV4M7Vo8tYO9
	 IoAjPf8Frz2pzdcFl/ByTTLjlVdfhSrgWnmjdlP4yJGlM9IhX0cGm8Fo+vu8xJ8IPJ
	 KwdQKIP0ShgnkdQOaSrfLDjb14DJKCxrshJLmIf4=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38R8P8mT096569
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 27 Sep 2023 03:25:08 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 27
 Sep 2023 03:25:07 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 27 Sep 2023 03:25:07 -0500
Received: from [10.24.68.251] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38R8P4x5093336;
	Wed, 27 Sep 2023 03:25:04 -0500
Message-ID: <0dfcac11-13d1-32fe-9c85-3663bcc34177@ti.com>
Date: Wed, 27 Sep 2023 13:55:03 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v6 7/7] dts: ti: k3-j712s2-mcu: Add the mcu domain
 watchdog instances
Content-Language: en-US
From: "J, KEERTHY" <j-keerthy@ti.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, <robh+dt@kernel.org>,
        <nm@ti.com>, <vigneshr@ti.com>, <conor+dt@kernel.org>,
        <kristo@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>
CC: <u-kumar1@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20230927023357.9883-1-j-keerthy@ti.com>
 <20230927023357.9883-8-j-keerthy@ti.com>
 <877f583e-ed08-4248-ac38-28e8c3039444@linaro.org>
 <78a9a231-ce53-7a3c-d9ce-af9d1c2a097d@ti.com>
In-Reply-To: <78a9a231-ce53-7a3c-d9ce-af9d1c2a097d@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/27/2023 1:46 PM, J, KEERTHY wrote:
> 
> 
> On 9/27/2023 1:23 PM, Krzysztof Kozlowski wrote:
>> On 27/09/2023 04:33, Keerthy wrote:
>>> There are totally 2 instances of watchdog module in MCU domain.
>>> These instances are coupled with the MCU domain R5F instances.
>>> Disabling them as they are not used by Linux.
>>>
>>> Signed-off-by: Keerthy <j-keerthy@ti.com>
>>
>> Still incorrect subject prefix.
> 
> Sorry. I missed this :-(. I will fix all your comments in the next version.

Hi Krzysztof,

If there are no further comments on V6. Can i resend this patch alone 
with subject corrected?

Regards,
Keerthy

> 
>>
>> Best regards,
>> Krzysztof
>>

