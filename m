Return-Path: <devicetree+bounces-225550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 45718BCEE39
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 03:48:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 76C5D4EA702
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 01:48:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0C8E1474CC;
	Sat, 11 Oct 2025 01:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Pu8Wtpo9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E18136349
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 01:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760147319; cv=none; b=os366rz4mb0b44RlJOleV9jGLxvYHdH50RfyuqUOUhv9x8LFomx4nvH19NEVuy3PMj5oG+NH2L5Mi9d5Pdm28llGjI0edgcmPP1HJPioa+1fU+8T1YkpxTJKRIpNOLG7u4XEGKs19pI3TVJwtqkhhldRqEo7kSsY2nzVfwcbv0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760147319; c=relaxed/simple;
	bh=e3eK14v974jiAnaQHTazc4ydB2CdZXKtN+1/6ZODI4g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YsrwF+H+P18x7VVWu52oM3FcAaO5OLfDbKpuA73oAlqBuxJWmbA3eSZKILVqxICJrJX1/DHXJlD5duth5f1aXcwd4chHD3KcHEDX+iTtopSPn6RIi8oF+x6vLCosIVcqyuPTl3uNkhOlMnGG5WLfS1l1aTnSHUUSrGa01QzUKvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Pu8Wtpo9; arc=none smtp.client-ip=209.85.219.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-79390b83c7dso25011806d6.1
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 18:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760147317; x=1760752117; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oejoysCyRvNZc8RubBVBc9+bEcKo+X21zvQu6th0wos=;
        b=Pu8Wtpo9JEhJkL5TDTpTYeZ+TlOp3JkViLE7UUnwigGnC/67Yl795bvJdHV3UcLJdG
         pC1SDlyM2lj0VfQPSjtN9BeeccomSKp6Um+3upV8ZLanaguYBEpl142gTOzAtvmPlzg6
         c0hFqSACvh3RenPkL4W24hCJzXXCq8kUQZfpioRIXzvAYzStpGN5UmvFnyEuZv4jI2va
         ANS8R8m5X4ccDiVfof0vXffTFg5dI5YGY8Jq/abqkpqzuNRoK6KQVjJnB9GV95yhqzia
         56f+GArKkTHnX9wLMRM36qKPTmkDX3hUqZftNuM3vNesmLW06DKiLeuPCnII1zR1Z3Ff
         lgfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760147317; x=1760752117;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oejoysCyRvNZc8RubBVBc9+bEcKo+X21zvQu6th0wos=;
        b=pddKnrVBl8jorMJEfevMKdjxawGmi8ckWqYv3UlxmlYx4Q3s+Cl6LI+8wRDYn8xBYK
         XmtKZjAhxWd8kU/ejcjBgMsOeXBR+TuMfxcHzlVuV0P7TaqBrqCptqxWzFZaIEoVla9R
         m2pjkFp55HFqH8Aqkd4eLJiQi+wOBxp6fVg1P4Mj6c0EOGsqjAMHrkM70JqseN1snW9Q
         zktt3tEijpKG1cqOYKIHwmUCenT3oxA8ow7ZtyO38RfLeVpMdcuZ/YaWP+UEAay1Z8gl
         AXdt4z8TVN65govl7K+3svWMK2shu4YC0JZShkw+6a/wTcNouOP8mAeZq9asHAJehSy3
         CYLA==
X-Forwarded-Encrypted: i=1; AJvYcCWeejwEMFdsQClLfEDGJOgroDVYap/BbKN4srbZSjzmpGnjSAJViuJc+j59AktVcrQE+yKxq9g3Blg0@vger.kernel.org
X-Gm-Message-State: AOJu0Yzwp4scKE8fd1CaLjroGTQ3owG3Vcn8UhmHgpybSkN5gW0xbi0O
	S2HezPrYnqVPMU9ez2/un0yqc/uge1f5JEtDq/Ay9rN1QXjwn4bIqilq
X-Gm-Gg: ASbGnct0qcsMx/u4ljDLac03xh0UVFZpY/WEM7m3hfaLyFQsKvXeWnjNZ4liA/jrsQx
	U9v2q5M89dx2/jVYOGWuDZ/VSzKK/NxKWj3xi17wmXLoVJ3np40nbMw6CXm5Ub4K3qP/o55r1U4
	i4FY8KAL51lBpIPfqzkLVK0ZMxYin7oc61zEbtP6IsKW2x+kK/PCFLsIH0hSPKEGtSLzj4t3NJQ
	wG30+EvWAnpi8T3qwCYZPYT9CCN8pjIkxLub4gAE7RorRvHPULmmX4puT541OlNjj1E8GHI7TSK
	vEesGUyjrUeNo+rzhu52jrPiv562K/8D0XrADkf3pc9kbICrMzvvDjkUglDiZ2U9nfP7f/S1LLd
	ovJVjXMrdyLbacGeIFZPKb8nX4dTNtQau3JNguyOJmWA04cBKywS/qfw76Sfac7rS5Xza0F/40m
	A5pCA85nVK8g==
X-Google-Smtp-Source: AGHT+IHiXqoUTtOihGm585f96hbBlUqNsgl2OSPoo3E8F3pjHpP/jA9kRegIoSfLchXG4S76xsmNEA==
X-Received: by 2002:a05:6214:2584:b0:7f4:e1a4:e2f with SMTP id 6a1803df08f44-87b2ef93367mr188420836d6.51.1760147316939;
        Fri, 10 Oct 2025 18:48:36 -0700 (PDT)
Received: from sleek (d-23-244-200-70.nh.cpe.atlanticbb.net. [23.244.200.70])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-87bc3574e71sm25978806d6.36.2025.10.10.18.48.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 18:48:36 -0700 (PDT)
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
Subject: [PATCH 2/3] arm64: dts: sophgo: add initial Milk-V Duo S board support
Date: Fri, 10 Oct 2025 21:48:10 -0400
Message-ID: <20251011014811.28521-3-josh.milas@gmail.com>
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

This adds initial arm64 support for the Milk-V Duo S board
[1] making it possible to boot Linux to the command line.

Link: https://milkv.io/duo-s [1]

Signed-off-by: Joshua Milas <josh.milas@gmail.com>
---
 arch/arm64/boot/dts/sophgo/Makefile           |   1 +
 .../boot/dts/sophgo/sg2000-milkv-duo-s.dts    | 110 ++++++++++++++++++
 2 files changed, 111 insertions(+)
 create mode 100644 arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts

diff --git a/arch/arm64/boot/dts/sophgo/Makefile b/arch/arm64/boot/dts/sophgo/Makefile
index 94f52cd7d994..68aace728223 100644
--- a/arch/arm64/boot/dts/sophgo/Makefile
+++ b/arch/arm64/boot/dts/sophgo/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_SOPHGO) += sg2000-milkv-duo-module-01-evb.dtb
+dtb-$(CONFIG_ARCH_SOPHGO) += sg2000-milkv-duo-s.dtb
diff --git a/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts b/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts
new file mode 100644
index 000000000000..e9afad6fd106
--- /dev/null
+++ b/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts
@@ -0,0 +1,110 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/pinctrl/pinctrl-sg2000.h>
+#include "sg2000.dtsi"
+
+/ {
+	model = "Milk-V Duo S";
+	compatible = "milkv,duo-s", "sophgo,sg2000";
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


