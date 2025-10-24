Return-Path: <devicetree+bounces-230590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5747EC0437C
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 05:06:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1BC394F46A1
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 03:06:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1652270EBA;
	Fri, 24 Oct 2025 03:06:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U4ErUz7c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3256226FD8E
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 03:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761275184; cv=none; b=tdHjN4xkeLQxmPRLxGr3Z6ycDaJsdjmi+l1Pc691mkA6nJRSk+PrI4n6JrDjYLuPHgpNMCULpAPZVTvZepqhKetikGaTtfRlWIIl3m3K2evDjh+jzjRx7Q5FsfbXzCIWw7xNzh+k9ZySLpQlqgPDDhBsZJyOiB6qTGcAP/i/sa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761275184; c=relaxed/simple;
	bh=Wr7LJ8peoDW/jo3pY5MeceHU7Si+wM9BWcaylcwONyU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QqAuY75zE+rN5RLatCijpyvnIca/zA+xRR1PTgs5jb/hlXH8wUhG9iIjHxxcVU8Bx2IWHSFr2X5mbHQ2V9B/2dkjXPMohtKslnHNNeKZGSkxBpnLJYXuUpGqxQTMT2/G3u5eYXrP3Z9uhU/bbh5j8hOHkk0ULxEmVQAhUCkkos4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U4ErUz7c; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-7833765433cso2033521b3a.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 20:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761275182; x=1761879982; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gK6/9/Nd88Q9gusSePNbcMpaVCV2+VwX5wGIqW+nXzI=;
        b=U4ErUz7cyL4GlXXUhtYD0xP0OsOYQDUf2Fxad1N3ybfYL5z/I+rKecKQv7FMo8xDcE
         Zv3O36mVPtlVr7aSt2HyMnFFySxgnZeYZHd0dtoG1VDmk8skcxkzytDQcibJe+BxS9hr
         dUvxDeO2Zsy4BOgOKkPiIZbqEGGW1WOn8gd8H8vHkkVadcHmJ1Vq2Q8j3BZjzHTQRwTq
         /9GHz1orllvX40wHJzStHGAMWB9KtC+HRVgU4P/ob7LJgPMRmWDZ2D29qgMKrDzGWaqq
         PUFfokThAHpeKOSDC/2lrepUZlxQYCc7O5hkmrU7UE6Bw1CkbNm7Cr22l7UBhJI/+Gc9
         Q76g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761275182; x=1761879982;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gK6/9/Nd88Q9gusSePNbcMpaVCV2+VwX5wGIqW+nXzI=;
        b=mT1o8nGQcOIWwBksRVpAVZriVY1O4VmQjn91HXMlzEsb/MAdeTI5XrBnGk8F+kkmdY
         27P6vFxmtdq3tfb2qa+Zfa7n5jcig+paXTcAf1s9vOApsfLQb7t/ATmTNmKZKNxC3squ
         fNNTSQhlCddz96OhypVbaHmdc8Egz//KOmUx7IutawnvVWGOrijWS6n0SF4Mn5yhPVak
         d1T5pAc/3sqC1kLYg7YlJPmtqvPZ12EQRnFoywt3kJerO58bDjrqg+WPYGvrLgyE2061
         5lpRikXWMCb8wszDFjYM+KW7AiB/EanVFiEUph17gNi8bsxxz51BKiGTP9Y4TznVo0A1
         eidQ==
X-Forwarded-Encrypted: i=1; AJvYcCXh+JPCuN72DmZWIljYyGNb4SMrRRjRA6ZWp3zmuSHLBbmBd6H5ntS7n7WykNjBnv6HzD8O+7pPQVqT@vger.kernel.org
X-Gm-Message-State: AOJu0YwXKEn/5NqUnrmMqJTqwBQHVAgVxuTxUZgZrUMKCObxnm6Q5iV/
	zOd1+8bp+6C4DNMTEJqTKxd+N6MOmBt+TIfeUB+su9CUYN682u9yke4Q
X-Gm-Gg: ASbGncvlM/y8Rie5wdW0/W7Pq8Tuc8x1GYCsU/6CvOQvn8nseoVZAv9lRgLFtAuitbC
	Lpj60aWLPfgx30MNu8WOacKqICQ4zwZ66Zj5kTyRa3Njo/ek32PRqisndMHZzq3OudRzWCH3ZHR
	ifGNONBLUD+p03HKcFaAvg8K/x+Ydgewgpm5LRh6ZDxKQ3IZjMagCFUVrjjv6ok7hvvSyRU+vvE
	B6VmIseJQau6JBkcuigq23C3c3NT+r9kA5vmRoo8m6oD48E/ZrxdVLDAVvrCdHSyWVU1mZGNVmo
	6DGrWxjlx9Ou6lHgixQCoY0FXZfLe9T8hoqfFJfcD7tF4EueG25jHQfO85AAp0LEIPoGn3VGRBz
	n/TXo3R7qNuJz9bSRJO2/hpGKfLrpgruKfQDLe3qZL+gXI3Lrk5sg1/l5BSmEIl0E5w1PMhcE/T
	peRbdDUGZHhQjTT1LVxinyJyedSvs=
