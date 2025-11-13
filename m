Return-Path: <devicetree+bounces-238372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E40CC5A858
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 00:22:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 233D94EF7EF
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 23:18:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58FC5314A80;
	Thu, 13 Nov 2025 23:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="P0aJVu7S"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8193030B51E;
	Thu, 13 Nov 2025 23:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763075905; cv=none; b=Gtpen8eIkn9N3EJ7U8e+sdrrg29bSb8U9h3ljwXVP1qigBdxgOdep6CQDH+FUUUwc3uwno+B9aBK8bBwya+Q0bJAhVpMs3kBYRuO0mT5MzbmJhjn+NtgLvjY5uK0fdcOJg+NDzZyPC516dcB1HnYJ+QPCnppxwpKX7ZATMiE8Ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763075905; c=relaxed/simple;
	bh=9ejglyg0+XWK2s19CoKPWTK5Fl+cjH4Nr9lcpqSnndQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jyvTS6ofzF8ggoKpcgd0fDNjipMINixDN1VxwiUIy0JB49T1u8YFJsy1zg41o9ZujAFJWHFLus2FhaEh5xnO3B34gJgeSkHgTuaPDwGMSkiKcFm9HjqczSADXpQll6ESNbFCbd4qZzjMj0ydnH5031l5MPUjPNR/tAreYWQPfdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=P0aJVu7S; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=UIlcfUM5yx0zo8woN7gotIggTkdWYNMGQKYLuoK3Kzo=; b=P0aJVu7S24MIQH/+hmQ/K7aQ6m
	/cM8o48RufHby5hhUNd42IJe76BLDqHPOOFRLdIHCxX3sN+qXuFXbUYdR8JX3Gk+iz1FVA1umTBGA
	WQVeuo674VDoeW/Gf65kEYVtdvQZxzExNZXoSmCNUZqfZsdacGxmbKazeJz8o3tUiNstQwypHqaQn
	DATM186UI/MXeAmu8AV9WiyKjad27vIuLLohD9hR8zBjqAEjvbuTYvjeD1ExVCORCikrObruT6/Kz
	BrGL+jf1B6xB/K/xiQqDtwYqeCAPNB82abt2D5Frf0Iy5Il8IDOBi5Yt8XAi8rlYheN/oJUgVJCfd
	ecO4xVNA==;
Received: from i53875a11.versanet.de ([83.135.90.17] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vJga2-0005lz-T1; Fri, 14 Nov 2025 00:18:18 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Quentin Schulz <foss+kernel@0leil.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Quentin Schulz <quentin.schulz@cherry.de>
Subject: Re: [PATCH] arm64: dts: rockchip: disable HS400 on RK3588 Tiger
Date: Fri, 14 Nov 2025 00:18:15 +0100
Message-ID: <176307584244.496508.13187740741138486595.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251112-tiger-hs200-v1-1-b50adac107c0@cherry.de>
References: <20251112-tiger-hs200-v1-1-b50adac107c0@cherry.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 12 Nov 2025 16:01:53 +0100, Quentin Schulz wrote:
> We've had reports from the field that some RK3588 Tiger have random
> issues with eMMC errors.
> 
> Applying commit a28352cf2d2f ("mmc: sdhci-of-dwcmshc: Change
> DLL_STRBIN_TAPNUM_DEFAULT to 0x4") didn't help and seemed to have made
> things worse for our board.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: disable HS400 on RK3588 Tiger
      commit: baa18d577cd445145039e731d3de0fa49ca57204

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

