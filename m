Return-Path: <devicetree+bounces-196780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB0DB070AE
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 10:35:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9AB801885647
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 08:34:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37E242EE975;
	Wed, 16 Jul 2025 08:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="kw8DYr/s"
X-Original-To: devicetree@vger.kernel.org
Received: from out-179.mta1.migadu.com (out-179.mta1.migadu.com [95.215.58.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A00182951CB
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 08:34:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752654850; cv=none; b=Vz0+66KkaNVqJO8nkPItrjQMHI0TBOATc8yZuZAQN14OGxOnmhC8jrJOZq3uj+bQGzQvbFtLww8aP36ag3nKMevLhhvl/DFuRk5BlHGoAfKpAAoJAZcIxl9rEYZL1sHierfD3sC/1n8SuMDK3StWTsCYxXCXufWvLHHOF2EO/QU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752654850; c=relaxed/simple;
	bh=ydOKoqOKw48ncDCsXKz/D/L7szBR62IeOqgtQXpK0a4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cxFeTD9qXmyHBtNkUFIEpDfjK1t2eC2w6ySNln64QmdMyQaPviYBalV9MfxbVQtasKOnXBT60pK9oRnDOUjQu1PrsUcVBVj+7lJ9R1toPNRzWDBDB5g2C86c5eyI9pnW202MLUQObXBsErFEuX8L/f+ZyBHO5YP1LysrEVUCohQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=kw8DYr/s; arc=none smtp.client-ip=95.215.58.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1752654842;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=S8/W6hICoFcDRQTv0VXVXPyibPJUZoDyo7YncpLNyV8=;
	b=kw8DYr/sutCa5fwfr6RBJuRaN41yB1dumvTFOuKWQbwfa+vZLP1kHi/Yw98H0V/KPPKjWI
	VGk4tZGFrnwvKC+9z/or9CX1k7C9KLok60tEV1p2jaXj442qKUwgwShGgTBmyWsOe0Q6Ur
	OmdB889BCa9O7qG07r9Jhg0RB3hSdhOOnS5HvmYKYI2d/baPI6iqoev4tCgMj/d24HsKXD
	piGKGzmy3L7avBwIf6jeLjMuiMAnt4jRI5N9D46DrBL4Motlt28K4xMuJ1Ws38MDyvx9Sf
	a+Wcm/rIPrAQSfVWxz4klgccZUdFjGhOE+3UKe8idfrkr5q7y21MO+YiW5lEFg==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH] arm64: dts: rockchip: Add maskrom button to R5S + R5C
Date: Wed, 16 Jul 2025 10:33:35 +0200
Message-ID: <20250716083355.327451-1-didi.debian@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Both the R5S and R5C have a MASKROM button connected via saradc.
For both the R5S as the R5C it's described on page 9 of their
respective schematic, identified as 'Recovery'.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 .../arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
index f4d042bdd328..e3f44ea4eabe 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
@@ -25,6 +25,20 @@ chosen: chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	adc-keys {
+		compatible = "adc-keys";
+		io-channels = <&saradc 0>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		button-maskrom {
+			label = "MASKROM";
+			linux,code = <KEY_SETUP>;
+			press-threshold-microvolt = <0>;
+		};
+	};
+
 	hdmi-con {
 		compatible = "hdmi-connector";
 		type = "a";
-- 
2.50.0


