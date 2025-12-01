Return-Path: <devicetree+bounces-243318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 56238C96C19
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 11:54:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C2A703A52F4
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 10:53:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B0FA305048;
	Mon,  1 Dec 2025 10:52:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="cRJoB2AH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay48-hz3.antispameurope.com (mx-relay48-hz3.antispameurope.com [94.100.134.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED161303A08
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 10:52:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.237
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764586338; cv=pass; b=lOqSR0F9eziLoRNUE6HJbbYzCJDBap/vqwXxvbFZQesV4ulX0UzajzXVCt/9uwB6apL3xmcl7YGiVUFKJdU6qqDCjkiKLu/L8fxLWwISxJy7EiW+GbZPYvbkylqzabIZ7f0EzfxiYskFGwq0p9ZO16+83QvUEB1JOFb967jwZjw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764586338; c=relaxed/simple;
	bh=8ccDwm9ojNTaQDTploB+BgRkXHgWr/Mx/D0osOaEYqU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ApABxWiQYaeHHzSWQtjR4BTCuRFxYYyCn8ra69kOP1QmI2YpNEt47JaEv5ebjcKSdNwSnLrCjfxkZEBBCLDctwiXVpDZnk6XbmHlMb8D070jZPTlpeT+twIpqpt7asS+MQaClVJ9yYN5nIBs4Q/mFhxjgeWS0t623DzJXxws19g=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=cRJoB2AH; arc=pass smtp.client-ip=94.100.134.237
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate48-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=99bK/6S8l1el6CzlV3pLVtqvBAQomyECv4YA2i3If2k=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1764586323;
 b=eGsHPQlkan80Qrgm0v9IcKz0WxSLX4sL+Mzn58rydsVMGHsWi4k1Yqw1HEIqbmSQl2751gxG
 Wf23w71dECxT9Yj89ysLtUuEby1nhtAUl5mPHmuOvrCFy0927Zol9X04BmgdhxM6u67O+nVlMnQ
 SdzTT6bKsA4dbC045InyOsiNEImhNTf9NVWfBSiiJ8J/fVVnBrQnJpVQH/USW1ve58Kh3RVa1pe
 IOWuDAdJR8lJUSa93kxWzqxjjla0vnLP69/U1fcKKVFtkOJtxCrHq3+s1hcBLNXkGw/JWt4RhWM
 JdPYncG8AkjhylMZkBQq80Vzap5liVCEW2/qOq5H+f6hQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1764586323;
 b=Ty0xEajswA+ilUi1OPGVUrZvDpw46crhte7u9F+tQokZl6A6eDoW1NGZBaFjc10OlMBf3sX+
 mfeqQ2C3pKfTxUxrYaII+V/Wbt6KK1i94CfYtJSZcS/FjnG+c8BFXOUgcHrw4H0LyzDE0LRDQ7o
 Sihe1LhbrYh4ZqxBUzOE67u41pVnTOgeQ/1PY82PKn1Y11PHyj6ieyNhM/+gFbJtamv4UYip3ro
 6jC0c6iupbsmexBylgfjl/SIfsrJSuLx5ZT/EtXQ82DCsO7mjqL+fT3cnllaBDohgAKXcpsry0a
 J1mgiyLRFxSl27rGmQDMlF/YA8uQ0svIlzo2A9gnEDyJg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay48-hz3.antispameurope.com;
 Mon, 01 Dec 2025 11:52:02 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 788CBCC0E95;
	Mon,  1 Dec 2025 11:51:55 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH 3/3] arm64: dts: ls1088a: Move extirq outside of syscon
Date: Mon,  1 Dec 2025 11:51:42 +0100
Message-ID: <20251201105144.539450-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251201105144.539450-1-alexander.stein@ew.tq-group.com>
References: <20251201105144.539450-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay48-hz3.antispameurope.com with 4dKghD0Brvz1kR2JY
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:fc74f991ee314d4cb6cc75d1a5d14677
X-cloud-security:scantime:1.858
DKIM-Signature: a=rsa-sha256;
 bh=99bK/6S8l1el6CzlV3pLVtqvBAQomyECv4YA2i3If2k=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1764586322; v=1;
 b=cRJoB2AHr0sIbM9doeU3o5TyF0Wdgh8vLbBJhDs7l2wmDJKjzcDmPnPicswz9kTmMFcg5KCV
 xR/IhHrgg3KxE52/Kh45yFeomF+QyLqunC7LFMu9qeSrhYKX2mRF5OnM8Lv8hpoJ+VxLLkBwvgE
 LDXumTGESMMExAmTvo7qKccQVyi8JaJ1Wa6lUjDG57G2a3eK1zMqQRVPCWb75QjTiaUqgn+VUza
 h9JFBrRiGRFgmDPSOHHHONrI2KD/Bmudsj+sBIx3Pj9jEImCQ12LCF3sPxw3+CjS17cKHAhWvzJ
 sB4VBaG3xa7uLlFTNvAaXERcQUi6SymHY+7H8slrk9Ocg==

To make fsl,ls1088a-extirq a dedicated platform device this needs to
moved outside the syscon node.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 42 +++++++++----------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
index b2f6cd237be04..6eafd86459c7a 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
@@ -246,28 +246,28 @@ isc: syscon@1f70000 {
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x0 0x0 0x1f70000 0x10000>;
+		};
 
-			extirq: interrupt-controller@14 {
-				compatible = "fsl,ls1088a-extirq";
-				#interrupt-cells = <2>;
-				#address-cells = <0>;
-				interrupt-controller;
-				reg = <0x14 4>;
-				interrupt-map =
-					<0 0 &gic GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
-					<1 0 &gic GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>,
-					<2 0 &gic GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>,
-					<3 0 &gic GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
-					<4 0 &gic GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
-					<5 0 &gic GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>,
-					<6 0 &gic GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
-					<7 0 &gic GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
-					<8 0 &gic GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
-					<9 0 &gic GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>,
-					<10 0 &gic GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>,
-					<11 0 &gic GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
-				interrupt-map-mask = <0xf 0x0>;
-			};
+		extirq: interrupt-controller@1f70014 {
+			compatible = "fsl,ls1088a-extirq";
+			reg = <0x0 0x1f70014 0x0 0x4>;
+			#interrupt-cells = <2>;
+			#address-cells = <0>;
+			interrupt-controller;
+			interrupt-map =
+				<0 0 &gic GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
+				<1 0 &gic GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>,
+				<2 0 &gic GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>,
+				<3 0 &gic GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
+				<4 0 &gic GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
+				<5 0 &gic GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>,
+				<6 0 &gic GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
+				<7 0 &gic GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
+				<8 0 &gic GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
+				<9 0 &gic GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>,
+				<10 0 &gic GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>,
+				<11 0 &gic GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-map-mask = <0xf 0x0>;
 		};
 
 		sfp: efuse@1e80000 {
-- 
2.43.0


