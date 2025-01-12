Return-Path: <devicetree+bounces-137835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D4BA0AC63
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 23:44:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E4B8A164D5C
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 22:44:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 602FF19CC21;
	Sun, 12 Jan 2025 22:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=classfun.cn header.i=@classfun.cn header.b="oru766Wf"
X-Original-To: devicetree@vger.kernel.org
Received: from classfun.cn (unknown [129.204.178.38])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CE42839F4;
	Sun, 12 Jan 2025 22:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=129.204.178.38
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736721857; cv=none; b=UVkZ0MEl625pHjJ9aDThmhN/t0OmZ9jp2PmBHyZyeOAERMX9lqFky/rL9G/OCE+ZywRrI4yrIA4tSHHRqUKa0gWsaPB4DLXos8MZtd+Ung9oC7dd6wHyBrAQS9VHjd6/DQrz/PCkk4SD5VajWmvp3zeuVQw7Ul0A3hg/XiR+Jt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736721857; c=relaxed/simple;
	bh=WeKlwvAtPMTbtueFtN2Jk5b+kuO8f5ZhtduzrghQsjg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=G1uQzi6FsRJYuhOgUH6sFjBbZNDmw51Whxpid0lyHS8pTL1uenD3yNs3e6BdZZw7sm3TTwjWxflICYfkKpqex+Df/geiIF3aX4f2USlDVeLQRKlxN4UK2vDjVsrvo0ybNYH5q/8geltFYlpShpxiVCYjc6WRKt5+uElQmqV7AWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=classfun.cn; spf=pass smtp.mailfrom=classfun.cn; dkim=pass (1024-bit key) header.d=classfun.cn header.i=@classfun.cn header.b=oru766Wf; arc=none smtp.client-ip=129.204.178.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=classfun.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=classfun.cn
Received: from [192.168.0.160] (unknown [222.77.7.241])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 46D9A7817F;
	Mon, 13 Jan 2025 06:44:06 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 46D9A7817F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1736721846;
	bh=jEPOAcNs906aUJ+b8CTcLrheXhGyiJcFCUN6p22264g=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=oru766WfWGH5XN6eqNNkbvUu9lYUCvdL3pjOhugR8Iyv4zmuLrepk3Ci0Uv+wdjfx
	 f5rsXluJ8lu2hB79XNiiNMrX5YDWofxVArSzdUFj1LeeTEJnv7NKG9xJ3zq7rIeBOG
	 iQ0iHhMR8/YcQ396LmYiMoO2narHOeizLMqUlRVk=
Message-ID: <9a8237c4-1ca2-4cce-b836-a3394692a144@classfun.cn>
Date: Mon, 13 Jan 2025 06:44:14 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/3] arm64: dts: rockchip: add dts for Ariaboard
 Photonicat RK3568
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Junhao Xie <bigfoot@classfun.cn>
References: <20250112073344.1976411-4-bigfoot@classfun.cn>
 <20250112082036.19922-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <20250112082036.19922-1-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2025/1/12 16:20, Chukun Pan wrote:
> Hi,
>> +	/* pi6c pcie clock generator */
>> +	vcc3v3_pi6c: regulator-vcc3v3-pi6c {
>> +		compatible = "regulator-fixed";
>> +		enable-active-high;
>> +		gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
> 
> Although both gpio and gpios can be used here, I tend 
> to use gpio to keep it consistent with other parts.
> (vcc3v3_sd, vcc3v4_rf, vcc5v0_usb30_otg0 ...)

Yes, I overlooked it, I will change it to this:
gpio = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;

> 
>> +&mdio1 {
>> +	rgmii_phy1: ethernet-phy@0 {
> 
> Only one rgmii phy I think '1' is not needed?
> Or `phy@address: ethernet-phy@address {`

I used sgmii_phy0 rgmii_phy1 to name them, they are
indeed redundant, and sgmii is not in mainline yet,
I will change rgmii_phy1 to rgmii_phy.

> 
>> +		compatible = "ethernet-phy-ieee802.3-c22";
>> +		reg = <0x0>;
> 
> The phy address should be 3. Can you try it?

It seems to work fine when using address 0x3, I will modify it.

> 
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&eth1_phy_rst>;
> 
> Is pinctrl necessary here?

I will remove it.

The node now looks like this:
&mdio1 {
	rgmii_phy: ethernet-phy@3 {
		compatible = "ethernet-phy-ieee802.3-c22";
		reg = <0x3>;
		reset-assert-us = <20000>;
		reset-deassert-us = <100000>;
		reset-gpios = <&gpio4 RK_PC0 GPIO_ACTIVE_LOW>;
		rx-internal-delay-ps = <1500>;
		tx-internal-delay-ps = <1500>;
	};
};

> 
>> +&sdmmc1 {
>> +   ...
>> +	wifi: wifi@1 {
>> +   ...
>> +&uart1 {
>> +   ...
>> +	bluetooth: bluetooth {
> 
> No aliases needed.

I will remove it.

> 

Thanks for your review, I will fix all problems in next version!

Best regards,
Junhao


