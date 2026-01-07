Return-Path: <devicetree+bounces-252188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCB7CFC17C
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 06:37:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 16F82307F20E
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 05:35:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C155279DC0;
	Wed,  7 Jan 2026 05:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JhLD3qdX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HPjMxqhv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2FE2272E56
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 05:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767764122; cv=none; b=Wgd629c10AQx67NPsLneW3m0Ud6NHKUrcE4t9TN/CyJLpSD3j4gDDRuxta0KoNPQCx3mapu6lw2hKqqOp4ZvW9Xfv4VTuzxDrvpuYNXXPGUaiHmhPeBw++p+wnVXXCIhzw7wIMJcuP0NIkBEldDT7qiHeomZvKCb9X75EfVIKuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767764122; c=relaxed/simple;
	bh=9W2NsSVmTo4gJlPLl2j5ebai9URurF5tiJWfhlce6+c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WXJ8aHOk7tLksvXuL1GT5Q/YRK8AY8G+XtyCKR2NkHKpG/omGyLc5HwYCmaJHdJ4XIyDK8OK0o7I9dvofDEshHHM2Cwg4RfZoOu2I9/iUlDREuoEETAt151KLyoZpBrNsBCKd0OwhDNewrUARl2hxrWLeiuswUS2Qv2qbG2MN+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JhLD3qdX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HPjMxqhv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6073F63Z4090722
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 05:35:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OYaGUyRAntpE32ASeSNSMZQhu3N6puPsfjF/mDaL9jg=; b=JhLD3qdXGr712sVq
	KU+j2MQytYGm+jjRR2UhxiIYEdfZnf9gkmLS9brIqsxcWAKoYHeFN6Q7xmG36PhU
	2sYishDNAY7AzW0dWt50A52ee4LxO1Z1q0p1+Fdgrl1RuBuqAyoroRXV6KYJBMlp
	2Jrh1KYJX1xkvJtCczBlDRrHW3T6jOcfiZIuc9+4lLH2f4o9z0Ym7vhfLmkutweZ
	SOHcsm+Vb6EuxoxgbHJrucDye/uwdL4bxbFe/8Ka3adtI9bFzkIubimmSerBAIXU
	hOK76Ci5dQlFudWQc3v3PcCjwN0gW0CeEa9JKrLFhefUYshz65cWI5/4RQcyuleo
	m4gjaw==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgyunb71p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 05:35:17 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2ac39bd5501so801802eec.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 21:35:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767764117; x=1768368917; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OYaGUyRAntpE32ASeSNSMZQhu3N6puPsfjF/mDaL9jg=;
        b=HPjMxqhvw932yF5/Enz6w0uA162cZgLyOALa/iGwwY/6EjbxTOqpXLIdfqW698eksX
         XUa3i9EIJpTs8Vilzvs1FVvNbQsWzkUesT7jiFZmvrwibWL2NGYpZrFJoqx49PPIJ+QI
         EK5lcOKRas8uCXrod2ccGWsHVbYm7s4Sq83qCGlYj9BJMHCOURDtf/7PJV7ZrC2fokF4
         +zbyQi5pX5R2HDzPJ0obDsHeiv53KXrjJ6QZZzUqlPVBg7tvwoOfCptnraqKdJu8jS5B
         Bm9JYKv1KumLyYxENgxbs60EVSPN5M9kS0nlA24ipS6jYlHuDIE+BD8AQYIDowqDjZ9l
         E8wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767764117; x=1768368917;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OYaGUyRAntpE32ASeSNSMZQhu3N6puPsfjF/mDaL9jg=;
        b=fg4uGaXtK4z8pQzNaV8NUwBOIregEtgDyJd/B6qQ+dlkOT1XBmAozLjZmHz3oL7N3i
         SfNoUPh+kc6vDkmaSTVAHsVMRbZtm/5Ki2Sicisr8xlRmrdCsHU8YRnG4223Lte1sg3K
         20H412Z8TI0LaFsR5VWR8ys9KKPzlzb784xSXl56qI3ADT5Bxlk30tF4+F/7EJOJj9jN
         hhmYzU6LnrXG7NmyQi1pdzkFbqE4IDf9CT7IXgHpDuEFKEGh1vO3b+0qJcNxxjB53eLN
         nNjX+OnLFnsJB1CSaMa9HWubYrWcPZOP+zo7o8pgAfu7ISubZNS4zkmohNjcqeUf7Y47
         evdg==
