Return-Path: <devicetree+bounces-79380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 144F3915114
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 16:56:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B2A231F25F30
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 14:56:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BA1A19D073;
	Mon, 24 Jun 2024 14:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="McssQgfh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550DE19D06A
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 14:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719240860; cv=none; b=CTVDVK+lN4jmkc/0F1Zc5mb8h0tlUW2La/o6OLdHZB7PAjn2cDGPgFOYsSibLiguZI1MFtDdX4MsfZYimx25zUhTfg0fU4IHTrVI3voF2xLSvyOopuUq6Wb/UPzWG2/16qELGEoW9HDvGjVpswwVa5fk/H0Y5ozIHi9zhbzNqpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719240860; c=relaxed/simple;
	bh=qMaa/gk459yzOTijdAGBgWsv+ODxAAG+KXS4Ln55W5s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=InGZsmkKiwCKh41C6xgpX0gyv06XGDjhHvTPZ16Q7B7Kx3X0gebQi6MjxarkneEZKC+JtiftzMT+krmt/WWQtffJoheec8NnXYag/HHKFrcBqs4b+5R71XL05J1RD23n+qJMJO3Fgh4x3dFck0WeL6jIL1zPALkd5/0yZcOFPNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=McssQgfh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B04A2C32789;
	Mon, 24 Jun 2024 14:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719240860;
	bh=qMaa/gk459yzOTijdAGBgWsv+ODxAAG+KXS4Ln55W5s=;
	h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=McssQgfhPLvDABD1SY6IBez2jO74wjJe6oAGmtALhDKLxlpwJ+thGugtzPgiga7v1
	 WAXyu1Q4SCCJB4jnf2Xst7KWbLEGTSYH2VYCxzmGx74Cu8FO8obVpDwT0cfiiBOiNZ
	 H4ldAc3SKE8PsluBTLO4jOrO2z4AKymUAGCyeog7zuao0QsGTbe0NLKah7Y0S86CQD
	 o9lmXMlzWuqGZkQl4+amPbPg0F8jY5R3bi1M4Jl/r3Uv+wyIMRYgpvHWlr5D9bcATl
	 969ZKJudden09TohwM9I+dgkHSns3Ls4CK5o5FQg0Zpt+Fk7OrUynbHVWAhQ6Rf1iA
	 gxMPlSSTDjZpA==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	soc@kernel.org,
	Thomas Gleixner <tglx@linutronix.de>
Cc: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
Subject: [PATCH v2 1/2] ARM: dts: armada-{370-xp,375,38x,39x}: Drop #size-cells from mpic node
Date: Mon, 24 Jun 2024 16:53:54 +0200
Message-ID: <20240624145355.8034-2-kabel@kernel.org>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240624145355.8034-1-kabel@kernel.org>
References: <20240624145355.8034-1-kabel@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The marvell,mpic interrupt controller has no children nodes. Drop the

Signed-off-by: Marek Behún <kabel@kernel.org>
---
 arch/arm/boot/dts/marvell/armada-370-xp.dtsi | 1 -
 arch/arm/boot/dts/marvell/armada-375.dtsi    | 1 -
 arch/arm/boot/dts/marvell/armada-38x.dtsi    | 1 -
 arch/arm/boot/dts/marvell/armada-39x.dtsi    | 1 -
 4 files changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/marvell/armada-370-xp.dtsi b/arch/arm/boot/dts/marvell/armada-370-xp.dtsi
index 0b8c2a64b36f..954c891e5aee 100644
--- a/arch/arm/boot/dts/marvell/armada-370-xp.dtsi
+++ b/arch/arm/boot/dts/marvell/armada-370-xp.dtsi
@@ -168,7 +168,6 @@ mbusc: mbus-controller@20000 {
 			mpic: interrupt-controller@20a00 {
 				compatible = "marvell,mpic";
 				#interrupt-cells = <1>;
-				#size-cells = <1>;
 				interrupt-controller;
 				msi-controller;
 			};
diff --git a/arch/arm/boot/dts/marvell/armada-375.dtsi b/arch/arm/boot/dts/marvell/armada-375.dtsi
index ddc49547d786..99778b4b7e7b 100644
--- a/arch/arm/boot/dts/marvell/armada-375.dtsi
+++ b/arch/arm/boot/dts/marvell/armada-375.dtsi
@@ -376,7 +376,6 @@ mpic: interrupt-controller@20a00 {
 				compatible = "marvell,mpic";
 				reg = <0x20a00 0x2d0>, <0x21070 0x58>;
 				#interrupt-cells = <1>;
-				#size-cells = <1>;
 				interrupt-controller;
 				msi-controller;
 				interrupts = <GIC_PPI 15 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/marvell/armada-38x.dtsi b/arch/arm/boot/dts/marvell/armada-38x.dtsi
index 446861b6b17b..1181b13deabc 100644
--- a/arch/arm/boot/dts/marvell/armada-38x.dtsi
+++ b/arch/arm/boot/dts/marvell/armada-38x.dtsi
@@ -408,7 +408,6 @@ mpic: interrupt-controller@20a00 {
 				compatible = "marvell,mpic";
 				reg = <0x20a00 0x2d0>, <0x21070 0x58>;
 				#interrupt-cells = <1>;
-				#size-cells = <1>;
 				interrupt-controller;
 				msi-controller;
 				interrupts = <GIC_PPI 15 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/marvell/armada-39x.dtsi b/arch/arm/boot/dts/marvell/armada-39x.dtsi
index 9d1cac49c022..6d05835efb42 100644
--- a/arch/arm/boot/dts/marvell/armada-39x.dtsi
+++ b/arch/arm/boot/dts/marvell/armada-39x.dtsi
@@ -268,7 +268,6 @@ mpic: interrupt-controller@20a00 {
 				compatible = "marvell,mpic";
 				reg = <0x20a00 0x2d0>, <0x21070 0x58>;
 				#interrupt-cells = <1>;
-				#size-cells = <1>;
 				interrupt-controller;
 				msi-controller;
 				interrupts = <GIC_PPI 15 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.44.2


