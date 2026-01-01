Return-Path: <devicetree+bounces-250893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 89597CECDBE
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 07:44:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 03E9D3016CF2
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 06:43:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDC2526560B;
	Thu,  1 Jan 2026 06:43:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1xv4QTd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5D57260588;
	Thu,  1 Jan 2026 06:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767249829; cv=none; b=hgXSfHicJImpv7WUBtiMgVsX6WL33YZtXP23yqGL1z3fyclKSf1znTfZBksY+xxtv0f6D8uh9g3ra0r7G5xiuhVqYKI2/yjdnvsrQFqfnvkjzkTPzt3xQ0/BtCHf2+s1nst9FiuxUZqXRw6FnB/qboEnOt30itiRjCShLjdoL24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767249829; c=relaxed/simple;
	bh=bjVUo2aFNJ16rr82vKMzFz1a1vqrjopgbDQB3E+Os40=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DJdQwl7tACLu59ZOkWKQSYZPaUpy3qoiTwhnMDTqFCiu8K8VrV/1Lc5645vgKHdRUJgquBQuAa0VKGlLnBTQrZjT0sqmBY5wpqmKZku7e1bj6x+wZVdKVYS0S55J4j+TH9t2py6bkd0J7rT79bBIvpk2400R26EExQHNwm50omI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1xv4QTd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4A069C19423;
	Thu,  1 Jan 2026 06:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767249827;
	bh=bjVUo2aFNJ16rr82vKMzFz1a1vqrjopgbDQB3E+Os40=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=b1xv4QTdJnLDIT5Z2cyzgkws67gD+ZXnzAiHbGWJzJ1DChH9NsUitFDasbrfuWt/V
	 qD/abqofC9ZPlk6ccuX+kqk6tFx9ayX5xgWy+beVK320q4ZUgWOti5vt5DNeP5SEnH
	 2bZ7rlXmMWlTMZWZmu9EN2N1SYh6ijE3Dmj1dvW0G20BT9H0xyBj4Ey2MGVQtdV5AW
	 62uyO3BEAX4p9sMGTtHW5TS6b18rnod0uaRy5ib9aidc+JnRMsB7/g5AVVJKL8VEef
	 ci/fqwlNu0gpMiJjgTUU1WYNKHTd9N60O4JcdUWMN5F3hpIsHkrAmJEdyT1q3iUV2v
	 jSQHwBPS0jjMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4269FE9410C;
	Thu,  1 Jan 2026 06:43:47 +0000 (UTC)
From: Ricardo Pardini via B4 Relay <devnull+ricardo.pardini.net@kernel.org>
Date: Thu, 01 Jan 2026 07:43:11 +0100
Subject: [PATCH v2 3/3] arm64: dts: rockchip: Enable the NPU on Turing RK1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260101-arm64-dts-rockchip-rk3588-npu-enablements-v2-3-013cf5d5c39d@pardini.net>
References: <20260101-arm64-dts-rockchip-rk3588-npu-enablements-v2-0-013cf5d5c39d@pardini.net>
In-Reply-To: <20260101-arm64-dts-rockchip-rk3588-npu-enablements-v2-0-013cf5d5c39d@pardini.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jimmy Hon <honyuenkwun@gmail.com>, Tomeu Vizoso <tomeu@tomeuvizoso.net>, 
 Ricardo Pardini <ricardo@pardini.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1656;
 i=ricardo@pardini.net; h=from:subject:message-id;
 bh=U3z//lMNVVVOhXu8sqy/9jYcCMBg51abWkRs/utgick=;
 b=owEBbQGS/pANAwAIATteP+Oex+3pAcsmYgBpVheiY0StyS1yWbqibJ/lLj41BFqKPrn8jEIN/
 /nbEkfbD6GJATMEAAEIAB0WIQSsGCMM9q/qytxIiJM7Xj/jnsft6QUCaVYXogAKCRA7Xj/jnsft
 6fuvCACpI1CWwJDHaE1NTbe+IO8QAYbUZwnQuwNNo19Dm7GvkaycTb6dxNh5wn76FwoB+JQYgeg
 rqwr+RyXuYCA7RgjEI3rLz8AR+357Y132Nv2CiL6ZwbHZhbu7emxVtgXfnAQQ7m/nBASZAKx/+k
 dkQIhO8epwFyoWdLBM+q1CcoXMjXT1O20AwQlDAo5G/Juz+hu7mkgAMe/j3arbveszy3Uuq4ZJA
 S3pPcZ28jB4LYM/WY/g6iXeDz55I+caW62uanaJroSjMgLiPUAYq/FYa9x3a+qsqPBY4Zjp7gim
 eBACVKgZNHFZP6Veq+d1mQt0VwMQB21Hi9ElXBG9q0oTTJIy
X-Developer-Key: i=ricardo@pardini.net; a=openpgp;
 fpr=AC18230CF6AFEACADC4888933B5E3FE39EC7EDE9
X-Endpoint-Received: by B4 Relay for ricardo@pardini.net/default with
 auth_id=588
X-Original-From: Ricardo Pardini <ricardo@pardini.net>
Reply-To: ricardo@pardini.net

From: Ricardo Pardini <ricardo@pardini.net>

Enable the NPU on Turing RK1.
The regulator vdd_npu_s0 was already in place; since
the NPU power domain supply is now described, remove the
regulator's always-on.

Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
---
 .../arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi | 35 +++++++++++++++++++++-
 1 file changed, 34 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
index 6daea8961fdd6..b11d24dcc1806 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
@@ -171,7 +171,6 @@ vdd_npu_s0: regulator@42 {
 		reg = <0x42>;
 		fcs,suspend-voltage-selector = <1>;
 		regulator-name = "vdd_npu_s0";
-		regulator-always-on;
 		regulator-boot-on;
 		regulator-min-microvolt = <550000>;
 		regulator-max-microvolt = <950000>;
@@ -293,6 +292,10 @@ &pd_gpu {
 	domain-supply = <&vdd_gpu_s0>;
 };
 
+&pd_npu {
+	domain-supply = <&vdd_npu_s0>;
+};
+
 &pinctrl {
 	fan {
 		fan_int: fan-int {
@@ -333,6 +336,36 @@ &pwm0 {
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
 &sdhci {
 	bus-width = <8>;
 	no-sdio;

-- 
2.52.0



