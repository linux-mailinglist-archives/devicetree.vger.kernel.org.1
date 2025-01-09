Return-Path: <devicetree+bounces-137184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 436F9A07E22
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 17:55:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 48AFC163B7F
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 16:55:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C298188A0E;
	Thu,  9 Jan 2025 16:55:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="Npsdf93Q"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B03618893C;
	Thu,  9 Jan 2025 16:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736441738; cv=none; b=gnzzCiKnHJDFbnOhY02rEi122J5M61HlrqTk6f/FITZXqrYYExBeeCoiDrwyt6plDRd9kSjF4/EqIzGcfOri9+7n6nC7L2YKcVGecxLBMStKScZwPMGuQFlrvmzJ8gGJfedZQKXVHhTlYiZA8+2bJxEV/gqe+yLqbrrH1XhZpx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736441738; c=relaxed/simple;
	bh=vmp4bWghb+cFg6WfqzDTXadzsywMzty2MkrcCmizKco=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=G1i3MxKdMibrx9UhtowU2mvWnF4xS1y+hFU3hFgpLlxoNW+sH21JFEyRoaGE7HAc24c0y4pyL3pChatPnH0Q6AaZYslYVjctHBb4d6mt3xaYM4OW2C8yC1tEUTJlA6c2SImXa51grFgxouTUswyXq4IFXIDTTtWuh3TXTpKcWr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=Npsdf93Q; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=evpzqHxtYX+aFEQtJHdzEeFAuzdxM9ygHYkzc3TerWg=; b=Npsdf93Q8R4QrWJQCTpcejLVWs
	+a3ySUZrk3R2LN5ULgtf1Z0fkzKxeyaAKYNcRGPhSwDe6o0+2NjLlPZ6vXZAE/HBT0IKDrfHYBKBN
	d+Stocy26dfJ9bF2yFW6Xyv92u7SmmtMFb35Cd0W59s9WblDZiqzpsTn0OmYYC4uVfTo+sgNFYvHp
	wNAUUAk6uxS9pG2f6csvo2obODedYV+iYgH+hJKoBRk+vN6eMZw/ziXhPv3bVoKLsRg3liexAEatN
	89qFfDoaIsaLwH28L8/iYWmonGNjz6RCicYAV9ccka7h/WIm2QAZjw07MWjhdR2N2P5DSEwV2SJrX
	hqO+OdZg==;
Received: from i5e860d05.versanet.de ([94.134.13.5] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVvoh-0003hx-BY; Thu, 09 Jan 2025 17:55:31 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Delete redundant RK3328 GMAC stability fixes
Date: Thu,  9 Jan 2025 17:55:16 +0100
Message-ID: <173644170628.2899934.16230769617276217345.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <fe05ecccc9fe27a678ad3e700ea022429f659724.1733943615.git.dsimic@manjaro.org>
References: <fe05ecccc9fe27a678ad3e700ea022429f659724.1733943615.git.dsimic@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 11 Dec 2024 21:40:52 +0100, Dragan Simic wrote:
> Since the commit 8a469ee35606 ("arm64: dts: rockchip: Add txpbl node for
> RK3399/RK3328"), having "snps,txpbl" properties defined as Ethernet stability
> fixes in RK3328-based board dts(i) files is redundant, because that commit
> added the required fix to the RK3328 SoC dtsi, so let's delete them.
> 
> It has been determined that the Ethernet stability fixes no longer require
> "snps,rxpbl", "snps,aal" and "snps,force_thresh_dma_mode" properties, [1][2]
> out of which the last two also induce performance penalties, so let's delete
> these properties from the relevant RK3328-based board dts(i) files.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Delete redundant RK3328 GMAC stability fixes
      commit: 3ca11da6e8a7b578c28dcecc31237791955c62fc

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

