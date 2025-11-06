Return-Path: <devicetree+bounces-235874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 463FBC3DB55
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 23:58:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D6DE3B0416
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 22:58:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A78A34CFDF;
	Thu,  6 Nov 2025 22:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="qSgUEdPH"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBD534AB15
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 22:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762469923; cv=none; b=ssQoIVPAQPUkDKKE9YCxALfztO+5Q2cOOqHeYUBSl1CbkEdWIZ6UHhVkkTVjSG+uZTCX+5Ro3AnoOwgKGy9Hd2b1/5nn6EdNBcKMTWhnOK/uwnqN1tQ5JY/A/05UaR26ZnwE24nMiSFTo2qoh5HnnFmhAfi7C6yV5TFhO6XT2xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762469923; c=relaxed/simple;
	bh=Y1mUEdeEJKidIZaWONdD3RpeW1zg5P/ogB4yrGE6G8w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=K+B5q3XEFGpYuTEOK+uyMsMBqPBm9i7Kc2xVTq5ycAO1vUpN5tx5mn5pLAl1C5Cs9EewI9dh+MPmHsAL/QNNd+ObhqgunEyP2nf1bmTjXG1JWDv1+N6WWR9d9dqhV0WmOsa++LQKlrUBMdKH4dJIRyhpCy4sT5qx0KY/5v+1Ky8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=qSgUEdPH; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=KoeG9AXwwcsEMQbfSio+I+YA+zz4hxk6DjfUXKTZUjQ=; b=qSgUEdPHNZ3rdGWIlwVkU23MkE
	S4Se7+BdqC/eOMy4Pi4SjkvtGsXdYlZUuTBUJEjscvBK86P9thkQtPDzsESywn6e2f6ne6ereXgPt
	tAqnTwzFSD7+nfow3EiNcEsvrgMmbDo9qQRHBVj7Ynx+ssn6cQ/6XAU4roAZ1mleX1mRCBNPDzcMI
	lIbiorChe1umHk2WUrUDt63KNreY5buf/w512c8OIDnAQaxhb37B4LNyRdr7poT2gljKSx0wg/9aO
	azvPnEtdUlZIb5TEzwtWQxV5Mbfdv6U9z/2iW2iAgozWukyd30PkaxjT58t5JYeo8z0DcrS5kxGDd
	1zd9eMFQ==;
Received: from i53875bac.versanet.de ([83.135.91.172] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vH8wA-0001pr-Lr; Thu, 06 Nov 2025 23:58:38 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	damon.ding@rock-chips.com,
	jbx6244@gmail.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: (subset) [PATCH 0/5] Indiedroid Nova Devicetree Updates
Date: Thu,  6 Nov 2025 23:58:33 +0100
Message-ID: <176246989728.210200.8559295634693488639.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251105205708.732125-1-macroalpha82@gmail.com>
References: <20251105205708.732125-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 05 Nov 2025 14:57:03 -0600, Chris Morgan wrote:
> This series fixes up a few remaining issues with the devicetree for the
> Indiedroid Nova. Namely it adds or updates a few pinctrl definitions,
> it removes a few workarounds that no longer appear to be necessary for
> eMMC and bluetooth, it adds support for the NPU, and it sets the device
> type as embedded.
> 
> Chris Morgan (5):
>   arm64: dts: rockchip: Add device type for Indiedroid Nova.
>   arm64: dts: rockchip: Add Additional pinctrl defs for Indiedroid Nova
>   arm64: dts: rockchip: enable NPU on Indiedroid Nova
>   arm64: dts: rockchip: Enable HS400 for Indiedroid Nova
>   arm64: dts: rockchip: Fix DMA for Indiedroid Nova Bluetooth
> 
> [...]

Applied, thanks!

[1/5] arm64: dts: rockchip: Add device type for Indiedroid Nova.
      commit: 318bc4b5ad229435abbb7b9a7c8b1876fae311e7
[3/5] arm64: dts: rockchip: enable NPU on Indiedroid Nova
      commit: dfa4f7f5cb2c66fac5a17d63e5fcf1bf50ea7344
[4/5] arm64: dts: rockchip: Enable HS400 for Indiedroid Nova
      commit: cce837b7a3599dc83cd9c08afc07b076f127354b
[5/5] arm64: dts: rockchip: Fix DMA for Indiedroid Nova Bluetooth
      commit: c6c76445c30bb73fd4cfba8f4742e642dcfe90f5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

