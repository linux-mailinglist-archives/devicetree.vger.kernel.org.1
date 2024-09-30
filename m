Return-Path: <devicetree+bounces-106430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EFD5989FEE
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 12:57:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DD659B25EFB
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 10:57:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4282918D627;
	Mon, 30 Sep 2024 10:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="2py54zRP"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8607D18E361
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 10:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727693765; cv=none; b=EmVU36pzTovX6S2dNxuFYZAtoooU/aMnhLp9y6FgMH1wSmxNlEDvWu1+yWATvYpLs254BdJquNDjmISAYsrHV3ksTH4f/L8n9S20updM3YtM/neKLWDtxYGkfCZssaB5d4HyP/MiyWvP0dZWX8uNvutp/MwD9ZsiYHfrUNPTZLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727693765; c=relaxed/simple;
	bh=voEBQYSrINBJCR4epkCvxMER+G8axSdHCzhaa9xf0Og=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bOkiTKGYpJ5ErBIa5PQo/luD2pGdKe1mEVmkCEEAk5p7YctHsBgcRx+LsnfthELOmLrJQH/y2jaRGts6Y0ZRINGB4tNVdSiONZTaLBJnj9RRFxN8U9h1dsyQs2V95vA44T6XLkSfLB7QrhaMawl167VwttJsxVT+pUsWD076Ii8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=2py54zRP; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=6nxfXp/DSbrKC7cMEW/UjsMiK4M8teeOxL8WO/H/mEs=; b=2py54zRP2R6qyrBekjMjUPjlXW
	NzerkOyMDPos6gk3QWHK3d1F5JxOWj50Xm2XvkkqYkkG/e3IS/o7N7luRBiZiV+gybm/OghD2UoIs
	mllSVdkcFHYU3L2M7W8shfOV8k2fqvzf3+tQn7TdlVQoN5bzG8nx+7R+PyrE7+BooZccQA8+qMPI6
	YCir1bC7d6Wxt73l5a2P50Hk5+O0ZahgTwJ+PEPJBJREUmLSf5ljT2D31Ug5n3uJ3tMMSTm+7vwrB
	fnaDYr5cG/97ppbT1aN/u0azJ+ltunSv0nBOsegqV1eR/FYppr+Vfdh0YWUS8rhiSzc7u5jcvD05s
	8uv9izNg==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svE4G-0004Xd-1m; Mon, 30 Sep 2024 12:55:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jacob Chen <jacob-chen@iotwrt.com>,
	Andy Yan <andyshrk@163.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: rk3399: Fix rt5651 compatible values
Date: Mon, 30 Sep 2024 12:55:39 +0200
Message-ID: <172769365130.1880381.18361044471691107696.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1727358193.git.geert+renesas@glider.be>
References: <cover.1727358193.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Thu, 26 Sep 2024 15:48:39 +0200, Geert Uytterhoeven wrote:
> 	Hi all,
> 
> This patch series fixes two occurrences of the "rockchip,rt5651"
> compatible value, which is not documented in DT bindings or supported in
> any upstream driver.  Presumable these are typos for "realtek,rt5651",
> as the "simple-audio-card,name" properties in the "rt5651-sound" nodes
> refer to Realtek codecs.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: rk3399-eaidk-610: Fix rt5651 compatible value
      commit: 2f39bba3b4f037d6c3c9174eed5befcef1c79abb
[2/2] arm64: dts: rockchip: rk3399-sapphire-excavator: Fix rt5651 compatible value
      commit: 577b5761679da90e691acc939ebbe7879fff5f31

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