X-Google-Smtp-Source: AGHT+IExJ6H9VPiKo4oFXupf4Hq1rvYGBs9i2gm80xYGGd1NKgjymGlzndYHMYAVYcF8kMC8+cCiAw==
X-Received: by 2002:a05:6a21:3287:b0:32d:80ab:6d12 with SMTP id adf61e73a8af0-334a86372dfmr37551806637.40.1761275182290;
        Thu, 23 Oct 2025 20:06:22 -0700 (PDT)
Received: from localhost.localdomain ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6cf4bb86cbsm3574172a12.7.2025.10.23.20.06.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 20:06:21 -0700 (PDT)
From: Longbin Li <looong.bin@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Yu Yuan <yu.yuan@sjtu.edu.cn>,
	Ze Huang <huangze@whut.edu.cn>
Cc: Longbin Li <looong.bin@gmail.com>,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v4 3/3] riscv: dts: sophgo: Add USB support for cv18xx
Date: Fri, 24 Oct 2025 11:05:16 +0800
Message-ID: <20251024030528.25511-4-looong.bin@gmail.com>
X-Mailer: git-send-email 2.51.1.dirty
In-Reply-To: <20251024030528.25511-1-looong.bin@gmail.com>
References: <20251024030528.25511-1-looong.bin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add USB controller node for cv18xx and enable it for Huashan Pi, milkv-duo.

Co-developed-by: Inochi Amaoto <inochiama@gmail.com>
Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
Signed-off-by: Longbin Li <looong.bin@gmail.com>
Tested-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
---
 arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts |  5 +++++
 arch/riscv/boot/dts/sophgo/cv180x.dtsi           | 16 ++++++++++++++++
 .../riscv/boot/dts/sophgo/cv1812h-huashan-pi.dts |  5 +++++
 .../boot/dts/sophgo/sg2002-licheerv-nano-b.dts   |  5 +++++
 4 files changed, 31 insertions(+)

diff --git a/arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts b/arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts
index 9feb520eaec4..0e6d79e6e3a4 100644
--- a/arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts
+++ b/arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts
@@ -100,3 +100,8 @@ &uart0 {
 	pinctrl-names = "default";
 	status = "okay";
 };
+
+&usb {
+	dr_mode = "host";
+	status = "okay";
+};
diff --git a/arch/riscv/boot/dts/sophgo/cv180x.dtsi b/arch/riscv/boot/dts/sophgo/cv180x.dtsi
index 42303acb2b39..1b2b1969a648 100644
--- a/arch/riscv/boot/dts/sophgo/cv180x.dtsi
+++ b/arch/riscv/boot/dts/sophgo/cv180x.dtsi
@@ -432,6 +432,22 @@ dmac: dma-controller@4330000 {
 			status = "disabled";
 		};

+		usb: usb@4340000 {
+			compatible = "sophgo,cv1800b-usb";
+			reg = <0x04340000 0x10000>;
+			clocks = <&clk CLK_AXI4_USB>, <&clk CLK_APB_USB>;
+			clock-names = "otg", "utmi";
+			g-np-tx-fifo-size = <32>;
+			g-rx-fifo-size = <536>;
+			g-tx-fifo-size = <768 512 512 384 128 128>;
+			interrupts = <SOC_PERIPHERAL_IRQ(14) IRQ_TYPE_LEVEL_HIGH>;
+			phys = <&usbphy>;
+			phy-names = "usb2-phy";
+			resets = <&rst RST_USB>;
+			reset-names = "dwc2";
+			status = "disabled";
+		};
+
 		rtc@5025000 {
 			compatible = "sophgo,cv1800b-rtc", "syscon";
 			reg = <0x5025000 0x2000>;
diff --git a/arch/riscv/boot/dts/sophgo/cv1812h-huashan-pi.dts b/arch/riscv/boot/dts/sophgo/cv1812h-huashan-pi.dts
index 4a5835fa9e96..aedf79f47407 100644
--- a/arch/riscv/boot/dts/sophgo/cv1812h-huashan-pi.dts
+++ b/arch/riscv/boot/dts/sophgo/cv1812h-huashan-pi.dts
@@ -86,3 +86,8 @@ &sdhci1 {
 &uart0 {
 	status = "okay";
 };
+
+&usb {
+	dr_mode = "host";
+	status = "okay";
+};
diff --git a/arch/riscv/boot/dts/sophgo/sg2002-licheerv-nano-b.dts b/arch/riscv/boot/dts/sophgo/sg2002-licheerv-nano-b.dts
index 86a712b953a5..b1853770d017 100644
--- a/arch/riscv/boot/dts/sophgo/sg2002-licheerv-nano-b.dts
+++ b/arch/riscv/boot/dts/sophgo/sg2002-licheerv-nano-b.dts
@@ -93,3 +93,8 @@ &uart0 {
 	pinctrl-names = "default";
 	status = "okay";
 };
+
+&usb {
+	dr_mode = "host";
+	status = "okay";
+};
--
2.51.0

