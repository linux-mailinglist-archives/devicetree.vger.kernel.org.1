Return-Path: <devicetree+bounces-133445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4139FA94F
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 03:19:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 28C521885D5D
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 02:19:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CB022941C;
	Mon, 23 Dec 2024 02:19:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgsg1.qq.com (smtpbgsg1.qq.com [54.254.200.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EDB01F5FA;
	Mon, 23 Dec 2024 02:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.254.200.92
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734920365; cv=none; b=QGhbNJoX9Q5mE0lRtGaxxafCGHYIx0ka/zg3yMAXfVYygI8ftV2gE+dtujWiDKZx+eooKagBNXLe/FBk0XOpLHkt5hYNxJz9ZgBkLuVL8LkSAfxxlnS8IDXZCW3na4YWOUSHW0o1SJ5rXj0lWKjCYrjQogp9Hh8dvkHlqKz7ceA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734920365; c=relaxed/simple;
	bh=Ln6IIokJ2Vqy9R2/oVUXT2dCNrjmoWc0HIZkc8uSR4k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TDsAyzUzrK3uzp6m4pI/t5FUx2FIEwdA7a7OdQ+bc6iZK1XS7o2BL3udXpPSvQGZG5r6Crh0sbSr7JiX1tdUTPedmqnQcYR5MkX3c7YvSi/6kJNRNOMo0NpOri6Gp0SQwTfdQAfPae9c0ylWitioL817R4jCh6o5mD6I+xU1Ug8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.254.200.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip2t1734920304tea5qv3
X-QQ-Originating-IP: ezt7iJeIOhFwRGcZt6RvbLLr7yMoO95fCZuILLkjiHk=
Received: from [IPV6:240f:10b:7440:1:5968:fbf4 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 23 Dec 2024 10:18:19 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2941970314100960228
Message-ID: <4D8217DF36191C3E+be8bbb4f-ea52-4f81-8501-ff551f54621c@radxa.com>
Date: Mon, 23 Dec 2024 11:18:19 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: default to host mode for USB on
 Radxa E25
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <6EFDC4E74A617E25+ed534e8a-fef0-4f09-a24b-a536b7f2f13b@radxa.com>
 <20241222043027.265865-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <20241222043027.265865-1-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: Mc2Lb5E8Dw57IpQAYMCTMkZySUR0dtV7t7Zlbho6KTZnT/o9Naw1qD62
	jlXcihawLwY5N0XA613U/hkcov42RA4/2miqlKZ9kRssAFYHg6Al8+f6VMmqgLMk7bzhc8I
	3oh6s94hHAIQSWAhAgVw16WBOR36EC3ulcinikhwq91kKXUgTqhzv2l87Lr2p6ykUWBNhjb
	EZMiL6pcXwku0Bv65fR1aQWCAUHCXd7ED3x31IIF2oOL3zv1VPktyRm3nxFT2pNf/w4g/5I
	INd7lioXYvhdiNlm4MlQNW/IVL3BVVjtczDP9BVOB3wDPzS074CeaPlPu1t3finnGXzlRZJ
	71bI5ff0F9A+NI7+73gd2Ksy5GtTG/B/hgMqxm+TClM83u9ZpNS+atoNaass/W0LMjgA0fj
	n+90EWN5hpnoXAZmzryU6A1pCNtXF4nT06IPHGVrl9KajcDXJV67En/XGQHDO9Y+zw60tcy
	cXBn26KIZQc67pJDJ+Fxr+K1RnAzcj4/GxKpCSpPo/bQ+gt/6Ri5a2Y+PDYMUnrU5AP7ZVL
	v1z6Eesw3cuhRq1AHQBLIJGNTBQN6xMgoZB6Pzl2KVyWRZlfffuY1rKU3Z/CRQ/FN74ZnS/
	gaETeZaKIp8MpR6GLvlGY6b4jV9bQQs0WSIfkWtlAEBhPALqqp2dMrt2ry0KP/Lzo+GBV9R
	m+DqcMGlByA6lgKW6I+SYIivpHfoVlxCEsygu8vifDDCVNoVPxJqUnXXVYjF24JqQKaweG0
	Op01XyZhEkkhAhqnjx1X2sIdGSmuplHvEa5YREeSqHKG0f8jN4HBdOrGzEKk6+fHeNh0MIY
	g41on44f6c7LKs9NH6jW2tZPNCAVYOWNHDHOq77IE3hmUzWmZOyYuscUN9rTg9dfot4tfJa
	dIKnuFyxuvHJdufSCTtDU83NGwoqGRjas/hZDksQAh1jiGW9EgTwAehSmlpyalIn7uG8rL4
	/UBwBlLdGyO8NM1nh7ww4K2ZJ
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0

Hi Chukun,

On 12/22/24 13:30, Chukun Pan wrote:
> Hi,
>> Could you check Product Brief P.4?
>>
>>   https://dl.radxa.com/cm3i/e25/radxa_e25_product_brief.pdf
>>
>> There is "USB3.0 OTG Switch".
>>
>> Best regards,
> 
> Oh, sorry, it was covered by the shell so I didn't notice it.
> BTW do you see any issues in the sd-uhs-sdr104 mode?

I've been using the uSD card for a long time as a bootloader only, so I 
don't know what the problem is.

Do you have any information on how to reproduce the problem?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Thanks,
> Chukun
> 


