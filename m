Return-Path: <devicetree+bounces-254553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBB8D1946A
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:05:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2C438301199E
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 14:05:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A10FA3933EE;
	Tue, 13 Jan 2026 14:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="TlhXl0ME"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F7AB392B84
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 14:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768313082; cv=none; b=WuJCSarr/EtrlZqKkhBz78xRsJxKYEced2RS8gkPrstVEN+X4t8NkbwSr3QHTBdZzmKc2hGbc4n5fJBazQkaH63fBXeznWR4RcJaFN8PhlghJkoYcpkILClOfh7SWxbK+fw0WaOlaFewlGgQJYg3dX0Dk7S5kKXwB8hsqQGH4OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768313082; c=relaxed/simple;
	bh=l+vTRxTmEMM3wG5GKZN1DkaQ3raIz8nJlKbru4j3jgA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dNtsV1mG/GFxdK0ZE6UUsk1kb2vJEPY4WQDWaLCr+qyLykzdFnKrQOdyp8HRSMAmbAXEVzbXVw/WqO/qgB+nI5Kk/r7fLkyPQiJkceeBX1CGNboE2Q35ORNjQufiqk1cxr+/pJZfXQXlsWmAs8gmT0TjtTNIBBVtICwa4xE0R20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=TlhXl0ME; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=cR8l8e9c458ADB95Mzot7jCXQfu3qkYTp1SBrN12JVo=; b=TlhXl0MEvrsueUfprOrfp8TfLS
	wnTPVeQiSriwke4eyBdsW++hnOWNUZfItyemWxB/B/oJT2oIOvup88zq73jQMx2ZnfCOk20VdczMN
	phGEOOrmU9Ag/jc2RjHeBUN+W+Wwt6HID9Ts+hBONGS/APgSIpXv0cK7QVzZGjAEo2BBzHLfZ1maF
	Ixof02GEJyPCGGPL/pZScXyewT8FgO4++6VbAIylUa6PxZ55M81SjlB7bPnqyo064Vrgw4CQA4+MI
	y5fV5fKvxR5qwc1hSArHaIhUaERFqBnoF/M6oA7aBdO+s0F+VlP6LFkU6KTfR4KrRhZB8TcKj1zny
	VkFuC8VA==;
Received: from i53875b63.versanet.de ([83.135.91.99] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vff0P-0027FZ-Ny; Tue, 13 Jan 2026 15:04:22 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	catalin.marinas@arm.com,
	will@kernel.org,
	jonas@kwiboo.se,
	honyuenkwun@gmail.com,
	inindev@gmail.com,
	michael.opdenacker@rootcommit.com,
	chaoyi.chen@rock-chips.com,
	quentin.schulz@cherry.de,
	dsimic@manjaro.org,
	andrew@lunn.ch,
	alchark@gmail.com,
	pbrobinson@gmail.com,
	ziyao@disroot.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: rockchip: Add Radxa CM3J on RPi CM4 IO Board
Date: Tue, 13 Jan 2026 15:04:18 +0100
Message-ID: <176831295377.3955755.17142179045229285128.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260108113341.14037-1-naoki@radxa.com>
References: <20260108113341.14037-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 08 Jan 2026 11:33:39 +0000, FUKAUMI Naoki wrote:
> The Radxa CM3J is a feature rich industrial compute module developed
> by Radxa, based on the Rockchip RK3568 SoC. [1]
> 
> Add devicetree binding documentation for the Radxa CM3J on RPi CM4 IO
> Board.
> 
> [1] https://dl.radxa.com/cm3j/docs/hw/radxa_cm3j_product_brief_Revision_1.0.pdf
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: arm: rockchip: Add Radxa CM3J on RPi CM4 IO Board
      commit: 90d88da849393c8353c98bee443410bb32838828
[2/3] arm64: dts: rockchip: Add Radxa CM3J
      commit: 9103e21ee45f8cdeaa86b2c356a3ad451c140c9f
[3/3] arm64: dts: rockchip: Add Radxa CM3J on RPi CM4 IO Board
      commit: d813ddc0b348febf32fc9d7737ba82d2955051ac

You forgot to remove arch/arm64/configs/linux.radxa.config from patch2.
I've dropped before applying.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

