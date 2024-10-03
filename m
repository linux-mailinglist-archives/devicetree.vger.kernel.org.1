Return-Path: <devicetree+bounces-107582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B0A98F109
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 16:05:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF5631C20E74
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 14:05:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC6BF1A0719;
	Thu,  3 Oct 2024 14:04:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from albert.telenet-ops.be (albert.telenet-ops.be [195.130.137.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D1119CC3C
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 14:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.90
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727964285; cv=none; b=emlKgeqVqJU/SpvqIVfmZkzeKm1QfEq7xnJu58h+SssiNO9+Sow7jOi2sKMCEXPOETzOtRAiJcq1TTicu2apResKG6voDRkcFPepWbEVUkw41NULRBtTdAMe7SL4OEUbDSnlJ1lP+su6Y+u0e1WPLKWo6X/kswwaplPzu4DxjXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727964285; c=relaxed/simple;
	bh=cnqWTpDQyDMAetZAw6MLJ8dI8Id06dyIeRu+kxRfc4Q=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=gSX/fiWMur1ktKNrsnUI0WONLJ3TxO6yYz63dy8P7QnqLlHHcM6YOfEGxSFJtwP5lT4wxtVt8QAW9tzOXKlGbjVOfqV3uzQRjvFWSmBY9hJOciPE263VGi2plH8TS1JkTlGa1o8gtdu8X6xOnwO4/wjmkoO4dBDLMK3LJIo1Tpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.90
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:d4db:7463:4f08:3c82])
	by albert.telenet-ops.be with cmsmtp
	id Kq4d2D00H5K8SYz06q4d4F; Thu, 03 Oct 2024 16:04:39 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1swMRR-001CGi-6H;
	Thu, 03 Oct 2024 16:04:37 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1swMRZ-006e9r-E9;
	Thu, 03 Oct 2024 16:04:37 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Arnd Bergmann <arnd@arndb.de>
Cc: devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH v3 resend 4/7] arm64: dts: renesas: r8a779f0: Add E-FUSE node
Date: Thu,  3 Oct 2024 16:04:28 +0200
Message-Id: <cdd2e25d1f60a720c0a64f0c42e58aa81a6150d6.1727963347.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1727963347.git.geert+renesas@glider.be>
References: <cover.1727963347.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a device node for the System Group Fuse Control and Monitor block of
the Pin Function Controller (PFC) on the R-Car S4-8 (R8A779F0) SoC,
which provides E-FUSE services.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
---
v3:
  - Fix reg size,

v2:
  - s/r8a779g0/r8a779f0/ in one-line summary,
  - Add Reviewed-by.
---
 arch/arm64/boot/dts/renesas/r8a779f0.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r8a779f0.dtsi b/arch/arm64/boot/dts/renesas/r8a779f0.dtsi
index 9629adb47d99f142..054498e54730b49c 100644
--- a/arch/arm64/boot/dts/renesas/r8a779f0.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a779f0.dtsi
@@ -377,6 +377,14 @@ gpio3: gpio@e6051980 {
 			#interrupt-cells = <2>;
 		};
 
+		fuse: fuse@e6078800 {
+			compatible = "renesas,r8a779f0-efuse";
+			reg = <0 0xe6078800 0 0x200>;
+			clocks = <&cpg CPG_MOD 915>;
+			power-domains = <&sysc R8A779F0_PD_ALWAYS_ON>;
+			resets = <&cpg 915>;
+		};
+
 		cmt0: timer@e60f0000 {
 			compatible = "renesas,r8a779f0-cmt0",
 				     "renesas,rcar-gen4-cmt0";
-- 
2.34.1


