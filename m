Return-Path: <devicetree+bounces-84897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CD592E2C7
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 10:53:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 03CBA1C215DC
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 08:53:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18EBC1527AC;
	Thu, 11 Jul 2024 08:53:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg154.qq.com (smtpbg154.qq.com [15.184.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB0F152533
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 08:53:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=15.184.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720688015; cv=none; b=snia3/jOPqU997AuRPHOJXQUDDyuJIr6YTy0HX+q2uXafsoBEPKVvEOjj+9xbU55oWZ9IdH8KwYYNcRGKASYPRLe/K+MuYNvQ2l6na+A8xGMl0+UrO6dJdXaaKGUPMqTe+fqsvOlXNca4y2Iv2CMW8zcskcBo7/qGIETYt5c2rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720688015; c=relaxed/simple;
	bh=BwJV9X992t17aXZ4TxP04aIFcPKsD4LG8is1SypDwXE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YYwA97Q8nqxJ2cOwNEW223Vqra4dkAg8DX18H7T/wIktKJLWnNETOouYr3IgCcxSgGnNSvHoQiwCI0s3jjIG6DMvTpQaPHlrCTSOKhgmN+yMPQUxeHjimhLRP/bP2sUG9ls8+5y41czbe1vTckhKNsgOFE4Et3cO21lfkAeB5aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=15.184.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpsz10t1720687928tuqqho
X-QQ-Originating-IP: E4fZjx0lwKjVA+66NREMxLTii2Uo+tFD1SBVSKoINNo=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 11 Jul 2024 16:52:06 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 4651650904875580075
Message-ID: <895267B189BD693F+7a2f3db5-2e67-4905-b085-5726b56bbbab@radxa.com>
Date: Thu, 11 Jul 2024 17:52:05 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: amlogic: change product name for Radxa
 ZERO 2 (Pro)
To: Krzysztof Kozlowski <krzk@kernel.org>, neil.armstrong@linaro.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org,
 linux-amlogic@lists.infradead.org
References: <20240711034035.3921122-1-naoki@radxa.com>
 <20240711034035.3921122-2-naoki@radxa.com>
 <1fece7cc-fa01-4bea-ac73-a975e042c669@kernel.org>
 <DFED8CF3B42049F8+44664265-ab1e-4d45-833c-41c370e4360b@radxa.com>
 <0036cb62-7621-4458-9011-cae56208eefc@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <0036cb62-7621-4458-9011-cae56208eefc@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1

Hi

On 7/11/24 16:45, Krzysztof Kozlowski wrote:
> On 11/07/2024 08:58, FUKAUMI Naoki wrote:
>>>>    
>>>>    / {
>>>> -	compatible = "radxa,zero2", "amlogic,a311d", "amlogic,g12b";
>>>> -	model = "Radxa Zero2";
>>>> +	compatible = "radxa,zero-2pro", "amlogic,a311d", "amlogic,g12b";
>>>
>>> Keep old compatible.
>>
>> which is better?
>>
>> compatible = "radxa,zero2", "amlogic,a311d", "amlogic,g12b"; (no change)
>>    or
>> compatible = "radxa,zero-2pro", "radxa,zero2", "amlogic,a311d",
>> "amlogic,g12b"; (keep old one)
> 
> I propose not to change anything, at least based on your
> explanations/rationale.

I see, I don't touch anything which already exists.
then, can I add new "Radxa ZERO 2 Pro" product?

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Krzysztof
> 
> 

