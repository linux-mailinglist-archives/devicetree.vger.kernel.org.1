Return-Path: <devicetree+bounces-246972-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A06CC2120
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 12:06:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E2920308D62F
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 11:01:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C26B634105C;
	Tue, 16 Dec 2025 11:01:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx.socionext.com (mx.socionext.com [202.248.49.38])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1662633C197;
	Tue, 16 Dec 2025 11:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.248.49.38
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765882892; cv=none; b=cprk72H/5OjMkvUYe4Jg8HrD2NZOwnpVkQ7k98AMCBiS/rdLgOJyJ4jL0fRcd0twxqLkqnxk6H05wze06ImiO3PueOub3ztCqWdOhmyrRbPa/nTUqZO+yKdDv1zD/tirqZdKp01GU7b5dpsp8jhTMyAnWE5ctPOwpmWXUcv5ur8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765882892; c=relaxed/simple;
	bh=qxkB/ZxUci1b34Pg71FnG400gWklLwZ8KssY4ZC4Euc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=aBPcPS+DJFNPWQlPTvLdDEfoWYfO00qlsleYiXf5h3pSjElE62CceSCYF75e7feEeiA20DaywcPYlr5sM0vBcxSSmM1lIi18fgDgppDk3sc8eTaRXbS5e1nHHp3845AUW+odbwBqpx4nOiGX+zD/5s1GAnSwUtFgEa/s5oN7Zxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=socionext.com; spf=pass smtp.mailfrom=socionext.com; arc=none smtp.client-ip=202.248.49.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=socionext.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=socionext.com
Received: from unknown (HELO iyokan3-ex.css.socionext.com) ([172.31.9.54])
  by mx.socionext.com with ESMTP; 16 Dec 2025 20:01:29 +0900
Received: from mail.mfilter.local (mail-arc02.css.socionext.com [10.213.46.40])
	by iyokan3-ex.css.socionext.com (Postfix) with ESMTP id C7EE02091499;
	Tue, 16 Dec 2025 20:01:29 +0900 (JST)
Received: from kinkan3.css.socionext.com ([172.31.9.51]) by m-FILTER with ESMTP; Tue, 16 Dec 2025 20:01:29 +0900
Received: from plum.e01.socionext.com (unknown [10.212.245.39])
	by kinkan3.css.socionext.com (Postfix) with ESMTP id 5EE1E1C55;
	Tue, 16 Dec 2025 20:01:29 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH 4/5] ARM: dts: uniphier: Remove "smpctrl" nodes
Date: Tue, 16 Dec 2025 20:01:12 +0900
Message-Id: <20251216110113.1801245-5-hayashi.kunihiko@socionext.com>
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

This node has no binding definition and does not affect various
functions, so remove the nodes from .dtsi files to avoid warnings.

  arch/arm/boot/dts/socionext/uniphier-pxs2-gentil.dtb: /soc/smpctrl@59801000:
  failed to match any schema with compatible: ['socionext,uniphier-smpctrl']

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 arch/arm/boot/dts/socionext/uniphier-ld4.dtsi  | 5 -----
 arch/arm/boot/dts/socionext/uniphier-pro4.dtsi | 5 -----
 arch/arm/boot/dts/socionext/uniphier-pro5.dtsi | 5 -----
 arch/arm/boot/dts/socionext/uniphier-pxs2.dtsi | 5 -----
 arch/arm/boot/dts/socionext/uniphier-sld8.dtsi | 5 -----
 5 files changed, 25 deletions(-)

diff --git a/arch/arm/boot/dts/socionext/uniphier-ld4.dtsi b/arch/arm/boot/dts/socionext/uniphier-ld4.dtsi
index df2de7a40211..0cb5cb6fa19e 100644
--- a/arch/arm/boot/dts/socionext/uniphier-ld4.dtsi
+++ b/arch/arm/boot/dts/socionext/uniphier-ld4.dtsi
@@ -202,11 +202,6 @@ system_bus: system-bus@58c00000 {
 			pinctrl-0 = <&pinctrl_system_bus>;
 		};
 
