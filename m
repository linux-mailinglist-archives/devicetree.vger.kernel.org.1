Return-Path: <devicetree+bounces-146648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7C2A35AD0
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 10:50:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 731157A4122
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 09:49:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82C2F257439;
	Fri, 14 Feb 2025 09:49:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gauss.telenet-ops.be (gauss.telenet-ops.be [195.130.132.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC60260A29
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 09:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.132.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739526546; cv=none; b=APkZENQR+/WF3aSwr72EmZF3+S5uzpbhPWFcYk/pM2PtoWDjSwmIx34HN2ED7caem9/OpLY9GxxtOI6VTyjAOYXGv91F9xYlF/1zka5D8yCz2FPYnwADnctmlAjgOL6xBcFELwzqA3wjqGaIGupKHHi6NTQkm/qflTlsai8IO3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739526546; c=relaxed/simple;
	bh=eXfeyXIOBKg7bIwINN+nZAJVj7Fi6EoT/vbIpEehkCE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OsojbmLHOy7l4tefbL7nFD99x2H8vyH9SpInuckCsFfAzefcwt/dzlyofVuojg2hwksQFb/E7jAahBREAf1fwlr9l23elAWoQ9G0UV64GbIZf1HXk3nYrAuXhWnN5iKELPIJat6yT6BqoUyTcghdq+c3FcblM9/PXowCTWofiss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.132.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from albert.telenet-ops.be (albert.telenet-ops.be [IPv6:2a02:1800:110:4::f00:1a])
	by gauss.telenet-ops.be (Postfix) with ESMTPS id 4YvRsg4N3Bz4wxgc
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 10:42:15 +0100 (CET)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:6395:73cc:7fc4:4cab])
	by albert.telenet-ops.be with cmsmtp
	id DMi72E0091MuxXz06Mi7Ja; Fri, 14 Feb 2025 10:42:08 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tisCj-00000006Xjm-3TOO;
	Fri, 14 Feb 2025 10:42:07 +0100
Received: from geert by rox.of.borg with local (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tisD1-00000000ggb-0ErY;
	Fri, 14 Feb 2025 10:42:07 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 2/2] ARM: dts: renesas: r9a06g032: Drop snps,dw-apb-uart compatibility
Date: Fri, 14 Feb 2025 10:42:04 +0100
Message-ID: <e290dd28ecb68b4e164172a905da18a5a2d438a1.1739525488.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1739525488.git.geert+renesas@glider.be>
References: <cover.1739525488.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

make dtbs_check:

    arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dtb: serial@40060000: compatible: 'oneOf' conditional failed, one must be fixed:
	    ['renesas,r9a06g032-uart', 'renesas,rzn1-uart', 'snps,dw-apb-uart'] is too long
    ...

As per commit 72b0505f0830df95 ("dt: serial: Add Renesas RZ/N1 binding
documentation"), the RZ/N1 UART is a modified Synopsys DesignWare UART.
The modifications only relate to DMA, so you could actually use the
controller with the Synopsys compatible string if you are not using DMA,
but you should not do so.  Hence the first three UARTs (which don't
support DMA) were added with a "snps,dw-apb-uart" fallback, to use the
existing Synopsys DesignWare UART support.

Since support for the RZ/N1-specific compatible value was added to the
driver a long time ago (commit 2ff5fa7f742ab0c6 ("serial: 8250_dw: Add
compatible string for Renesas RZ/N1 UART") in v4.19), the extra
compatible value can be dropped safely.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Alternatively, the bindings[1] could be augmented with an extra section:

    - items:
        - enum:
            - renesas,r9a06g032-uart
            - renesas,r9a06g033-uart
        - const: renesas,rzn1-uart
        - const: snps,dw-apb-uart     # RZ/N1 without DMA

and perhaps extra logic to prohibit the dmas property when both
renesas,rzn1-uart and snps,dw-apb-uart are present.

Given the complexity of the latter, I went for the simple solution.

[1] Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
---
 arch/arm/boot/dts/renesas/r9a06g032.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/renesas/r9a06g032.dtsi b/arch/arm/boot/dts/renesas/r9a06g032.dtsi
index 87e03446fb4de705..fc523106c2a4c6a0 100644
--- a/arch/arm/boot/dts/renesas/r9a06g032.dtsi
+++ b/arch/arm/boot/dts/renesas/r9a06g032.dtsi
@@ -171,7 +171,7 @@ usb@2,0 {
 		};
 
 		uart0: serial@40060000 {
-			compatible = "renesas,r9a06g032-uart", "renesas,rzn1-uart", "snps,dw-apb-uart";
+			compatible = "renesas,r9a06g032-uart", "renesas,rzn1-uart";
 			reg = <0x40060000 0x400>;
 			interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
 			reg-shift = <2>;
@@ -182,7 +182,7 @@ uart0: serial@40060000 {
 		};
 
 		uart1: serial@40061000 {
-			compatible = "renesas,r9a06g032-uart", "renesas,rzn1-uart", "snps,dw-apb-uart";
+			compatible = "renesas,r9a06g032-uart", "renesas,rzn1-uart";
 			reg = <0x40061000 0x400>;
 			interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
 			reg-shift = <2>;
@@ -193,7 +193,7 @@ uart1: serial@40061000 {
 		};
 
 		uart2: serial@40062000 {
-			compatible = "renesas,r9a06g032-uart", "renesas,rzn1-uart", "snps,dw-apb-uart";
+			compatible = "renesas,r9a06g032-uart", "renesas,rzn1-uart";
 			reg = <0x40062000 0x400>;
 			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
 			reg-shift = <2>;
-- 
2.43.0


