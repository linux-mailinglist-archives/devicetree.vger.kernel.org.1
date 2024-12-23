Return-Path: <devicetree+bounces-133502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E669FAD0F
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:18:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA207164E32
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 10:17:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C03EB18F2DA;
	Mon, 23 Dec 2024 10:17:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast3.qq.com (smtpbguseast3.qq.com [54.243.244.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 940A6190068
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 10:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.243.244.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734949077; cv=none; b=MsJiDnz/zKsHXnU5SlbCP8t3Vf1raGZu6Gzpu0TR5VPBKa8SxCimkqJR7fgHvNDkvPaTBM7wzL9cucLxMM+y2nL3FiJWlV9V0Bl7DNRbcdwnjUXuiylc/M/q00rYoso8U9KgWaj7ViqmmuyfL4XRffoPfMLMM6YRmAYhLdCAs+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734949077; c=relaxed/simple;
	bh=d488MHjjm184/xlIG3nncrc5kJvwFwPDrV9wscGj4sY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Viw1HSq7tIlXlg+31kHYzg/wJtswmrVaqkx1muooQPh7XW+g9b5y6RR/9sXgy97xQIduBShVSra6HYVXcI2EWExPOzkMwUgfGNAHnqDexnhpl4o82MYpZH+KSJ5raMfJPl5/K5BkY8kugUzmXzd5kT9vJQ87aVOjVl2vnACIOYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.243.244.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip3t1734948976t5gkrex
X-QQ-Originating-IP: ZxDPKnbKuj2Qa08eDRwWnduxaDxo448WGeNSucLk2qA=
Received: from [IPV6:240f:10b:7440:1:5968:fbf4 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 23 Dec 2024 18:16:06 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 9580999618302068927
Message-ID: <5EDFB980DF778743+9f26c8cc-d86d-46ed-9642-cdca10fe7e91@radxa.com>
Date: Mon, 23 Dec 2024 19:16:04 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add Radxa E52C
To: Marc Zyngier <maz@kernel.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, tglx@linutronix.de, jonas@kwiboo.se,
 macromorgan@hotmail.com, andyshrk@163.com, liujianfeng1994@gmail.com,
 dmt.yashin@gmail.com, dsimic@manjaro.org, tim@feathertop.org,
 marcin.juszkiewicz@linaro.org, michael.riesch@wolfvision.net,
 alchark@gmail.com, sebastian.reichel@collabora.com, jbx6244@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20241222030355.2246-1-naoki@radxa.com>
 <20241222030355.2246-4-naoki@radxa.com> <87zfkmrb4u.wl-maz@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <87zfkmrb4u.wl-maz@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MrfJYRspGRl/8N2fDQkbayoTMxQuPn4cDgFhRSzEilfisYXS+w3lAdv3
	Q3m0/Y+9yAKfUb6LgU82PDp5GoV2bjUdXYM58nhIAyDkaKV6ofzGyzAK0MRKdqtBpdpdyP6
	ZbAwM7NT1hAdymntz7nEqpAQOVD+Ssti3Vz+5Okm7skH5/zwjUS9Ons4I65mluNHmQTDhDT
	gJJ/SwlrroKHNH6Yjs/3PRR3ShH1nv3BKIzaLlgbzM0HRy4i8j/w3RwLdgb6YIOnmUXZo1k
	9xyD/Zk7THU9c3MX/7uXguoPV0PthiS5Q/1PcY2f93sVMemriUScpi/yg0wmh1LHTWi/lDx
	bhO0r/Z5WW/GcDCxgWVaFRNaS6WXe8Y6T9lDDOGmIr+vVyOVriSaEoNv+EhATB0HLxj+a1j
	vVGPuw+Ba4swFRZwciRY50CNXtSGQ2CScQftz/4vQX4xbpADqKrvkDZqOR7ihqWLpEJCpWF
	c+6hl05wXZJjTvwTPQ4II6R1DYzYZQAX5QKmYbeHOPY0Kzx22bGNdTBfavRgcFNp5orrbiw
	09d14SH65Psph2r4CkBusDdwmlziQgVHMUXpWIVL2kkE3EObt2tx9LKHNqHlg7H/pnu47jL
	DjylDnejLeFbgtDFPCQpFAlmbuR9ebFlgO6HrafIUOi0wwyAfy4Wic8QVH7SAFgHLq62Qey
	C/S2xo00O1CHUsssIQqx6wQhaRkCz4TaHRS/TmRfhO7fmefE576lSKkXqIVcqLd4xagRR6r
	+dJ8fzZjh97Tfe/lyKBOdGC3YjEDkLKW8PUYKLKFu07lunNbBLCfd4e3YbAHHG53vUbRtR+
	yMH65cZvvWky0ImcJP6M47krCqd1si2CLi4RMhWduk4bVJcJvqV+MSHLlmmp9zrNf3TXODH
	r0Zn8zWmEeCtsXx8cgK4d8pAfl+D3tOSdJ0DSMmLVPyi/V7Rs8pbMBBMYfmaafRucPvyU/Z
	4VZC5bjiAJsvcEA==
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
X-QQ-RECHKSPAM: 0

Hi Marc,

On 12/23/24 18:39, Marc Zyngier wrote:
> On Sun, 22 Dec 2024 03:03:55 +0000,
> FUKAUMI Naoki <naoki@radxa.com> wrote:
>>
>> Radxa E52C is a compact network computer[1] based on the Rockchip
>> RK3582 SoC:
>>
>> - Dual Cortex-A76 and quad Cortex-A55 CPU
> 
> So you have *two* big cores.
> 
>> - 5TOPS NPU
>> - 2GB/4GB/8GB LPDDR4 RAM
>> - 16GB/32GB/64GB on-board eMMC
>> - microSD card slot
>> - USB 3.0 Type-A HOST port
>> - USB Type-C debug port
>> - USB Type-C power port (5V only)
>> - 2x 2.5GbE ports
>>
>> [1] https://radxa.com/products/network-computer/e52c
>>
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>>   .../boot/dts/rockchip/rk3582-radxa-e52c.dts   | 729 ++++++++++++++++++
>>   2 files changed, 730 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> 
> [...]
> 
>> +&cpu_b0 {
>> +	cpu-supply = <&vdd_cpu_big0_s0>;
>> +};
>> +
>> +&cpu_b1 {
>> +	cpu-supply = <&vdd_cpu_big0_s0>;
>> +};
>> +
>> +&cpu_b2 {
>> +	cpu-supply = <&vdd_cpu_big1_s0>;
>> +};
>> +
>> +&cpu_b3 {
>> +	cpu-supply = <&vdd_cpu_big1_s0>;
>> +};
> 
> And yet you configure 4. If your HW only has 2 A76s, surely something
> should remove these cores for this platform rather than keep them
> around.

One of the four cores may be defective. This information is stored in 
the OTP, so we need to run our software to detect which core is 
defective. Then we disable the cluster that contains the defective core.

please refer
  https://patchwork.ozlabs.org/project/uboot/patch/20241210222341.3537543-2-jonas@kwiboo.se/

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Thanks,
> 
> 	M.
> 


