Return-Path: <devicetree+bounces-108983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 525EB994746
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 13:37:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 84DC91C25505
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 11:37:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB5EE1D31B2;
	Tue,  8 Oct 2024 11:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="yDy3J+/c"
X-Original-To: devicetree@vger.kernel.org
Received: from out-189.mta0.migadu.com (out-189.mta0.migadu.com [91.218.175.189])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A321D0B8B
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 11:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.189
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728387266; cv=none; b=sf2bx6JvbQ3afplD1Nh2ytodn3LVR5czFascmV09axOqtOz30K5lYgGv+PyGeroiD0PPOLrGUh3+QBysGiDupZVyajBFmJ3VWK8858kdSuS7OD17myB5XvGm7R1wCqdhg2sawWgTiZab/FWewUPWKDa/JzbbWKAp/NXT/y9q0Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728387266; c=relaxed/simple;
	bh=/7vd3ObIjcsI2mZSyc0wBr+Lay/uyYQATpXFnYqwHO4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tG4gj0Jg5aJFuUQ6HuAH0A9h1X+gjaoOsAlxcj93Q13Up8gmvhRZuODXWGcHfoIWWajqcJQbrftuHoSYlCA1r1OTdStVni7ghCwUxKD/kqFyOzOUe4Dlar+/ThN11W7WegHF1Q7HM8Fj6+kPhBe1zavKK2p/qCA/ox7Yhu47TXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=yDy3J+/c; arc=none smtp.client-ip=91.218.175.189
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728387263;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gZ+i+HZ0rdHDHJHDLF23OW3zaIUfIrmSTf6E1PPqT9E=;
	b=yDy3J+/cMtLHcUvZheYWqUpPALn6ryr/gIZaHpW/2exGa9wHvjNjMZfFjPD+FHathn5KmE
	kHOM1QGOpCqlS4eI6MkOByZzNRnM7lpuSy/Z/y0XLWs0jJAFaqImgxyNn4270VeM/jNkA4
	4IRDBa9pLdChclFMdsVoJDpkxyI8HyVsC7FgsiseJ74+1IKJaj6iR0mmGbAyLWLMFVWzGi
	J9y3su7H2RjUmjDO/buJhqqQDLidgIkx6cEQ5pL+aAS+gLY4B/XlFLix7btS4UkoyVuqKI
	zDUhKYTNcvUPsk/orBE2DWZA/ZtGMbJZjTnWbnPrApou8TUJPZktVusT7cuPHw==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Diederik de Haas <didi.debian@cknow.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/4] arm64: dts: rockchip: Add PD to csi dphy node on rk356x
Date: Tue,  8 Oct 2024 13:15:36 +0200
Message-ID: <20241008113344.23957-2-didi.debian@cknow.org>
In-Reply-To: <20241008113344.23957-1-didi.debian@cknow.org>
References: <20241008113344.23957-1-didi.debian@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

The "rockchip-inno-csi-dphy.yaml" binding requires the power-domains
property. According to RK3568 TRM Part 1 section 7.3 (page 475) the
CSIHOST is placed in the PD_VI power domain.
So set the csi_dphy node power-domains property accordingly.

Fixes: b6c228401b25 ("arm64: dts: rockchip: add csi dphy node to rk356x")
Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
changes in v2:
- No change

 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 0ee0ada6f0ab..d581170914f9 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -1790,6 +1790,7 @@ csi_dphy: phy@fe870000 {
 		clocks = <&cru PCLK_MIPICSIPHY>;
 		clock-names = "pclk";
 		#phy-cells = <0>;
+		power-domains = <&power RK3568_PD_VI>;
 		resets = <&cru SRST_P_MIPICSIPHY>;
 		reset-names = "apb";
 		rockchip,grf = <&grf>;
-- 
2.45.2


