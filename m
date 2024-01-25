Return-Path: <devicetree+bounces-35296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CACF83CE41
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 22:13:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8955C1C237D2
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 21:13:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF20C13A253;
	Thu, 25 Jan 2024 21:12:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41ACC13A249
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 21:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706217157; cv=none; b=PLlcYn+gsPWZ7kJCSw1vjEHUL6JtLLTmT0EIBPAevNG0RF9MNAd+kaISJcquLPtzhS5tQzOySQZo5D2PuLkRHgYwJ4Kbp6nwZ6maUaN78g5ML0oAL8beIm4jnjnb/acjHjbyx52sLaKM1tjEycqbUyyFwNMxLGyIK70wHCgDklI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706217157; c=relaxed/simple;
	bh=qt2s5BulU5Rt+l5S5/DsfTnorvp0xax0stm3AGCvLoQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LmoNlfq+TKg1EMnHDunzFhTl08ZhMElN+lvYKU4TbtGLmsstik8YwPN+HE4IdT+ONpeWgUUVoEg3o3d2YBzwIr0W96NxFf8yK2++kIy1nZSIOW5nAbfjmclKuS1Bp1V8BRy5gbWkflIbzGbyFihkr2+zFRmLM2aRH7cmf0Uq4x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rT71H-0002EX-K4; Thu, 25 Jan 2024 22:12:19 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Kyle Copperfield <kmcopper@danwin1210.me>,
	conor+dt@kernel.org,
	robh+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add cache information to the SoC dtsi for RK3399
Date: Thu, 25 Jan 2024 22:12:06 +0100
Message-Id: <170621707730.1872080.15784453219296022164.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <be3cbcae5c40fa72a52845d30dcc66c847a98cfa.1702616304.git.dsimic@manjaro.org>
References: <be3cbcae5c40fa72a52845d30dcc66c847a98cfa.1702616304.git.dsimic@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Fri, 15 Dec 2023 06:00:33 +0100, Dragan Simic wrote:
> Add missing cache information to the Rockchip RK3399 SoC dtsi.  The specified
> values were derived by hand from the cache size specifications available from
> the RK3399 datasheet;  for future reference, here's a brief summary:
> 
>   - Each Cortex-A72 core has 48 KB of L1 instruction cache and
>     32 KB of L1 data cache available, four-way set associative
>   - Each Cortex-A53 core core has 32 KB of instruction cache and
>     32 KB of L1 data cache available, four-way set associative
>   - The big (A72) cluster has 1 MB of unified L2 cache available
>   - The little (A53) cluster has 512 KB of unified L2 cache available
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add cache information to the SoC dtsi for RK3399
      commit: b72633ba5cfa932405832de25d0f0a11716903b4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

