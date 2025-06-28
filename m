Return-Path: <devicetree+bounces-190709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DA712AEC7A0
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 16:29:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B676418890DE
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 14:29:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49189191F91;
	Sat, 28 Jun 2025 14:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="drzaFM0Y"
X-Original-To: devicetree@vger.kernel.org
Received: from out-178.mta0.migadu.com (out-178.mta0.migadu.com [91.218.175.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D21E2BAF9
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 14:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751120938; cv=none; b=ouJVJlGkaD/p+/BF4tO8TUFjz4gf+oJZvr0H0jY6LDuaI5t3AExPCR+rh5qsO/01TrvFWpHUAUhQpim59UrA78whPV+EEsTJIEXzyS3gB0HlNX8pNn46KlEZcRJEwzS/93o5mmOzmS5wynmgY9vBCcXBhR0pVLs6+eDxm1+LBoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751120938; c=relaxed/simple;
	bh=00VxCftzXSRjQaFvEsfH+4e7dazyy10SqpmKlzgkrsw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=n22/T8Gjy9xnYRM2jLBq9eXLuVtFfc8zz7O2ghQd1qck9RTT7xPNG45NrVGFl0wMINySdacvHg/t+USs3Rxep13e0ZCe6yelw6JRFQ80PqrZRGdODstwMjv36OH/TTSRGLQ5hALr0tMTpG30qMCfpzSahJyI3egFNABX4Vw+/lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=drzaFM0Y; arc=none smtp.client-ip=91.218.175.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1751120932;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=cfDZ1inHOui4m5H5mXU1kp88kQ35TPyN/bSvxLYsfwA=;
	b=drzaFM0YVkZsqVrjLUvXn3A1tp93N4Rp0hgxvjIF/Zyf2+HaXHjSdNeQtnEQa12wR3Aczj
	w+NpD19PqXPEWQHqjKTEzqYvSrKC1JArSEwyrDHaq3Epbh1iSWasW8E/3fwg9wVjXtwexe
	UFHRziCozyLVNdHBbfbXzP2JPxZC6tlCxhnP6qWMKE2vlBp868vEGNQnTcWCYjeuOp8HFj
	Tg8Rli9QtB7q1SplwJgl+QZ08H+tJ4TXikfz841Bdjwl8TVmG6exLJTroOaDFwMfxJx5GW
	lTmKjQw63UB41KSc44tZhxGRTeEg2zyat8CejBpMrrp1vBPJhYPZtZ+KWLHKcA==
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
Subject: [PATCH] arm64: dts: rockchip: Add missing fan-supply to rk3566-quartz64-a
Date: Sat, 28 Jun 2025 16:28:18 +0200
Message-ID: <20250628142843.839150-1-didi.debian@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

The Quartz 64 Model-A Schematic from 20210427 on page 7 shows that the
fan's power supply is provided by VCC12V_DCIN.

This fixes the following warning:

  gpio-fan gpio_fan: supply fan not found, using dummy regulator

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index 3c127c5c2607..a9021c524afb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -30,6 +30,7 @@ gmac1_clkin: external-gmac1-clock {
 
 	fan: gpio_fan {
 		compatible = "gpio-fan";
+		fan-supply = <&vcc12v_dcin>;
 		gpios = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
 		gpio-fan,speed-map =
 				<   0 0>,
-- 
2.50.0


