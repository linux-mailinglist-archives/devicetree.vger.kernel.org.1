Return-Path: <devicetree+bounces-144435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F373FA2E112
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 23:07:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D6EF73A5920
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 22:07:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF1AC223714;
	Sun,  9 Feb 2025 22:07:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AuUJM7qL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9A71E231A
	for <devicetree@vger.kernel.org>; Sun,  9 Feb 2025 22:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739138830; cv=none; b=H9G0QLWb+Vh0eixP+6TL3rrUVpluT5+Z+qRxjODwdWmCsfZxj7YkIK3DmK4hYu6/Vb9NDGrXXL1HrosFznF9uqonLYpSJ3Sn6AQ78/7WNwjxfOV17ds3CtUk5g7Jbfn3dtHBWKJko/UEmvm6Zs6uXkAAGEbqB53UmU/9tlm67DE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739138830; c=relaxed/simple;
	bh=U/cG2ioMpkRe6fgM0d2HZF3wubSWOio5hF5rJPFhWhs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qGi9P14Rs5HGLdKUc+EZBqmcG/cTrTSwZyO7jI9GSTgpOMb6SHzOtaJLdcrw4d7h+BojRMHqeZbmiKSmY4ZC3QxWG/0uUltrlzdj3b0fsIlaRZDa73HpeMv7qYFcBorI2P4/dRfFTXZXK1Ln0vB94WBp2nVZaAWXQE8JkzzNWHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AuUJM7qL; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-38dcf8009f0so1010674f8f.2
        for <devicetree@vger.kernel.org>; Sun, 09 Feb 2025 14:07:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739138827; x=1739743627; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NYZnRiqYA/3AuJOPS8/sXM1oAhH2+rwBgg6UvDiejPo=;
        b=AuUJM7qLG/8umJKfKafkfwi/eVVRSPqh2c268N+a0iCvopCjH8mkoCi5J2M/pq6Pa+
         feYda8xcQz3pJwsx2Rkwb/PVLT4P6NJzOi9/7Y4H/q/sPDSiFUvY2Nkte4Rc9m3NJyDw
         b0JEysDy/BNP035whwj7bxDKHjR8MbuG8NswoSEII6YEb/xvUEeNQxVsSWxOj8I/RUD7
         7guE5kFydgJTwNIaKoijRYXVz6/Ytyz2hFEj9NSoukBEqXzL6rUBfT1Gxp43Mg8k+h6+
         /wjOus2965/FCApH2E5SsIlztlvKI+5N3cNeCxI07BOC6eh+nE2QThrM3wPE4Eh5FH0O
         ZayQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739138827; x=1739743627;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NYZnRiqYA/3AuJOPS8/sXM1oAhH2+rwBgg6UvDiejPo=;
        b=R40j2kxrF7JhvzuRVunCoE/z5km3ztpWcey70NaRvM+dHRnpuKi/d5jLmqFeb8HSTb
         EAkAMSJw2tvSL/snYoQGoX4myYLMsepl79lpu73F/CqWALFpnrEJ+yHmSYJCkV5nKn+D
         YRv1bve9fUxkcIaaUzlzkv2tMD9BTpRY2ghx+3rWLbEY/yHmbUD3HJw4tQEt3+1xVI5k
         IxvzNQkCueAM1HwQzlo7ZfhVpgty6k5vjRcK1EO2mhIAvH46ZxNTCB5HtbpujNzzUKmH
         agUUipplCcKrU6r1VH5xUtvcTFIQ5YDTMMvuDA+VZawnDKYjc3AbpqOzQ6WGioxHDZZW
         r00A==
X-Forwarded-Encrypted: i=1; AJvYcCUm+5I6pkAkd/qFDYeYyxnQEIJVf9oMIpoWKjQGAoEyhFN+ja+G3UKWubpuT5qs5D2ThxKPkwmj5rm6@vger.kernel.org
X-Gm-Message-State: AOJu0YwnVX5nLnhXCBdure5toFc//3ASd6hwBuezIL2sVsPGSkEo/oJw
	D5Ib2e6RLr8RUn812Q6px33TUVAEvaM6dRm8au3vqiKoQPder3g2
