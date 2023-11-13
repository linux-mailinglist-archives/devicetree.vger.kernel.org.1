Return-Path: <devicetree+bounces-15245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B573A7E93E9
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 02:09:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 44318B208A7
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 01:09:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E8554409;
	Mon, 13 Nov 2023 01:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6rb0rqu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C664402
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 01:09:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D71F6C433CB;
	Mon, 13 Nov 2023 01:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699837765;
	bh=eM8d9IMh9iQd7b2YIyNC18c8crry0l3aFLLjrqGpruk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=O6rb0rquzaUvuzBIP52vidXntbBi5DW5ejXnhTOUBEwOPsf8ZN5BMhV8fR34Lx5ip
	 5JkRoKxH41DzNnuB04HSXBupca8B9hDi3cuIWjczJ6JO9eqnJQjjOKE5KAzpzEwBuE
	 qdHLIdJgAiRr+fpy1YJIYi9/snJYD66jf17nwDh0zfWscpB/IrbuKSo0AqTX7GqCZT
	 mfPbCUYYhl+XKOfLGNeWMs4YC3IJh+ZPH27RTLGyIJ+H5rB9fan8N90hM5IGyKWU45
	 0DiSQnTobBsQZMU/NTDqwFFaG2iLFJdsVVA/szOWrjgG6Jx3PKHUTUWDkV7EpLP0Tu
	 epwC5wBII2xww==
From: Jisheng Zhang <jszhang@kernel.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Chao Wei <chao.wei@sophgo.com>,
	Chen Wang <unicorn_wang@outlook.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH 1/2] riscv: dts: cv1800b: add pinctrl node for cv1800b
Date: Mon, 13 Nov 2023 08:57:01 +0800
Message-Id: <20231113005702.2467-2-jszhang@kernel.org>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20231113005702.2467-1-jszhang@kernel.org>
References: <20231113005702.2467-1-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the reset device tree node to cv1800b SoC reusing the
pinctrl-single driver.

Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
---
 arch/riscv/boot/dts/sophgo/cv-pinctrl.h | 19 +++++++++++++++++++
 arch/riscv/boot/dts/sophgo/cv1800b.dtsi | 10 ++++++++++
 2 files changed, 29 insertions(+)
 create mode 100644 arch/riscv/boot/dts/sophgo/cv-pinctrl.h

diff --git a/arch/riscv/boot/dts/sophgo/cv-pinctrl.h b/arch/riscv/boot/dts/sophgo/cv-pinctrl.h
new file mode 100644
index 000000000000..ed78b6fb3142
--- /dev/null
+++ b/arch/riscv/boot/dts/sophgo/cv-pinctrl.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * This header provides constants for pinctrl bindings for Sophgo CV* SoC.
+ *
+ * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
+ */
+#ifndef _DTS_RISCV_SOPHGO_CV_PINCTRL_H
+#define _DTS_RISCV_SOPHGO_CV_PINCTRL_H
+
+#define MUX_M0		0
+#define MUX_M1		1
+#define MUX_M2		2
+#define MUX_M3		3
+#define MUX_M4		4
+#define MUX_M5		5
+#define MUX_M6		6
+#define MUX_M7		7
+
+#endif
diff --git a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
index e04df04a91c0..7a44d8e8672b 100644
--- a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
+++ b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
@@ -6,6 +6,8 @@
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/reset/sophgo,cv1800b-reset.h>
 
+#include "cv-pinctrl.h"
+
 / {
 	compatible = "sophgo,cv1800b";
 	#address-cells = <1>;
@@ -55,6 +57,14 @@ soc {
 		dma-noncoherent;
 		ranges;
 
+		pinctrl0: pinctrl@3001000 {
+			compatible = "pinctrl-single";
+			reg = <0x3001000 0x130>;
+			#pinctrl-cells = <1>;
+			pinctrl-single,register-width = <32>;
+			pinctrl-single,function-mask = <0x00000007>;
+		};
+
 		rst: reset-controller@3003000 {
 			compatible = "sophgo,cv1800b-reset";
 			reg = <0x03003000 0x1000>;
-- 
2.42.0


