Return-Path: <devicetree+bounces-64543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E638B9ADA
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 14:28:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F1AA5282541
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 12:28:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7B736A8AC;
	Thu,  2 May 2024 12:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="yPlF3Mgg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A37471CD39
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 12:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714652914; cv=none; b=ef43XQMw6QQZVxLbUPnAoTabA5TB7rOVe79Z9lXcyNSNIMnrxVHt7kjShIMuIixFBK4zwgyuIFf3dFR+XBvjrVuj1+gBjBz7PDaNrrhREQPM6BS52beYPci8OUPglWJ88A+aRLH6xpT0K4EYbZxVdYvCwkizyCOzN8+hYrm1E/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714652914; c=relaxed/simple;
	bh=HH+FtvMLNNLnx+2imOSH/oS9QLlnmJPMxK2Bj1TI3IA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XsBUz8ijGISPa+U3AYnzi0RmAzFCbHUYtJlPfInRkkmLgcujJU5HUzg1AZ3jHrgxr8vL6Ddllc1M7IaM1ZTPfzns67gxh2VJPSE8TnbfkkUXr3f3rwGh3wEs6g2hT5qUxe+9y2VPeM7hhJ7Zva1itcYe3wvFzmubB6rnHTL67Zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=yPlF3Mgg; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1714652901;
 bh=o3dDw9/Nk0P+Y2L4RAZ5QXHC0oKEkNV6XQMxSmp6kck=;
 b=yPlF3Mgg+w+Yg1rpI+/lKiGA/WzRqpsSceMcgESxR644mkfkntWWPWbk9vd1MzlcHBFZV3mXD
 9AcrW7pd+9UURCgQjyUPSEYZJcPBdYF1dzgzFiTf4I8Dkx8ax3sbGRC/Aj2yxzeRIAJVhltjppK
 hWtBylaNjayWF3AAm5nYg31SEdtbgLwQuFR85sutfINCgeh3yspiZ1eHhEJ8Qcsp2pS267KKEs4
 oCZPmb6u8pLpVDPL21qe0wJo9dGXVBYRNRYUydnguS1iXyocNc630n5S5KXV1p1wbMAPdvaQryI
 QEwkAELLc+SzLx7OH/ox8pMcXI8Q2imE347dXLIfJRBQ==
Message-ID: <832d6c37-a6c5-4468-9a23-1637b2affb90@kwiboo.se>
Date: Thu, 2 May 2024 14:17:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Radxa ROCK 3C
To: Dragan Simic <dsimic@manjaro.org>, Folker Schwesinger
 <dev@folker-schwesinger.de>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20240428123618.72170-1-amadeus@jmu.edu.cn>
 <20240428123618.72170-3-amadeus@jmu.edu.cn>
 <D0X7UJELGST3.2IL1AFDJ89N07@folker-schwesinger.de>
 <ded928414323ef4be51f2575d00ba7d1@manjaro.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <ded928414323ef4be51f2575d00ba7d1@manjaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 6633847bf48eecfc8b9e7ac4

Hi Dragan and Folker,

On 2024-05-02 03:28, Dragan Simic wrote:
> Hello Folker,
> 
> On 2024-04-30 07:42, Folker Schwesinger wrote:
>> On Sun Apr 28, 2024 at 2:36 PM CEST, Chukun Pan wrote:
>>> [...]
>>> +&sdhci {
>>> +	bus-width = <8>;
>>> +	max-frequency = <200000000>;
>>> +	mmc-hs200-1_8v;
>>
>> Out of curiosity, does this board also support HS400? From a very brief
>> look this board seems quite similar to Rock 4 series boards, that do
>> support HS400.
> 
> In a word, no, unfortunately.  In more detail, the Rockchip RK3566
> and RK3568 SoCs support the eMMC modes up to and including HS200, but
> not the HS400 mode.

The datasheet for RK3568 only mention HS200 mode, however, HS400 mode is
working in U-Boot after adjusting tap number for transmit clock [1].
Linux may need similar adjustment to make HS400 mode work on RK3568.

RK3566 that this board use only support HS200, as specified in datasheet.

[1] https://source.denx.de/u-boot/u-boot/-/commit/5c053f3adc69eaf83645b5d44c6adbb2d49a3fa7

Regards,
Jonas

> 
>>> +	non-removable;
>>> +	pinctrl-names = "default";
>>> +	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
>>> +	vmmc-supply = <&vcc_3v3>;
>>> +	vqmmc-supply = <&vcc_1v8>;
>>> +	status = "okay";
>>> +};
>>


