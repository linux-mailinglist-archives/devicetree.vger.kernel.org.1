Return-Path: <devicetree+bounces-203117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E565B200DE
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 09:53:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A8D68189D4CE
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 07:53:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A27BC2D97BC;
	Mon, 11 Aug 2025 07:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="L4ozjTwy"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBDAB2DBF52
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 07:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754898747; cv=none; b=TojrEzQhfxBf9gCZ/yOEHJgbK8wgao1qGbBEpc6NJzNscg8BuZm1Hasz+z8qbGMQuybPZeprp9N6CkpUvbx01s9k7W/FsiprPGC3+lo6AO+eINJhZbYX9C6HgTc0vmWOrqhVMc3M0dElpDl03Ck1XKTDoJTn6sSsANuD9gWQtGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754898747; c=relaxed/simple;
	bh=LPik64T9aT5j/L0YfNApVI/Fufclk4/VeGFxt2AXrlI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tD9QO4Yi705JalB9kJ0HSta3rZA5S8uIo1F4JuwyPuacAdCuY9seJ969o1ueW4zcVw3pbB3QXbGZseTbG9CgXdPdHs+pQEvOfx1bYzOhM5FgNkUvgU1TqberpnuD1XqSEdutEczGkHyjO3wNPYJYwLFlMAxqXEw4wT4FTkECQHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=L4ozjTwy; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=JAiHq+xguJpa7DgogLPbFgMp/g76RQv1ZbsletpzmXM=; b=L4ozjTwyfMcjPYnRFixEbHH4ir
	OtDGYzXskLFxRTpqzreCLs54DL9ozxjpg9gYOxs+glSCKvRrcs1ZqsLoMtKToiGM9/Oi72eblV8kJ
	pYMXRcsBQItns1JNSFHV77FOK5YgbE41UyT59SrLZycFedRpMi1DOoo8o232Laf6IuESpYNHwUiEh
	nZh2HY0HfwZcWT85YJKjPS7MoiJAgLjUf/j916tNXYbQy2thG2dBMvlDbs2KEKnisCnZBvDPLeaBE
	WAd3LxFq4zWQnOmZUU5rx8+L6nEObF56UNfsH6jUXG/PjQLuKGNk6+/eCzjY09k2vLx6Zq0OovrL2
	aHmDC1eQ==;
Received: from i53875a0c.versanet.de ([83.135.90.12] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ulNKM-0007Ro-Pc; Mon, 11 Aug 2025 09:52:18 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Diederik de Haas <didi.debian@cknow.org>,
	Peter Robinson <pbrobinson@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Add vcc-supply to SPI flash on rk3399-pinebook-pro
Date: Mon, 11 Aug 2025 09:52:05 +0200
Message-ID: <175489870467.808197.16352396043488314840.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250730102129.224468-1-pbrobinson@gmail.com>
References: <20250730102129.224468-1-pbrobinson@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 30 Jul 2025 11:21:26 +0100, Peter Robinson wrote:
> As described in the pinebookpro_v2.1_mainboard_schematic.pdf page 10,
> he SPI Flash's VCC connector is connected to VCC_3V0 power source.
> 
> This fixes the following warning:
> 
>   spi-nor spi1.0: supply vcc not found, using dummy regulator
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add vcc-supply to SPI flash on rk3399-pinebook-pro
      commit: d1f9c497618dece06a00e0b2995ed6b38fafe6b5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

