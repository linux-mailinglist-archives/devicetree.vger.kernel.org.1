Return-Path: <devicetree+bounces-242916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A0EC9144E
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 09:44:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2B75B4E8B89
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 08:40:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 239862F1FED;
	Fri, 28 Nov 2025 08:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UWwI3FP7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZHwfu7K9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A3502EDD4F
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 08:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764319223; cv=none; b=J9uemYXkz0bnbVsERKJsvAGpDbwMOsfCKA2p3kMl1MiTSqYoFiO5oRtUGH0iEPH7DkBMNQjZSWQB16X+LkBF/RPBb1uHRkeHrjsmhkiygYasGBCi97wu7vr6yHkZoMYB383A3BgJ9ScVxIpVg2teYy1Ok7B4EZrTZJFwUbivSN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764319223; c=relaxed/simple;
	bh=mHpQjm5uMmfeEHbk5vJMLsRIY4uxmat4DEorvQQusFE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sxSGBsLr63hno+yCYFPcGKw7VadiryHuckoTVqRwpCujR8Rk3d1hHzYrtTSDS06171upuzTdJ+KIqBPsvQ9bxLtq05hS/FifIgn/nChL3QePQ5eyawAQ4El3eFluAT7ABtTE8qVmyxV2k3JZiVYrOesqKxotjJM/ePoTL247Wxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UWwI3FP7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZHwfu7K9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AS8P9BP2986616
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 08:40:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sbUUlgRufuKSd9dQJoEl+MOxWhuytzzVGG1c8fE2gdA=; b=UWwI3FP7CRH6XuO9
	pZ6YYicdVegm6K8MourD3ToprorT2tuA5Qdsupnhne1728310vF3NLhAuN0o/ju7
	xHV+1K94zpyYQNYC1XvuGqnhAFMz6ZtS0qtma8Btrx5o1+SC6c0xZGI5DdLIDFRN
	WxiHSGc2F2uTv+QRTj0TO7+9yoFI1d71PL17yzlEU3UvmdT90Hr3rQ/tRX9zLDEJ
	Uy06GFxMB072T4oLyoiNRI2QdHTe+AMsCuGqzv1qZNps5p5B6c5gvhtmFfcdYgUE
	wXaz3Qm0gOcUnbcoSMEqJma8cV57VbFX1AEjDVnpdSUYPcUrbg5e4kBahVLmG0/U
	nmESKQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4apmvxjn2y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 08:40:18 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-bc09a8454b9so4478167a12.1
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 00:40:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764319218; x=1764924018; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sbUUlgRufuKSd9dQJoEl+MOxWhuytzzVGG1c8fE2gdA=;
        b=ZHwfu7K9T+adTe/gE09Babfy2amqHi1NSXjQaBAJh/ub3oVNk5Pky1xmgyaE7d4Wgb
         Zrp0c4CblmJz0wKXTSNLh3/48v7jaFoGmgu4/wNjI/cMnttXEhFbJt6eRJ/Og64j5i4m
         Pcf7idYd5iAkyc41FrMntBnq7KlWTYXYUvHXvp2+6CU8GxTN+ZwiQkl/NjcG+fSxGRsd
         3t9bIjtZNzrOW21DG6nlZAkKOeOm6dwN6RHkiz7hK47xB9fo/ERw6/iAZlJkuPDiqRxC
         4yMHyKbwwaePAzLrLKDd6SLggJ8hRoLvn5/N7rw2vhiE2CnERlcXPL6i4dYpaQnejKWD
         Jb3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764319218; x=1764924018;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sbUUlgRufuKSd9dQJoEl+MOxWhuytzzVGG1c8fE2gdA=;
        b=uQC1S8lHXOLEnjV/egjLxdCsz2R7vPj3ZsADKrrY/ZQsQoUT2jk7A7ffbZPYHHc8Sw
         ss3Dv7Jrys4+gtnAfULzHScSboNHh1asy1hNquLn5dTvrDn8i8Vnr9Zr5zTBnH87iTFQ
         bKJXd9X/oOu7oAG18OiD3Akh/OWqm6neWSAQQv0Kw1uhouaaB+7/L3QaKDvozlL16c6Y
         imH1juzCNpR7E75MsLI8B8xKKVvpfJgkhy6UuwQJ0tKo8C8fWJ3BZI1kxNm3JeAfeyOL
         l6iO4Q/En28M99YRFFcaQBK7P790+DflGfbSIXUxZ06617EQs+2/6XOoDrz8nxOQ2MHp
         5ihA==
