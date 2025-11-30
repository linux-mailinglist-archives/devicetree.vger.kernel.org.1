Return-Path: <devicetree+bounces-243209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CA882C95258
	for <lists+devicetree@lfdr.de>; Sun, 30 Nov 2025 17:22:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C61FB4E065D
	for <lists+devicetree@lfdr.de>; Sun, 30 Nov 2025 16:22:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB16B298CA6;
	Sun, 30 Nov 2025 16:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=jakse.fr header.i=@jakse.fr header.b="LuiDZvuu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.jakse.fr (mail.jakse.fr [45.81.62.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D42259C92;
	Sun, 30 Nov 2025 16:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.81.62.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764519765; cv=none; b=ROn3AFa5JlzMU2ShjlUcSS1Pq/moP5JN6hSQDTdJiz8KzeknAtB0iwuwj4VXyCVvHs4xB1jaxPCaHz2d6PoKeWNt0H7ZSZGUkl85rugJriYSn0nSwMRLouyT8XEeSIaMmnCF5wf8C9kb78nvtt7as9ITMZ7f7d1FQC44spmRir8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764519765; c=relaxed/simple;
	bh=xsuXwFBhCkJRCOW0BjNeGCGx2rm4a0EUHio1t3u1dR0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=r8lp1WPmpbzgfKLUMA8AlV9GyWgmGNGEvTNXjQOLBl64hBQvvfnvZWW8nIz95/XY3+xw6H2daTA/3QNq4A6E8gYi8KUxZaGU1wkOVWYznEzMUe7ygWzPxTKZzzGr1Iesiz34SxbK29Go4rHNFlTf8J+bVJf5bTXMWbJEl8FzDC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=jakse.fr; spf=pass smtp.mailfrom=jakse.fr; dkim=pass (1024-bit key) header.d=jakse.fr header.i=@jakse.fr header.b=LuiDZvuu; arc=none smtp.client-ip=45.81.62.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=jakse.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jakse.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jakse.fr; s=default;
	t=1764519230; bh=1Y5LGb3g31rjjIXxiw5Jdr35UaFiGP0OuDnqqXz+mjE=;
	h=From:To:Cc:Subject:Date:From;
	b=LuiDZvuuhNnGg0sLq1wfUtOo/qR/8tevJmuGB8ogaSX7N8Wl8iSvIJSMM9YcR8YWw
	 sVb2IZqacR9cRCL5mD+Tf6pJU1ircz/soUQPv206H1tyr2cedv+2mETHsLSYBH7bnV
	 Lpt2/E+/LBN5B7ldPqMKN/mRB9HRX+7Kn9aISmXQ=
Received: from rigel.lan (rigel.lan [IPv6:2001:912:1ac0:2e00::9bd])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by mail.jakse.fr (Postfix) with ESMTPSA id 8B83EEA12BF;
	Sun, 30 Nov 2025 17:13:50 +0100 (CET)
From: =?UTF-8?q?Rapha=C3=ABl=20Jakse?= <raphael.kernel@jakse.fr>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Rapha=C3=ABl=20Jakse?= <raphael.kernel@jakse.fr>
Subject: [PATCH] arm64: dts: rockchip: Fix Bluetooth on the RockPro64 board
Date: Sun, 30 Nov 2025 17:12:59 +0100
Message-ID: <20251130161259.9828-1-raphael.kernel@jakse.fr>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The RockPro64 board has an optional BCM4345C5 Bluetooth device on UART0.

This patch fixes audio stutters by setting its correct max-speed and
compatible properties.

Signed-off-by: Raphaël Jakse <raphael.kernel@jakse.fr>
---
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts | 7 +++++++
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts    | 7 +++++++
 2 files changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
index 304e3c51391c..883d9bcfe792 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
@@ -28,3 +28,10 @@ es8316_p0_0: endpoint {
 		};
 	};
 };
+
+&uart0 {
+	bluetooth {
+		compatible = "brcm,bcm4345c5";
+		max-speed = <1500000>;
+	};
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
index 4b42717800f7..ae3ee91dba2f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
@@ -28,3 +28,10 @@ es8316_p0_0: endpoint {
 		};
 	};
 };
+
+&uart0 {
+	bluetooth {
+		compatible = "brcm,bcm4345c5";
+		max-speed = <1500000>;
+	};
+};
-- 
2.52.0


