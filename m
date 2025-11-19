Return-Path: <devicetree+bounces-240012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F211C6C1B5
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 01:14:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E3F6C4E0620
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 00:14:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6688136351;
	Wed, 19 Nov 2025 00:14:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgeu1.qq.com (smtpbgeu1.qq.com [52.59.177.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B82B23A1C9
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 00:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=52.59.177.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763511244; cv=none; b=FFgOcXEJ7Xyjn+6mSd49OKouY4PwZshzdUZ/eFP5Kj0tCppALZr8l2cqIY7XcAW1qTa5iEEmfiAw//p/mu29OHOYKt+PyFJMcgjRzrYclaRpowclmqrmgLd7nePhCvFFzZtJS4A7G7pWznBJxiu2GE6m7OB7chPWJj8Cg/eGUaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763511244; c=relaxed/simple;
	bh=udyYK93gahgUc6AMxpho/lmhnQHN5Fz7/UUJ4h69MU8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rm/+7z2+B/5+WauFvFtEZZBmKCTx7q4T749T1kDApzd3o76fgjwUm0yGZ4CVzB5yiT1V5WBI1uVzQ9jJyU7XAFy26CyNKmGKRHUJA9TZhqi7YcSlw4xHjsDHJ9Sio0WjrWywJ1eNwPJjwXv/vnIlqJge1lkN1+55uBxIO+AFUzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=52.59.177.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpgz8t1763511161tda318cee
X-QQ-Originating-IP: WCyfxCkXQbLOI3rQhE9c7nxrHn2fqsWQwmCHFlbw4y8=
Received: from [192.168.254.128] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 19 Nov 2025 08:12:38 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 8747622648211889514
Message-ID: <77B4456916875131+5e15cfc7-61ef-4277-885e-f28f3f33380c@radxa.com>
Date: Wed, 19 Nov 2025 09:12:37 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: rockchip: Make eeprom read-only for
 Radxa ROCK 3C/5A/5C
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: alchark@gmail.com, conor+dt@kernel.org, devicetree@vger.kernel.org,
 dsimic@manjaro.org, heiko@sntech.de, krzk+dt@kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251112035133.28753-5-naoki@radxa.com>
 <20251113140020.919159-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251113140020.919159-1-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: Ns5uoka424kMp4azHtaauTgrSlfx3MOH+MxTfFqT8buVllDVBcOJ0mQK
	2biwZsnRyDOnQHZby+/mQ7LTZ994ScBza+mpYpqGZ5w7IZlmd4fWR2SXb92FBwi5J4mtAt2
	TcCvRahfHHlOa15Qd2iiH9AzE4ZFIgQAqlNUufe3Q1oZwUDJd73aJ4gaPGGAWEYgxcLee9S
	6r4/c5+9FUoZk1WeVU36JHSEm8Ds89qMptpNTz/S10JorKU6z6ovJeQQHv9CNqMhNLTdGvH
	iQ5Zw+rTAfwtv54qcExQM3WDxFh8zdOMCJln9GF03BI6ZzZ11sU1ls/F13JB1s3rF0KPTSF
	5Py0gbz0Jbu81GmxADjI828IFdnl4ybepesIYD4S+VlksqNNJJnbXfdIourIabprt2/OmXG
	NgA/y1WMg+IGc68mDYBVureyzNpQGzw5cY1ZE4tGwMjfXCtCzCYbEapq9DI+G/FfuuS8LyL
	sn8qOSdzbmhGU8SOjgJpQDk3nP022D0tCIgO+aRWFdMAT/K/82gPwom5RELpbz2iUoNEosZ
	UG7q54/x9J7Bx+KzkTN84xDnu8xrw9dRbN7N7ht712EcVQOF44Clyb6ZOGtyMu3oRPL75lG
	+hu8G/hzZBFKynKA4Iq8VIMBkaQcuvrvE0vYdZklNPP6VXnsv6tpz/tVPGPvmzP1SYmppsE
	tQgtLk7XOmrtk0UXWUaR5OUzG7o49CDWRXv+F4ns3kswb4joQjNLdxg2mBNAuVRevUZq11G
	toKIOode7nFO1OmIK3hSb6LAtXFwq1BaM7ydLq+WvYQvC5g/tdg0vdi3xJLntQSJ80dpzWy
	VucWsE/Q4Cqt76724zFs0HUmnUHMlocomqqAuibTneKrGtF34LzJcOIbhN2vx38nQb87Vj9
	CrWAFLoEWtSle8+hV51hHBotVu9YeDnt/8iijTd3TJJNDckWI+bDk20tPJycC7qbhNAFlmX
	vgLA/dJh4PQUYBeYqtlsTaDc6yBkwQRd+81zwHeCuqa3t8w==
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
X-QQ-RECHKSPAM: 0

Hi Chukun,

On 11/13/25 23:00, Chukun Pan wrote:
> Hi,
> 
>> Make the BL24C16 EEPROM chips found on Radxa ROCK 3C, 5A and 5C SBCs
>> read-only, [1] [2] [3] because they contain factory-programmed data
>> that isn't supposed to be modified by the end users. [4]
> 
> Is this true? I confirmed that the EEPROM was empty when I submitted
> the ROCK 3C support. Based on the Radxa boards I purchased, it seems
> that only the "Network Computer" series SBC (E20C, E24C, E52C, E54C)
> have production information in their EEPROM.

I have confirmed with the Radxa internal team, and it is clear that for 
"all" products, the EEPROM (regardless of whether data has been written 
or not) is designated as: "The EEPROM is for factory data; users can 
read it, but they are not expected to write to it." This confirms that 
defining a read-only property is appropriate.

I will be submitting a series of patches to add eeprom nodes for several 
Radxa boards, and all of them will include the read-only property.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Thanks,
> Chukun
> 


