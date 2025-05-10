Return-Path: <devicetree+bounces-175923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B08AB2498
	for <lists+devicetree@lfdr.de>; Sat, 10 May 2025 18:14:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 753371B677A9
	for <lists+devicetree@lfdr.de>; Sat, 10 May 2025 16:14:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C18C1E0B9C;
	Sat, 10 May 2025 16:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="rE77FBZb"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BA9D2459F2;
	Sat, 10 May 2025 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746893635; cv=none; b=F/IFqHw033Jk2P0dD9CLkvf+mWEj5No7qPOJSt/eKGXwnocQevKMmOcaAONAHglTZNKKMiqixs4v43a2GinHXAbDT7NCzCGClDY3kmUpA4GNdwmw68CpNPRXheIC+U03lxgagnd2fu2ukjAa7kSnaOhJg0rG5LyMrBm8vJ/98JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746893635; c=relaxed/simple;
	bh=qFdVhVxxzmO7W01SUAwnZoTpnvkGyy2+whLaqYK3KEk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=j00DAfy8YgZJwFXOuyy/v38FeRu7DOAkGtAO77d+oUsRPNi+EK0zFIbqks52vDl7netSpwYIb0DmNJ4RXGZSn8mirW/RGa7MfuybGTk6OF1GCdZ4EPQmK8wFSNrVv9k1Qr1vcA28IyaHovUDIBlx7uTSMcw2w8HHO+/iPgFRc90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=rE77FBZb; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=Ijvnew3h0xw65xtPp4Zyn3Y7poqn0R7NBg2KYZO4w8A=; b=rE77FBZbRCIsb/SQN+cYSJYiOi
	HaWqtErRGaZR5988s0daXG+FPekrma/zJE/m+1wNR4cZl2TXEU45BuPgAT17zR/IyMeYIsYGHvYIK
	wWooRTyMCUghK8+h/LOxdcGYXqwVdyw1VAYiL5QwG4e6J/zYg0mwAZ1HBI3/+2Gbqucp9vLCQ3F8T
	urYh8qcdnsBRP5H2+i43HxDrkkoeJZXizaI9dBTurGBQYTPGVQgUXJeMo9gfj70DOWy8CRJ+0O9MR
	Vw+fiq5yfD0tRBv28VmFb5HU0fFfuHXhcQh10LZUhc7FQe9MAtpxrAj9xDexR/mRFbBITwjnDUXCr
	SeehJG0A==;
Received: from i53875a1d.versanet.de ([83.135.90.29] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uDmpY-0000dK-Im; Sat, 10 May 2025 18:13:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/2] rockchip: Enable Ethernet controller on Radxa E20C
Date: Sat, 10 May 2025 18:13:28 +0200
Message-ID: <174689356069.2086280.16152743367950070469.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250509202402.260038-1-jonas@kwiboo.se>
References: <20250509202402.260038-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 09 May 2025 20:23:56 +0000, Jonas Karlman wrote:
> The Rockchip RK3528 has two Ethernet controllers, one 100/10 MAC to be
> used with the integrated PHY and a second 1000/100/10 MAC to be used
> with an external Ethernet PHY.
> 
> This series add device tree nodes for the Ethernet controllers found in
> RK3528 and enable the LAN interface on Radxa E20C.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: Add GMAC nodes for RK3528
      commit: 5eb28f461a1b368a57994cc3b3f2ba3154c00bb8
[2/2] arm64: dts: rockchip: Enable Ethernet controller on Radxa E20C
      commit: 10b9ef4a514b25dea6eac24f25e3027866526800

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

