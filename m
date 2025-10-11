Return-Path: <devicetree+bounces-225551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C54DBCEE3A
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 03:48:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 85E304EB384
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 01:48:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DCF2149C7B;
	Sat, 11 Oct 2025 01:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z3MI+iK6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B907145355
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 01:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760147321; cv=none; b=o9uthpKd075xgBpRJyYlJKclgBGS5ziYvC/kl58Ucx/7hgRMrYsijWbF4ahdV3Z8Gvf4UelzdVSyUOwxBylIJ89OSe9TGwsqKXV3PbgZY6pQ4eaoAkUDpee57Y23V7F04ar1tvW9N2BhcI3Fz/89Dj9TFRQhI1Fi3u3Lkj7ckUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760147321; c=relaxed/simple;
	bh=LnPNf0xfrIsyQ/vYDHJ9VebAUvNWmPNttCPTwfhjIhE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tDukGmtSTL2X440nan/Ny0hoG6gZigUfZE7eVHUKMirsRcA2nfYMq49VG46fv6YdEhXOwVuPpXqn09vMLl///bDnokhVwmEW8tx11K40AV3dpZA+zvDZ3rMRsc4E+3JytdcoQqm12eO8Y50pPOasfBVCrcmGDbNJXPnOLR9/6G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z3MI+iK6; arc=none smtp.client-ip=209.85.219.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-78febbe521cso28747766d6.2
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 18:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760147318; x=1760752118; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RIx1itjFNeOuO9y5R/ZOGp9p0NGiRIG2Jwe8FwimfPU=;
        b=Z3MI+iK6RdvhgO9ZzTjMEGRvNoKOre1btiNfUZaMg7QcbSzcqHgYQe4h05bR08+OGn
         9d5x1TXeyKtt/uciq0h73E4G5o/w+TrPtIYBgHW8HY2xFzFTBSiMSwx/peAsXCWETD+w
         2kB9ydHzEJKsCc/6DIVRiNDBiO1b9dYQQcKAzjh64Tb0u+BYmKZVvLax9YS5W1qpBbu8
         KdURnqqP7s4g9BzMeJDA0yS3zaNDwCyLtmc91LRXF+nY4mm0JGryJRCubidgsKN+xa2E
         jrktxDyBQ9bbf9te2lTzpl7RhZ44f/jQfKecU3FIfqhBAoZhsmOpdgpTbsVA8OsvvZXe
         nY6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760147318; x=1760752118;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RIx1itjFNeOuO9y5R/ZOGp9p0NGiRIG2Jwe8FwimfPU=;
        b=tYIgR8SR5H4oby/H9YhDJIq5sW4zlSHcajdjHfejyQYZjjc9D/krZtMmDUxuzNNELR
         t7S0Bty4XuyzhoQqNyuYiwIKs1OQnyB9Qbdo5uHIJTraiP8V9TB1++Q615kGYiKsWO5E
         9zwc7zhzCv/kes0uOn2qpTUIs9oIGctXohj12mHxtOvZ21tVtqcZumTLOQDZlCfDxRj6
         jzxK2G3kxLWOKkElOK23Ud5+/NoExeudfS/VteGDAL44C43bPBc/V0eMBH2y7q28hDw5
         nrqxKmdF5lyl8mqaa9vcglEA3CisclIYUAjWtl0NfrXpjFYmrXWKqxKMmT/6Lu/uDW5+
         4KCA==
X-Forwarded-Encrypted: i=1; AJvYcCWwR6PLKgXH1NEp2++GTQ9Cx0VSnmOyVSrSdCsd0FzG2Wxxpc71pc4DFaPn0CgjyA+jK68VtHtzotFc@vger.kernel.org
X-Gm-Message-State: AOJu0YyLrWMpHGeltwF80bre0su+syevytxSb6a7oAeW3rfCLULFzpbh
	RmybUmZOUg0fvRfzxdN3/R9q5hZ+Ha0sPHB6gUcJam/SFJT/9m1XAf8C
X-Gm-Gg: ASbGnctUg8dibDhaXW96n8kK1Ybk/kgA5XNZIMzEXYEhvWLgv8ENWejTuWxE5PAalZN
	AvYGjsAjStn9karc5s0yxAkaguro49kYeLJ6l8MI65NeAiMy+l1QVS2ePqSgM9Y9peLQ9b1fMw3
	nqxREBUf/NCI2OiMFi70reyFqr5HySiAw1DekZzakMXLJYxnXb53x4o4wpIFK5vk9thdVD6kSZR
	JzAoIgdB/QojwqJTwgQu6H1vBvQz5uR/XLIfET40sYiVJmuYsLulVc6hq399DAnkORJuv2oNDXw
	SegLuUzDSrZd08trOu480Kl4EI4xobRejJJpi0t6edXQ9XqxJjNgvLZVyZaX2rqMcFDUYsLBhzO
	isXmIZE6/iBfFTGcWWNoMt2iUF6qG3Sf54St7+C+LOD04vTcWtTMRvJvZR8Yb1Aga+vWYd09ZNH
	ft7MvyUdWu7A==
