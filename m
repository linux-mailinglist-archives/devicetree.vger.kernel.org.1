Return-Path: <devicetree+bounces-201057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D6BF1B172B3
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 16:02:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A25D37ABC64
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 14:00:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FDEF2D2383;
	Thu, 31 Jul 2025 14:02:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V9SKa/hl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 808662D0292
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 14:01:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753970521; cv=none; b=sJkEkRrA871VuCIZr2faY2G3wqNrpeyugj6M21/C8xftZMcy2jmHsvKcNq+wLAsNt51w+zkgr69ZzVCUQ8oGDSwWkld3Z0AIR0LokF/GSNt76igvda82TaoVgIZJ3HP6UsMDCP5/PR6Bu8qpnliYzlE9IbD1UKZ6VqL5llWXKpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753970521; c=relaxed/simple;
	bh=Xpc1QjbDF2eak56qCWUaPd3vkbEYlZ3tB5wz0Bz9ZkI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=H5PzZpxcP61A9tCgapV8bJxnDWy9qC/IJZMRT1gWEvpCcyuvTz/yYYLLPBuaCU52jUQcYqtZYNuM2BOxyUERatH4Htk3Djs1JePKAEIhp0CDq4z6bB0iGyjR46Kc//v0d1enBAlurGpaptAr3lMKtbqbbwCaBUXhuQBloNGnVuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V9SKa/hl; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4560d176f97so10014035e9.0
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 07:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753970518; x=1754575318; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mwFsTsG6VVVIEYXelcVJDGOE+gmfaFKEIVGQh0yHCdM=;
        b=V9SKa/hlIsDL1ViL0YVCGKIiUyem15H1gHQzT536tFaRzf/IehvYATULlwzSj6Xq88
         51xsSHomuQeWD+B8/i26o3EPU5IMmc2YsKehJRV2Vxhp35sJMUY3iUCW/ZG0xZEMtlR6
         bKWJ/CBCv+5zK2BqktmVB2/hVyYy5CQ6Yi0D88mKafhVfeCLNuA+0R/MosxrP2RXYL6S
         RapgxQxss0scEq/7tXR6RXs+a70gSCqYOl73PgbCsVqmtbZp7z66J00kgTnKkxRIOe9i
         2Wb1X3QD149zAtbNXjFdtzI9vIbxHYGdzG58D6H3eY0GA51M3R+iHgoiUMbgWvpHkvWo
         aHfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753970518; x=1754575318;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mwFsTsG6VVVIEYXelcVJDGOE+gmfaFKEIVGQh0yHCdM=;
        b=vTKT4Ckx4yTl9t7ZgX9e7A1uXRGgx4+hSGsnVRGY97bVaw8CuITGpbtX58iXQ8N3av
         FnxSkACXN19RxXApWk0r6Y9BoSggi/7DxuM7QXzJ1wbv3hJeIKmIF4A1UCtg4IF39cQ2
         2G7Z4vHRdiuM0reJ4bEyRCKUMaWbdTVf5CRo94Z5x61zO2nF3HF7ZDgpUypWMIOLkv6K
         TL0+M8AFI2mqUbYfmorPgVUNFqrhDNrsEGQK5zETmKg4jBRBQZi1CXNy1nurl4rsG5+B
         VYZLYSG728q9t6eYw1nsq8PRLeUm2pUnDZFRcDgXU60xMMVjlkBD2fmKj6DnznV0FfWw
         cv3Q==
X-Forwarded-Encrypted: i=1; AJvYcCVJeNhWBL9F/V94AcXXnR3y6pc1Zvb+U+5b8feSgdrwxaKvsciMbP/viVHLJPoCsydN5mtmhi0IL/0q@vger.kernel.org
X-Gm-Message-State: AOJu0YwRvJtyqP5sSNmxYaixfbeC9r0eTa9bgeeC9ktgQBfkefdSC2re
	qXEcsnJhoEDj2jzXWh8yOcF8gyVUKFpC2FadLapabqaNTS31NEkaBUAtJi9lnGBsc+E=
