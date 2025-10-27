Return-Path: <devicetree+bounces-231805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D55C11B1E
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 23:29:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E8BF8426B29
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:28:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8B3832C320;
	Mon, 27 Oct 2025 22:28:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg154.qq.com (smtpbg154.qq.com [15.184.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8ADC32C31E
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 22:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=15.184.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761604113; cv=none; b=Smfq+DhHnTDh9Ii4J6fTsZXaP2pYabbgDTXdM1pOcH/9KCxHK0/yCBv8wZd5Qo+E8e29mGz3iR4nYYmCO9ICH6DGPQldju5wbtOg9ABNTCxOHBGGeVJxSX7aHq99TNrWqtexIArgWoOyYituazs7HSCzlKNi4dlFpW5yGwjzzOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761604113; c=relaxed/simple;
	bh=2oKE2ahvPR0SA0F7lSQiOUvnXvP2M+H5si4t01jDLXY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Kp/fAPQ7nIC6aex5hyp1FbBraqVr6k9OyMHrA6JzHNl+8TkdwQvz401WxDSBcsoQo84ZzBOdOAWMM5OcLSnohkWkZvaVQJHQDiYjTJJHK9eeqaFqQX126dmPTjPHbut4kWjjoPQaDxyJ9SXqGL+VznUOdh0Q5MXbpLV+wRkxoqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=15.184.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip2t1761603997t8c6ab6ff
X-QQ-Originating-IP: lA5oyn2I9HILxI+p/3NZ4NIfvveAvyDEiKBVdsi7o1Q=
Received: from [IPV6:240f:10b:7440:1:27fe:5767 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 28 Oct 2025 06:26:31 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 15533347437243192222
Message-ID: <99DBBA392DBE07E2+bd27587c-ba94-4a3d-890a-9a38f2b5bc04@radxa.com>
Date: Tue, 28 Oct 2025 07:26:30 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] dt-bindings: arm: rockchip: Fix description for Radxa
 CM3I
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 jonas@kwiboo.se, dsimic@manjaro.org, amadeus@jmu.edu.cn,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251027122641.39396-1-naoki@radxa.com>
 <20251027122641.39396-4-naoki@radxa.com>
 <bd746117-910a-4874-8248-98d3ab6080b4@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <bd746117-910a-4874-8248-98d3ab6080b4@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: MX+1SEN3H+wAqaz+gtICTtIVeoL6T6R4IvWgdXF7HTXZ6Q9sqVgHQ2zY
	1qC0bFZFr0tuR87FdlYvKKOd6AFC0oR4bT6qX0kjCuvFCFz5jZpOq9xqvt3oL2k6tOxy64U
	jfPgMnXs6qCFahsbQ+AYi6uxYnhLqQ9cl2TzYhlhfg6iP5e8FR7kROLhxLTuMx11SzbNP82
	KGcTbdHhpLe+4i6EgGVVvRMfwDigY3njhp69BUbPXCFQxzFutrmsbyFijgm4FSAdTSdok3v
	GmYa+2HZhCLaE+O+ECF/jUYtFWM+urBOf1wxao1mM8U6UG97UKBvz72TAcDXVW+8ruiY5sV
	NCL7HrdgsisM/+Y1fQYQaHnTXQc3SaGGYgM51KsbN7k6D0c+7L025TGEa/jR/5sGR8KqSJV
	0ycqUx4gY3FdStNsitGeUqJ8P9LHYiM3/SS5c00+4fhULFXn4RI20Rx7gErSzXAKaRhMqdm
	GBaZuKAi/xDgQLgJ43RbqzsXu0Rq85+2kiRfFQwMLRvlmQU6sOX3EsE6G087QdU7rtQjnjA
	f9auSH+olfULG/AcVyJ3B+e0vf5VctcmsCMYo+OGBlU6vvyhzKJ+ayKglYsEXXlHtj2hoph
	xZW2XWPr19ev7yLoLOn2fzPiHXA1N05t1FbfEYfcVCiuWfCqy67enA7hglx0wwZ//ggxkCm
	3dnosSckjf9OhnCcslIDOQohOgnHioGOXDDPonZ5oFxQ1RtworV+HaZMzCIdhQmYR8R5co7
	2u4h6UoUe5CBZaP10uGTiEdrjfO014nKCvixmpEh3OVHDUoXoX7E1wFXr0HTfuRqRV7Ck8Y
	gxEndxJEaLw22gmMY1NzvtQIedeWnipgyS4+Pia1F3EcC0MCkfNivdjz3zAM4JjFjKPXwvC
	/2tscdn2JGK4LAC5iy/O597REBjlInqzQzKedROW/QFn42v4xGiILZO0U/EQKQbSsSgzDog
	IReJxhtHvD5nyJSn4ol4b7Giyz43mgo3J3ToBm3ixs2/IvBoq0KsZBUeD
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-RECHKSPAM: 0

Hi Krzysztof,

On 10/28/25 04:07, Krzysztof Kozlowski wrote:
> On 27/10/2025 13:26, FUKAUMI Naoki wrote:
>> "CM3I" is the preferred name.
> 
> According to whom? I would prefer previous, so for sure:

Sorry, it should be:

"CM3I" is the correct name.

Link: https://dl.radxa.com/cm3i/docs/hw/radxa_cm3i_product_brief.pdf

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>> Fixes: ae9fbe0b1f965 ("dt-bindings: arm: rockchip: add Radxa CM3I E25")
> 
> is not true.
> 
> 
> Best regards,
> Krzysztof
> 