X-Forwarded-Encrypted: i=1; AJvYcCVU3zJvFdrCG57Ytr2kx0XlJtMGBgnCGV/ZtbmkX8r3MRVzLycX0sV2agD3yinAJcsOhNPtYpa0DVkt@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/AyiDyR2N2rWv8p6hKY0XlMTh1FUPCqQGW/LgbI69KAgM4BN3
	X1HHMT6/Z7772AsuckRA+c3YIdBHWXDwaR/UmjQo0SaB2B6SOdWNGSA5LrW9JOtgms2yGDUeJk9
	kKh6ZEHTTlwJUAxbJzkqDZOwgLo35oo+0fCztYoLJfgQjCbeyZNuDpUh9Y6LoSY0N
X-Gm-Gg: AY/fxX5RCpjHo63KOZC56kDE/ct8itDXG2itmJndX0k5ChR6wfknp1ePYl17jBcI1RS
	VViR9XdZDs96KAiVSiAffHu/ADtFJztvMvVY8knIbpHRUh2y9bxtAlH0zTHHVqxTZkZM+AJU1y/
	HAgqWQaARFzxyrplElvsfkJWfvRnXvH8seDzee9/ldCQa5wocLtwI8SLXdO835XYuXnXX6eQqwh
	Rx8gx/kT0p4wzOmnxp6NlC92ugvtvzvUWYfPRyLY24ZgL224wwgijbzNfz1hOsyQURFvT7jjuEu
	GPpbCaK5+5vOli7SfLV51pzuwjziTO98uUyW3o+2p3JCGuQx5CzWJbC2kbj4PDc9TxGd2u2XrS0
	Twy8iD3w40IcF0tgSCmMce967xee1qiN5uLrmaMw5qE/dwqWdcrMi
X-Received: by 2002:a05:7300:fb8d:b0:2ae:5ad4:718d with SMTP id 5a478bee46e88-2b17d34e7e7mr1126413eec.43.1767764116749;
        Tue, 06 Jan 2026 21:35:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF/vhyj5twvbB0ARPdtnmPPDYGnMLYL5dKclqCYFPR2zpqE4rY+bJs61YRAkDqiPcLMrxA58g==
X-Received: by 2002:a05:7300:fb8d:b0:2ae:5ad4:718d with SMTP id 5a478bee46e88-2b17d34e7e7mr1126381eec.43.1767764116136;
        Tue, 06 Jan 2026 21:35:16 -0800 (PST)
Received: from hu-luoj-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b170675076sm6120311eec.2.2026.01.06.21.35.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 21:35:15 -0800 (PST)
From: Luo Jie <jie.luo@oss.qualcomm.com>
Date: Tue, 06 Jan 2026 21:35:13 -0800
Subject: [PATCH v2 4/5] arm64: dts: ipq5332: Add CMN PLL node for
 networking hardware
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-qcom_ipq5332_cmnpll-v2-4-f9f7e4efbd79@oss.qualcomm.com>
References: <20260106-qcom_ipq5332_cmnpll-v2-0-f9f7e4efbd79@oss.qualcomm.com>
In-Reply-To: <20260106-qcom_ipq5332_cmnpll-v2-0-f9f7e4efbd79@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767764111; l=3732;
 i=jie.luo@oss.qualcomm.com; s=20251128; h=from:subject:message-id;
 bh=9W2NsSVmTo4gJlPLl2j5ebai9URurF5tiJWfhlce6+c=;
 b=f+5ZHncEk61jgbXJaROmkrIZSLv0dXLArLa2Gbro6E9EE5mCLBAt7WCLMQ/xLrBj+CbdZUHJF
 Q3ZyxP4s26iCAIjVC2Ymv9xgnEL1zjrt2rm3WuXBJEJBOwKICz59Mka
