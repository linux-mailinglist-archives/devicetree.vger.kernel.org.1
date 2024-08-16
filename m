Return-Path: <devicetree+bounces-94357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C76E0955341
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2024 00:21:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 06D991C2118B
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 22:21:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D8E7144D0F;
	Fri, 16 Aug 2024 22:21:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgbr2.qq.com (smtpbgbr2.qq.com [54.207.22.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D671448E0
	for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 22:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.207.22.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723846900; cv=none; b=LxmIcK9trZ1gZVhiHx8BXrjUgwOdsUQw2Rae0Q9AMXNjJQ8fVdnJVv93edbGGUOKWOGyfoGpKvXhW+VNiNHgRpGor4YzHA70qlBsEI7A2UdMTCDTf5Vv6luEeo/5pIk7uGcBQ2iSG3jd/OF5wlRi0zU4Bpx8umgMD7Sgevsa3kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723846900; c=relaxed/simple;
	bh=RSxOjKph2xpCsiQZsGCCAP8fPFES1bCeGAvL32l/WVU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=V7uXGG9XK3CXnWOA+yF7OWsZaqBb7fXjN3xhdKtEtfJraOpO72njBrXFURkkqbwgdxwCa7YbSCfVsM53Sfx7HdmsBxlUZ7UVgYDpoxONNcDaHoD6zEKpMh04awGerxXUPqMXiv9GpgZQI7CW4IUTkpmL42ReOvb5KCPuraamwOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.207.22.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtp78t1723846849tqa8qauj
X-QQ-Originating-IP: 7rc+piy0QdvcXbvpTW38+wBKyonJqF5RZPuDnxf5MOg=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sat, 17 Aug 2024 06:20:46 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 17650515702302833842
Message-ID: <85AB3D0B7214AEEA+d54aaa4a-ce0b-43ef-8cb8-ea2c2f305bcd@radxa.com>
Date: Sat, 17 Aug 2024 07:20:46 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] arm64: dts: rockchip: add support for Radxa ROCK
 Pi E v3.0
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240816213429.1093-1-naoki@radxa.com>
 <20240816213429.1093-2-naoki@radxa.com> <1819066.TLkxdtWsSY@diego>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <1819066.TLkxdtWsSY@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1

Hi,

On 8/17/24 07:11, Heiko Stübner wrote:
> Am Freitag, 16. August 2024, 23:34:29 CEST schrieb FUKAUMI Naoki:
>> Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
>> RK3328 chip that ships in a number of RAM/eMMC/WiFi/BT configurations:
>>
>> - Rockchip RK3328 SoC
>> - Quad A53 CPU
>> - 512MB/1GB/2GB DDR4 RAM
(snip)
> can you please describe what is different in that v3 board?
> Describing what is different to require a separate board should've been
> part of the commit message.
> 
> Because from those changes, the bottom line currently seems to be
> the same board with swapped mmc aliases?

it's new board which uses DDR4 RAM (instead of DDR3 RAM on Pi E).
different bootloader (U-Boot) is required.

adding v3 dts seems not to be so important for Linux, but it's very 
important for U-Boot and OpenWrt(it includes bootloader for distributed 
binary).

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Heiko
> 
> 
> 
> 
> 

