Return-Path: <devicetree+bounces-10458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACD17D1450
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 18:43:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2930028257D
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 16:43:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D6571DA20;
	Fri, 20 Oct 2023 16:43:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="ciK1JwYP"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F2F12E58
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 16:43:16 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A32418F;
	Fri, 20 Oct 2023 09:43:14 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 39KGh4dA110130;
	Fri, 20 Oct 2023 11:43:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1697820184;
	bh=LLn14VYW09aZCrIvFtLla5eOZlSgOm259OWBlpoCGrU=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=ciK1JwYPKdOP/Dt0WZ9BwjUGkdJgibACQINlVdmpSWncpg4Jk+/tJwlcIX9eN4hgu
	 aOlf8ZnATWq0cOQajrthIo6rEjMmX09h84fEH4GZf0x3Bzi5QWenTOoTo342cVxIaw
	 tvUKO7nT8XqVdJWz+5zm6ElW4Z7BpeioyJg7AAIg=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 39KGh4lZ039416
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 20 Oct 2023 11:43:04 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 20
 Oct 2023 11:43:04 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 20 Oct 2023 11:43:04 -0500
Received: from [128.247.81.1] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 39KGh4RB042120;
	Fri, 20 Oct 2023 11:43:04 -0500
Message-ID: <ab1c4929-0d7d-45eb-ab70-7680dbebcdbb@ti.com>
Date: Fri, 20 Oct 2023 11:43:04 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] mux: mmio: use reg property when parent device is not
 a syscon
Content-Language: en-US
To: Peter Rosin <peda@axentia.se>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20230911151030.71100-1-afd@ti.com>
 <0cb645c7-f3c5-e4bb-7686-2a83d32274bb@axentia.se>
From: Andrew Davis <afd@ti.com>
In-Reply-To: <0cb645c7-f3c5-e4bb-7686-2a83d32274bb@axentia.se>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 10/20/23 9:28 AM, Peter Rosin wrote:
> Hi!
> 
> 2023-09-11 at 17:10, Andrew Davis wrote:
>> The DT binding for the reg-mux compatible states it can be used when the
>> "parent device of mux controller is not syscon device". It also allows
>> for a reg property. When the reg property is provided, use that to
>> identify the address space for this mux. If not provided fallback to
>> using the parent device as a regmap provider.
>>
>> Signed-off-by: Andrew Davis <afd@ti.com>
>> Reviewed-by: Nishanth Menon <nm@ti.com>
>> ---
>>
>> Changes from v2:
>>   - Rebased on v6.6-rc1
>>
>> Changes from v1:
>>   - Flip logic as suggested in v1[0]
>>
>> [0] https://lore.kernel.org/lkml/1c27d9d4-b1cc-c158-90f7-f7e47e02c424@ti.com/T/
>>
>>   drivers/mux/mmio.c | 9 ++++++---
>>   1 file changed, 6 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/mux/mmio.c b/drivers/mux/mmio.c
>> index fd1d121a584ba..b6095b7853ed2 100644
>> --- a/drivers/mux/mmio.c
>> +++ b/drivers/mux/mmio.c
>> @@ -44,10 +44,13 @@ static int mux_mmio_probe(struct platform_device *pdev)
>>   	int ret;
>>   	int i;
>>   
>> -	if (of_device_is_compatible(np, "mmio-mux"))
>> +	if (of_device_is_compatible(np, "mmio-mux")) {
>>   		regmap = syscon_node_to_regmap(np->parent);
>> -	else
>> -		regmap = dev_get_regmap(dev->parent, NULL) ?: ERR_PTR(-ENODEV);
>> +	} else {
>> +		regmap = device_node_to_regmap(np);
> 
> I started digging in device_node_to_regmap() to try to find an error that
> could be used to trigger if the failover to dev_get_regmap() should be
> tried, instead of always doing the failover on error. I got lost fairly
> quickly, but it seems device_node_to_regmap() can return -EDEFER_PROBE.
> While I'm not certain that it is applicable, that case should probably
> not fall back to dev_get_regmap()...
> 
> Are there other error cases that should prevent the failover? I would
> guess that it's perhaps just a single error that should trigger trying
> the failover path? But I don't know, and which error if that's the case?
> 

Ideally the only error that will be returned is ENOMEM, which happens when
this node does not have a 'reg' property, and this is also the one case we
want to do the failover. So all should be well.

> How much badness can be caused if syscon_node_to_regmap() fails for some
> random obscure reason and the failover path is taken inadvertently? It
> certainly smells bad for -EDEFER_PROBE, but do you have any insight in
> other cases?
> 

If we take the failover inadvertently then we will check if the parent
node is a syscon, if it is then our offset will most likely be wrong
(parent will not match child 'reg').

> And after getting to approx that point a while back, I had other things
> to take care of, and this fell off the table. Sorry!
> 

No problem as long as we can find a way to get this in quickly (lot of
DT warning need cleaned up based on this patch).

Thanks
Andrew

> Cheers,
> Peter
> 
>> +		if (IS_ERR(regmap))
>> +			regmap = dev_get_regmap(dev->parent, NULL) ?: ERR_PTR(-ENODEV);
>> +	}
>>   	if (IS_ERR(regmap)) {
>>   		ret = PTR_ERR(regmap);
>>   		dev_err(dev, "failed to get regmap: %d\n", ret);