X-Google-Smtp-Source: AGHT+IHsJX5xKPE9NIlN342PbeK4r3FqiE68JLAtPVlnnBojsMsq6v3jWNk3iQRbqde8hfvSUe7K1Q==
X-Received: by 2002:a05:6214:4114:b0:78f:145b:56cc with SMTP id 6a1803df08f44-87b2ef4e9admr185883456d6.51.1760147318377;
        Fri, 10 Oct 2025 18:48:38 -0700 (PDT)
Received: from sleek (d-23-244-200-70.nh.cpe.atlanticbb.net. [23.244.200.70])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-87bc3574e71sm25978806d6.36.2025.10.10.18.48.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 18:48:38 -0700 (PDT)
From: Joshua Milas <josh.milas@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	unicorn_wang@outlook.com,
	inochiama@gmail.com,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	alexander.sverdlin@gmail.com,
	rabenda.cn@gmail.com,
	thomas.bonnefille@bootlin.com,
	chao.wei@sophgo.com,
	liujingqi@lanxincomputing.com
Cc: josh.milas@gmail.com,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-riscv@lists.infradead.org
Subject: [PATCH 3/3] riscv64: dts: sophgo: add initial Milk-V Duo S board support
Date: Fri, 10 Oct 2025 21:48:11 -0400
Message-ID: <20251011014811.28521-4-josh.milas@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251011014811.28521-1-josh.milas@gmail.com>
References: <20251011014811.28521-1-josh.milas@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds initial riscv support for the Milk-V Duo S board
[1] making it possible to boot Linux to the command line.

Link: https://milkv.io/duo-s [1]

Signed-off-by: Joshua Milas <josh.milas@gmail.com>
---
 arch/riscv/boot/dts/sophgo/Makefile           |   1 +
 .../boot/dts/sophgo/cv1812h-milkv-duo-s.dts   | 110 ++++++++++++++++++
 2 files changed, 111 insertions(+)
 create mode 100644 arch/riscv/boot/dts/sophgo/cv1812h-milkv-duo-s.dts

diff --git a/arch/riscv/boot/dts/sophgo/Makefile b/arch/riscv/boot/dts/sophgo/Makefile
index 6f65526d4193..49d6ae4724ea 100644
--- a/arch/riscv/boot/dts/sophgo/Makefile
+++ b/arch/riscv/boot/dts/sophgo/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_SOPHGO) += cv1800b-milkv-duo.dtb
 dtb-$(CONFIG_ARCH_SOPHGO) += cv1812h-huashan-pi.dtb
+dtb-$(CONFIG_ARCH_SOPHGO) += cv1812h-milkv-duo-s.dtb
 dtb-$(CONFIG_ARCH_SOPHGO) += sg2002-licheerv-nano-b.dtb
 dtb-$(CONFIG_ARCH_SOPHGO) += sg2042-milkv-pioneer.dtb
 dtb-$(CONFIG_ARCH_SOPHGO) += sg2042-evb-v1.dtb
diff --git a/arch/riscv/boot/dts/sophgo/cv1812h-milkv-duo-s.dts b/arch/riscv/boot/dts/sophgo/cv1812h-milkv-duo-s.dts
new file mode 100644
index 000000000000..2ab46ec1fc0e
--- /dev/null
+++ b/arch/riscv/boot/dts/sophgo/cv1812h-milkv-duo-s.dts
@@ -0,0 +1,110 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/pinctrl/pinctrl-cv1812h.h>
+#include "cv1812h.dtsi"
+
+/ {
+	model = "Milk-V Duo S";
+	compatible = "milkv,duo-s", "sophgo,cv1812h";
+
+	aliases {
+		mmc0 = &sdhci0;
+		serial0 = &uart0;
+		serial1 = &uart1;
+		serial2 = &uart2;
+		serial3 = &uart3;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&osc {
+	clock-frequency = <25000000>;
+};
+
+&dmac {
+	status = "okay";
+};
+
+&emmc {
+	bus-width = <4>;
+	no-1-8-v;
+	cap-mmc-hw-reset;
+	no-sd;
+	no-sdio;
+	non-removable;
+	status = "okay";
+};
+
+&gmac0 {
+	status = "okay";
+};
+
+&i2c1 {
+	status = "okay";
+};
+
+&i2c2 {
+	status = "okay";
+};
+
+&i2c3 {
+	status = "okay";
+};
+
+&i2c4 {
+	status = "okay";
+};
+
+&mdio {
+	status = "okay";
+};
+
+&saradc {
+	status = "okay";
+};
+
+&sdhci0 {
+	bus-width = <4>;
+	no-1-8-v;
+	disable-wp;
+	status = "okay";
+};
+
+&sdhci1 {
+	bus-width = <4>;
+	cap-sdio-irq;
+	no-mmc;
+	no-sd;
+	non-removable;
+	status = "okay";
+};
+
+&spi0 {
+	status = "okay";
+};
+
+&spi3 {
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&uart1 {
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&uart3 {
+	status = "okay";
+};
+
-- 
2.51.0