-		smpctrl@59801000 {
-			compatible = "socionext,uniphier-smpctrl";
-			reg = <0x59801000 0x400>;
-		};
-
 		syscon@59810000 {
 			compatible = "socionext,uniphier-ld4-mioctrl",
 				     "simple-mfd", "syscon";
diff --git a/arch/arm/boot/dts/socionext/uniphier-pro4.dtsi b/arch/arm/boot/dts/socionext/uniphier-pro4.dtsi
index 041add88347b..4dffa06474a1 100644
--- a/arch/arm/boot/dts/socionext/uniphier-pro4.dtsi
+++ b/arch/arm/boot/dts/socionext/uniphier-pro4.dtsi
@@ -236,11 +236,6 @@ system_bus: system-bus@58c00000 {
 			pinctrl-0 = <&pinctrl_system_bus>;
 		};
 
-		smpctrl@59801000 {
-			compatible = "socionext,uniphier-smpctrl";
-			reg = <0x59801000 0x400>;
-		};
-
 		mioctrl: syscon@59810000 {
 			compatible = "socionext,uniphier-pro4-mioctrl",
 				     "simple-mfd", "syscon";
diff --git a/arch/arm/boot/dts/socionext/uniphier-pro5.dtsi b/arch/arm/boot/dts/socionext/uniphier-pro5.dtsi
index be9a2c40bd7c..cc61a4b5c1de 100644
--- a/arch/arm/boot/dts/socionext/uniphier-pro5.dtsi
+++ b/arch/arm/boot/dts/socionext/uniphier-pro5.dtsi
@@ -336,11 +336,6 @@ system_bus: system-bus@58c00000 {
 			pinctrl-0 = <&pinctrl_system_bus>;
 		};
 
-		smpctrl@59801000 {
-			compatible = "socionext,uniphier-smpctrl";
-			reg = <0x59801000 0x400>;
-		};
-
 		sdctrl: syscon@59810000 {
 			compatible = "socionext,uniphier-pro5-sdctrl",
 				     "simple-mfd", "syscon";
diff --git a/arch/arm/boot/dts/socionext/uniphier-pxs2.dtsi b/arch/arm/boot/dts/socionext/uniphier-pxs2.dtsi
index ef94fa0517a6..15927956b4f8 100644
--- a/arch/arm/boot/dts/socionext/uniphier-pxs2.dtsi
+++ b/arch/arm/boot/dts/socionext/uniphier-pxs2.dtsi
@@ -417,11 +417,6 @@ system_bus: system-bus@58c00000 {
 			pinctrl-0 = <&pinctrl_system_bus>;
 		};
 
-		smpctrl@59801000 {
-			compatible = "socionext,uniphier-smpctrl";
-			reg = <0x59801000 0x400>;
-		};
-
 		sdctrl: syscon@59810000 {
 			compatible = "socionext,uniphier-pxs2-sdctrl",
 				     "simple-mfd", "syscon";
diff --git a/arch/arm/boot/dts/socionext/uniphier-sld8.dtsi b/arch/arm/boot/dts/socionext/uniphier-sld8.dtsi
index 0b840a8415dd..fe0a7ff8a7c5 100644
--- a/arch/arm/boot/dts/socionext/uniphier-sld8.dtsi
+++ b/arch/arm/boot/dts/socionext/uniphier-sld8.dtsi
@@ -206,11 +206,6 @@ system_bus: system-bus@58c00000 {
 			pinctrl-0 = <&pinctrl_system_bus>;
 		};
 
-		smpctrl@59801000 {
-			compatible = "socionext,uniphier-smpctrl";
-			reg = <0x59801000 0x400>;
-		};
-
 		mioctrl: syscon@59810000 {
 			compatible = "socionext,uniphier-sld8-mioctrl",
 				     "simple-mfd", "syscon";
-- 
2.34.1


