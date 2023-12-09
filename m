Return-Path: <devicetree+bounces-23473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E5680B58E
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 18:31:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 41DCBB20D00
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 17:31:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 588901865B;
	Sat,  9 Dec 2023 17:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eXs0E3bM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE44F1706
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 09:30:58 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-54f4b31494fso3649277a12.1
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 09:30:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702143057; x=1702747857; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nz0+QTmuWJpjrxtMkvTR4cUE7CkcEwzXWpj+dRMFNm0=;
        b=eXs0E3bM0nbHfDr6A9YGnrBBlcVTET25/SgHQLBlmpdpXZ5JT0TUZ+Aof5U9fmrs6M
         oE/IXYloFB2NblPqNqg1K8C6Ze0RUZgDYNLXFK+4j1H2AsbaTFZYBaQLXMfuk4Jf8C/P
         JqSL7oa2IbiDChRFelZaT0Qu17F2e0tcFnSczhIY1Ncuo+K/7+xz7o324KI3zSMjEicT
         jxt3ub1n+6laZk6lLqKCBQqiguumPaAMqzGUXqDHtWrdc8Q3d7ANGeDyG1+avpPFMCzs
         EaYUFueKHECxSvk4+Vp2u8LLCR/inbfCNFWWgRnEkfvRnJgS3q022atk+bpeTSjWve5u
         +P3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702143057; x=1702747857;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nz0+QTmuWJpjrxtMkvTR4cUE7CkcEwzXWpj+dRMFNm0=;
        b=fHEry7BiFYkDc0oUE0j49DGTGVjdpFMP+dMXYR2//wV3e+oywN8v5VWV0tY3dtMkW3
         WdrV6Ars/Zs7J/AQSvgqsUGR0GhAHGW6gDD6Ba26KosctZebwg1qKxY3kCWB9SK6+Rfj
         aZ8XSUxQ3lbEB95sWUqNZcXCLMOnkzhxdE877DDPp6TrkVX6lF6/lw9qe+H2eN+SVGbi
         4SbPfzSa8WLoA4GwkHQDg629McqFL04Ya6y5UDyWKZBFl0Xo2WkZIRxVV2tYsqqbmsm4
         9r/IHKJXxTuj889TYBhd4sx/xGZyIfEXOq+6J28Y1eLhVXTyggyzQBFfCesj+0rkuQBW
         aAyA==
X-Gm-Message-State: AOJu0YyfZj8aNII4Egb8/Roy87aX2pz20WjytsTz1AwrBl38N+wg95x7
	GUELso2ALmkfQWDwH+miLMx96A==
X-Google-Smtp-Source: AGHT+IFUA1879uAgQjnkiufK8G7uVtyFCXn4vdxPJGq07KVbBpUZTzenvszTvQMf5dIP3RRgxsEDQA==
X-Received: by 2002:a50:8712:0:b0:54c:aa1c:205e with SMTP id i18-20020a508712000000b0054caa1c205emr1855782edb.17.1702143057414;
        Sat, 09 Dec 2023 09:30:57 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id m26-20020a50931a000000b0054ce5c00e74sm1926621eda.88.2023.12.09.09.30.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 09:30:57 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 08/15] arm64: dts: socfpga: stratix10: add unit address to soc node
Date: Sat,  9 Dec 2023 18:30:37 +0100
Message-Id: <20231209173044.257684-8-krzysztof.kozlowski@linaro.org>
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

The "soc" node has ranges with addresses, so it is should have unit
address  to fix dtc W=1 warnings like:

  socfpga_stratix10.dtsi:128.6-636.4: Warning (unit_address_vs_reg): /soc: node has a reg or ranges property, but no unit name

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Not tested.
---
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi           | 2 +-
 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts      | 2 +-
 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index 59075b958048..072fe20cfca0 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -144,7 +144,7 @@ qspi_clk: qspi-clk {
 		};
 	};
 
-	soc {
+	soc@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "simple-bus";
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
index 5578196a2c9a..26173f0b0051 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
@@ -51,7 +51,7 @@ ref_033v: regulator-v-ref {
 		regulator-max-microvolt = <330000>;
 	};
 
-	soc {
+	soc@0 {
 		eccmgr {
 			sdmmca-ecc@ff8c8c00 {
 				compatible = "altr,socfpga-s10-sdmmc-ecc",
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
index 4e73e6656d72..88e1afdb2583 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
@@ -51,7 +51,7 @@ ref_033v: regulator-v-ref {
 		regulator-max-microvolt = <330000>;
 	};
 
-	soc {
+	soc@0 {
 		eccmgr {
 			sdmmca-ecc@ff8c8c00 {
 				compatible = "altr,socfpga-s10-sdmmc-ecc",
-- 
2.34.1


