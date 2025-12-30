Return-Path: <devicetree+bounces-250638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 212B8CEA98E
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 21:19:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BFFE8300F705
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 20:19:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66C0F2E62A4;
	Tue, 30 Dec 2025 20:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAzYxTEh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D79C1C6FEC;
	Tue, 30 Dec 2025 20:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767125978; cv=none; b=IHW3oER52kCEiXJKjqZqC4Dahqjivcgh7YKYlAQmzhLQRDg+Cec/+rFSM49d67wB7zG8MiHgWFhKnGwFJ2zgC63Cos4vqQtXZwgRW/4E7KgBdz0VNYcspavxb805K9lM7dA1SlV9GLWvk9ZtMaeBC57+U5sYi5byKQzmcF/IV3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767125978; c=relaxed/simple;
	bh=/+9+iLOtFvLLN5b53KbFCJPBG7n0Tv9fjrgIxHLR3G0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aT265jG7tHwW4oaQ+RMAoFmoy2+mtle2Ahw44PT1RbolZm+o/mvphg6AX26VZyNY7MppSRVM+lIxi20JQsGcR07SycQ+dB4zsv1QTfB57szbnGPk8N1mAnlZqUC5FIRSbFgfcW3izHogPso4txIrpMyxgMWj0EbjhaIT0ho9FY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAzYxTEh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id E453EC116D0;
	Tue, 30 Dec 2025 20:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767125977;
	bh=/+9+iLOtFvLLN5b53KbFCJPBG7n0Tv9fjrgIxHLR3G0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=sAzYxTEhgys0QWIhqy5nFnpXnieAFdNWgWsVCP2E4fpVVzead7ij37e4djarS3w/j
	 Jw/M2EIdt5NyiF8d4NBew7I/5Jnmv1UbaYiRPjUNDUAKqpD6wIciXmraTBLvlIOCWN
	 gdjvYswhuPihxsEKtnM7/okHNr+OlX0tf1ksQV2bbxN92gbP22E701KxqpPHYBhudJ
	 z9FF8ODLN/nAsr3DzfF6rP5b2+DnYyVtTIcoky6DlPr40dpydPaBVrwOCU/tp+eOML
	 G2I22sfONYy7AyiQhaKM+f78uN6FiW8FHAhVGLL92p0fL2uY8DhlUrMjbBcBoDc3Lq
	 6VQjgqPqe+17A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1F2AEE49BC;
	Tue, 30 Dec 2025 20:19:37 +0000 (UTC)
From: Ricardo Pardini via B4 Relay <devnull+ricardo.pardini.net@kernel.org>
Date: Tue, 30 Dec 2025 21:19:30 +0100
Subject: [PATCH 1/3] arm64: dts: rockchip: Enable the NPU on NanoPC
 T6/T6-LTS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251230-arm64-dts-rockchip-rk3588-npu-enablements-v1-1-d38b182a59e3@pardini.net>
References: <20251230-arm64-dts-rockchip-rk3588-npu-enablements-v1-0-d38b182a59e3@pardini.net>
In-Reply-To: <20251230-arm64-dts-rockchip-rk3588-npu-enablements-v1-0-d38b182a59e3@pardini.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Ricardo Pardini <ricardo@pardini.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1346;
 i=ricardo@pardini.net; h=from:subject:message-id;
 bh=+QiHWgqrqCvAOEg9ZYrtyyD9Tb3C3HqtujZ2zGhDDrA=;
 b=owEBbQGS/pANAwAIATteP+Oex+3pAcsmYgBpVDPYgaaZKkBzk5d1Kj1a5IICn5fE5aQRqf38z
 EgnUptOBG2JATMEAAEIAB0WIQSsGCMM9q/qytxIiJM7Xj/jnsft6QUCaVQz2AAKCRA7Xj/jnsft
 6SqoB/9N+rz+MEY6VoUs2Bu5JmiCmkTLSYSQ1vx7/Z7MNRq5hPaQFpYyJS21PQaubUXdeiqK8wy
 rmCwpXRMgyRZqOzJCMtzi1ujM8LgE1dJpYA2qriq+joLRWMYjVSNJeuA2XM6YJbwohD9eyge3X2
 waBMxjEBtXGOfwqco+U/KHT25sj2m+oTmXzZy6XR70XRsKyVZ55u2KnXYxaw97d598fkRAb3VaM
 tsqvrrYm8+ntXs+UxH3i9Q4NWrjbkTy1b9FJZttfwr8Q3sVikDw0Gl+EMBO3S/Ut1dVfmCzwFZk
 IfUp7KGg3dK6B+B8BspLcwNgYF29fKccdRuvhpdyAh6tnQRR
X-Developer-Key: i=ricardo@pardini.net; a=openpgp;
 fpr=AC18230CF6AFEACADC4888933B5E3FE39EC7EDE9
X-Endpoint-Received: by B4 Relay for ricardo@pardini.net/default with
 auth_id=588
X-Original-From: Ricardo Pardini <ricardo@pardini.net>
Reply-To: ricardo@pardini.net

From: Ricardo Pardini <ricardo@pardini.net>

Enable the NPU on FriendlyElec NanoPC T6/T6-LTS boards.
The regulator vdd_npu_s0 was already described.

Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 35 ++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
index fafeabe9adf9e..93bd479118e92 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
@@ -629,6 +629,10 @@ &pd_gpu {
 	domain-supply = <&vdd_gpu_s0>;
 };
 
+&pd_npu {
+	domain-supply = <&vdd_npu_s0>;
+};
+
 &pinctrl {
 	gpio-leds {
 		sys_led_pin: sys-led-pin {
@@ -706,6 +710,37 @@ &pwm1 {
 	status = "okay";
 };
 
+&rknn_core_0 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_core_1 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_core_2 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_mmu_0 {
+	status = "okay";
+};
+
+&rknn_mmu_1 {
+	status = "okay";
+};
+
+&rknn_mmu_2 {
+	status = "okay";
+};
+
+
 &saradc {
 	vref-supply = <&avcc_1v8_s0>;
 	status = "okay";

-- 
2.52.0



