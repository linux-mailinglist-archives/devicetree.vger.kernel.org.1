Return-Path: <devicetree+bounces-254789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 569F9D1C2AE
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 03:51:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6ECB23001FE2
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 02:50:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17C9D3148CC;
	Wed, 14 Jan 2026 02:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="dxpzBcNc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m32100.qiye.163.com (mail-m32100.qiye.163.com [220.197.32.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AD4229E0E9
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768359040; cv=none; b=MnBKf+CgF37tk8kIks7UoXI3rCxvjQZ+b+KEOj7QFT9IpdreCEPQpIZUXBYr7ycvyRKgKfrjIXbZQumTMNcKhKLTcbepl4rZ+mvXAOxkCxk/Sjyvnj8+E5DU8lAN7+DL1Dw4QRFDiUTQ6lEC5T+bCXns5yh1AyV8bb1vOkgEfyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768359040; c=relaxed/simple;
	bh=rZQ6xk+q338RD2hcPYH6Xt5vf1bMHuh1m8XugVBMLq4=;
	h=Message-ID:Date:MIME-Version:Cc:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=lacqjHTMd0OnNT21rNl9Tz0d7DTirGBIDywGw7yDNZk42RUmfBLktEwTSz+vw56i+zkwxnw5x/Tg/Mek6HN/kIsYKLAoQxS4FOLY/cTeEWnkgo37U0dhX5qKM+C0mq4fy6dJ2OLzqJkyAoMm1qfLExwhKXY10HDdxb2tfMU+ah0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=dxpzBcNc; arc=none smtp.client-ip=220.197.32.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 308ba407a;
	Wed, 14 Jan 2026 09:34:47 +0800 (GMT+08:00)
Message-ID: <1d37cfd0-9f7d-4d76-89ed-798c0a74e737@rock-chips.com>
Date: Wed, 14 Jan 2026 09:34:47 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>,
 Marco Schirrmeister <mschirrmeister@gmail.com>,
 John Clark <inindev@gmail.com>, Tianling Shen <cnsztl@gmail.com>,
 Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH v2 2/3] soc: rockchip: grf: Support multiple grf to be
 handled
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
References: <1768267105-127385-1-git-send-email-shawn.lin@rock-chips.com>
 <1768267105-127385-3-git-send-email-shawn.lin@rock-chips.com>
 <1906413.BzM5BlMlMQ@diego>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <1906413.BzM5BlMlMQ@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9bba241d8c09cckunm1a0062cb4258e8
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ08ZHlYaGU5LSRgdGUkYGUtWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=dxpzBcNcsDZpDP0fFm1eM6xr6VUHHOrYerFdzSBXc5rBTCzo0Svt+aKJKfZX6PgoLTC6joeCRztiH7rJGaQDT79hQgzgBtEc/jLrYWJ1KkO75jbpZfeVEu1yH7xd+QZ3LdjuU+RfnYXVpQqIU5TgJoDShCX+ONZ9ziae8no2KMA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=eLLLL3EGNXyO3a3fdg3PFPHxX91Uc6ZtPLkE1izmkQc=;
	h=date:mime-version:subject:message-id:from;

在 2026/01/14 星期三 1:43, Heiko Stübner 写道:
> Hi Shawn,
> 
> Am Dienstag, 13. Januar 2026, 02:18:24 Mitteleuropäische Normalzeit schrieb Shawn Lin:
>> Currently, only the first matched node will be handled. This leads
>> to jtag switching broken for RK3576, as rk3576-sys-grf is found before
>> rk3576-ioc-grf. Change the code to scan all the possible nodes to fix
>> the problem.
>>
>> Fixes: e1aaecacfa13 ("soc: rockchip: grf: Add rk3576 default GRF values")
>> Cc: Detlev Casanova <detlev.casanova@collabora.com>
>> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
>> ---
>>
>> Changes in v2:
>> - use for_each_matching_node_and_match(Heiko)
>>
>>   drivers/soc/rockchip/grf.c | 54 +++++++++++++++++++++++-----------------------
>>   1 file changed, 27 insertions(+), 27 deletions(-)
>>
>> diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
>> index 8974d1c..9b36390 100644
>> --- a/drivers/soc/rockchip/grf.c
>> +++ b/drivers/soc/rockchip/grf.c
>> @@ -217,34 +217,34 @@ static int __init rockchip_grf_init(void)
>>   	struct regmap *grf;
>>   	int ret, i;
>>   
>> -	np = of_find_matching_node_and_match(NULL, rockchip_grf_dt_match,
>> -					     &match);
>> -	if (!np)
>> -		return -ENODEV;
>> -	if (!match || !match->data) {
>> -		pr_err("%s: missing grf data\n", __func__);
>> +	for_each_matching_node_and_match(np, rockchip_grf_dt_match, &match) {
>> +		if (!of_device_is_available(np))
>> +			continue;
>> +		if (!match || !match->data) {
>> +			pr_err("%s: missing grf data\n", __func__);
>> +			of_node_put(np);
>> +			return -EINVAL;
>> +		}
>> +
>> +		grf_info = match->data;
>> +
>> +		grf = syscon_node_to_regmap(np);
>>   		of_node_put(np);
> 
> This of_node_put can go away I think.
> 
> for_each_matching_node_and_match iterates over the nodes via
> 	of_find_matching_node_and_match(dn, matches, match)   [0]
> 
> and of_find_matching_node_and_match() will of_node_put() the from node [1]
> 
> 

Oops, will fix.

Thanks.

> Heiko
> 
> [0] https://elixir.bootlin.com/linux/v6.18.4/source/include/linux/of.h#L1469
> [1] https://elixir.bootlin.com/linux/v6.18.4/source/drivers/of/base.c#L1147
> 
>> -		return -EINVAL;
>> -	}
>> -
>> -	grf_info = match->data;
>> -
>> -	grf = syscon_node_to_regmap(np);
>> -	of_node_put(np);
>> -	if (IS_ERR(grf)) {
>> -		pr_err("%s: could not get grf syscon\n", __func__);
>> -		return PTR_ERR(grf);
>> -	}
>> -
>> -	for (i = 0; i < grf_info->num_values; i++) {
>> -		const struct rockchip_grf_value *val = &grf_info->values[i];
>> -
>> -		pr_debug("%s: adjusting %s in %#6x to %#10x\n", __func__,
>> -			val->desc, val->reg, val->val);
>> -		ret = regmap_write(grf, val->reg, val->val);
>> -		if (ret < 0)
>> -			pr_err("%s: write to %#6x failed with %d\n",
>> -			       __func__, val->reg, ret);
>> +		if (IS_ERR(grf)) {
>> +			pr_err("%s: could not get grf syscon\n", __func__);
>> +			return PTR_ERR(grf);
>> +		}
>> +
>> +		for (i = 0; i < grf_info->num_values; i++) {
>> +			const struct rockchip_grf_value *val = &grf_info->values[i];
>> +
>> +			pr_debug("%s: adjusting %s in %#6x to %#10x\n", __func__,
>> +				val->desc, val->reg, val->val);
>> +			ret = regmap_write(grf, val->reg, val->val);
>> +			if (ret < 0)
>> +				pr_err("%s: write to %#6x failed with %d\n",
>> +					__func__, val->reg, ret);
>> +		}
>>   	}
>>   
>>   	return 0;
>>
> 
> 
> 
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


