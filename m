Return-Path: <devicetree+bounces-246973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1078ACC20DE
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 12:01:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BB39C3006DA4
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 11:01:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFE1434107E;
	Tue, 16 Dec 2025 11:01:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx.socionext.com (mx.socionext.com [202.248.49.38])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 471F833E37C;
	Tue, 16 Dec 2025 11:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.248.49.38
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765882893; cv=none; b=MCzNy/emtBz/CTrKG51Qnectbw+OJm4HQ04JK878qodAsaQntLSJymwwxkrRFU/HkiiV7bMosca5s4KOu6l0uV2WivRDsH7f2dPTe7PIqFjT7Li6tlpkPjZED6kJTnwe1ukQPHEjqKY5nthtJjbBig065WVeo2fZ1Eq/IWSH1yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765882893; c=relaxed/simple;
	bh=qbZFVTbIeOI0PC69//My7Z7lf05VI4xt2C7W8NIJ1EU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=I6QeloRszNSr+tixn9wQoO4tdRxFbxma83QMhlT1ndBFlKe9jWFRWxtJFfm5jfIp/vCh/v8ygyl1eRFSWOnilyqWD1/GHdOqBo+DegQgH3zGW0SwRmYMiHCc/DAmIcqxSRPYMYK21ks4/cUeSXl816tlkcaVzA/Ecl+aNkBORNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=socionext.com; spf=pass smtp.mailfrom=socionext.com; arc=none smtp.client-ip=202.248.49.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=socionext.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=socionext.com
Received: from unknown (HELO kinkan3-ex.css.socionext.com) ([172.31.9.52])
  by mx.socionext.com with ESMTP; 16 Dec 2025 20:01:30 +0900
Received: from mail.mfilter.local (mail-arc01.css.socionext.com [10.213.46.36])
	by kinkan3-ex.css.socionext.com (Postfix) with ESMTP id A92D12069FC4;
	Tue, 16 Dec 2025 20:01:30 +0900 (JST)
Received: from kinkan3.css.socionext.com ([172.31.9.51]) by m-FILTER with ESMTP; Tue, 16 Dec 2025 20:01:30 +0900
Received: from plum.e01.socionext.com (unknown [10.212.245.39])
	by kinkan3.css.socionext.com (Postfix) with ESMTP id 2C3871C52;
	Tue, 16 Dec 2025 20:01:30 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH 5/5] arm64: dts: uniphier: Remove smpctrl nodes
Date: Tue, 16 Dec 2025 20:01:13 +0900
Message-Id: <20251216110113.1801245-6-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251216110113.1801245-1-hayashi.kunihiko@socionext.com>
References: <20251216110113.1801245-1-hayashi.kunihiko@socionext.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This node has no bindings definition and does not affect various
functions, so remove the nodes from .dtsi files to avoid warnings.

  arch/arm64/boot/dts/socionext/uniphier-ld20-ref.dtb: /soc@0/smpctrl@59801000:
  failed to match any schema with compatible: ['socionext,uniphier-smpctrl']

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi | 5 -----
 arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi | 5 -----
 arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi | 5 -----
 3 files changed, 15 deletions(-)

diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
index 4680571c264d..62c7980e86ce 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
@@ -414,11 +414,6 @@ system_bus: system-bus@58c00000 {
 			pinctrl-0 = <&pinctrl_system_bus>;
 		};
 
-		smpctrl@59801000 {
-			compatible = "socionext,uniphier-smpctrl";
-			reg = <0x59801000 0x400>;
-		};
-
 		syscon@59810000 {
 			compatible = "socionext,uniphier-ld11-sdctrl",
 				     "simple-mfd", "syscon";
diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
index c3858666550c..5afe04325657 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
@@ -547,11 +547,6 @@ system_bus: system-bus@58c00000 {
 			pinctrl-0 = <&pinctrl_system_bus>;
 		};
 
-		smpctrl@59801000 {
-			compatible = "socionext,uniphier-smpctrl";
-			reg = <0x59801000 0x400>;
-		};
-
 		sdctrl: syscon@59810000 {
 			compatible = "socionext,uniphier-ld20-sdctrl",
 				     "simple-mfd", "syscon";
diff --git a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
index e00a5caed822..eba9927f439e 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
@@ -367,11 +367,6 @@ system_bus: system-bus@58c00000 {
 			pinctrl-0 = <&pinctrl_system_bus>;
 		};
 
-		smpctrl@59801000 {
-			compatible = "socionext,uniphier-smpctrl";
-			reg = <0x59801000 0x400>;
-		};
-
 		sdctrl: syscon@59810000 {
 			compatible = "socionext,uniphier-pxs3-sdctrl",
 				     "simple-mfd", "syscon";
-- 
2.34.1


