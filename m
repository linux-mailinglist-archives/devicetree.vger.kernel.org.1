Return-Path: <devicetree+bounces-257712-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mD3qDZM7cGmgXAAAu9opvQ
	(envelope-from <devicetree+bounces-257712-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 03:36:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A73FA4FD78
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 03:36:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 840C27C36F9
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 02:35:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37232305064;
	Wed, 21 Jan 2026 02:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="JITe9yhl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m32105.qiye.163.com (mail-m32105.qiye.163.com [220.197.32.105])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A0331AA8B;
	Wed, 21 Jan 2026 02:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.105
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768962880; cv=none; b=LlTzN1e969li8LxJNhH6uPcIj17s1MLpHq24Kc0ufzQVzqDMn2ywRWJ4o2S4UxJmGJSw3rqzi2USH2wo06hEveU3FT4EttEeQZJYaxgtgSPyiC1Fx88mMCYJ7CWTc4wG6HMkc6yZKLLsECpurWs1CUa+OFZb7GDho8Kc/MPUM44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768962880; c=relaxed/simple;
	bh=xi2lvJLh3o+cvXrjrh/IXzlRZkXABYzhCPFM+aSYf1o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jrsU8cqTFsLBDD/pNhNvdVowuwTtXP8Pu2H42MsOzqSKsrhsN40KZAeElz1GMi5PDTo09+1vxDpvl+adfCPHk9mxQOYGb1KV1ulUvqDIlzQuBXZyAdBBZSM8IXRVZuHMHnTM7eYhkH8InY23OWAVYQhVQLvz0H8klpJs0lOtI+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=JITe9yhl; arc=none smtp.client-ip=220.197.32.105
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.51] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3160d3b68;
	Wed, 21 Jan 2026 10:29:16 +0800 (GMT+08:00)
Message-ID: <e9cf22c2-a41d-464e-b6cb-ec36149aeb50@rock-chips.com>
Date: Wed, 21 Jan 2026 10:29:14 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Chaoyi Chen <kernel@airkyi.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Quentin Schulz <quentin.schulz@cherry.de>, Jonas Karlman <jonas@kwiboo.se>,
 Hsun Lai <i@chainsx.cn>, John Clark <inindev@gmail.com>,
 Jimmy Hon <honyuenkwun@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 Michael Riesch <michael.riesch@collabora.com>,
 Peter Robinson <pbrobinson@gmail.com>, Alexey Charkov <alchark@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260121015357.291-1-kernel@airkyi.com>
 <20260121015357.291-3-kernel@airkyi.com>
 <07082578-f56a-4ad2-9ea0-a4ef20a86cfe@rock-chips.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <07082578-f56a-4ad2-9ea0-a4ef20a86cfe@rock-chips.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9bde62830503abkunm076ac87eafb1c1
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR4eHVZOTE9JQxhPSUJLSB5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=JITe9yhlKbMe3EXkJwwJc/dpKo2i2d37oUt6cOXPuLbzPmU575Zk9T6dwQeBv0Z9F0QGFEUdGHWmBzzzQPgn/IcwNow6/o0HlrePFp8cpTk7rjXYBqJpl7RQ5VA49kfhxALCFvwIEUMHB0XQwk1z7o7vWyZkwXDwqRHRV58jOMI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=2eh4KD7y1g6vQGusKiA5g415ChW3lPdxO7SBQzAgVns=;
	h=date:mime-version:subject:message-id:from;
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257712-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[airkyi.com,kernel.org,sntech.de,cherry.de,kwiboo.se,chainsx.cn,gmail.com,manjaro.org,collabora.com,rock-chips.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaoyi.chen@rock-chips.com,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[rock-chips.com,none];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rock-chips.com:email,rock-chips.com:dkim,rock-chips.com:mid,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,0.0.0.1:email]
X-Rspamd-Queue-Id: A73FA4FD78
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Shawn,

On 1/21/2026 10:09 AM, Shawn Lin wrote:
> 在 2026/01/21 星期三 9:53, Chaoyi Chen 写道:
>> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
>>
>> General features for rk3576 evb2 board:
>>      - Rockchip RK3576
>>      - LPDDR4/4X
>>      - eMMC5.1
>>      - RK806-2x2pcs + DiscretePower
>>      - 1x HDMI2.1 TX / HDMI2.0 RX
>>      - 1x full size DP1.4 TX (Only 2 Lanes)
>>      - 2x 10/100/1000M Ethernet
>>      - 5x SATA3.0 7Pin Slot
>>      - 2x USB3.2 Gen1 Host
>>      - 3x USB2.0 Host
>>      - WIFI/BT
>>      - ...
>>
>> Tested with eMMC/SDMMC/HDMI/USB/Ethernet/WIFI/BT module.
>>
>> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
>> Reviewed-by: Alexey Charkov <alchark@gmail.com>
>> ---
> 
> ---8<----
> 
>> +
>> +&sdio {
>> +    #address-cells = <1>;
>> +    #size-cells = <0>;
>> +    bus-width = <4>;
>> +    cap-sd-highspeed;
>> +    cap-sdio-irq;
>> +    disable-wp;
> 
> disable-wp is not used for SDIO case, could be removed.
> 
> 

Will fix in v5.

>> +    keep-power-in-suspend;
>> +    max-frequency = <150000000>;
>> +    mmc-pwrseq = <&sdio_pwrseq>;
>> +    no-sd;
>> +    no-mmc;
>> +    non-removable;
>> +    pinctrl-names = "default";
>> +    pinctrl-0 = <&sdmmc1m0_bus4 &sdmmc1m0_clk &sdmmc1m0_cmd>;
>> +    sd-uhs-sdr104;
>> +    status = "okay";
>> +
>> +    brcmf: wifi@1 {
>> +        compatible = "brcm,bcm4329-fmac";
>> +        reg = <1>;
>> +        interrupt-parent = <&gpio0>;
>> +        interrupts = <RK_PB0 IRQ_TYPE_LEVEL_HIGH>;
>> +        interrupt-names = "host-wake";
>> +        pinctrl-names = "default";
>> +        pinctrl-0 = <&wifi_host_wake>;
>> +    };
>> +};
>> +
>> +&sdhci {
>> +    bus-width = <8>;
>> +    full-pwr-cycle-in-suspend;
>> +    mmc-hs400-1_8v;
>> +    mmc-hs400-enhanced-strobe;
>> +    no-sdio;
>> +    no-sd;
>> +    non-removable;
>> +    status = "okay";
>> +};
>> +
>> +&sdmmc {
>> +    bus-width = <4>;
>> +    cap-sd-highspeed;
>> +    cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
>> +    disable-wp;
>> +    no-sdio;
>> +    no-mmc;
>> +    sd-uhs-sdr104;
>> +    vqmmc-supply = <&vccio_sd_s0>;
> 
> Should use vmmc-supply to contrl the power, the same as EVB1[1].
> 
> [1] https://lore.kernel.org/linux-rockchip/1768524932-163929-5-git-send-email-shawn.lin@rock-chips.com/T/#u
> 

That make sense. Will fix in v5.

>> +    status = "okay";
>> +};
>> +
>> +&u2phy0 {
>> +    status = "okay";
>> +};
>> +
> 
> 
> 
> 

-- 
Best, 
Chaoyi


