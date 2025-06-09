Return-Path: <devicetree+bounces-183779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B612AD1BB4
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 12:40:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 508C016C251
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 10:40:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C026225394C;
	Mon,  9 Jun 2025 10:40:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="FVsI8kSG"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336851FC11F
	for <devicetree@vger.kernel.org>; Mon,  9 Jun 2025 10:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749465615; cv=none; b=Spp1s2jTSI3Ry22+8BrSagCUq9MQQGbmZbRFLUHPsIzsoJbUgk5PmrJ/ofkBB9qt5P6uIv9H2lDkgFhv3RftPwkRcb6AnbouERk4TwXSZVY5TN5tz/kJKGiPhT3KtwKCKOCBCLAoUhobvpuEH5/8XaxdvJe+7HYZfSLag6XIRCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749465615; c=relaxed/simple;
	bh=UUJ9Zp4guIX/mr7MreMTraczbXm1kt7TCOFFqeSOjyY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=F3JGoo7zaWhk13O5IjYVAWjReD1/czD6o1zh552Cyvm8E8VtKuR1/RvTbqbXiJaGKAMkjnCrp3gi7Mge61eqZrqfJl/odF+BN7to+1sRrtB8WAtniEe5zilGqr0np9+Ff68q8KCCXzVuIBqbuS9FYOUqnHpmmSJHuHtDQngqazg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=FVsI8kSG; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=eCxLv9WnMGQlaBo2iZMhsA5FFtXSFCDHIfpUpCncg8s=; b=FVsI8kSGXH/0fbjfTXScFinc3i
	azIrJf2m2MMzETH6VlXzIEWGhPwwoCG5p3aqdB8GhbUGRRYgkf8Ks4/9BpoODrKZke8KXP2qUuNyf
	SN0USvvP6Tl84txbYiVPJbAxscz5BoOoveQlzir+PE+GyIepz/ZTF/Lm5EJK/nvdwHc50QHmrDCJ1
	O1lvCogRvYj2LWm69tAxCOcW+J10KTqbnaTlbwIqwzRZZB19+pdM+3VaVEVnB7vNifj8QCRbTZTKr
	VDrWo1bANLJ7Q29zyuwj/0sB8fSa5uH1yzOyCbTSr19s4Kw66rdnHDdSW1/gMwHbAWgL0n08DS+Pe
	D3MZ6e5Q==;
Received: from i53875b1c.versanet.de ([83.135.91.28] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uOZfG-0006Av-7L; Mon, 09 Jun 2025 12:23:38 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Peter Geis <pgwipeout@gmail.com>,
	Peter Robinson <pbrobinson@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: drop touch panel display from rockpro64
Date: Mon,  9 Jun 2025 12:23:06 +0200
Message-ID: <174946455543.762051.12845309784482047662.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250518215944.178582-1-pbrobinson@gmail.com>
References: <20250518215944.178582-1-pbrobinson@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 18 May 2025 22:59:33 +0100, Peter Robinson wrote:
> The touch panel display is an optional add on for the RockPro64
> so this should be an DT overlay, drop the panel options in
> preparation to add this as an overlay.
> 
> This effectively reverts commit b65155c786c4 so as to add an
> overlay for it.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: drop touch panel display from rockpro64
      commit: d69cb63780943fc1b0765bb9b46f627573cc97d1
[2/2] arm64: dts: rockchip: add overlay for RockPro64 screen
      commit: 49760b9f60528393cca3ea35c4d0719f84215a48

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