X-Developer-Key: i=jie.luo@oss.qualcomm.com; a=ed25519;
 pk=gSsYMDakxtd6UDFYDdA9y9yjIs5Etp5GK/3DoXWPyS0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA0MiBTYWx0ZWRfX6G7g9ypmRyey
 Wj35eAViAZlcPaOIZu71wO/MF/Lefg/n9SW07Qor8a4B1+0vJ+NOAf/2O3HjxDCiRWTcfcZIL70
 sPyQBnSwfcWq+T9xczevbZRUe2E3uYQcNZZZfbG99PMRpPYeAYqdZV2t9Q6faaEqx0OLyNVRNcE
 nVXcPs01t0sFfgoyAk/eNGqizDGV6wXCsOUxEYPRtd+LuX4NL7z3kPMeTEqI1EiJaLTuzMDUOyx
 IGv2ZCXkvxxufDD0QS143hCrbzW0Z8ljAPYgQNloh6AuTCnGBwq8+XUtAS6mDL4U7bUhdPmGR4c
 v3oHeDVtOiSakFM2kXinZU9++LDNRvL2jEcjebTv2RslTYcdqS4RlsPGHpu63OJWkZqb5ig9d95
 OGBe3MfW6ptQNNBw/qBWDDv4dlJSMceKf/2CF7hJIdQZNNzInCK0KPVbo1iLUZ/Yg4nJyl2ieWg
 nJnt1Sb9IglFx/SRgaQ==
X-Authority-Analysis: v=2.4 cv=YqIChoYX c=1 sm=1 tr=0 ts=695df095 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=5EDsn-5GhASIcmvYHhUA:9
 a=QEXdDO2ut3YA:10 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-GUID: 3pSLg5YODyLdFEsANYwrOv_-xiJ-C6RM
X-Proofpoint-ORIG-GUID: 3pSLg5YODyLdFEsANYwrOv_-xiJ-C6RM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 impostorscore=0 bulkscore=0 malwarescore=0
 phishscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070042

Add the CMN PLL node required for networking hardware operation on IPQ5332.
The CMN PLL core runs at 6 GHz on this platform, differing from others like
IPQ9574.

Configure the reference clock path where XO (48 MHz or 96 MHz) routes
through the WiFi block's multiplier/divider to provide a stable 48 MHz
reference to the CMN PLL.
.XO (48 MHZ or 96 MHZ)-->WiFi (multiplier/divider)--> 48 MHZ to CMN PLL.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Luo Jie <jie.luo@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/ipq5332-rdp-common.dtsi | 17 +++++++++++++-
 arch/arm64/boot/dts/qcom/ipq5332.dtsi            | 28 +++++++++++++++++++++++-
 2 files changed, 43 insertions(+), 2 deletions(-)

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
index 45fc512a3bab..2b1d098f9424 100644
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
@@ -167,6 +179,20 @@ usbphy0: phy@7b000 {
 			status = "disabled";
 		};
 
+		cmn_pll: clock-controller@9b000 {
+			compatible = "qcom,ipq5332-cmn-pll";
+			reg = <0x0009b000 0x800>;
+			clocks = <&ref_48mhz_clk>,
+				 <&gcc GCC_CMN_12GPLL_AHB_CLK>,
+				 <&gcc GCC_CMN_12GPLL_SYS_CLK>;
+			clock-names = "ref",
+				      "ahb",
+				      "sys";
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


