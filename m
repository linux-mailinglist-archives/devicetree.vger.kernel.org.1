Return-Path: <devicetree+bounces-256370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AAFD38D9C
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 11:12:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7B25930090DF
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 10:12:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 889C833554F;
	Sat, 17 Jan 2026 10:12:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=pigmoral.tech header.i=junhui.liu@pigmoral.tech header.b="CR3vHGfJ"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-op-o15.zoho.com (sender4-op-o15.zoho.com [136.143.188.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0323E337B8C;
	Sat, 17 Jan 2026 10:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.15
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768644748; cv=pass; b=KnGIthqo1NJcpJh/kiANVBTbamCAifL9zhPZrsrKqVlKi+kdUjc0aSSPVFKBRfMxDkeVHv7rfQ+HchiqaAQKqcyOojqhtHiwNhGfe43xp5imqPb0jWVs+uwJNkKWtdxxpjvQFjSdfZHglFD7OLguOdra+RAQkB+2FnFDSmMepuY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768644748; c=relaxed/simple;
	bh=mnEfOiDsekU+ozjh8AVIe/OSI+8mSgCzoGZ5luyPbUU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RpDoHFESJygNK/k6stYUUh0xmQDmsbhGsD8fzDuxZVLwpXP2HQVH/zrirND8bImFNIMSboXilsNIHA3p4Fr91l7XJjE2Ctz8gwYeSSEuxxOjosR++SW/auqi6uDuLeRa0gBvPbj0o16bHcIooQ+ScT8nGRYSklL5C4r0YlnjNzo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pigmoral.tech; spf=pass smtp.mailfrom=pigmoral.tech; dkim=pass (1024-bit key) header.d=pigmoral.tech header.i=junhui.liu@pigmoral.tech header.b=CR3vHGfJ; arc=pass smtp.client-ip=136.143.188.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pigmoral.tech
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pigmoral.tech
ARC-Seal: i=1; a=rsa-sha256; t=1768644730; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=fr4O3jaGjqlknDWAuQxUkHdGzM//V4HbpcXgj3Cpf0+QFrC5kLclHYuNzjZn9JGNGW7snD979yWnWW3IjJ1CTZLFg2b5r9s04HQ3t41O9Nu8OhO+Sj2XY7VIglHt8CBul67SmCc9XSfH4IkXN+n92vseWyvaKq4LuoMFQG22f2M=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1768644730; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=qurUIJs+/8KIElJEq28ticp43hIzkryGBqVBqkFlgKc=; 
	b=WZZ5s4yj3iMPmAlh6pWzK3lMZFsf2B+byIyaAcJophLLSIuW1nPOOB+u6gUopdvfUf4atpIr4+kxbl5dgkHQABPgn5KEwLIvl3ayFSYaSNfyxRDSNtJ2L2rZ62Ty5VDq7VL5tQQG1gtIxqcfGFtS4dWAuNtsltQ2TS7gZf7PCUk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=pigmoral.tech;
	spf=pass  smtp.mailfrom=junhui.liu@pigmoral.tech;
	dmarc=pass header.from=<junhui.liu@pigmoral.tech>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1768644730;
	s=zmail; d=pigmoral.tech; i=junhui.liu@pigmoral.tech;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=qurUIJs+/8KIElJEq28ticp43hIzkryGBqVBqkFlgKc=;
	b=CR3vHGfJ+OgT24X1F929j+1RMFrCpB/9U+vOjKBjj+AGSULOoywX06YWMfjcui7C
	pISE2SnhHXWEJ6JWQEcQGm9S9powmuap7guOfyhJRn7tP+3mbvgfuSym4jwxs2le+ku
	VeisBRnQLtvJW+3kn2FYBkV2N1qk0xnIDgG1QC+4=
Received: by mx.zohomail.com with SMTPS id 1768644729746867.9738763481296;
	Sat, 17 Jan 2026 02:12:09 -0800 (PST)
From: Junhui Liu <junhui.liu@pigmoral.tech>
Date: Sat, 17 Jan 2026 18:06:23 +0800
Subject: [PATCH 2/2] riscv: dts: canaan: add reset controller for K230
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260117-k230-reset-dt-v1-2-c8cbaef1e1ac@pigmoral.tech>
References: <20260117-k230-reset-dt-v1-0-c8cbaef1e1ac@pigmoral.tech>
In-Reply-To: <20260117-k230-reset-dt-v1-0-c8cbaef1e1ac@pigmoral.tech>
To: Philipp Zabel <p.zabel@pengutronix.de>, 
 Junhui Liu <junhui.liu@pigmoral.tech>, Conor Dooley <conor@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768644706; l=2061;
 i=junhui.liu@pigmoral.tech; s=20251228; h=from:subject:message-id;
 bh=mnEfOiDsekU+ozjh8AVIe/OSI+8mSgCzoGZ5luyPbUU=;
 b=45GSqxPO4pXgxxS0P4pAUqzI+StkiXMhkJ2hQhgndqzhTRRBYGmb88kzrKvepyr6glQ6rPGL/
 OISN6E0RVMoBtNzLWc0oj6/bqvba3olyZ2Mm6+e901rmxpzjNfRDoRC
X-Developer-Key: i=junhui.liu@pigmoral.tech; a=ed25519;
 pk=3vU0qIPJAH8blXmLyqBhKx+nLOjcLwwYhZXelEpw7h4=
X-ZohoMailClient: External

Add the reset controller node for the K230 SoC. Also add the reset
properties for all UART nodes.

Signed-off-by: Junhui Liu <junhui.liu@pigmoral.tech>
---
 arch/riscv/boot/dts/canaan/k230.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/riscv/boot/dts/canaan/k230.dtsi b/arch/riscv/boot/dts/canaan/k230.dtsi
index 5a1bf8a15abe..45041bd6df1a 100644
--- a/arch/riscv/boot/dts/canaan/k230.dtsi
+++ b/arch/riscv/boot/dts/canaan/k230.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/reset/canaan,k230-rst.h>
 #include "k230-pinctrl.h"
 
 /dts-v1/;
@@ -87,6 +88,12 @@ clint: timer@f04000000 {
 			interrupts-extended = <&cpu0_intc 3>, <&cpu0_intc 7>;
 		};
 
+		rst: reset-controller@91101000 {
+			compatible = "canaan,k230-rst";
+			reg = <0x0 0x91101000 0x0 0x1000>;
+			#reset-cells = <1>;
+		};
+
 		pinctrl: pinctrl@91105000 {
 			compatible = "canaan,k230-pinctrl";
 			reg = <0x0 0x91105000 0x0 0x100>;
@@ -99,6 +106,7 @@ uart0: serial@91400000 {
 			interrupts = <16 IRQ_TYPE_LEVEL_HIGH>;
 			reg-io-width = <4>;
 			reg-shift = <2>;
+			resets = <&rst RST_UART0>;
 			status = "disabled";
 		};
 
@@ -109,6 +117,7 @@ uart1: serial@91401000 {
 			interrupts = <17 IRQ_TYPE_LEVEL_HIGH>;
 			reg-io-width = <4>;
 			reg-shift = <2>;
+			resets = <&rst RST_UART1>;
 			status = "disabled";
 		};
 
@@ -119,6 +128,7 @@ uart2: serial@91402000 {
 			interrupts = <18 IRQ_TYPE_LEVEL_HIGH>;
 			reg-io-width = <4>;
 			reg-shift = <2>;
+			resets = <&rst RST_UART2>;
 			status = "disabled";
 		};
 
@@ -129,6 +139,7 @@ uart3: serial@91403000 {
 			interrupts = <19 IRQ_TYPE_LEVEL_HIGH>;
 			reg-io-width = <4>;
 			reg-shift = <2>;
+			resets = <&rst RST_UART3>;
 			status = "disabled";
 		};
 
@@ -139,6 +150,7 @@ uart4: serial@91404000 {
 			interrupts = <20 IRQ_TYPE_LEVEL_HIGH>;
 			reg-io-width = <4>;
 			reg-shift = <2>;
+			resets = <&rst RST_UART4>;
 			status = "disabled";
 		};
 	};

-- 
2.52.0


