Return-Path: <devicetree+bounces-251765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3925BCF6AF7
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 05:43:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CA00A302B118
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 04:43:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0751286D70;
	Tue,  6 Jan 2026 04:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="KJKNHdO8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m1973181.qiye.163.com (mail-m1973181.qiye.163.com [220.197.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAE11286405;
	Tue,  6 Jan 2026 04:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767674587; cv=none; b=UibGCefNC+e6u9m7np4YcoHc4ZJoZATVapHQAhU8XrSJzMxMNmIWLQ6h9B3c9FA9JN/CzOhQiEnZo1tQuhtK4AudbiYFu5833XIU+RZlxNkGtPG2J5E3OLeD3NZqb/UhrB2OAcnEBnxbOKzqYwpw16p7cEEa6Wnvwm95WQpS2PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767674587; c=relaxed/simple;
	bh=g6f/7TtHAR7PQn2A8th5touzmE5jZeU1J6AOSl3iW5Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iNFQHDVj1+A8x+pk/NluGSOXsmpzK3nHqWTFjnH4Hzh+wCar0uiHog0CCN6CwoXp6RuUkCQ3BE4SrUhXnrLO1vH+kgz5MSDDXPmuMTaqfzlP3ZSG20lC44LOhAeHRHI7o73ohoD2+F1svqwNir+3izE0anp+q8WXwIejJszrkLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=KJKNHdO8; arc=none smtp.client-ip=220.197.31.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.51] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2f99dbbaf;
	Tue, 6 Jan 2026 09:13:44 +0800 (GMT+08:00)
Message-ID: <04e32805-fe8c-43d6-831a-ae79d39dcd7b@rock-chips.com>
Date: Tue, 6 Jan 2026 09:13:42 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Fix wrong register range of rk3576
 gpu
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Frank Wang <frank.wang@rock-chips.com>, Alexey Charkov <alchark@gmail.com>,
 Liang Chen <cl@rock-chips.com>, Finley Xiao <finley.xiao@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20251230090246.46-1-kernel@airkyi.com> <aVwIukddZTukxH_8@venus>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <aVwIukddZTukxH_8@venus>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9b90ddf73403abkunm320fd065c0ed6b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxpIHVZJGkJKGkhPS04fGB9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=KJKNHdO8zd5QpFKLyPRseVQdRnjRcXTeUWRdEp8cXUzLye5TzE7wQKb1CgZ8tlsclIHzau975iQjEN9zgpf4vs5trW297tbMsPVNz6+yp6cVHD6A49n3WtoZjCUAwWR+MbZvUVMr62ufbVy6/pyiGSVYA44nAuRhBhhYOan8RwU=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=PDL61oCstf3etehVdwrYEki4PJaxTvOdDdF6kgLRUsk=;
	h=date:mime-version:subject:message-id:from;

Hi Sebasitian,

On 1/6/2026 3:24 AM, Sebastian Reichel wrote:
> Hi,
> 
> On Tue, Dec 30, 2025 at 05:02:46PM +0800, Chaoyi Chen wrote:
>> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
>>
>> According to RK3576 TRM part1 page13, the size of the GPU registers
>> is 128 KB.
> 
> RK3576 TRM V1.2 has the address mapping on page 15. Maybe just
> reference "Table 1-1 Address Mapping" instead of giving a page
> number?
> 
> I think it makes sense to add the following extra text:
> 
> The current mapping incorrectly includes the addresses of multiple
> following IP like the eInk interface at 0x27900000. This has not
> been detected by the DT tooling as none of the extra mapped IP is
> described in the upstream RK3576 DT so far.
>

I will add these info in v2. Thank you :)

>> Fixes: 57b1ce903966 ("arm64: dts: rockchip: Add rk3576 SoC base DT")
>> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
>> ---
> 
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> 
> Greetings,
> 
> -- Sebastian
> 
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
>> -- 
>> 2.51.1
>>

-- 
Best, 
Chaoyi

