Return-Path: <devicetree+bounces-137834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 83734A0AC53
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 23:35:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D9AE3A6E27
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 22:35:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8496919E7D3;
	Sun, 12 Jan 2025 22:35:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=classfun.cn header.i=@classfun.cn header.b="Xov2FoAn"
X-Original-To: devicetree@vger.kernel.org
Received: from classfun.cn (unknown [129.204.178.38])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C771620DF4;
	Sun, 12 Jan 2025 22:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=129.204.178.38
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736721310; cv=none; b=NAyBuJ+8pbQUyPsND7pZ2sxlFuFNQdjZ7CtDBG6r3hopkSU26sn8uIGbYGKgHmcNPw0k+HZRp3Im/o7EuYguTynN7dYsq8ntrz/IN3g91m7AOdvBUzGP7IHUlcrcfpuTm/EJyp9g/zc82uSaAJjUHMykZwEdJrXB/6MhoMw21cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736721310; c=relaxed/simple;
	bh=qo7x27BDEKYZt4L6+pQlA2nsC6rgL3FjcHvhoocZwHA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KB7BVmBJ4A4IPyBInC4vfSW3QMhIjhpYyKPEyiOkLnlKGnWIlf7UXi7W3NFejEv6lorZ5x2yTdXpaHRkD7FLcjezW4mRZKKlJ+41+h19jLytZypjEuRfoCLFSH9mGy2I2OeUKNgOAdPs7MNkOlr6+CjmitOynnNB6+tkeMT4tgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=classfun.cn; spf=pass smtp.mailfrom=classfun.cn; dkim=pass (1024-bit key) header.d=classfun.cn header.i=@classfun.cn header.b=Xov2FoAn; arc=none smtp.client-ip=129.204.178.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=classfun.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=classfun.cn
Received: from [192.168.0.160] (unknown [222.77.7.241])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 04B107817F;
	Mon, 13 Jan 2025 06:27:17 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 04B107817F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1736720839;
	bh=6Gbp/iAkE0WvSs9YPY1BfcKbb4Jn7r1/Bj7q1lILlsI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Xov2FoAnMFPjBO2RmvVEdjjBXfTo4+WUl9V01wGOrMlaIKOnGaFFV+hpGtifwy5EW
	 5X9GK3c7nkxYj0C/Pcp9BO5Jrod2ComUxDR47q66NvVsuEU5h9WBk1wfwUQB08s/lB
	 zSHbhN5dwz9HHKXEfz+Z7dx56wF+Dt3WgLr0XmyA=
Message-ID: <526e0c19-6495-4dcf-bf6b-b5bd62a7a631@classfun.cn>
Date: Mon, 13 Jan 2025 06:27:25 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/3] Add support for Ariaboard Photonicat RK3568
To: Dragan Simic <dsimic@manjaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>,
 FUKAUMI Naoki <naoki@radxa.com>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Junhao Xie <bigfoot@classfun.cn>
References: <20250112073344.1976411-1-bigfoot@classfun.cn>
 <c520a0d829bbe26b9802f57f94f3957c@manjaro.org>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <c520a0d829bbe26b9802f57f94f3957c@manjaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 2025/1/12 16:50, Dragan Simic wrote:
> Hello Junhao,
> 
> On 2025-01-12 08:33, Junhao Xie wrote:
>> Add dts for Ariaboard Photonicat RK3568.
>>
>> This series bring support for:
>> * Debug UART
>> * SDIO QCA9377 WiFi and Bluetooth
>> * M.2 E-Key PCIe WiFi and Bluetooth
>> * M.2 B-Key USB Modem WWAN
>> * Ethernet WAN Port
>> * MicroSD Card slot
>> * eMMC
>> * HDMI Output
>> * Mali GPU
>> * USB Type-A
>>
>> Changed from v1:
>> - move some general nodes (firmware, ramoops, reboot-mode) to rk356x.dtsi
> 
> This entry from the changelog caught my attention, so I tried
> to find out what exactly happened back then.  Though, after going
> through the mailing list archive, I still don't see where the
> as-described change took place, so perhaps this changelog entry
> needs adjusting.

Chukun Pan suggested moving these nodes to rk356x.dtsi, but I have not done
that yet and simply deleted them. I will fix the changelog.
https://lore.kernel.org/lkml/20240905034009.28124-1-amadeus@jmu.edu.cn/

- remove some general nodes (firmware, ramoops, reboot-mode)

> 
>> - gmac1 change to phy-mode rgmii-id
>> - corrected some regulator to be closer to schematics
>> - rename rk3568-ariaboard-photonicat.dts to rk3568-photonicat.dts
>> https://lore.kernel.org/lkml/20240904111456.87089-1-bigfoot@classfun.cn/
>>
>> Changed from v2:
>> - remove unused headers
>> - corrected some regulator to be closer to schematics
>> - remove usb_host1_ohci, usb_host1_ehci, usb2phy1_host that have no connection
>> https://lore.kernel.org/lkml/20240906045706.1004813-1-bigfoot@classfun.cn/
>>
>> Changed from v3:
>> - corrected some regulator to be closer to schematics
>> - changed to using clk32k_out1 in xin32k
>> https://lore.kernel.org/lkml/20240911122809.1789778-2-bigfoot@classfun.cn/
>>
>> Changed from v4:
>> - corrected some regulator to be closer to schematics
>> - corrected some label to match node name
>> - use resets props in phy node instead deprecated snps,reset-gpio
>> https://lore.kernel.org/lkml/20240914145549.879936-1-bigfoot@classfun.cn/
>>
>> Changed from v5:
>> - resort regulator nodes
>> - remove dr_mode from usb_host1_xhci
>> https://lore.kernel.org/lkml/20241108031847.700606-1-bigfoot@classfun.cn/
>>
>> Junhao Xie (3):
>>   dt-bindings: vendor-prefixes: Add prefix for Ariaboard
>>   dt-bindings: arm: rockchip: Add Ariaboard Photonicat RK3568
>>   arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568
>>
>>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>>  .../boot/dts/rockchip/rk3568-photonicat.dts   | 599 ++++++++++++++++++
>>  4 files changed, 607 insertions(+)
>>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts

Thanks for your review, I will fix all problems in next version!

Best regards,
Junhao


