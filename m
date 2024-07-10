Return-Path: <devicetree+bounces-84603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B38B692CE62
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 11:42:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 32EFBB20F41
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 09:42:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D156218FA17;
	Wed, 10 Jul 2024 09:42:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from dd48830.kasserver.com (dd48830.kasserver.com [85.13.164.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92FBC13777F
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 09:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.13.164.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720604524; cv=none; b=tMHsithEBVl06jVDKQ77I5gYGdv0xjqXGNmkRLVAcQI4Sp9d3ZDd7hatoNMMygkiwTpQUML2a6EHe9SEcoT+cJtAdMJkySj+dTAm4zyJ/k2Ix5gWmfQutIYna7dzw0aN+fO3oTMr931SDAix0ZdW8wAYOeCiRAKIBnuR68X9t8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720604524; c=relaxed/simple;
	bh=xmP5WqpXVrQl/MruADB6rTfjn+l0K3Ai2X/MlQtpxJo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VnVFP4MnD1va5UYQMAkqk6ouPsAULx7iMzCHk8EfAyJEkopg1CXUljMMHmB4O9xOIxVv2+ifmuQMMg9hswkr8E9OD7DXsq15eZ2gOsceEpxXtZChxeBQZz++fpInbgHtFMrEhORZrALdmmeeME7ARIBRyAI7xzsqQyhBOHZKH8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pironex.com; spf=fail smtp.mailfrom=pironex.com; arc=none smtp.client-ip=85.13.164.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pironex.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=pironex.com
Received: from ms7c95.fritz.box (p5098bff9.dip0.t-ipconnect.de [80.152.191.249])
	by dd48830.kasserver.com (Postfix) with ESMTPSA id 2C11A6EC0E4B;
	Wed, 10 Jul 2024 11:34:02 +0200 (CEST)
From: Philipp Puschmann <p.puschmann@pironex.com>
To: linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	p.puschmann@pironex.com,
	devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Add uart dma names to the SoC dtsi for RK356x
Date: Wed, 10 Jul 2024 11:33:56 +0200
Message-ID: <20240710093356.3344056-1-p.puschmann@pironex.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Bar: /

DMA names are required by of_dma_request_slave_channel function that is
called during uart probe. So to enable DMA for uarts add the names as in
the RK3568 TRM.

Signed-off-by: Philipp Puschmann <p.puschmann@pironex.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index d8543b5557ee..4ae40661ca6a 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -489,6 +489,7 @@ uart0: serial@fdd50000 {
 		clocks = <&pmucru SCLK_UART0>, <&pmucru PCLK_UART0>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 0>, <&dmac0 1>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1389,6 +1390,7 @@ uart1: serial@fe650000 {
 		clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 2>, <&dmac0 3>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart1m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1403,6 +1405,7 @@ uart2: serial@fe660000 {
 		clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 4>, <&dmac0 5>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart2m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1417,6 +1420,7 @@ uart3: serial@fe670000 {
 		clocks = <&cru SCLK_UART3>, <&cru PCLK_UART3>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 6>, <&dmac0 7>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart3m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1431,6 +1435,7 @@ uart4: serial@fe680000 {
 		clocks = <&cru SCLK_UART4>, <&cru PCLK_UART4>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 8>, <&dmac0 9>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart4m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1445,6 +1450,7 @@ uart5: serial@fe690000 {
 		clocks = <&cru SCLK_UART5>, <&cru PCLK_UART5>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 10>, <&dmac0 11>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart5m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1459,6 +1465,7 @@ uart6: serial@fe6a0000 {
 		clocks = <&cru SCLK_UART6>, <&cru PCLK_UART6>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 12>, <&dmac0 13>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart6m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1473,6 +1480,7 @@ uart7: serial@fe6b0000 {
 		clocks = <&cru SCLK_UART7>, <&cru PCLK_UART7>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 14>, <&dmac0 15>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart7m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1487,6 +1495,7 @@ uart8: serial@fe6c0000 {
 		clocks = <&cru SCLK_UART8>, <&cru PCLK_UART8>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 16>, <&dmac0 17>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart8m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1501,6 +1510,7 @@ uart9: serial@fe6d0000 {
 		clocks = <&cru SCLK_UART9>, <&cru PCLK_UART9>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 18>, <&dmac0 19>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart9m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
-- 
2.45.2


