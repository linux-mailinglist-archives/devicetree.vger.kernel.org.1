Return-Path: <devicetree+bounces-94264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B4195486E
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 14:01:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AAEA71F234EF
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 12:01:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E76DE155C88;
	Fri, 16 Aug 2024 12:01:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg156.qq.com (smtpbg156.qq.com [15.184.82.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35644156C62
	for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 12:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=15.184.82.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723809704; cv=none; b=BVSQD7gSozXB6GN9ECxtRc5Ah/g22jOy9yeaT6l9Hlw03xpDU6kGmV5EVi4SOTAaqWbGcx8gpN63oFfzyQvNxRddkRjvNLWHQ9rqcKB6ksstfzOpWL3ZYPoEJP0duHgzoLAXiWpFlk+L+1xQlEdY2aCzYLZ1+yPXGTV19YzQyP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723809704; c=relaxed/simple;
	bh=qd5ug89R0Xl8NpGgZa0yQ9Bsnq1Oc1N2060lyl/XJ5U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TiXO3QGtuHdGmZb+0i8wJ4g2fxGG06di9TJPYSdk4QeI2WxKhbOIqnFf+vK6TlxAlgyw1/WoHuIaakktbXT0tPjrg1PSq2Oh5730imq+ToLaIVXlPrG5+5t2faCVTqbDe9MxI6NRi80fCTBCtiy6ZX4VL+gZqoS/QebDJD5kdR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=15.184.82.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtp78t1723809642tdd7uda6
X-QQ-Originating-IP: gkhWFiTmuhYG3dBw1hxzXZtT1+l6fd6a3qk7M9nDLN8=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 16 Aug 2024 20:00:39 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 17810008856507839528
Message-ID: <C3832E064F1E009C+b8761c4f-030f-49f0-85d0-39e6b38a7aac@radxa.com>
Date: Fri, 16 Aug 2024 21:00:38 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: defconfig: add CONFIG_LEDS_PWM_MULTICOLOR
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20240816023243.487-1-naoki@radxa.com>
 <a6cf0764-508d-4929-9252-c9fb7567e3ee@kernel.org>
 <7AA0A63882CF1421+db730266-394c-4823-afa6-8595d40daa18@radxa.com>
 <1894793.tdWV9SEqCh@diego>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <1894793.tdWV9SEqCh@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1

Hi,

On 8/16/24 20:29, Heiko Stübner wrote:
> Hi,
> 
> Am Freitag, 16. August 2024, 13:06:37 CEST schrieb FUKAUMI Naoki:
>> thank you very much for your review.
>>
>> but, I decided not to use "pwm-leds-multicolor" for Radxa E25.
>> please ignore this patch series.
> 
> What Krzysztof meant was probably more in line of that a commit message
> should not explain what the commit does, because that can be seen in the
> code.
> 
> Instead the commit message should explain why that change is needed.

I see, but there is no reason to use "pwm-leds-multicolor" anymore, 
please ignore this patch series.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>> really sorry.
>>
>> Best regards,
>>
>> --
>> FUKAUMI Naoki
>> Radxa Computer (Shenzhen) Co., Ltd.
>>
>> On 8/16/24 14:18, Krzysztof Kozlowski wrote:
>>> On 16/08/2024 04:32, FUKAUMI Naoki wrote:
>>>> enable "pwm-leds-multicolor" driver.
>>>
>>> Why?
>>>
>>> Best regards,
>>> Krzysztof
>>>
>>>
>>
>>
> 
> 
> 
> 
> 

