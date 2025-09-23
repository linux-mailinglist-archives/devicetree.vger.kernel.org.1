Return-Path: <devicetree+bounces-220494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB131B96C95
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 18:17:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA9381731B4
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 16:17:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31F9B273D9A;
	Tue, 23 Sep 2025 16:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="X2suY1Jx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9591131CA6A
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 16:17:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758644250; cv=none; b=GhC8lzv9HwmiHdulC2vHDnQmxxtxxtPOftM7kQJ7fyvbWp7Z037fMYZ7pRo1+mIxXcCxAqBNV0F94Autr1TfH2T4EsVs8Cjr0tgFT5DtqV1gdCAhRuAJ2hwyLbTYqqO2UUV4UD80dLJROBF0zOyxuwpJ2FWiE+VVa9QEwkiHu74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758644250; c=relaxed/simple;
	bh=XwQ+h6lPdQol4hyOnn/M3Nv65wz2vrsimi5eh2vEZhg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VzRW72UFLmvovQP84cXF6fRnDnUPF00xs0XpaZeRlvs7dvyqMI7PJMGltQZoGEXuGRmCjqc01OSQG4PYd1/TkFWOGFBICgg5gahT50vy1Ygy1/ZKpHeWcnJEya1PEIFoF54V5WAww4D5+6SjaysOhZOeqxP1dj6cYu+5hgPEjVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=X2suY1Jx; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=00DEpQ6lKh9dKq
	S+wpLlGUUmPhEnXN5+5Hj0jhWrBcQ=; b=X2suY1JxEwMxRSPORVT1O9joWoe9EB
	yADW4KqvSmJ72XFEyx5T7g4WwQTW3TSc21dZS+U6aZ9/SJzpQjFy0cN9JGf0bTaD
	B3lQaBkakcXFZ2OIVxv0HA9CyvhYVXK+5W7h7Bm325po7mvnx4TWGI59GynJWjhO
	4EwMMhai6Ch8NBq2AGbtP86yYcrZii9DtlAq2+osDSw6aOlfvttRf66guhI09f9E
	AvEbr1OUCNO9yyZVMTNVmSnokYR83xmlGHFbpbwv4cQU8XdiwSQPOje4l7p4uOEc
	DFoLDuSZIt6BTLfMrfLk/dOTcDKJmFpbwNRiUIe1hLuYehYNaDhejY4A==
Received: (qmail 1172729 invoked from network); 23 Sep 2025 18:17:13 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 23 Sep 2025 18:17:13 +0200
X-UD-Smtp-Session: l3s3148p1@1N3ORHo/ttMujnsp
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: renesas: eagle-function-expansion: add eMMC support
Date: Tue, 23 Sep 2025 18:15:49 +0200
Message-ID: <20250923161709.3110-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add pinmuxing and configuration of the MMC-capable SDHI instance to make
use of the eMMC.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 .../r8a77970-eagle-function-expansion.dtso      | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r8a77970-eagle-function-expansion.dtso b/arch/arm64/boot/dts/renesas/r8a77970-eagle-function-expansion.dtso
index 0c005660d8dd..a552a923edea 100644
--- a/arch/arm64/boot/dts/renesas/r8a77970-eagle-function-expansion.dtso
+++ b/arch/arm64/boot/dts/renesas/r8a77970-eagle-function-expansion.dtso
@@ -170,7 +170,24 @@ csi40_in: endpoint {
 	};
 };
 
+&mmc0 {
+	pinctrl-0 = <&mmc_pins>;
+	pinctrl-names = "default";
+
+	vmmc-supply = <&d3p3>;
+	vqmmc-supply = <&d1p8>;
+	bus-width = <8>;
+	non-removable;
+	status = "okay";
+};
+
 &pfc {
+	mmc_pins: mmc_3_3v {
+		groups = "mmc_data8", "mmc_ctrl";
+		function = "mmc";
+		power-source = <1800>;
+	};
+
 	vin0_pins_parallel: vin0 {
 		groups = "vin0_data12", "vin0_sync", "vin0_clk", "vin0_clkenb";
 		function = "vin0";
-- 
2.47.2