X-Gm-Gg: ASbGncsPnbDRovl0TYGH5ki0PcRDwK5SLtKYXJ0mS9D7cHZ7gRY47frWJZu1xbu4pP8
	SwLr22orHu1lgH/RRMfi+o0Py6bXotKM/rrNcNx4/NNZ12Hl6FbXqj4S/Iz571EApu20gPr1uVO
	L5dcK5bqfwrfrqxi3vs3JkAit0z/48zvHb1ESKzOSIgALou4eHPq8Du0dJY491Se4wF5evhwZ2E
	svIYpczR26Jk8Bo8qFW0L43knIVaKhCqFmXZEgvXdSjZX6ooPsktjZuqPILFtyRrYA9ZDz18a7F
	UPINBadKiL05y5BsHXrAPMNh/Ia7n2Gaz7PggyH9eH3z8DWfJbadXZj+dduobjrgt+0wnnRS0+N
	U6BNUpQ4wcWhYRKhyzVEQnLErcQ+9Gh5qQ1yhDTKOdGOYGEu9
X-Google-Smtp-Source: AGHT+IE9qKRVnjaVEgn1UAlBxYnmTqRy8r5vlmAdzB8hFwkW2dkNsNPHqiJWxr1+s5Cb5BtT0A9yoA==
X-Received: by 2002:a05:600c:35c2:b0:456:1dd2:4e3a with SMTP id 5b1f17b1804b1-4589c2b7c59mr53270125e9.3.1753970517567;
        Thu, 31 Jul 2025 07:01:57 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4589ee57c18sm28121285e9.28.2025.07.31.07.01.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Jul 2025 07:01:57 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: mbrugger@suse.com,
	chester62515@gmail.com,
	ghennadi.procopciuc@oss.nxp.com,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de
Cc: s32@nxp.com,
	kernel@pengutronix.de,
	festevam@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>,
	Thomas Fossati <thomas.fossati@linaro.org>
Subject: [PATCH v2 1/8] arm64: dts: s32g2: Add the System Timer Module nodes
Date: Thu, 31 Jul 2025 16:01:34 +0200
Message-ID: <20250731140146.62960-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250731140146.62960-1-daniel.lezcano@linaro.org>
References: <20250731140146.62960-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The s32g2 has a STM module containing 8 timers. Each timer has a
dedicated interrupt and share the same clock.

Add the timers STM0->STM6 nodes for the s32g2 SoC. The STM7 node is
not added because it is slightly different and needs an extra property
which will be added later when supported by the driver.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
Cc: Thomas Fossati <thomas.fossati@linaro.org>
---
 arch/arm64/boot/dts/freescale/s32g2.dtsi | 63 ++++++++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/s32g2.dtsi b/arch/arm64/boot/dts/freescale/s32g2.dtsi
index ea1456d361a3..1783edb81350 100644
--- a/arch/arm64/boot/dts/freescale/s32g2.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32g2.dtsi
@@ -317,6 +317,42 @@ usdhc0-200mhz-grp4 {
 			};
 		};
 
+		stm0: timer@4011c000 {
+			compatible = "nxp,s32g2-stm";
+			reg = <0x4011c000 0x3000>;
+			interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		stm1: timer@40120000 {
+			compatible = "nxp,s32g2-stm";
+			reg = <0x40120000 0x3000>;
+			interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		stm2: timer@40124000 {
+			compatible = "nxp,s32g2-stm";
+			reg = <0x40124000 0x3000>;
+			interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		stm3: timer@40128000 {
+			compatible = "nxp,s32g2-stm";
+			reg = <0x40128000 0x3000>;
+			interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
 		edma0: dma-controller@40144000 {
 			compatible = "nxp,s32g2-edma";
 			reg = <0x40144000 0x24000>,
@@ -409,6 +445,33 @@ i2c2: i2c@401ec000 {
 			status = "disabled";
 		};
 
+		stm4: timer@4021c000 {
+			compatible = "nxp,s32g2-stm";
+			reg = <0x4021c000 0x3000>;
+			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+			clock-names = "counter", "module", "register";
+			interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		stm5: timer@40220000 {
+			compatible = "nxp,s32g2-stm";
+			reg = <0x40220000 0x3000>;
+			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+			clock-names = "counter", "module", "register";
+			interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		stm6: timer@40224000 {
+			compatible = "nxp,s32g2-stm";
+			reg = <0x40224000 0x3000>;
+			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+			clock-names = "counter", "module", "register";
+			interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
 		edma1: dma-controller@40244000 {
 			compatible = "nxp,s32g2-edma";
 			reg = <0x40244000 0x24000>,
-- 
2.43.0


