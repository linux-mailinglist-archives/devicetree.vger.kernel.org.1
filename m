Return-Path: <devicetree+bounces-250640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B5ECEA993
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 21:19:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1AFE9301E590
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 20:19:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 689AB2F1FE1;
	Tue, 30 Dec 2025 20:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqjkSSoq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D88E2773DE;
	Tue, 30 Dec 2025 20:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767125978; cv=none; b=R0K0BHSGWwCxuX5a1Z8i30h5zfcDB/w1wq5L8q22295Yp1f0TUTi+H6BNE5f7xx/6LGE31b3YONe0aqcgfxO+e8Y07qTO64IUxv7zdT1lwjHngC74rOzQHnPQ0AkA7y8sElotwCm317gNnqAadfxfoyk36AsZdt3L2pRAbQwoaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767125978; c=relaxed/simple;
	bh=R4J2Kd1UHZkJVcCVNxCIB6NX00uFzTXdyR0Tdjo8mN4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gU3R1AuT2AQw1FTQYkzuCxL8qYuNV2nfMwr87+3Ye2qXMWXdhtuImoeVE7DEC+7exntJsw6cM+0HHVLFnL7h2AQbMVWBu6rWg2MisfFbhb7IOx+nyscEhgpvYQin70qLUn7ETwkPRTFTyPBJNPHo1ajA2Uj3qTHWGefS4/A4rCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqjkSSoq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAD1BC16AAE;
	Tue, 30 Dec 2025 20:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767125978;
	bh=R4J2Kd1UHZkJVcCVNxCIB6NX00uFzTXdyR0Tdjo8mN4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=oqjkSSoq1Kso1xXL9jLsH3I/a2G0FkriyF1C/edLkLUigkyK8nJYPLQNNb5Zd1Bio
	 ASlYTGw1/aGLjU6k0aaCYEUvRMrR58exUZgebwzjV5PKhhOTc8JQjzrAyDugQzJKu/
	 /xjF2eSacS9fBA4k/nuWECcHAbR8F5gQ8M7McoXgu77BtyXqRCo0QfaujV2guJOaVH
	 lO2HsayYYawWy3pBq/P/AfBD/j/7QnEb1mOhzRlvvFghlLYeu2E4skw/0FabPpuASX
	 7qgui3Aoo7T5Fp5EqoreUIpcu4/DxKwviYMB6MB5T53ypg5BmBPFjUfxFVtEK+AVk+
	 zfY8TphCuAO5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF47DEE49BD;
	Tue, 30 Dec 2025 20:19:37 +0000 (UTC)
From: Ricardo Pardini via B4 Relay <devnull+ricardo.pardini.net@kernel.org>
Date: Tue, 30 Dec 2025 21:19:31 +0100
Subject: [PATCH 2/3] arm64: dts: rockchip: Enable the NPU on FriendlyElec
 CM3588
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251230-arm64-dts-rockchip-rk3588-npu-enablements-v1-2-d38b182a59e3@pardini.net>
References: <20251230-arm64-dts-rockchip-rk3588-npu-enablements-v1-0-d38b182a59e3@pardini.net>
In-Reply-To: <20251230-arm64-dts-rockchip-rk3588-npu-enablements-v1-0-d38b182a59e3@pardini.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Ricardo Pardini <ricardo@pardini.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1367;
 i=ricardo@pardini.net; h=from:subject:message-id;
 bh=LYtJ7Pl+FdA/I8ghxhk7iPyl3TvBTU0gE+wWAtE6hso=;
 b=owEBbQGS/pANAwAIATteP+Oex+3pAcsmYgBpVDPYbWywt+jyTrZT7MoyS345KuCIUX9AjgsQm
 a71EhpBcliJATMEAAEIAB0WIQSsGCMM9q/qytxIiJM7Xj/jnsft6QUCaVQz2AAKCRA7Xj/jnsft
 6eLVB/9KYU1PSKxm4IV0JHX+267cedhnc0K/IoGKsPhWJlVt8g7WQG4/+brNEcFClJGlDA0M6ab
 UGabUfRnRQMaUYPn1WniBFk/zO/D5zONLg9+dehlcT8MsDTwzLWa3fD6ja8t1m/oZzuQOCD7KAg
 UDQg3y+bD/9AlElPqmAxNGEBJr9vhe0W/JmI+lBaKYiNQnOZqbbLADyzH+inpZ9BaSSYTpDq2RH
 H2b9+IxE62JJisBI6zDCGkI4hMigQkt5go7HBj4aWRKFIUY4RI4TOwo5VpoH7lBCz0SZkAMpI9i
 YQ2oALRuEMaKhtCOU8jpsHwddcNo+A6kTKgMK1YE1oUOhKKW
X-Developer-Key: i=ricardo@pardini.net; a=openpgp;
 fpr=AC18230CF6AFEACADC4888933B5E3FE39EC7EDE9
X-Endpoint-Received: by B4 Relay for ricardo@pardini.net/default with
 auth_id=588
X-Original-From: Ricardo Pardini <ricardo@pardini.net>
Reply-To: ricardo@pardini.net

From: Ricardo Pardini <ricardo@pardini.net>

Enable the NPU on FriendlyElec CM3588.
The regulator vdd_npu_s0 was already described.

Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
---
 .../dts/rockchip/rk3588-friendlyelec-cm3588.dtsi   | 34 ++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588.dtsi
index af431fdcbea7a..46e33e666bb3d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588.dtsi
@@ -264,6 +264,10 @@ &pd_gpu {
 	domain-supply = <&vdd_gpu_s0>;
 };
 
+&pd_npu {
+	domain-supply = <&vdd_npu_s0>;
+};
+
 &pinctrl {
 	gpio-leds {
 		led_sys_pin: led-sys-pin {
@@ -294,6 +298,36 @@ sd_s0_pwr: sd-s0-pwr {
 	};
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
 &saradc {
 	vref-supply = <&avcc_1v8_s0>;
 	status = "okay";

-- 
2.52.0



