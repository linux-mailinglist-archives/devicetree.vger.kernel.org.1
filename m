Return-Path: <devicetree+bounces-243551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A0698C99D67
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 03:17:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4B8AF345E71
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 02:17:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A28018C933;
	Tue,  2 Dec 2025 02:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="Ye8rYZub"
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta0.migadu.com (out-174.mta0.migadu.com [91.218.175.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C72910F1
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 02:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764641841; cv=none; b=ZHr7boYGY74PvPQyZ2ez4qWPgg/sNIfqw1q6qThoPrcr1WcPRZnm1UeIgH7dQH7Z40QqVj3KP4MaCHYCTlwFhPM4sfDsUv/Jdo05PzOWIfwBv1hRhSfDChjdov1jAt/8wMP0lJkXF6UwuAl7ZWeyZMB5064hVzLOZj1BJsafcX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764641841; c=relaxed/simple;
	bh=1ZRi5xX9VbtphPsjHGKlPXHF8aQS8iZrkISvrjIFBKU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i/rdQY6tnKbkeBH0Mx1uWfyf7/brkcdDMS0pb5zRPeAnROMGvQIIVKxpnxQXSblZkw+JvAZqVhIBD1y+ghqPl3zk9jHqyhZNMbpahaD5CfKvbwkl1VYoXffZ4a3LQRKejqEVjAfYZFCwOKytpnBJjojby7f6gAB+epdrrDOiaB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=Ye8rYZub; arc=none smtp.client-ip=91.218.175.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Message-ID: <bc7281f5-bce6-407b-96e1-18293f373921@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1764641835;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QDmQY+UGZrTPdlfQJsHoJi3IV6xhnWKEOKkFlDanYis=;
	b=Ye8rYZub5prrTJAafuWLuXDTM7nk/1yHeQUI/vVTaW+HBWm59ri6lthwbUSuSMtSDdycZC
	/nGnyH7z2OmD1N6UEc5/ny5iQ5MzI1GeTEErPKTApBXUc/rCiupolTTGR/NTp4ndP3WYYb
	zm9aA7ITn3DmfMDRZ0T44x503yU+DeQ=
Date: Tue, 2 Dec 2025 10:17:03 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] of: print warning when cmdline overflows from bootargs
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, saravanak@google.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, enlin.mu@unisoc.com
References: <20251105082717.4040-1-enlin.mu@linux.dev>
 <20251106-kiwi-of-total-valor-b27f5d@kuoka>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "enlin.mu" <enlin.mu@linux.dev>
In-Reply-To: <20251106-kiwi-of-total-valor-b27f5d@kuoka>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT



On 2025/11/6 16:55, Krzysztof Kozlowski wrote:
> On Wed, Nov 05, 2025 at 04:27:17PM +0800, Enlin Mu wrote:
>> From: Enlin Mu <enlin.mu@uisoc.com>
>>
>> add debug info. sometimes cmdline in dts is too long,
> 
> I don't see debug info here.
> 
> Please use full sentences, starting with capital letter and ending with
> full stop.
> 
> Please wrap commit message according to Linux coding style / submission
> process (neither too early nor over the limit):
> https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597
> 
> 
>> developers are not aware of the length limit of the
>> cmdline, resulting in some misjudgments.
>>
>> Signed-off-by: Enlin Mu <enlin.mu@uisoc.com>
>> ---
>>   drivers/of/fdt.c | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
>> index 0edd639898a6..077799b2f565 100644
>> --- a/drivers/of/fdt.c
>> +++ b/drivers/of/fdt.c
>> @@ -1085,6 +1085,8 @@ int __init early_init_dt_scan_chosen(char *cmdline)
>>   	p = of_get_flat_dt_prop(node, "bootargs", &l);
>>   	if (p != NULL && l > 0)
>>   		strscpy(cmdline, p, min(l, COMMAND_LINE_SIZE));
>> +	if (l > COMMAND_LINE_SIZE)
>> +		pr_warn("cmdline overflows from bootargs\n");
> 
> Why only OF early should have this warning and cmdline passed via ATAGS
> or in ACPI system should not?
I have a Raspberry Pi 5, so I can test my patch. But for chips with 
other architectures, I don't have the equipment and I am not very
familiar with them. If you are familiar with other architectures,
I hope you can help impore the patch or independently complete this
idea.

Thanks.
> 
> Best regards,
> Krzysztof
> 


