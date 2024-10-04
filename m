Return-Path: <devicetree+bounces-107856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EFCF599041E
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 15:27:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A66742819C9
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 13:27:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A34F215F5D;
	Fri,  4 Oct 2024 13:22:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from albert.telenet-ops.be (albert.telenet-ops.be [195.130.137.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FEAF2141D8
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 13:22:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.90
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728048166; cv=none; b=j3Hrqjq5clo4rklwSKqDLa/yloPmlc9MNzM29q5SrmrPECXoFirEekYh+4ZDj6iHNl6Kkrx6v/A7yCOrupZsBwfUiSg1krNtoZOlgNOr31TR3YnP0/eg/Rv8LR9HkK+Z6PuT5V7ya+AoDNt9DWTUC1y947nKegpj2WcrUXKbko8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728048166; c=relaxed/simple;
	bh=iqhTVbqw4V3qc/FXdh+rx6p0ZfEao4i5X0+Y9Epcubs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=nFPg1sZM58q3+pgRRrpkAyL3n/tZJiUR5rVKnDQsKU7acfNnW9oe3yXy83Yvr9RW4gEu5wmfubCz2QsM/guthk5NzxtuftMsqrdSbuut2reshWCHZ6qdpaCav1/RYpUg0f4J1PujoIYaR7W6nuh4DYzpnzHXQSoaTPJGh72hglc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.90
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:5518:aeb:d9c0:fc7c])
	by albert.telenet-ops.be with cmsmtp
	id LDNc2D00S4NXpdT06DNcJj; Fri, 04 Oct 2024 15:22:37 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1swiGK-001Ell-Hg;
	Fri, 04 Oct 2024 15:22:36 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1swhnu-006yUL-F5;
	Fri, 04 Oct 2024 14:53:06 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 09/20] ARM: dts: renesas: kzm9g: Use interrupts-extended for I/O expander
Date: Fri,  4 Oct 2024 14:52:51 +0200
Message-Id: <c77ffcd01d6e9e90cd1e5578c2af98c9ec6030c9.1728045620.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1728045620.git.geert+renesas@glider.be>
References: <cover.1728045620.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use the more concise interrupts-extended property to fully describe the
interrupt.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 arch/arm/boot/dts/renesas/sh73a0-kzm9g.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/renesas/sh73a0-kzm9g.dts b/arch/arm/boot/dts/renesas/sh73a0-kzm9g.dts
index fe96ea07628779c6..ae7e68a44f493e1b 100644
--- a/arch/arm/boot/dts/renesas/sh73a0-kzm9g.dts
+++ b/arch/arm/boot/dts/renesas/sh73a0-kzm9g.dts
@@ -308,8 +308,7 @@ &i2c3 {
 	pcf8575: gpio@20 {
 		compatible = "nxp,pcf8575";
 		reg = <0x20>;
-		interrupt-parent = <&irqpin2>;
-		interrupts = <3 IRQ_TYPE_EDGE_FALLING>;
+		interrupts-extended = <&irqpin2 3 IRQ_TYPE_EDGE_FALLING>;
 		gpio-controller;
 		#gpio-cells = <2>;
 		interrupt-controller;
-- 
2.34.1


