Return-Path: <devicetree+bounces-250641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E97CEA99F
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 21:19:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 130303021FB8
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 20:19:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 930042FCBE5;
	Tue, 30 Dec 2025 20:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BX2PL9hZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E542D1F61;
	Tue, 30 Dec 2025 20:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767125978; cv=none; b=qAArKRbp2P+LfGFrHaiPKLujpDg+omL0rT/Z59zs2z0NBfRvH4AIiGmj+A417StbWGqOZ2wdRTj33HQ8DTr3W1PtkvR1YwzGYtYlo8C//LrgKSft9k9AVpD3k5it4RJTQJUzXieQur/IHfhBVpMAOL6NgSAkdBQLYf42VAK8RZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767125978; c=relaxed/simple;
	bh=jXBJOVSY5/jtRd4MsqkK6D8JPXqyh0CeW8/F1DaF9Hw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fl+XNxgxziAlCk5d/Y17ZfJAMyOmmio8OG+BxEhvhyFjhqKJDQiK7cEAqiIq67EWyUEmpf2NGLgE22SMFlZKr2aQJ8G3iTUO2bnv/5S0Qq6F1eTGPvH6Nl90Avbk0wZDaO54+ELDJL5pLP6IPrwEx7mJOnT7oft/hFTYw/kQRFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BX2PL9hZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0975BC19422;
	Tue, 30 Dec 2025 20:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767125978;
	bh=jXBJOVSY5/jtRd4MsqkK6D8JPXqyh0CeW8/F1DaF9Hw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=BX2PL9hZhZXEok+BI2UGLzRE8L/z/INqLlm6wEPC8sw7arwu/uTY+Lf/UIILOQmIU
	 S5dcOB5NsR74T2XFe5AcDrI83lET+rT2V5nnTbJ2ry0Izvd3U8DFuggSNMEHAFjJmP
	 QVcYfGX9GL13fT2HcPO4GNF1eR3cs14DlPD2glIP2qu2dBnD/I5qqwdYX2nZze1Vc6
	 11SyXzKlqGvjqxgzB4CtiJHGHPKXqKqX8QVZeLWKMabIi22/rgW1GrCcuva1I/kQFV
	 RCIMHArf8zUAQ5SCx5YfURX+caXh0OWS7NhkLs4SThx5aowY51XmZKbdEngqYHYSCD
	 lOnDaY3EiP9qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC197EE57C2;
	Tue, 30 Dec 2025 20:19:37 +0000 (UTC)
From: Ricardo Pardini via B4 Relay <devnull+ricardo.pardini.net@kernel.org>
Date: Tue, 30 Dec 2025 21:19:32 +0100
Subject: [PATCH 3/3] arm64: dts: rockchip: Enable the NPU on Turing RK1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251230-arm64-dts-rockchip-rk3588-npu-enablements-v1-3-d38b182a59e3@pardini.net>
References: <20251230-arm64-dts-rockchip-rk3588-npu-enablements-v1-0-d38b182a59e3@pardini.net>
In-Reply-To: <20251230-arm64-dts-rockchip-rk3588-npu-enablements-v1-0-d38b182a59e3@pardini.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Ricardo Pardini <ricardo@pardini.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1285;
 i=ricardo@pardini.net; h=from:subject:message-id;
 bh=XpijixYvzriBRVOmsT4VQTqyTNHU15VOJMdhO93m6dw=;
 b=owEBbQGS/pANAwAIATteP+Oex+3pAcsmYgBpVDPYIftKqird7Gw+MbUTrhyNE9UgbCwk/G7ts
 4guJBNUd7eJATMEAAEIAB0WIQSsGCMM9q/qytxIiJM7Xj/jnsft6QUCaVQz2AAKCRA7Xj/jnsft
 6WIrB/0Y+4blBLv5BpU9K90rubcHvJSrE3X3bxnkDdVzGSdn1hIDUnerQd2mBp0UgG4AiLLN0Sk
 ijuK36DfiVNwLOnTZFIggL+Va2OKhz2CovtYshrKJzz/oQ3gQZWf1UwinN5ZEqE01s+ZG+wjIDG
 Za59n6vA7cIiR7RrlVbrSdfGUaqQNM4Ra6w69kBk6oq/LLkZLp343nu1qYwB9Wt8LW4mwk6DUFy
 nPfZF8lrOKEGQpxd/Km0qYRBqH2hTd+gVDAWCrLGi/smXlO7LLQnRGAg33m+6RjuDEKqjqPwEUR
 qtEDnlfTmnvYTEyi/hiRCY7bLRR+Y8TrUqeKM1drX7vIdvRn
X-Developer-Key: i=ricardo@pardini.net; a=openpgp;
 fpr=AC18230CF6AFEACADC4888933B5E3FE39EC7EDE9
X-Endpoint-Received: by B4 Relay for ricardo@pardini.net/default with
 auth_id=588
X-Original-From: Ricardo Pardini <ricardo@pardini.net>
Reply-To: ricardo@pardini.net

From: Ricardo Pardini <ricardo@pardini.net>

Enable the NPU on Turing RK1.
The regulator vdd_npu_s0 was already described.

Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
---
 .../arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi | 34 ++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
index 6daea8961fdd6..7b28ec9ce1945 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
@@ -293,6 +293,10 @@ &pd_gpu {
 	domain-supply = <&vdd_gpu_s0>;
 };
 
+&pd_npu {
+	domain-supply = <&vdd_npu_s0>;
+};
+
 &pinctrl {
 	fan {
 		fan_int: fan-int {
@@ -333,6 +337,36 @@ &pwm0 {
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



