Return-Path: <devicetree+bounces-23471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B5980B58C
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 18:31:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A4443B20D69
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 17:31:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8246518E34;
	Sat,  9 Dec 2023 17:30:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A78nVxSR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FD05D54
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 09:30:56 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-54cd8f5bb5cso4156048a12.1
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 09:30:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702143055; x=1702747855; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cMHzi0J79reXquigIs38sIEcotTqteBVvUo2J65iMZM=;
        b=A78nVxSRJY/3eK/SifI0hdtaASHaEBFb89W9j73t4n7qigQV/vT0YxNPXrGKWWnJ1e
         SIz0KEEVgX6zbYrGl2yakAGwpdfLyzpU4/EGPkwJL9a6by0Zcdh7+9hlWZCXXYZlNxC+
         DU1I9n9NCXXbt2Rp8MRIf7c/QQD1w6AgFEo6XlAlbd7Ydv4QGcx14ojDBxyUwjvV8KI6
         wPb2XnAFmAQBu3luG6vGavLMj6/IUOzT58wBU8VNinyq2vMVgbgABz1Ew4OrqAGLQlZZ
         kGGBLz4bgyJiaRcBJBQg3FVZ2HubdxeMDL/GCm71je1PUMInieB8eJepKWrRFk4kEj08
         vM+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702143055; x=1702747855;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cMHzi0J79reXquigIs38sIEcotTqteBVvUo2J65iMZM=;
        b=sbVgnY8YuiA+MBUBWq23kP2iOk1WEfyHs8m1G1fuW4XXcUi4NqX95/tf5gKOFNG9Kx
         lOc9zM8lDeVcbtnpoa5wxATTnH+gxtfxR8ijZYM2B4zAQoH2EBl1aP8AlC5i6q3lzHE8
         UDBYReG3AywAlD41o6hNmY6YacdKcnHDQ3ENNcwA4kOlwKUkpIupEYHP8sVe9a0HP8p1
         aqzRE6DyQgENuEuKE/VkD5h52o3D8spn8c42RWWWRFeg3bDiPF/6ddQJ1SrWAreoMQcX
         /u6iEqi1+o8NWE5Envp0uTiNrs1LM1lOJteOg1/pHDcwq2n+KF6LMaoCski0zTbF9lwG
         tJ+Q==
X-Gm-Message-State: AOJu0YzMFEifkV7Z/vBd22uBXZ9tzMXQkfa6B60ypzHms/TtdaYpJmC+
	D5j9l0HFc5FfBjvc1uz2oHk9P2+OtI/YzufT6w0=
X-Google-Smtp-Source: AGHT+IHP7Nxeq+soWYuyj+nZVx+aEdcacAFdOlSGp9+y5qd/rGVytp8afEnLPtCa/qSID3T/mLj1HQ==
X-Received: by 2002:a50:d759:0:b0:54f:4882:cb2a with SMTP id i25-20020a50d759000000b0054f4882cb2amr1022643edj.41.1702143054733;
        Sat, 09 Dec 2023 09:30:54 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id m26-20020a50931a000000b0054ce5c00e74sm1926621eda.88.2023.12.09.09.30.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 09:30:54 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 06/15] arm64: dts: socfpga: stratix10: move FPGA region out of soc node
Date: Sat,  9 Dec 2023 18:30:35 +0100
Message-Id: <20231209173044.257684-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231209173044.257684-1-krzysztof.kozlowski@linaro.org>
References: <20231209173044.257684-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "soc" node is supposed to have only MMIO children, so move the FPGA
region node to top level to fix dtc W=1 warnings like:

  socfpga_stratix10.dtsi:136.20-141.5: Warning (simple_bus_reg): /soc@0/base_fpga_region: missing or empty reg/ranges property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Not tested
---
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index 1a743787fef6..ec086ffcc4a2 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -59,6 +59,13 @@ cpu3: cpu@3 {
 		};
 	};
 
+	fpga-region {
+		compatible = "fpga-region";
+		#address-cells = <0x2>;
+		#size-cells = <0x2>;
+		fpga-mgr = <&fpga_mgr>;
+	};
+
 	pmu {
 		compatible = "arm,armv8-pmuv3";
 		interrupts = <0 170 4>,
@@ -133,13 +140,6 @@ soc {
 		interrupt-parent = <&intc>;
 		ranges = <0 0 0 0xffffffff>;
 
-		base_fpga_region {
-			#address-cells = <0x2>;
-			#size-cells = <0x2>;
-			compatible = "fpga-region";
-			fpga-mgr = <&fpga_mgr>;
-		};
-
 		clkmgr: clock-controller@ffd10000 {
 			compatible = "intel,stratix10-clkmgr";
 			reg = <0xffd10000 0x1000>;
-- 
2.34.1


