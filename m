Return-Path: <devicetree+bounces-250890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0187ECECDAC
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 07:43:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8A55130056DD
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 06:43:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8DE722A817;
	Thu,  1 Jan 2026 06:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQ4n8ON2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 912F91CAA6C;
	Thu,  1 Jan 2026 06:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767249827; cv=none; b=s2KIkeBehleY5GMKjk3Mna45bzDjgA5Om94lLKbEc/YabOYcz7SpVTfN81okrim581YMEAmmGsyWkQM5LVjxtBKrJ6XMNAhSaJxqJdSpxiQhIyZUvq4+IbTqkhPua5QU+zKJCT26wGYSYHrYIDpzeKL23J6iBMDa6zzzeWLHfIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767249827; c=relaxed/simple;
	bh=ip9zrZpjsUv5RAPXj+UMAq++aMcleYwwYvHtDmgnJNk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pbaxhy23OJco0mknHFX0X512N57ywQhAsMbLTjACFVLqtu/2QgBXCP7+yxfhfHWNkOKKG/xbr8dYr4VGRpsaBTAH2NHePN/KRbxLawOWarU8PNl5Ku7ZqXZTeeQArc2OmbvKkXwh1lB+An2Bik3vtwoYHD97o6NdKEhy0nXDNkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQ4n8ON2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 41EC7C19422;
	Thu,  1 Jan 2026 06:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767249827;
	bh=ip9zrZpjsUv5RAPXj+UMAq++aMcleYwwYvHtDmgnJNk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=dQ4n8ON2tSvDvYCsuBmQ1D0RxEIwp0t2MuL9rF3ucNwhBQZ4CwOGfoObn69df6rVx
	 /EGfwFdKx8dOhAOwgpGK0Ot7UBDrSuLJG9GWNXP85RsWiKiVtAbC8m9oxJzR5ZVZYD
	 nVcvYD/sPuT3VhuJ1UTSYvL0vBcuFE3YFwKS3dTIogStlbKk8eb6mH1piaQ/SMJD2H
	 df8CIytSiVtfobVTfjBo9HX5vtp8Ro5faUhBwavNixuIQTM671xKWa9v3EhWlGKaRh
	 zzAR1pcuGsNUy26rZ/p/AJT/7+d6grw3v3Y868lRkwxkZJpEYQfG647zvApPhVpzGT
	 BC2wD4dwe9ByQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35142EEB57C;
	Thu,  1 Jan 2026 06:43:47 +0000 (UTC)
From: Ricardo Pardini via B4 Relay <devnull+ricardo.pardini.net@kernel.org>
Date: Thu, 01 Jan 2026 07:43:10 +0100
Subject: [PATCH v2 2/3] arm64: dts: rockchip: Enable the NPU on
 FriendlyElec CM3588
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260101-arm64-dts-rockchip-rk3588-npu-enablements-v2-2-013cf5d5c39d@pardini.net>
References: <20260101-arm64-dts-rockchip-rk3588-npu-enablements-v2-0-013cf5d5c39d@pardini.net>
In-Reply-To: <20260101-arm64-dts-rockchip-rk3588-npu-enablements-v2-0-013cf5d5c39d@pardini.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jimmy Hon <honyuenkwun@gmail.com>, Tomeu Vizoso <tomeu@tomeuvizoso.net>, 
 Ricardo Pardini <ricardo@pardini.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1738;
 i=ricardo@pardini.net; h=from:subject:message-id;
 bh=/oDfWXpDVXmpYIy9Sg0dUU5JsZFn82Eu22Dm+M4KcYk=;
 b=owEBbQGS/pANAwAIATteP+Oex+3pAcsmYgBpVheh6Ix5kMNtCOZEa8p5wxVW4TXI1nDb4wTxR
 eVy/gjRLBSJATMEAAEIAB0WIQSsGCMM9q/qytxIiJM7Xj/jnsft6QUCaVYXoQAKCRA7Xj/jnsft
 6Rw2B/9cyLpVG+UBbhSTB1cTyTqKi+MrY1YtRWkV5VIfAqlzqYg2sVUHh9AekDM/m/e3ElbrYLI
 5D4Ti5xAjF8R3gwRhn8vAjLJ5i6aYsRaiiFz6Sc2bnDGCTEhLLuKU15bH20l/YUzXkV1MZ0a9tx
 ur5I5yevDj2mt/MSxLjawDvI1PPtWq7ejCXnhjOCcQHTjI1uBRSOLA14tmzNucSgbDgMMnPUWML
 vgIEtjjeLoYx5mwhoX68+SGNnpuR3ybXTyLg27CaZuXjBhTrB1dhSifNSoVwu41mHVFVpjSMvfv
 7ltO5HSriyc0h6hGC/cOhRbVtJ0UQ9MV3YeOaugSyN20f2W0
X-Developer-Key: i=ricardo@pardini.net; a=openpgp;
 fpr=AC18230CF6AFEACADC4888933B5E3FE39EC7EDE9
X-Endpoint-Received: by B4 Relay for ricardo@pardini.net/default with
 auth_id=588
X-Original-From: Ricardo Pardini <ricardo@pardini.net>
Reply-To: ricardo@pardini.net

From: Ricardo Pardini <ricardo@pardini.net>

Enable the NPU on FriendlyElec CM3588.
The regulator vdd_npu_s0 was already in place; since
the NPU power domain supply is now described, remove the
regulator's always-on.

Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
---
 .../dts/rockchip/rk3588-friendlyelec-cm3588.dtsi   | 35 +++++++++++++++++++++-
 1 file changed, 34 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588.dtsi
index af431fdcbea7a..49cf4b85c4e96 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588.dtsi
@@ -182,7 +182,6 @@ vdd_npu_s0: regulator@42 {
 		reg = <0x42>;
 		fcs,suspend-voltage-selector = <1>;
 		regulator-name = "vdd_npu_s0";
-		regulator-always-on;
 		regulator-boot-on;
 		regulator-min-microvolt = <550000>;
 		regulator-max-microvolt = <950000>;
@@ -264,6 +263,10 @@ &pd_gpu {
 	domain-supply = <&vdd_gpu_s0>;
 };
 
+&pd_npu {
+	domain-supply = <&vdd_npu_s0>;
+};
+
 &pinctrl {
 	gpio-leds {
 		led_sys_pin: led-sys-pin {
@@ -294,6 +297,36 @@ sd_s0_pwr: sd-s0-pwr {
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



