Return-Path: <devicetree+bounces-133343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A02F29FA585
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 13:12:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 164D316548F
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 12:12:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71D28189520;
	Sun, 22 Dec 2024 12:12:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast1.qq.com (smtpbguseast1.qq.com [54.204.34.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A4816BE3A
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 12:12:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.204.34.129
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734869554; cv=none; b=oLyvm8u5udU4KsjfMKvX0tLuSsnNmG8Q0AIkJEPGUuPsozio+sHpICviRtFi9eeGvqKXTU+RsZgKnFrOqPLPouYzL4ayrLkzJTCrAklK93yeIma+iePEUGL6UUwr7mlvjpQnUPqWusVnlAEoKod+BdmuoUaXMar+8amDHUKyMNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734869554; c=relaxed/simple;
	bh=xnD3YbtLar/YppbqpOTY0X02LWiHcTVqduPXnDqikEI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UlxoTNUcBMKms95E4r3hRrXz/e5FltsL4u+j4VUSJG+OtpB2AzRbuK+1MyzsH/yB5389iCwD5mPUlsAt51szh85I777JFzTgiaKTnT59a+/bvEA7ljWx1+oL3hsx4Gpm/lbHBk6JzflvzdVH2Sw5q9lpuJk0bs8vGZhMSza0vBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.204.34.129
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip4t1734869452tbc1hoc
X-QQ-Originating-IP: 5ofUMD6iHBFQLIXjS8jarTqL4A2U9EvqjnyCSUP2VcE=
Received: from [IPV6:240f:10b:7440:1:75fe:f8f3 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sun, 22 Dec 2024 20:10:42 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2159805039635468433
Message-ID: <88F271690E44F371+28d3216e-0517-4ff7-94bb-f36bbc980b29@radxa.com>
Date: Sun, 22 Dec 2024 21:10:40 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] irqchip/gic-v3: Enable Rockchip 3588001 erratum
 workaround for RK3582
To: Marc Zyngier <maz@kernel.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, tglx@linutronix.de, jonas@kwiboo.se,
 macromorgan@hotmail.com, andyshrk@163.com, liujianfeng1994@gmail.com,
 dmt.yashin@gmail.com, dsimic@manjaro.org, tim@feathertop.org,
 marcin.juszkiewicz@linaro.org, michael.riesch@wolfvision.net,
 alchark@gmail.com, sebastian.reichel@collabora.com, jbx6244@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20241222030355.2246-1-naoki@radxa.com>
 <20241222030355.2246-2-naoki@radxa.com> <86msgoozqa.wl-maz@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <86msgoozqa.wl-maz@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: Njf/zTiR//7AZMBhuovLnyxjVxn03BE6Mpua4cuBp7GI8jnWvQl0cRn/
	+eewA3bJn7W7hWfYggtjgSwhN/6HsGW4v5fL9ibi7MG+tXCsZ1HE0g1l5/KpU3e3TqQNs+N
	cjDTRu1mtxPvTBMalWm6vfwk0bEEBFLVKXnDdlyxh3MUkCwSW5I/YFt2f3cWl/P97+00P1f
	hdOB8ZVxabtzyo/DTkCKzLnQYxax0TpgjlnVFPLaV5UKtKZde6y3URfPE4IzF91fiWa7K4J
	JxbkMNduRqeK+IHEZt5rrRUmntU9JUvKA15INK6/3Pxzz8IsuDLI0BDgzzS8u4aR5XvvA8S
	zdctzfiSHylTMSaxDsg3zSqZF4ozr4wfpbecBIa2It20UIfvmmuD7ASLqJpl3hPe+no0lAX
	rUulrXLIvLEH9Vx2ZnEN6WdzRFp77wE0BGeFBYTyUuvO/lBF6fkmDM/g04FOmeeJqhZ6l2a
	pSa7tMvpC9xk/3RPUugMzSgiryamLctxNi63ZO3XkOS8NmM3j6WNpuQQd/ELHhaNED7eG79
	sfAO1GA/A9NJN/WxIj5ZxljYQITE7PopZ+GYnjANSV4hP/oXoh/2riD5fMcU24XEZs4NogO
	yDAznrRzmhkGymkNDMpPhWf1wIH5LPUoucZNlJzM/o5N8++ePbja04bO0knTRo5zgDlyI++
	dpIY3dHhqN0y/8p7OLXxINkDg9N3EowYfiCfODuHO3N/n8MJYOExaH5HWkA05K/lMLLnQWC
	+EveU83X5hU899ijMah8iIXgrklm56T8/znMBEko71NnDcQ8MklohevVlSGaiL36qUbEnXE
	/DB2m48i1QPjfPWa0662CsioikHM+aWdq8WoII+mQdqUOpinpJoyRKXVmi6ocZBXOQO6DKO
	aWZ48nHbPGi99iJEhdfOoeHtoz29KeGkTlyGQvrk16i8KTKTNPGSSEXF+5Jc6b7Bw7XVZBg
	d3SQ=
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
X-QQ-RECHKSPAM: 0

Hi Marc,

On 12/22/24 18:04, Marc Zyngier wrote:
> On Sun, 22 Dec 2024 03:03:53 +0000,
> FUKAUMI Naoki <naoki@radxa.com> wrote:
>>
>> Rockchip RK3582 is a scaled down version of Rockchip RK3588(S). Apply
>> Rockchip 3588001 erratum workaround to RK3582.
>>
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>>   drivers/irqchip/irq-gic-v3-its.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
>> index 92244cfa0464..c59ce9332dc0 100644
>> --- a/drivers/irqchip/irq-gic-v3-its.c
>> +++ b/drivers/irqchip/irq-gic-v3-its.c
>> @@ -4861,7 +4861,8 @@ static bool __maybe_unused its_enable_rk3588001(void *data)
>>   {
>>   	struct its_node *its = data;
>>   
>> -	if (!of_machine_is_compatible("rockchip,rk3588") &&
>> +	if (!of_machine_is_compatible("rockchip,rk3582") &&
>> +	    !of_machine_is_compatible("rockchip,rk3588") &&
>>   	    !of_machine_is_compatible("rockchip,rk3588s"))
>>   		return false;
>>   
> 
> Please use the relevant property for that purpose ("dma-noncoherent")
> at the distributor and ITS levels. We're not adding extra compatibles
> for this anymore, and you might as well fix the core dtsi to expose
> such property.

I see. I'll drop this patch in v2.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Thanks,
> 
> 	M.
> 



