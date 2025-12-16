Return-Path: <devicetree+bounces-246970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 37525CC2114
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 12:04:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3436B307C181
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 11:01:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0967A33E340;
	Tue, 16 Dec 2025 11:01:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx.socionext.com (mx.socionext.com [202.248.49.38])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9EB433D6CB;
	Tue, 16 Dec 2025 11:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.248.49.38
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765882890; cv=none; b=QD1qut5pwb+GdQ5IGW67Pk2pWPwKrcber1/9DPXSBTq5rWwh/eU6s4Hel/jjZVNl8sCZshA8oWf58Jh2zPL05iRnzeDYtU35oCwBvkW3qH3ZGkdE7kzXsD2F7dkdXV8fepuiJcLHmZ93+P8Xc0alH8xvCI0OTANrP/8hyxHHCek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765882890; c=relaxed/simple;
	bh=YrmwulGWNmLNkotSRCdm9xr0x/nmP3HxVUIPPvXtS7I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=fElWfjdtpS0XgYB5IiO7oixl0VmfiP2qvTwlN15Mv2wdUhT5p8dRM/1ubXoO/PDOpmuH4TgZcphDoasvZV/aQ57bfknQ0B3xsGEOEd/6tlHYnEIHzgpXGvflxW2kCgF9jARE1LCq0BPvAwWoZ7dV+lJIFBhf0qSvOLpYZY/XJxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=socionext.com; spf=pass smtp.mailfrom=socionext.com; arc=none smtp.client-ip=202.248.49.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=socionext.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=socionext.com
Received: from unknown (HELO kinkan3-ex.css.socionext.com) ([172.31.9.52])
  by mx.socionext.com with ESMTP; 16 Dec 2025 20:01:27 +0900
Received: from mail.mfilter.local (mail-arc01.css.socionext.com [10.213.46.36])
	by kinkan3-ex.css.socionext.com (Postfix) with ESMTP id A2FF92069FC4;
	Tue, 16 Dec 2025 20:01:27 +0900 (JST)
Received: from kinkan3.css.socionext.com ([172.31.9.51]) by m-FILTER with ESMTP; Tue, 16 Dec 2025 20:01:27 +0900
Received: from plum.e01.socionext.com (unknown [10.212.245.39])
	by kinkan3.css.socionext.com (Postfix) with ESMTP id 4F9661C52;
	Tue, 16 Dec 2025 20:01:27 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH 2/5] ARM: dts: uniphier: Add missing thermal-sensor node for Pro5
Date: Tue, 16 Dec 2025 20:01:10 +0900
Message-Id: <20251216110113.1801245-3-hayashi.kunihiko@socionext.com>
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

UniPhier Pro5 SoC also has a thermal sensor and is available.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 arch/arm/boot/dts/socionext/uniphier-pro5.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/socionext/uniphier-pro5.dtsi b/arch/arm/boot/dts/socionext/uniphier-pro5.dtsi
index 3d21fb822219..be9a2c40bd7c 100644
--- a/arch/arm/boot/dts/socionext/uniphier-pro5.dtsi
+++ b/arch/arm/boot/dts/socionext/uniphier-pro5.dtsi
@@ -474,6 +474,13 @@ sys_rst: reset-controller {
 			watchdog {
 				compatible = "socionext,uniphier-wdt";
 			};
+
+			pvtctl: thermal-sensor {
+				compatible = "socionext,uniphier-pxs2-thermal";
+				interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
+				#thermal-sensor-cells = <0>;
+				socionext,tmod-calibration = <0x0f86 0x6844>;
+			};
 		};
 
 		usb0: usb@65a00000 {
-- 
2.34.1


