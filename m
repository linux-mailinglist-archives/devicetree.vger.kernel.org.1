Return-Path: <devicetree+bounces-251365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4395CCF258D
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 09:16:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CF76D30169B0
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 08:12:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D10B2D0606;
	Mon,  5 Jan 2026 08:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="enURKuAz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m32104.qiye.163.com (mail-m32104.qiye.163.com [220.197.32.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B66C02D839D;
	Mon,  5 Jan 2026 08:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767600755; cv=none; b=ipOLr8CL0XVlw12AlWyu5E6zCGGAtHiuecQ1dWuyqCvysWAvI0c9Yd9wQHb5YxU4EIqef9kcBiqYczKiHxyH3E/Dtzfkj1gPOs6PLSNxu7+u2kFJ9NbIDhxWt6NuEE0z33ReluOzcPL/bsErferFgr5xpYMmaq1iiM1z7ThehdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767600755; c=relaxed/simple;
	bh=urjQ1tec0/DbWsojQesshhmZXsdZ/SmKOspRyX093z0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jlKU/uJ0ASY1PqM/mKfbyn+EXMtZZ67v/ZI+mN3Jdghib0aozrVDg/YfFuBt09aPW504Hte+1ShYffIOR6ZzvM72zIh61dPEKF1znvIoPn4ol45Z56NDgcCrq1V1bHMsMyRiCLBm+jbKkfHJwgMQUzkVk7Z8OXsOu9C9MJucPO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=enURKuAz; arc=none smtp.client-ip=220.197.32.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.51] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2f85b6843;
	Mon, 5 Jan 2026 16:12:02 +0800 (GMT+08:00)
Message-ID: <010a23e0-4f55-431f-ba34-7b28ff5df43a@rock-chips.com>
Date: Mon, 5 Jan 2026 16:12:00 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Fix wrong register range of rk3576
 gpu
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Frank Wang <frank.wang@rock-chips.com>, Alexey Charkov <alchark@gmail.com>,
 Liang Chen <cl@rock-chips.com>, Finley Xiao <finley.xiao@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251230090246.46-1-kernel@airkyi.com>
 <5954009.DvuYhMxLoT@workhorse>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <5954009.DvuYhMxLoT@workhorse>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9b8d3690b503abkunm84df8d5db563df
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ01NSlZKGkxMTE5DGBpPH0xWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=enURKuAzDCspfYoP69oVPxdRg+jQE/N4K0O5oUwC8JsuzSPSMk/75yvunlOkc0RrOlf92yWB3oNur4OGAGh9FutPaIwoGsefCz5sx7XMUUIEBIRz/t+NmnbQFb3NkFvovoLQvR5YhCusedIlBwsweF4+sQ5uwAEUudnKvWvsDow=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=ikrHxT9pUrA6wm1OxlVXDTRPK+tK4E4/92u7aJC5YAE=;
	h=date:mime-version:subject:message-id:from;

Hello Nicolas,

On 1/5/2026 3:55 PM, Nicolas Frattaroli wrote:
> On Tuesday, 30 December 2025 10:02:46 Central European Standard Time Chaoyi Chen wrote:
>> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
>>
>> According to RK3576 TRM part1 page13, the size of the GPU registers
>> is 128 KB.
>>
>> Fixes: 57b1ce903966 ("arm64: dts: rockchip: Add rk3576 SoC base DT")
>> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3576.dtsi | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>> index 6284e7bdc442..b375015f0662 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>> @@ -1271,7 +1271,7 @@ power-domain@RK3576_PD_VO1 {
>>  
>>  		gpu: gpu@27800000 {
>>  			compatible = "rockchip,rk3576-mali", "arm,mali-bifrost";
>> -			reg = <0x0 0x27800000 0x0 0x200000>;
>> +			reg = <0x0 0x27800000 0x0 0x20000>;
>>  			assigned-clocks = <&scmi_clk SCMI_CLK_GPU>;
>>  			assigned-clock-rates = <198000000>;
>>  			clocks = <&cru CLK_GPU>;
>>
> 
> This is only true if you only consider the GPU_CONTROL and
> JOB_CONTROL register ranges, and leave out the MMU_STAGE1
> and MMU_STAGE2 ranges. I don't know if those need to be
> mapped, since the MMU control registers are < 0x2000.
> 
> What do other bifrost devices do?
> 

I don't quite understand your point. And this size is 0x20000,
not 0x2000. Before the change it was 0x200000, which overlaps the
address space of some hardware that comes after it like JPEG. 

Could you explain it again? Thank you.

> Kind regards,
> Nicolas Frattaroli
> 
> 
> 

-- 
Best, 
Chaoyi

-- 
Best, 
Chaoyi

