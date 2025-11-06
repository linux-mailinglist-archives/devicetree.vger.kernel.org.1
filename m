Return-Path: <devicetree+bounces-235876-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D24C3DB5E
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 23:59:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C3A9E4E71D9
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 22:58:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EC07309F18;
	Thu,  6 Nov 2025 22:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="JZRdQiVA"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA86630C37C
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 22:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762469932; cv=none; b=kAnfmXNWreQSRetx5yQkw4zMk7Ml/rcj0fdrVtKOxycZBnxP4lmIk0o9tEDjja+OpFMKi85NGr5hlw1PD/8UWE3u4jfma6BALmFUdUzTAPaFF2UO+KYkvYry32DOPHMhC5lHwmHrYvyE8dH2zIcfGRuVPXI3sja+q0BztdXYHFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762469932; c=relaxed/simple;
	bh=ZQ5WpJsRy9mtJA+VcqPOdFHKfpY2VFauvpqswZVl6hQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=L+zF6AP8FX8HtS7yicDKh6Cc0pJxEyLurgCUAWILlAwVSP+9no7gBFezWyhY7WkTpcfOM/PNedMhcpzSh3JGtXnnjk9OTw+N3LDduW2erTUXXXxu8RqBLCG3OmZGXuTsJVSQbt5x7fGzMQncg1UETxHps7moPz672rcgsSCSPVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=JZRdQiVA; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=q5BaZus5WeymNKM4U1Ymi+4owlLbrKXJ0bebIgphDZE=; b=JZRdQiVA1H9xwmkuwSA8XFSlh/
	NpSYXs6O4jYKW0v+robg8DBouK500mcy4uafbBLd6Sgb7BBs/mfFgUtvBzzHB6+Yi2PmOP5cx4QAy
	jbFg1X4ytnyI72KR3uBzhkKu/NqYFTsqW3+1bD8vnmGlU3rS6DwkCQ+e31T3oL0xwZk4sH2HwW66b
	9ahQ0bUDV7dksfepnZ+yX8mQDGv5trzld9eUwLqPIJ0QAbhwoX/GZz4WY3SaUrsd7DsDZOJ4ZpHkD
	hO16h92PJ5OfZ1dLqrqYhUIxNY0lzlp8QG71hgVraOWLUV6TPpept7Y4BacIyjayqS55ko/eBy6f0
	Be1whIqw==;
Received: from i53875bac.versanet.de ([83.135.91.172] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vH8wB-0001pr-Lv; Thu, 06 Nov 2025 23:58:39 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	sebastian.reichel@collabora.com,
	nicolas.frattaroli@collabora.com,
	quentin.schulz@cherry.de,
	jbx6244@gmail.com,
	didi.debian@cknow.org,
	damon.ding@rock-chips.com,
	cristian.ciocaltea@collabora.com,
	detlev.casanova@collabora.com,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3] arm64: dts: rockchip: Fix USB Type-C host mode for Radxa ROCK 5B+/5T
Date: Thu,  6 Nov 2025 23:58:35 +0100
Message-ID: <176246989735.210200.333917172984191028.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251104085227.820-1-naoki@radxa.com>
References: <20251104085227.820-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 04 Nov 2025 08:52:27 +0000, FUKAUMI Naoki wrote:
> The Radxa ROCK 5B+/5T USB Type-C port supports Dual Role Data and
> should also act as a host. However, currently, when acting as a host,
> only self-powered devices work.
> 
> Since the ROCK 5B+ supports Dual Role Power, set the power-role
> property to "dual" and the try-power-role property to "sink". (along
> with related properties)
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix USB Type-C host mode for Radxa ROCK 5B+/5T
      commit: fbf90d1b697faf61bb8b3ed72be6a8ebeb09de3d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

