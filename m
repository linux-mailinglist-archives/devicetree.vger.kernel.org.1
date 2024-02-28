Return-Path: <devicetree+bounces-46961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4F286B6CF
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 19:09:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28FDC2895D3
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 18:09:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 450D979B83;
	Wed, 28 Feb 2024 18:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="koJ39sBv"
X-Original-To: devicetree@vger.kernel.org
Received: from master.debian.org (master.debian.org [82.195.75.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9208579B82
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 18:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709143771; cv=none; b=PHuRLmVSil+1LIzjg5gAlzFgyWZ8Eym/EEUyj0ChRl9F11WA4nrjgbPk3RrQzGY4D56wxp08Qozjgwr63rtjlnjdxZer/MSMAbB7rJ39sn1i29++0TtuAH/unIXR85RJsf9MsPKTZz5oyUj2tPAGzml93hS+g6ft8Mg0EkAYRlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709143771; c=relaxed/simple;
	bh=9g1lbxoK2MeIuSvFhM2dGLrmsh1SuTiy8tOss2u4J2Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=lNOhD8Z4/ii8Bm/iCObtj7XHUzxETSMOyKQ+ZfdwcmGUd08xHeHvxGwrBpBglKnQpPVJDxlD3PJx+EnPgXe4Qwylz6Le1folfitOu6FDU8w1JtH5gGOV8Ogu4UZa4YhhYO4sFnVruyRDIwq9Rx1XtjtfRMqUinVGZ1H9HYa+8Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=master.debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=koJ39sBv; arc=none smtp.client-ip=82.195.75.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=master.debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	In-Reply-To:References; bh=lfvjm4kY6awWEK7vsDum+ZBVumKdfhg87y18zIjjgrQ=; b=ko
	J39sBvys+P/77juiKfjijovj2zo7NoR5lU2H8tYwg4tTx3zfzzo3oCCAg8LqyPJfH77tyuauP6lQ2
	K8sgaklq/BOAL4nsdBYkgyyApa9kRFuhcpjPB0jxlXKCUW/AJW6kzhcplRW2PywcDzpWXyXS7TSDx
	utJca4QZGa1iPfbq0raFL7f+GMI0s833DDadJ6OHfZUduFmcZAtk3HaW4uu9VzHCGDQQKjFzxQVlT
	y4dQ7M1aMw5yk+R4WDDyY5UpPVqELu8KBxIqPlxYqjUTQJ5lq1TBZ1DTKUexmyCSk0lIPXAjanBAa
	93W+M+4oA46+SR1D6Go7w4S5hw7U7K1Q==;
Received: from ukleinek by master.debian.org with local (Exim 4.94.2)
	(envelope-from <ukleinek@master.debian.org>)
	id 1rfOMc-007bXb-6y; Wed, 28 Feb 2024 18:09:06 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@debian.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Liang Chen <cl@rock-chips.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: Add DMA channel names for rk356x
Date: Wed, 28 Feb 2024 19:09:03 +0100
Message-ID: <20240228180905.485976-2-ukleinek@debian.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3723; i=ukleinek@debian.org; h=from:subject; bh=9g1lbxoK2MeIuSvFhM2dGLrmsh1SuTiy8tOss2u4J2Q=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl33bBqI36iba6jc90cZSoi2dbacZyrRxpxTjaG c00vABBXoeJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZd92wQAKCRCPgPtYfRL+ Tq3LB/9YXQGByZTHA7GV72XMdSbv4/ru7etXxy6BJ7bzDWgCxuafPYGSiPGjMEygfzd09hlCj2A enQ/NAVO7SmycsOBFhiAIMvTzQmQXM8WQ0kZU/I0hVI3dhYJLQ3orx9/W9LUSVFCQwMj8c9U0B0 0cIe0w+o8ub8ErQDs8n0+rc0WObbn4QV+tEOQBQ8o314RqFqdrFJOSZgxnnEB4f6BZpJmdVBSxu FHL2UvM85ek0lwRoVSHdD4tHMK7cH5xHrB5QmOETI17B+gndWeqwrnf3lZlSii5rYBSw/ok4JA0 yMZiY/Y+/qJmw0vGkfLe/Pkdhk4Ir5Y8T1Ck6sVmRC++Kng9
X-Developer-Key: i=ukleinek@debian.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

This fixes:

	of_dma_request_slave_channel: dma-names property of node '/serial@fe660000' missing or empty
	dw-apb-uart fe660000.serial: failed to request DMA

when I use ttyS2. Note this is only a warning, the UART still works. It
just doesn't use DMA.

Fixes: a3adc0b9071d ("arm64: dts: rockchip: add core dtsi for RK3568 SoC")
Signed-off-by: Uwe Kleine-König <ukleinek@debian.org>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index c19c0f1b3778..13ad66f40ec2 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -448,6 +448,7 @@ uart0: serial@fdd50000 {
 		clocks = <&pmucru SCLK_UART0>, <&pmucru PCLK_UART0>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 0>, <&dmac0 1>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1347,6 +1348,7 @@ uart1: serial@fe650000 {
 		clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 2>, <&dmac0 3>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart1m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1361,6 +1363,7 @@ uart2: serial@fe660000 {
 		clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 4>, <&dmac0 5>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart2m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1375,6 +1378,7 @@ uart3: serial@fe670000 {
 		clocks = <&cru SCLK_UART3>, <&cru PCLK_UART3>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 6>, <&dmac0 7>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart3m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1389,6 +1393,7 @@ uart4: serial@fe680000 {
 		clocks = <&cru SCLK_UART4>, <&cru PCLK_UART4>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 8>, <&dmac0 9>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart4m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1403,6 +1408,7 @@ uart5: serial@fe690000 {
 		clocks = <&cru SCLK_UART5>, <&cru PCLK_UART5>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 10>, <&dmac0 11>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart5m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1417,6 +1423,7 @@ uart6: serial@fe6a0000 {
 		clocks = <&cru SCLK_UART6>, <&cru PCLK_UART6>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 12>, <&dmac0 13>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart6m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1431,6 +1438,7 @@ uart7: serial@fe6b0000 {
 		clocks = <&cru SCLK_UART7>, <&cru PCLK_UART7>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 14>, <&dmac0 15>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart7m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1445,6 +1453,7 @@ uart8: serial@fe6c0000 {
 		clocks = <&cru SCLK_UART8>, <&cru PCLK_UART8>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 16>, <&dmac0 17>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart8m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1459,6 +1468,7 @@ uart9: serial@fe6d0000 {
 		clocks = <&cru SCLK_UART9>, <&cru PCLK_UART9>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 18>, <&dmac0 19>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart9m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;

base-commit: 20af1ca418d2c0b11bc2a1fe8c0c88f67bcc2a7e
-- 
2.43.0


