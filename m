Return-Path: <devicetree+bounces-251361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB0ECF248A
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 08:55:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9586D300A343
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 07:55:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 798242DC359;
	Mon,  5 Jan 2026 07:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b="dejfNqMo"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9ED522157E;
	Mon,  5 Jan 2026 07:55:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.112
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767599747; cv=pass; b=p577KmUCOEKN1RRx5OYNFerCe8J1tzuCT5lVotMdG4wcMEgTnlGy0Js3KPEUk65ybjXw57JBz5BJNOACB8QXcgKw3Y9nrcj4qq6U3MJO3xAnF2Y5WZJbJNn1+q6ib4Kc0CsuFMq/32ENJygGpp9hBIHU4M+YScby9I2AaibLp0w=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767599747; c=relaxed/simple;
	bh=kxKZKQ3NcGqX+XS6cb+JIb/nGAR6dkLjpX36I0YpwmU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=lpjZ1z0uBnRLpLW/exaHDclcfJs1lwmsvl8XqsN+TNpRutyqrlLMpXHeP5h7FcV906aidadw5cRsp8OUdgEw0jDHrUTfv+zIoWuIEDskH/XE3K3VPiMO2zpqmab4YwF8q1qaKwJpLqtxVyT0LPYmMLaJBzEb5vPWpu8JySX8vEE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b=dejfNqMo; arc=pass smtp.client-ip=136.143.188.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1767599726; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=ApyVmbqvyvvb8na3d/melHLpY2DTPtJeJzJ9aWMiXiAmqnz89jYsWoPJ0vVj5aTgXvgnWPOwPPfqDU/LNUOkE6MQEZu2okpX1MjtLqGfcVTyg1Py7MQgJSE8Gk4P07RiQyKrTCte+OCs4BgDYf3sey5i+mVfz6hngJY8gmK3UYk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1767599726; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=aWPAionUGYVqkBpz5QQVAcYUIfxJMKwBFtRZhqGCqzM=; 
	b=RuiFb+t17z7NWutMYXVwxR3XZl8vkhaNc+HPwldTvIxBW6iyroeFZlOxk4gQPyZXwMi0q/fFm32VS+2LnzuALx0/ZKwHfOe9HNXwL90TgwrZWwMkyhSkYRdbeL6qDnv6SPMU1W/6wcWNx61Y9DdZXz68YT2tF0eO1hrTkhFQfAc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1767599726;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=aWPAionUGYVqkBpz5QQVAcYUIfxJMKwBFtRZhqGCqzM=;
	b=dejfNqMo6xmOUjexvSDcHRAdx7eGKVoKzOgsSAouO/QpFOaFtb/2l++R+0lz/IIE
	GA1s1tqndtY+CqwFmV4yoqxwS+YAzplmyPeZ88imwA/+zgkAwGVoPqWSMcSAHKcC4t9
	g3QSRCI3m5/DeUkzc8rpw6Q/Z4h7E5iLJDvEHf7w=
Received: by mx.zohomail.com with SMTPS id 1767599722778915.547246258709;
	Sun, 4 Jan 2026 23:55:22 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Frank Wang <frank.wang@rock-chips.com>, Alexey Charkov <alchark@gmail.com>,
 Liang Chen <cl@rock-chips.com>, Finley Xiao <finley.xiao@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, Chaoyi Chen <kernel@airkyi.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH] arm64: dts: rockchip: Fix wrong register range of rk3576 gpu
Date: Mon, 05 Jan 2026 08:55:17 +0100
Message-ID: <5954009.DvuYhMxLoT@workhorse>
In-Reply-To: <20251230090246.46-1-kernel@airkyi.com>
References: <20251230090246.46-1-kernel@airkyi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

On Tuesday, 30 December 2025 10:02:46 Central European Standard Time Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> According to RK3576 TRM part1 page13, the size of the GPU registers
> is 128 KB.
> 
> Fixes: 57b1ce903966 ("arm64: dts: rockchip: Add rk3576 SoC base DT")
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3576.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> index 6284e7bdc442..b375015f0662 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> @@ -1271,7 +1271,7 @@ power-domain@RK3576_PD_VO1 {
>  
>  		gpu: gpu@27800000 {
>  			compatible = "rockchip,rk3576-mali", "arm,mali-bifrost";
> -			reg = <0x0 0x27800000 0x0 0x200000>;
> +			reg = <0x0 0x27800000 0x0 0x20000>;
>  			assigned-clocks = <&scmi_clk SCMI_CLK_GPU>;
>  			assigned-clock-rates = <198000000>;
>  			clocks = <&cru CLK_GPU>;
> 

This is only true if you only consider the GPU_CONTROL and
JOB_CONTROL register ranges, and leave out the MMU_STAGE1
and MMU_STAGE2 ranges. I don't know if those need to be
mapped, since the MMU control registers are < 0x2000.

What do other bifrost devices do?

Kind regards,
Nicolas Frattaroli



