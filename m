Return-Path: <devicetree+bounces-178631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7083AABC86F
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 22:32:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7B703189FC98
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 20:32:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAA4E218ABA;
	Mon, 19 May 2025 20:32:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="rsBBKH7/"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EBBE219A7D
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 20:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747686735; cv=none; b=A/fSijZnl/OSp3CwI2lOO1OQoaXaWGGrjQRF8VWdU8swHZwumLxp8yA6wwJ1ClzjrgbI4Wpj9QSYJ5ZMiefLbeR0p5L6vrDvqo+EWOoyxb6jsCHDU7f+bwZC9VnTzjCVaLSzi80qOz+nPtnsupI8UIB9aR8ukLvCqBLhuZCMe/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747686735; c=relaxed/simple;
	bh=OQzRNT7cPVGtoWASC5wwUaXWXJGxbk8FdHSUHWvA/BA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=H73Pjiboq+CCI7owJn8aQHMiSJX4hVF16l+MIqpDnRqWoRMvy9+9JUBpNHRLEQVlZziaJyIXux4hqGlvW5Y//3eVag6C4ub3c0US7vkDpysW5hNKGARKMTZ4oMNfidCzZyLp8sy+cN2ujDfoGmiD9AEEcVu7NRAQRK/qn4d9jSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=rsBBKH7/; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=IGxVumKTNG01Ss/jT9EJGoIzPH02Ea1K0yvcJQNJe34=; b=rsBBKH7/qcMCObS8cpNOvXb2W6
	262WrIW3ITgFARIiLB8Wlt3i6T+/+WVZ+56j/RNzmdOlBmYbX7nT3jJKjMBRnAYDfOZbJXB+B3Iht
	dTJLN/brpL/W36GPmeV73Qr2pgi4V7XSxk7e9cj5qVp8+23PewBgzX1UdrGp5KhLSCf1+llNqYKQL
	EagMLNJOvyTmwlTsbFsT1H2h4fbfFuARQYfZIiXvrLRgJx5VfEteKMI/o2y49Fg7cf94ZFqJeaVhY
	+hC+82wsKbp94GvM2rZjrRaZzHx+AyxoDmAxMBHhBpLvgIWCPeVO1R3Fbvp3DQJAvccmUMJUmtVrl
	ks/ScQ7w==;
Received: from i53875bdb.versanet.de ([83.135.91.219] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uH79S-0001JQ-Gq; Mon, 19 May 2025 22:31:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH 0/3] rockchip: Add GPU support for RK3528
Date: Mon, 19 May 2025 22:31:46 +0200
Message-ID: <174768669419.2818279.16363867607908655473.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250518225418.682182-1-jonas@kwiboo.se>
References: <20250518225418.682182-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 18 May 2025 22:54:10 +0000, Jonas Karlman wrote:
> This series adds support for the Mali-450 MP2 GPU in the RK3528 SoC.
> 
> The clock used for the GPU can use normal PLL to support a rate of 100,
> 300 or 500 MHz. Or it can use PVTPLL to reach rates up to 800 MHz.
> 
> The TF-A SCMI_CLK_GPU is used to switch use between normal PLL and
> PVTPLL. When a rate of up to 300 MHz is requested TF-A switch to use
> normal PLL, and for rates above 300 MHz the PVTPLL is used.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: gpu: mali-utgard: Add Rockchip RK3528 compatible
      commit: 6f446bbe412ab3d75651d1cc52e31aaf801dbea8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

