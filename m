Return-Path: <devicetree+bounces-79417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B0A915361
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 18:21:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 41DDB282098
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 16:21:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15DAE19EEB1;
	Mon, 24 Jun 2024 16:20:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86DD219D8BB
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 16:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719246039; cv=none; b=gtHhDzsy2FWAKzzQ+JKTQy3cTuy8xRug2+v46O5ndXKXJyb7+xcAWWxcq57mhFiOW0tB2FvqBTHGulvUyPzVdbvJiQV7BXJtZuya13/v8dTAeM5EWyqR3kbAcvT4gJ88ok2QUvFdFMZBxeobPBEZv4rwnfvNw5LL763CpYsCfFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719246039; c=relaxed/simple;
	bh=H1ZnoaFegJ1JHxFwkx4y3JRtvxP6IEKEx/OomNb00D8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Y5tCb1uK8Sl5Z4xnkqQ1LFL2daSv+6jRDcqSMGTBcZ0e+mLgLJeHRrbQ55uGo6UAG+LfxLaeHXCuUSClDkdB1n8Sdw8+iKqoPwQak3nOdCLDm0+juIjn98Mg6TmteyCuXL8GcPWgbfdu5z9F2d3kfhjCMb4RnFOQFoDb17Kn7ZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sLmQb-0001wn-4I; Mon, 24 Jun 2024 18:20:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	amadeus@jmu.edu.cn,
	devicetree@vger.kernel.org,
	chris.obbard@collabora.com,
	robh@kernel.org,
	linux-rockchip@lists.infradead.org,
	sebastian.reichel@collabora.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: add SFC support for Radxa ROCK 5B
Date: Mon, 24 Jun 2024 18:20:17 +0200
Message-Id: <171924573794.612064.15648078664530727010.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240623023329.1044-1-naoki@radxa.com>
References: <20240623023329.1044-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Sun, 23 Jun 2024 11:33:27 +0900, FUKAUMI Naoki wrote:
> This commit adds support for SPI NOR flash on Radxa ROCK 5B.
> 
> SPI NOR flash chip may vary, so use safe(lowest) spi-max-frequency.
> 
> 

Applied, thanks!

[1/3] arm64: dts: rockchip: add SFC support for Radxa ROCK 5B
      commit: 9204a7ecca96403ee3d61c14cb9eb87ec89b0fcd
[2/3] arm64: dts: rockchip: add (but disabled) SFC node for Radxa ROCK 5A
      commit: 00224650dd45e166ea6eb1593f5f064583963ccf
[3/3] arm64: dts: rockchip: change spi-max-frequency for Radxa ROCK 3C
      commit: 06f6dd4d607766a527e37529f2f3f90dd1464293

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