X-Forwarded-Encrypted: i=1; AJvYcCXcSSrDP5dwlIpAxpJnPwsEMHNUgacZRuY2aT1L+gaVJ06k6mbg80IQBUN87jLXgD3SQO1L+X0RZL2f@vger.kernel.org
X-Gm-Message-State: AOJu0YwW1p5yugfU73mPkjCVc56rZZtqnvaDLuQr6SRVdU4nUB8jt5Cy
	SsI84DQg+Up27dLXxEVaUli0Rs++yr4VWmq9E+AsxVryKR1oZHLSF6Juj8qRKlBE0b5sDYcBIQ2
	kxRGtyc+8Otbw5MSK8xYLKxEmjkuSpFYg4VGcqJwyDAJMdjE+3fDb16Y+rBMw3Jv/
X-Gm-Gg: ASbGncvVDs8ZjrNmhbV9uAIEgbJ9QoG7MeR3+wS0t7pRZeEvTyZ7CxPQwsXrQwBAaV3
	vz5zHpysV6c9ulqPcqntZ8zfBHH/9Kv4sd8QVyNLEJkBxAAzIVQXKqfdFPUzWnXARrTBfub6DZt
	4S9qTtqmq0rP3g1aDjlLHebry2UBUywllxM4zMOKQNlHtVA1YEEdZnexMwuIvQjKUidm1bGwBu3
	X05c0XRAbMzBObvDoW0ssVPXx3aWeji6oIu30Q5knL4HaJrwiq3+JkUAxRfzp1DlvxJMVYsJXT/
	HxZhXW/eQiaQyH7cvcFcEjc64AXrNNr3LhLhnEbpa1CTSfESsMlwXTqt3UFxNrYFjpzJH8K4VGI
	DTQdt+GoL8RVj+oOgnSYvz3BjwwFMaULTrt/kJpo4n5mhzZwoqonC
X-Received: by 2002:a05:7301:d184:b0:2a4:4e40:7c89 with SMTP id 5a478bee46e88-2a941894af7mr7110155eec.28.1764319217627;
        Fri, 28 Nov 2025 00:40:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEjlgqRAodQoGQOMiFl/70mlHJjYMJNxnpthX0kdToaKfnukIdPW/wAxAYUSFDXORf4oHV5iA==
X-Received: by 2002:a05:7301:d184:b0:2a4:4e40:7c89 with SMTP id 5a478bee46e88-2a941894af7mr7110137eec.28.1764319217100;
        Fri, 28 Nov 2025 00:40:17 -0800 (PST)
Received: from hu-luoj-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a96560986csm21895872eec.2.2025.11.28.00.40.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Nov 2025 00:40:16 -0800 (PST)
From: Luo Jie <jie.luo@oss.qualcomm.com>
Date: Fri, 28 Nov 2025 00:40:14 -0800
Subject: [PATCH 4/5] arm64: dts: ipq5332: Add CMN PLL node for networking
 hardware
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251128-qcom_ipq5332_cmnpll-v1-4-55127ba85613@oss.qualcomm.com>
References: <20251128-qcom_ipq5332_cmnpll-v1-0-55127ba85613@oss.qualcomm.com>
In-Reply-To: <20251128-qcom_ipq5332_cmnpll-v1-0-55127ba85613@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Luo Jie <quic_luoj@quicinc.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        quic_kkumarcs@quicinc.com, quic_linchen@quicinc.com,
        quic_leiwei@quicinc.com, quic_pavir@quicinc.com,
        quic_suruchia@quicinc.com, Luo Jie <jie.luo@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764319213; l=3649;
 i=jie.luo@oss.qualcomm.com; s=20251128; h=from:subject:message-id;
 bh=mHpQjm5uMmfeEHbk5vJMLsRIY4uxmat4DEorvQQusFE=;
 b=alOeJlji49VxisJ33KpFYSBQdtUeCb7wvWxz/Q5ZV8GYGQMzuaT3AqC48hjOMZocwAPm62ajz
 255qQs/YFB7BJqMcVD56jWTlO1cb/v3WrARHPVkKgtyeMm45yiZCEkq
X-Developer-Key: i=jie.luo@oss.qualcomm.com; a=ed25519;
 pk=gSsYMDakxtd6UDFYDdA9y9yjIs5Etp5GK/3DoXWPyS0=
X-Authority-Analysis: v=2.4 cv=Vtguwu2n c=1 sm=1 tr=0 ts=69295ff2 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=5EDsn-5GhASIcmvYHhUA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: Kyi0CFc4WEp4KLwAW-yIzTTzM0KF4yCl
X-Proofpoint-ORIG-GUID: Kyi0CFc4WEp4KLwAW-yIzTTzM0KF4yCl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI4MDA2MiBTYWx0ZWRfXxXE1pEEVLyfr
 AWE0hKIRoENiD7Un8NmezqOTD+kgtGpEy8EJzVaroRSriUVCfR52qNE2NqWYL6BssdIWq8NzkZS
 f3auTG2rRnhXgw65fjgH6lWk12Uu0ghEVertkdxI7fYzceWTEttYvlfKh3btfOplcIwaiOAW9Hj
 yAZIrZrqn3wnekz1TbPj7QrQBWaY3za8+tvzwT2wiaDVV7uvVNSlFivRZZqNDeQ2uvwPw6uaD+8
 +JdL32otnnAtaAc1FDE0LPxrHwcu1VPmt43nQRb7aDNH1jw6OlgHrP7FYoj4JyEkcJ8XI4CVBMM
 PLC4Ea0NJ5y5W83G9zRbntnERRYkkJuVb/1CPxSDaRd1Mfljq1bIQoKsz+6UTpsVFwhpvtX6JPc
 gejwWUn1Cic3tT2c9bOY3aiHvQYRoA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_03,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 phishscore=0 adultscore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1011 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511280062

