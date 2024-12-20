Return-Path: <devicetree+bounces-133156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 960899F96B7
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 17:39:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 518A87A1F2F
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 16:39:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF1E821B18C;
	Fri, 20 Dec 2024 16:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mailerdienst.de header.i=@mailerdienst.de header.b="VqUYyH1+"
X-Original-To: devicetree@vger.kernel.org
Received: from mxout3.routing.net (mxout3.routing.net [134.0.28.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4F2B21A450;
	Fri, 20 Dec 2024 16:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.0.28.8
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734712741; cv=none; b=lho5f9DonplQdtxqALLTneJ2qsyuyjiKJm1yVfQr3FkJMDNzcDpXIX4VitaHNP3HUyfuMvtdMfL7N3u+l5nY7+HFjYz8bF2DvLBFd2QUsmUw6Wk8wB70lNrGpAIJqaJA6+tBbVqyp0unAWdUsn9rwJ+b2x99gw3ennPwmdJohdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734712741; c=relaxed/simple;
	bh=HKAK/auIP8JRW78IJZhdBin/VoSVzL9Z7IBYqikBABI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rbwKAYWLt8LGWPXxKAJ9LVoSzHJvDxlJTpWplDSgoReqD9kNKQ8CDNl0k3ZeWN0wpOUk3Dy4zW7uqD+oTb2zQgjDpCjv4FrIcOm0tYhk+zVd8ruSx6nzbKEbixXNBUGz6iIStXJUmfB8632WMOaPwdbYb2BdObcMehHFqo2pJ3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fw-web.de; spf=pass smtp.mailfrom=fw-web.de; dkim=pass (1024-bit key) header.d=mailerdienst.de header.i=@mailerdienst.de header.b=VqUYyH1+; arc=none smtp.client-ip=134.0.28.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fw-web.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fw-web.de
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
	by mxout3.routing.net (Postfix) with ESMTP id 78FDB605C0;
	Fri, 20 Dec 2024 16:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1734712731;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=43M8YHtNhk2Xdxg4hLigQDIcOs/dXZUzLlbnLzrCM+A=;
	b=VqUYyH1+hZWrrOx7f9RH3XCpnLtKTx4hXf6XZ4o7/FS7KOwBYrGWCoCD9rk8mFZ4mz26I7
	JoW7iF7Yv4qcwdQUoKskak0mLOaDmMfqzVimMgvcouXPPOKyybKaEUPkLQ7B6QGlbw2IyF
	yx/+nVwg3ceiuR7845j79zWOsmvRi6s=
Received: from frank-u24.. (fttx-pool-157.180.224.233.bambit.de [157.180.224.233])
	by mxbox2.masterlogin.de (Postfix) with ESMTPSA id BD93110009B;
	Fri, 20 Dec 2024 16:38:50 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Frank Wunderlich <frank-w@public-files.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v8 2/2] arm64: dts: mediatek: mt7988a-bpi-r4: Add proc-supply for cpus
Date: Fri, 20 Dec 2024 17:38:36 +0100
Message-ID: <20241220163838.114786-3-linux@fw-web.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241220163838.114786-1-linux@fw-web.de>
References: <20241220163838.114786-1-linux@fw-web.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mail-ID: f655c619-a270-4ee5-8faa-af6a92ff2d4b

From: Frank Wunderlich <frank-w@public-files.de>

Add proc-supply property to cpus on Bananapi R4 board.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
changes:
v3:
- change commit title to have prefix for r4
---
 .../dts/mediatek/mt7988a-bananapi-bpi-r4.dts     | 16 ++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt7988a.dtsi        |  8 ++++----
 2 files changed, 20 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4.dts b/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4.dts
index 27edc6b84f80..6623112c24c7 100644
--- a/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4.dts
@@ -35,6 +35,22 @@ reg_3p3v: regulator-3p3v {
 	};
 };
 
+&cpu0 {
+	proc-supply = <&rt5190_buck3>;
+};
+
+&cpu1 {
+	proc-supply = <&rt5190_buck3>;
+};
+
+&cpu2 {
+	proc-supply = <&rt5190_buck3>;
+};
+
+&cpu3 {
+	proc-supply = <&rt5190_buck3>;
+};
+
 &cpu_thermal {
 	trips {
 		cpu_trip_hot: hot {
diff --git a/arch/arm64/boot/dts/mediatek/mt7988a.dtsi b/arch/arm64/boot/dts/mediatek/mt7988a.dtsi
index 7a5e16a97476..88b56a24efca 100644
--- a/arch/arm64/boot/dts/mediatek/mt7988a.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7988a.dtsi
@@ -16,7 +16,7 @@ cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		cpu@0 {
+		cpu0: cpu@0 {
 			compatible = "arm,cortex-a73";
 			reg = <0x0>;
 			device_type = "cpu";
@@ -27,7 +27,7 @@ cpu@0 {
 			operating-points-v2 = <&cluster0_opp>;
 		};
 
-		cpu@1 {
+		cpu1: cpu@1 {
 			compatible = "arm,cortex-a73";
 			reg = <0x1>;
 			device_type = "cpu";
@@ -38,7 +38,7 @@ cpu@1 {
 			operating-points-v2 = <&cluster0_opp>;
 		};
 
-		cpu@2 {
+		cpu2: cpu@2 {
 			compatible = "arm,cortex-a73";
 			reg = <0x2>;
 			device_type = "cpu";
@@ -49,7 +49,7 @@ cpu@2 {
 			operating-points-v2 = <&cluster0_opp>;
 		};
 
-		cpu@3 {
+		cpu3: cpu@3 {
 			compatible = "arm,cortex-a73";
 			reg = <0x3>;
 			device_type = "cpu";
-- 
2.43.0


