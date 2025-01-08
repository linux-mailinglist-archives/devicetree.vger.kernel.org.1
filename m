Return-Path: <devicetree+bounces-136641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D2FA05B91
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 13:27:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 481C73A74F7
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 12:26:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A19E51FCF68;
	Wed,  8 Jan 2025 12:25:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="G32UEa2X"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132601FCD08
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 12:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736339139; cv=none; b=ed5AvYrwl4s+yM+EMxaAmhV+hdDOnb4gNpHHzNczhdk77rcM6jdPQkcHliI4fko0AHJ5vZy3R/D3wliwavHZY/QXiIKw5GxRFzpGTsQ+DEd5pArVTtf9KsmRGUN0bpn0qRSn5Px0XGxwdI2+0kHX1q9U+GbHFMkrwiuwumMF/V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736339139; c=relaxed/simple;
	bh=OkDBnjTEB0UlAQSqh6T/g1v5/J5843HM+bfenWX00k8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=fqW9uZluSEiI+t6BHdlG+12BJ3T4cY+mVr6dKA+pBSx1sO7EcbHKGVd97dRiK/vzS7avaDYcU9uarmW2c32oxQLS7ZSbMH9N57OhOPxPnnRIXvmYdWGNCsJH8b3Qd8d5d5uxfucryYsecnSju0TEC49dqkg6l5K0vFojKadfdHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=G32UEa2X; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=kP5bPRE03a7OHhytkMkuiuXa3V4p1pNS1BP+pdJ4fOo=; b=G32UEa2XqQXGDi8Ml98v1BtsyA
	ugwLE3aSPG7MsHLb4cJkSXmaEVdQenlTFVjxuNDzg8TDSV1hhJP6HR7Mbm3eKLvMUfgVxAnuckzDw
	XbgxN0fLlXQPlExcSDGpB66DLoMtHzzIZ57tz/m/ozREnsGAT5RNNLDOCturAY//xZ1ZjY5ZR+ryj
	WQ+P/ASqu3zxs7UAjnSpmJ20r96LpVPOqOCUBdFaE7jpp72wp/IXlfJK5BOmK5+v5i08FxpxCG9Iw
	vXdZmKcHS4JyMhxhiGdJctf9bwrFzDWhmmeas0XtKBRcR5hM6YKAEyNO+YVC/U3wVBxf2hnaSuMbC
	zMkGdXcw==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVV7o-0005gn-Mp; Wed, 08 Jan 2025 13:25:28 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Mitchell Ma <machuang@radxa.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix PCIe3 handling for Edgeble-6TOPS Modules
Date: Wed,  8 Jan 2025 13:25:15 +0100
Message-ID: <173633908210.2779821.595813917133588520.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241221151758.345257-1-jagan@edgeble.ai>
References: <20241221151758.345257-1-jagan@edgeble.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sat, 21 Dec 2024 20:47:58 +0530, Jagan Teki wrote:
> The Edgeble 6TOPS modules has configured the PCIe3.0 with
> - 2 lanes on Port1 of pcie3x2 controller for M.2 M-Key
> - 2 lanes on Port0 of pcie3x4 controller for B and E-Key
> 
> The, current DT uses opposite controller nodes that indeed uses
> incorrect reset, regulator nodes.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix PCIe3 handling for Edgeble-6TOPS Modules
      commit: e2ee8a440869281620fbcacdca6e13cbeebcc1be

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

