Return-Path: <devicetree+bounces-6472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF76D7BB786
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 14:27:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F053B1C209AA
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 12:27:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20BCD1D52B;
	Fri,  6 Oct 2023 12:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9Zm4Xpq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0250A1CF8F
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 12:27:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3600EC116A7;
	Fri,  6 Oct 2023 12:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696595233;
	bh=RtdMEoqo8nayEQ4k8BfxK/6NPIxdjeCli2iRVgA15Qk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=l9Zm4XpqcRXxtoKBJ04/OP2WV4jBlgdVOmS+pJWo0bE4lEilHOgidYWUHIXLM6bHS
	 IzwlrGHDYYQg4jsC7LSgmgWQ/WnB4i62BF9L8muVDrWTRqsURMvOM2oJvCnWRXJ18j
	 T/ukWIQtJ/2wYXWptjfh1DluHgU7a51xfTo6oyEbnLnE/zEYEi6MRcDtKKK3NU6Pmf
	 Smm4b938sKDqReI6BKx5sOe+bwcR6RHz30msy9DW9c0slSSSq1qgmYnBnqUT7Nk8SC
	 MLIr3hBjTtrQb3W8HSoLrwcKKDQIsYQoy7HzmeArK3UUxC5lKEeUuC7UVOky8jqkC7
	 /eCzsLbTMzZAA==
From: Jisheng Zhang <jszhang@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Inochi Amaoto <inochiama@outlook.com>
Subject: [PATCH v2 5/5] riscv: dts: sophgo: add Milk-V Duo board device tree
Date: Fri,  6 Oct 2023 20:14:49 +0800
Message-Id: <20231006121449.721-6-jszhang@kernel.org>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20231006121449.721-1-jszhang@kernel.org>
References: <20231006121449.721-1-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Milk-V Duo[1] board is an embedded development platform based on the
CV1800B chip. Add minimal device tree files for the development board.

Support basic uart drivers, so supports booting to a basic shell.

Link: https://milkv.io/duo [1]
Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
---
 arch/riscv/boot/dts/sophgo/Makefile           |  2 +-
 .../boot/dts/sophgo/cv1800b-milkv-duo.dts     | 38 +++++++++++++++++++
 2 files changed, 39 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts

diff --git a/arch/riscv/boot/dts/sophgo/Makefile b/arch/riscv/boot/dts/sophgo/Makefile
index 5a471b19df22..3fb65512c631 100644
--- a/arch/riscv/boot/dts/sophgo/Makefile
+++ b/arch/riscv/boot/dts/sophgo/Makefile
@@ -1,3 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0
+dtb-$(CONFIG_ARCH_SOPHGO) += cv1800b-milkv-duo.dtb
 dtb-$(CONFIG_ARCH_SOPHGO) += sg2042-milkv-pioneer.dtb
-
diff --git a/arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts b/arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts
new file mode 100644
index 000000000000..3af9e34b3bc7
--- /dev/null
+++ b/arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
+ */
+
+/dts-v1/;
+
+#include "cv1800b.dtsi"
+
+/ {
+	model = "Milk-V Duo";
+	compatible = "milkv,duo", "sophgo,cv1800b";
+
+	aliases {
+		serial0 = &uart0;
+		serial1 = &uart1;
+		serial2 = &uart2;
+		serial3 = &uart3;
+		serial4 = &uart4;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x80000000 0x3f40000>;
+	};
+};
+
+&osc {
+	clock-frequency = <25000000>;
+};
+
+&uart0 {
+	status = "okay";
+};
-- 
2.40.1


