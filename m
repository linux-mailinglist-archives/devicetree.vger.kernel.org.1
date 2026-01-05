Return-Path: <devicetree+bounces-251366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7538CCF256C
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 09:13:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id ED4CE3001BE9
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 08:13:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E590A2EBB8C;
	Mon,  5 Jan 2026 08:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b="WUprz+W2"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-g123.zoho.com (sender4-pp-g123.zoho.com [136.143.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4D5D2E1F08;
	Mon,  5 Jan 2026 08:13:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.123
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767600818; cv=pass; b=uW3rxeQ7mL1uAAQSIz7Sej9szj0Vs2zgJaVXdFKqmaZdUQSeUesNXNdTjFVs4sUnZG00aa8LOp8yWdz1xj1iRK8MMm7NgC6uQLfqKiF27XsPjoOwekMkfJZ6ApeYdKnNcZJU8ROPK7W44TpuiUEcSetaiQ+WyU8U13vfxe1oSp8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767600818; c=relaxed/simple;
	bh=25HIQI8Y5VwzkBD39HWhVLdZ6RZCl4/XKwZX/ymDG/g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JN062iKpPuU4q8p5zgX05qbDa7xf14rF8YX4VTeuy4OruCCu/sAxt5zANmcpAEmlPRBOxdYXY9gKeQxkto8T0ycVhZyjGxaDpvmS2HECkHg9H34jAfy2Y2Ch+C4j8qgjS/OovwAUlnHqPMcm2YG9bDWXjyKjuPbxOG2U8PDV9a4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b=WUprz+W2; arc=pass smtp.client-ip=136.143.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1767600797; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=QdXw+QBWdhHBaWDiWFCWRqp8L+hYjX48wt7hN0jhvuqlM+QjKbEydSKgepGKrysb0g02n/qjNMtj7W38+H7Bm63L8kgu8e74YVxpEB6hBRRsHloZNlB1u+/mxigvOVnEBJnxV4odBvWY5W+Erq0n6NhFddo8zKOywom5tjNeXd8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1767600797; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=bLisPGbELcHPPEG+rKVCKDHWdvS62k1e+Z4DLqfCveA=; 
	b=lGWzhNoUQidxBINUgLQUoiRL0vUBXDEBsXrl9UsceHxsgqjU36LoQZ1cBKPWryukec7duDtsWsUAbqrkbUbPJIRrmEWnqzX7DN5WCIzUSXsy/INykBYbolCUSsRHYkw3edSO0ylTo+ZgOAkezTKK9At759BwzK5DmENZRR6mRgo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1767600797;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=bLisPGbELcHPPEG+rKVCKDHWdvS62k1e+Z4DLqfCveA=;
	b=WUprz+W2XfKk41Wqqox8kwJn9wpR2m1ClYf8aopBTRnCIuE6iyBt2fSZw9UcYpGW
	IuLMILv/GPmYgXzm3hruPc8BueLicwR5BvwuzzUHSxN6nz6GporC3T/grAfTKVZw1d1
	pMbrr0WBKn8fiE25aaMB2BITBFWP5q1/pbB6rxas=
Received: by mx.zohomail.com with SMTPS id 176760079557383.79032239597313;
	Mon, 5 Jan 2026 00:13:15 -0800 (PST)
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
 Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH] arm64: dts: rockchip: Fix wrong register range of rk3576 gpu
Date: Mon, 05 Jan 2026 09:13:11 +0100
Message-ID: <3395202.44csPzL39Z@workhorse>
In-Reply-To: <010a23e0-4f55-431f-ba34-7b28ff5df43a@rock-chips.com>
References:
 <20251230090246.46-1-kernel@airkyi.com> <5954009.DvuYhMxLoT@workhorse>
 <010a23e0-4f55-431f-ba34-7b28ff5df43a@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

On Monday, 5 January 2026 09:12:00 Central European Standard Time Chaoyi Chen wrote:
> Hello Nicolas,
> 
> On 1/5/2026 3:55 PM, Nicolas Frattaroli wrote:
> > On Tuesday, 30 December 2025 10:02:46 Central European Standard Time Chaoyi Chen wrote:
> >> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> >>
> >> According to RK3576 TRM part1 page13, the size of the GPU registers
> >> is 128 KB.
> >>
> >> Fixes: 57b1ce903966 ("arm64: dts: rockchip: Add rk3576 SoC base DT")
> >> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> >> ---
> >>  arch/arm64/boot/dts/rockchip/rk3576.dtsi | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> >> index 6284e7bdc442..b375015f0662 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> >> @@ -1271,7 +1271,7 @@ power-domain@RK3576_PD_VO1 {
> >>  
> >>  		gpu: gpu@27800000 {
> >>  			compatible = "rockchip,rk3576-mali", "arm,mali-bifrost";
> >> -			reg = <0x0 0x27800000 0x0 0x200000>;
> >> +			reg = <0x0 0x27800000 0x0 0x20000>;
> >>  			assigned-clocks = <&scmi_clk SCMI_CLK_GPU>;
> >>  			assigned-clock-rates = <198000000>;
> >>  			clocks = <&cru CLK_GPU>;
> >>
> > 
> > This is only true if you only consider the GPU_CONTROL and
> > JOB_CONTROL register ranges, and leave out the MMU_STAGE1
> > and MMU_STAGE2 ranges. I don't know if those need to be
> > mapped, since the MMU control registers are < 0x2000.
> > 
> > What do other bifrost devices do?
> > 
> 
> I don't quite understand your point. And this size is 0x20000,
> not 0x2000. Before the change it was 0x200000, which overlaps the
> address space of some hardware that comes after it like JPEG. 
> 
> Could you explain it again? Thank you.

Oops, I misread. You are correct, there's one too many zeroes,
and I thought you removed one too many. :)

Reviewed-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

> 
> > Kind regards,
> > Nicolas Frattaroli
> > 
> > 
> > 
> 
> 





