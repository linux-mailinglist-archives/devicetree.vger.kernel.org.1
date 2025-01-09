Return-Path: <devicetree+bounces-137027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A3259A07492
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 12:25:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A03821665DF
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:25:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F42102163B9;
	Thu,  9 Jan 2025 11:25:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="IVszyOaq"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D003DDDC;
	Thu,  9 Jan 2025 11:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736421911; cv=none; b=XQw+iCB3/SjCnmmBoLcXxK/I6GdeJ2/4+rcEY2L15j/UuiCsUAB4uiJ6NsxsuSyNH8TPFFe9+exFvZHadxUuW7xE2cPd5m2DRziQKjrX7fpImlbNymAnnnV61tu5swlhJVbUITl8Pkh0MUY1h/NNA37Dn/EHTR3nI1lMCtInQyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736421911; c=relaxed/simple;
	bh=N05fkHtT2/ScRMfQYWTPlP4NhcjC9bT8xvqCn1glVvY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YFvN58iH4C02fVlmlO3xlzdhAYEBlJKlzLN/oKuIhFYFh9xylLcw1NFzF2TwSipMeFwGlN/c/K+PEvg5XVlvlrGY2ggwD1xUXI3/HehhY/yxili6F5IBfy+utFS/MdnywB/XIi7r5QSfri78T4/zZ41EjuQvE1eLhvwy2CVMxuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=IVszyOaq; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736421907;
	bh=N05fkHtT2/ScRMfQYWTPlP4NhcjC9bT8xvqCn1glVvY=;
	h=From:To:Cc:Subject:Date:From;
	b=IVszyOaqYxgHAmxWWvHTVzgHT6S5V37WjlVZ4x16GdF+wZQh1Mnlv6Fq6VTLasIlA
	 4xzr4pxF8zkyFeWF76jnWVM2mNWuiyh+xMXLfEqHHE1mT9lIySSWba8aBeWcDyf21/
	 jNVaX+tujl3ibOQsF6lmT4ecByuP7VIw2idzhjc6weozAFIQ4byQZwi99mS18cWm93
	 sv2whnaMUBhLLtaVSEyp+Yoi4m4+KZc/+StXYZl9gdo65Mw9sWPwBHWPTQJ0I8xNVt
	 7SP2MZr4/VwqtHQaOpsuqCEiFW8QZ5JbhzGKjhn2HrZiYEyETUKpmrIu1RqrKv1ze0
	 O/CG4kft+IhsQ==
Received: from pan.lan (unknown [IPv6:2a00:23c6:c338:be00:61ad:9488:9583:2010])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: martyn)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 50B6D17E1555;
	Thu,  9 Jan 2025 12:25:07 +0100 (CET)
From: Martyn Welch <martyn.welch@collabora.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: kernel@collabora.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Martyn Welch <martyn.welch@collabora.com>
Subject: [PATCH v2 RESEND] arm64: dts: ls1028a-rdb: Add iio-hwmon compatibility table
Date: Thu,  9 Jan 2025 11:24:57 +0000
Message-ID: <20250109112457.553169-1-martyn.welch@collabora.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add an iio-hwmon map to utilise the iio framework and access power
information via the hwmon framework at the same time.

Signed-off-by: Martyn Welch <martyn.welch@collabora.com>
---

Changes since v1:
 - Added missed PATCH keyword in subject
 - Simplified commit message

 arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
index 757a34ba7da3..f23cf156734d 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
@@ -94,6 +94,12 @@ simple-audio-card,codec {
 			system-clock-frequency = <25000000>;
 		};
 	};
+
+	iio-hwmon {
+		compatible = "iio-hwmon";
+		io-channels = <&ina220 0>, <&ina220 1>,
+			<&ina220 2>, <&ina220 3>;
+	};
 };
 
 &can0 {
@@ -253,8 +259,9 @@ i2c@2 {
 			#size-cells = <0>;
 			reg = <0x02>;
 
-			current-monitor@40 {
+			ina220: current-monitor@40 {
 				compatible = "ti,ina220";
+				#io-channel-cells = <1>;
 				reg = <0x40>;
 				shunt-resistor = <500>;
 			};
-- 
2.45.2