Add the CMN PLL node required for networking hardware operation on IPQ5332.
The CMN PLL core runs at 6 GHz on this platform, differing from others like
IPQ9574.

Configure the reference clock path where XO (48 MHz or 96 MHz) routes
through the WiFi block's multiplier/divider to provide a stable 48 MHz
reference to the CMN PLL.
.XO (48 MHZ or 96 MHZ)-->WiFi (multiplier/divider)--> 48 MHZ to CMN PLL.

Signed-off-by: Luo Jie <jie.luo@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/ipq5332-rdp-common.dtsi | 17 +++++++++++++++-
 arch/arm64/boot/dts/qcom/ipq5332.dtsi            | 26 +++++++++++++++++++++++-
 2 files changed, 41 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5332-rdp-common.dtsi b/arch/arm64/boot/dts/qcom/ipq5332-rdp-common.dtsi
index b37ae7749083..471024ee1ddd 100644
--- a/arch/arm64/boot/dts/qcom/ipq5332-rdp-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5332-rdp-common.dtsi
@@ -2,7 +2,7 @@
 /*
  * IPQ5332 RDP board common device tree source
  *
- * Copyright (c) 2022-2023 Qualcomm Innovation Center, Inc. All rights reserved.
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
  */
 
 /dts-v1/;
@@ -55,6 +55,17 @@ &blsp1_uart0 {
 	status = "okay";
 };
 
+/*
+ * The bootstrap pins for the board select the XO clock frequency that
+ * supports 48 MHZ or 96 MHZ. This setting automatically enables the
+ * right dividers, to ensure the reference clock output from WiFi to
+ * the CMN PLL is 48 MHZ.
+ */
+&ref_48mhz_clk {
+	clock-div = <1>;
+	clock-mult = <1>;
+};
+
 &sleep_clk {
 	clock-frequency = <32000>;
 };
@@ -63,6 +74,10 @@ &xo_board {
 	clock-frequency = <24000000>;
 };
 
+&xo_clk {
+	clock-frequency = <48000000>;
+};
+
 /* PINCTRL */
 &tlmm {
 	gpio_keys_default: gpio-keys-default-state {
diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
index 45fc512a3bab..0707e053f35d 100644
--- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
@@ -2,10 +2,11 @@
 /*
  * IPQ5332 device tree source
  *
- * Copyright (c) 2022-2023 Qualcomm Innovation Center, Inc. All rights reserved.
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
  */
 
 #include <dt-bindings/clock/qcom,apss-ipq.h>
+#include <dt-bindings/clock/qcom,ipq5332-cmn-pll.h>
 #include <dt-bindings/clock/qcom,ipq5332-gcc.h>
 #include <dt-bindings/interconnect/qcom,ipq5332.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
@@ -16,6 +17,12 @@ / {
 	#size-cells = <2>;
 
 	clocks {
+		ref_48mhz_clk: ref-48mhz-clk {
+			compatible = "fixed-factor-clock";
+			clocks = <&xo_clk>;
+			#clock-cells = <0>;
+		};
+
 		sleep_clk: sleep-clk {
 			compatible = "fixed-clock";
 			#clock-cells = <0>;
@@ -25,6 +32,11 @@ xo_board: xo-board-clk {
 			compatible = "fixed-clock";
 			#clock-cells = <0>;
 		};
+
+		xo_clk: xo-clk {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+		};
 	};
 
 	cpus {
@@ -167,6 +179,18 @@ usbphy0: phy@7b000 {
 			status = "disabled";
 		};
 
+		cmn_pll: clock-controller@9b000 {
+			compatible = "qcom,ipq5332-cmn-pll";
+			reg = <0x0009b000 0x800>;
+			clocks = <&ref_48mhz_clk>,
+				 <&gcc GCC_CMN_12GPLL_AHB_CLK>,
+				 <&gcc GCC_CMN_12GPLL_SYS_CLK>;
+			clock-names = "ref", "ahb", "sys";
+			#clock-cells = <1>;
+			assigned-clocks = <&cmn_pll IPQ5332_CMN_PLL_CLK>;
+			assigned-clock-rates-u64 = /bits/ 64 <6000000000>;
+		};
+
 		qfprom: efuse@a4000 {
 			compatible = "qcom,ipq5332-qfprom", "qcom,qfprom";
 			reg = <0x000a4000 0x721>;

-- 
2.43.0