X-Gm-Gg: ASbGncsuEECf9YSNbv6e58V5VWVMV8Iz7iH+QTaxmHhLEpGm7DNHA6x7O8geMh1G7He
	C6KiLJXQGIruyxLV5nCfm3+bj34+QB/nSlHElpnE3ShCuZ0iNcFNzmJ2CvGB2ATNN6wuZHRz9H6
	2k5fJULUSJzbg2Bj0XZUleKJ3Eb5c5zLX0teM5LcBLmdX2FY7D7Et8iD2/G9tU8LVASRUBQpZSh
	o7iSjlB25Oc5DCb1Ln3loZp7wActr2UFmL2cT1XMjOoQHFbly0xLZxGs80i4Ym2T9AzZhtN+fuq
	rqkWCZx78ZqkfKyBIijhOt3zKgqw
X-Google-Smtp-Source: AGHT+IEyqgIT9wueUucI24s6gIrK7u3iqKOPSnxaAF3USSSpsBx/UxeCNnH9MSQjBJFg2UsKqEJFsQ==
X-Received: by 2002:a5d:6a85:0:b0:38d:c75e:b208 with SMTP id ffacd0b85a97d-38dc9375829mr6730578f8f.54.1739138827272;
        Sun, 09 Feb 2025 14:07:07 -0800 (PST)
Received: from giga-mm.. ([2a02:1210:861b:6f00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dbf2ed900sm10386544f8f.53.2025.02.09.14.07.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Feb 2025 14:07:06 -0800 (PST)
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: soc@lists.linux.dev
Cc: Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@outlook.com>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	Haylen Chu <heylenay@outlook.com>,
	linux-arm-kernel@lists.infradead.org,
	Arnd Bergmann <arnd@arndb.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 03/10] arm64: dts: sophgo: Add initial SG2000 SoC device tree
Date: Sun,  9 Feb 2025 23:06:28 +0100
Message-ID: <20250209220646.1090868-4-alexander.sverdlin@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250209220646.1090868-1-alexander.sverdlin@gmail.com>
References: <20250209220646.1090868-1-alexander.sverdlin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add initial device tree for the SG2000 SoC by SOPHGO (from ARM64 PoV).

Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
---
 arch/arm64/boot/dts/sophgo/sg2000.dtsi | 79 ++++++++++++++++++++++++++
 1 file changed, 79 insertions(+)
 create mode 100644 arch/arm64/boot/dts/sophgo/sg2000.dtsi

diff --git a/arch/arm64/boot/dts/sophgo/sg2000.dtsi b/arch/arm64/boot/dts/sophgo/sg2000.dtsi
new file mode 100644
index 000000000000..4e520486cbe5
--- /dev/null
+++ b/arch/arm64/boot/dts/sophgo/sg2000.dtsi
@@ -0,0 +1,79 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+#define SOC_PERIPHERAL_IRQ(nr)		GIC_SPI (nr)
+
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <riscv/sophgo/cv18xx-periph.dtsi>
+#include <riscv/sophgo/cv181x.dtsi>
+
+/ {
+	#address-cells = <1>;
+	#size-cells = <1>;
+	compatible = "sophgo,sg2000";
+	interrupt-parent = <&gic>;
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x80000000 0x20000000>;	/* 512MiB */
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu@0 {
+			compatible = "arm,cortex-a53";
+			device_type = "cpu";
+			reg = <0>;
+			i-cache-size = <32768>;
+			d-cache-size = <32768>;
+			next-level-cache = <&l2>;
+		};
+
+		l2: l2-cache {
+			compatible = "cache";
+			cache-level= <2>;
+			cache-size = <0x20000>;
+		};
+	};
+
+	pmu {
+		compatible = "arm,cortex-a53-pmu";
+		interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>;
+		always-on;
+		clock-frequency = <25000000>;
+	};
+
+	gic: interrupt-controller@1f01000 {
+		compatible = "arm,cortex-a15-gic";
+		interrupt-controller;
+		#interrupt-cells = <3>;
+		reg = <0x01f01000 0x1000>,
+		      <0x01f02000 0x2000>;
+	};
+
+	soc {
+		ranges;
+
+		pinctrl: pinctrl@3001000 {
+			compatible = "sophgo,sg2000-pinctrl";
+			reg = <0x03001000 0x1000>,
+			      <0x05027000 0x1000>;
+			reg-names = "sys", "rtc";
+		};
+	};
+};
+
+
+&clk {
+	compatible = "sophgo,sg2000-clk";
+};
-- 
2.48.1


