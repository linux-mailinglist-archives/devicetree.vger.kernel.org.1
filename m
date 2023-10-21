Return-Path: <devicetree+bounces-10540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5647D1CF5
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 14:01:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DF487B20C86
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 12:01:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5C5EDF70;
	Sat, 21 Oct 2023 12:00:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZjR7dRrq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDBDE63D
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 12:00:54 +0000 (UTC)
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63B0E1BF;
	Sat, 21 Oct 2023 05:00:53 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-5079f6efd64so2343864e87.2;
        Sat, 21 Oct 2023 05:00:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697889651; x=1698494451; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vvfuAIs+N0VfStAnN/yHcweGC8s+zomr1tqlKshcvzI=;
        b=ZjR7dRrqYwVq/7feKO3vT8/VcMpbzLioLhuxPGO4P+oF9OiJf4jmroCIG+6GT/yUR2
         nh6UrOjGAzPGuX7ye+WDPNMa4v2NNdk6QGDR34gOLwYCgEb9D3ydrEYE0/XKk05DT7MP
         A3Yo0wkfyCIGxdzM4AUHVCiwjjmoYPys91yQGDydCLPElH0Zgd8OjwYAj4rFl/eZ9mB4
         45a+lJjkxcAQNT/JyGbyt1XhzWdiuKki0z649+dZE36WX1+ewcN0ihZcXu/+nlIFEgx3
         SjDF2pf5gknHMmfXRGjmQvJDoLszH75KXry7NRLIx7Vch32otPxo7uyOlaVRusmEixNe
         hSzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697889651; x=1698494451;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vvfuAIs+N0VfStAnN/yHcweGC8s+zomr1tqlKshcvzI=;
        b=ZOGFSHh2TX+MtQMN4J4EwpDX9fclJIh3Wg/ZEjRaxhST1ZB6TGkUb1Qy0OxlaIFYRK
         yxEeFnXW3Ez8a+GRle+oB9t4BMiJS+5gweSLQoMACuyLJCO1OVRNre0zzGUZsk2DgKgr
         IvKMFycjcIvX1Bf3QrC2JPmICHrRh87X9jfCpzzpSkUFnbcrt+89UmwT/ZdqsGwmvLBx
         jj46MexcJhcAOLUf4BragcgAHEmAGres9PZM3yGO2PNqYM+DelLho4TXNjYdYwTi9GYp
         XjMXCy5NAqsyEA6Q7CljbEhdJMdZqpxwYIin5btIRZXQ+g63EFZTl+0CuiSqp526rngB
         GElA==
X-Gm-Message-State: AOJu0Yzgal6drF+OrzLubHqFoWygYOHB2+uFH44QPrBMJRat3JRMSVhF
	UOoQds2FUlWZgf7Bc5qKdTidx/xDettLww==
X-Google-Smtp-Source: AGHT+IFZRmpwYCRwzR+86RcT2kciPcJgRwRYPgUGZPvdcUhECLyPLqshsfTlUY7Gva+6yZPcysotTg==
X-Received: by 2002:a19:670d:0:b0:507:a04c:76e8 with SMTP id b13-20020a19670d000000b00507a04c76e8mr3110544lfc.46.1697889651252;
        Sat, 21 Oct 2023 05:00:51 -0700 (PDT)
Received: from fedora.. (cpezg-94-253-130-100-cbl.xnet.hr. [94.253.130.100])
        by smtp.googlemail.com with ESMTPSA id t16-20020a508d50000000b00522828d438csm3425738edt.7.2023.10.21.05.00.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Oct 2023 05:00:50 -0700 (PDT)
From: Robert Marko <robimarko@gmail.com>
To: agross@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Robert Marko <robimarko@gmail.com>
Subject: [PATCH v2] arm64: dts: qcom: ipq6018: use CPUFreq NVMEM
Date: Sat, 21 Oct 2023 14:00:07 +0200
Message-ID: <20231021120048.231239-1-robimarko@gmail.com>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

IPQ6018 comes in multiple SKU-s and some of them dont support all of the
OPP-s that are current set, so lets utilize CPUFreq NVMEM to allow only
supported OPP-s based on the SoC dynamically.

As an example, IPQ6018 is generaly rated at 1.8GHz but some silicon only
goes up to 1.5GHz and is marked as such via an eFuse.

Signed-off-by: Robert Marko <robimarko@gmail.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Changes in v2:
* Use minus instead of underscore for fuse node name
* Drop driver code as it was merged

 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index 9aec89d5e095b..eebd8afe0efce 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -96,42 +96,49 @@ scm {
 	};
 
 	cpu_opp_table: opp-table-cpu {
-		compatible = "operating-points-v2";
+		compatible = "operating-points-v2-kryo-cpu";
+		nvmem-cells = <&cpu_speed_bin>;
 		opp-shared;
 
 		opp-864000000 {
 			opp-hz = /bits/ 64 <864000000>;
 			opp-microvolt = <725000>;
+			opp-supported-hw = <0xf>;
 			clock-latency-ns = <200000>;
 		};
 
 		opp-1056000000 {
 			opp-hz = /bits/ 64 <1056000000>;
 			opp-microvolt = <787500>;
+			opp-supported-hw = <0xf>;
 			clock-latency-ns = <200000>;
 		};
 
 		opp-1320000000 {
 			opp-hz = /bits/ 64 <1320000000>;
 			opp-microvolt = <862500>;
+			opp-supported-hw = <0x3>;
 			clock-latency-ns = <200000>;
 		};
 
 		opp-1440000000 {
 			opp-hz = /bits/ 64 <1440000000>;
 			opp-microvolt = <925000>;
+			opp-supported-hw = <0x3>;
 			clock-latency-ns = <200000>;
 		};
 
 		opp-1608000000 {
 			opp-hz = /bits/ 64 <1608000000>;
 			opp-microvolt = <987500>;
+			opp-supported-hw = <0x1>;
 			clock-latency-ns = <200000>;
 		};
 
 		opp-1800000000 {
 			opp-hz = /bits/ 64 <1800000000>;
 			opp-microvolt = <1062500>;
+			opp-supported-hw = <0x1>;
 			clock-latency-ns = <200000>;
 		};
 	};
@@ -314,6 +321,11 @@ qfprom: efuse@a4000 {
 			reg = <0x0 0x000a4000 0x0 0x2000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
+
+			cpu_speed_bin: cpu-speed-bin@135 {
+				reg = <0x135 0x1>;
+				bits = <7 1>;
+			};
 		};
 
 		prng: qrng@e3000 {
-- 
2.41.0


