Return-Path: <devicetree+bounces-178854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D39B5ABD9C2
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 15:42:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B53587A703E
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 13:40:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA371242D6C;
	Tue, 20 May 2025 13:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFmrfRJK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9524D1D5154
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 13:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747748514; cv=none; b=nTnB20X1fZEbiXjlt4/s7+x5Bgfi5CWBgdAaA6NvxN/Gzufd9wQzKX1aWMO+DCaTWG2Ba++4R4cF4N+zS2ccRBzzxCBERDZJSCqnvJQ9UWjeO2M0hORYkrsSdTePlzI6YHYfiTfyVQbdKxsi8Fngpd6fE5J0Oqd1UoYPPhGHDjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747748514; c=relaxed/simple;
	bh=aF9DEQjUc4Qwge2M0Bizos2dw0TZnxr1SLShOtIxmfs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Uo/yZaL0OffA1GU4ltK7ef3WBDit9M+MM0yLUjkZErf0mRIiznAzxnCykbzknVNlRqI1izBWdF2ywIEWGucmnBCLV8zQgcRUcw4LC0yyI3FTmOODpYKGqD9W8O6isHFPGw2YqpxZHNGlRV/IZlwCSgkk9n+pskiiRnWBcl/qvwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFmrfRJK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFF75C4CEE9;
	Tue, 20 May 2025 13:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747748513;
	bh=aF9DEQjUc4Qwge2M0Bizos2dw0TZnxr1SLShOtIxmfs=;
	h=From:Date:Subject:To:Cc:From;
	b=rFmrfRJKFsr5GIgctEUfS0qkuxKMbUtxBFt1UH6ndA/NAjfoZACEau5FExCWGFkfE
	 WcCYydLLrzXWe/gpTax6YixO7E8VZTaicuDCA3IgZ8a9BCncIOZ0VlsEcnv3D0xr1w
	 XzhZNps+u4Fzvs0OAmonW4ckmGKS6zhHPDhul+lcn7HiVQ3YVdcPSNKezX7eaJnyvp
	 qObncCv2wTHUFkB76LgzwEWvJtUByvdt8/w9MAvC/op4IAPqqHfhqMTpXqtXux1yOU
	 Nqrs6td/3zqzrfHmOn4nIbNNjRfOuy4hNz804d7ICBP6YuGKRv5+fqjhd0kNmA0QOT
	 vGPW33t/rkNqg==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Tue, 20 May 2025 15:41:35 +0200
Subject: [PATCH] arm64: dts: airoha: en7581: Add ethernet nodes to EN7581
 SoC evaluation board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250520-en7581-net-v1-1-5317f8e829ad@kernel.org>
X-B4-Tracking: v=1; b=H4sIAI6GLGgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDUyMD3dQ8c1MLQ9281BJdkxSLNKOklOQ04yRTJaCGgqLUtMwKsGHRsbW
 1ANCnKgZcAAAA
X-Change-ID: 20250520-en7581-net-4d8f2bdcf3b5
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.2

Introduce ethernet controller nodes to EN7581 SoC and EN7581 evaluation
board.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 arch/arm64/boot/dts/airoha/en7581-evb.dts |  8 +++++
 arch/arm64/boot/dts/airoha/en7581.dtsi    | 49 +++++++++++++++++++++++++++++++
 2 files changed, 57 insertions(+)

diff --git a/arch/arm64/boot/dts/airoha/en7581-evb.dts b/arch/arm64/boot/dts/airoha/en7581-evb.dts
index 99d2c4f1fc5a9638f551c6d725eeea568943cc68..dae9968a4ff68e8b34d02b237a168a80d184bcb0 100644
--- a/arch/arm64/boot/dts/airoha/en7581-evb.dts
+++ b/arch/arm64/boot/dts/airoha/en7581-evb.dts
@@ -98,3 +98,11 @@ &pcie1 {
 &i2c0 {
 	status = "okay";
 };
+
+&eth {
+	status = "okay";
+};
+
+&gdm1 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts/airoha/en7581.dtsi
index 536ece69b935add88fb73ca6bd3f1ecd842cad7a..ff6908a76e8eb6cf91343495d1fe531a868e41fb 100644
--- a/arch/arm64/boot/dts/airoha/en7581.dtsi
+++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
@@ -346,5 +346,54 @@ i2c1: i2c@1fbf8100 {
 
 			status = "disabled";
 		};
+
+		eth: ethernet@1fb50000 {
+			compatible = "airoha,en7581-eth";
+			reg = <0 0x1fb50000 0 0x2600>,
+			      <0 0x1fb54000 0 0x2000>,
+			      <0 0x1fb56000 0 0x2000>;
+			reg-names = "fe", "qdma0", "qdma1";
+
+			resets = <&scuclk EN7581_FE_RST>,
+				 <&scuclk EN7581_FE_PDMA_RST>,
+				 <&scuclk EN7581_FE_QDMA_RST>,
+				 <&scuclk EN7581_XSI_MAC_RST>,
+				 <&scuclk EN7581_DUAL_HSI0_MAC_RST>,
+				 <&scuclk EN7581_DUAL_HSI1_MAC_RST>,
+				 <&scuclk EN7581_HSI_MAC_RST>,
+				 <&scuclk EN7581_XFP_MAC_RST>;
+			reset-names = "fe", "pdma", "qdma",
+				      "xsi-mac", "hsi0-mac", "hsi1-mac",
+				      "hsi-mac", "xfp-mac";
+
+			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+
+			status = "disabled";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			gdm1: ethernet@1 {
+				compatible = "airoha,eth-mac";
+				reg = <1>;
+				phy-mode = "internal";
+				status = "disabled";
+
+				fixed-link {
+					speed = <10000>;
+					full-duplex;
+					pause;
+				};
+			};
+		};
 	};
 };

---
base-commit: 357bbde68e750ea3da2450c0c2076ff2465de559
change-id: 20250520-en7581-net-4d8f2bdcf3b5

Best regards,
-- 
Lorenzo Bianconi <lorenzo@kernel.org>


