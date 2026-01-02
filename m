Return-Path: <devicetree+bounces-251031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 17446CEE308
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 11:46:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7E3173001820
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 10:46:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36AC42C0307;
	Fri,  2 Jan 2026 10:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NKwyQmfX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VHtAUDau"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F7241FA272
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 10:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767350809; cv=none; b=X6xQmy3j0fWsvIPDUkMfcasMG0NFyVh4wvj1ozyFD3u1QTuQslIFuPjwmIjeaflYCD29ctDQt+0GCfA9uFzyuWKDENMuOZLSWXb2Z0icOIgYUNAGOGnrdN7cFgKwYUP1559CMCGfXMNT6gPS6L2D+gYZA8WPnWB/KzUdg6Df9ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767350809; c=relaxed/simple;
	bh=byPxs775M0FHSMTS76KUhtXgUqOesoA1Ysp2r8axggA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Xx9PNzSbuJaBGjM2VBAhmk8ERUJRuWaY1jQDx0P3KW1SwKU34RMnGVv0aKlHeMBClZ6who0i61DKKi0SJvsT9lmP/Y8UvM+dXsLgQKANjWodHNPqZSyejaCoV0x/ji5SAFWiATWyiwFsxj5Ov+p0ELh04aWguZ0GDd4smXgZ7JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NKwyQmfX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VHtAUDau; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6029W2ii3961097
	for <devicetree@vger.kernel.org>; Fri, 2 Jan 2026 10:46:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=SLA6HXwUWOI4lMxWcZhs1YMxjq0ODiNmjOg
	Jy0ClejA=; b=NKwyQmfXTxnOJ3LZcFC0Zmj0GXXW9WbvD/nMFbxgeLFBpCHTxSJ
	2241eAjvpwNIo7sJEEFGYise87qVJeAw4u/haJkLTnBvF5Q22rnIq1JINcTDgzdK
	9ICvBpcI1t32g6/sSvnGPgNThuzF39wo+7BdyoKxNl9eH1K7SLJr28H5Q8HLwx7f
	FonlNFqmTylpEyTEv8lfjeaz5NWhUjRr/j3hdnHu6YzgbgbluQx1xmpxXebPZBuJ
	uGJdB+97pGfHXE0Dqrsy1NTxqOsU7EQ1Up9giPlQruV8/SGe74z7HK583Y/D/9sn
	YEP0mgUdvofFG+cV5qqhu5cN4NsRe/ZRRhA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bd77v3856-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 10:46:46 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a07fa318fdso222891495ad.0
        for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 02:46:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767350805; x=1767955605; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SLA6HXwUWOI4lMxWcZhs1YMxjq0ODiNmjOgJy0ClejA=;
        b=VHtAUDauKBw/WeCQM1Bc1/NvTLYGswvgEysJB3n37uWRvMh5XIkZLcBAgWRpJGBCh4
         ESrtEJmpdb4OIQQC72H6lX8xGcgdMSYg5PTVFX5bSoLG9ZHv+PRWEABpjMq8Pukxt4xY
         NN120BuWTLn8I7hp8qUMrl1HqXL0CqyEudHzHmM0QurZhaWAxHGlG3LjCj1l67MQkn78
         2AA+G9NXGiBLyQFdVcVPM3UTqggaHecosfqWRm/y8cfAvVtTye567/qwVY4Y1PeZZiuh
         v9vsfKnxRyQQJpXJurHlZOXPxwd8+xoTyuxwKXCCZ90/gEkndl+oTezNfwspamLrnYKb
         A7rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767350805; x=1767955605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SLA6HXwUWOI4lMxWcZhs1YMxjq0ODiNmjOgJy0ClejA=;
        b=k9CVII1bZoULaEYDuI1kRXtHO5qcUOYZqKpvAkS1ys84StRDYlq4HB+vaNrfoKeJF3
         hAwQMmMQti1JUDl+pCFT7yFCOBge8RnU8DGE/xzutlZsNVcVSlB5AF4S26MDiztRQLXV
         1u/F3iGazGNpNoME8ixbumjE93y+BCCudFVkMggRVa34NdIVaMUoyqr/JDDx6xsJSjVU
         a1x8/+dNLx4fqsCmobT+nMskypOsBpf9AdegLd29QG1p8AlMIP3BJFTZSnLtScEKF5Dm
         MG3QU85lHeXNtc3unyPWMxr9keT2YZmkEptcMcbfCcWHEp+Auj3IIX/f8bN12XY1JX1r
         XHiw==
X-Forwarded-Encrypted: i=1; AJvYcCXDhRiJAX2IGi9UpvcQ2Nh3YO7ZqWM04lt6H9OvzTvtk9MxCQbrVE4rtqaDmCPb5QWk7BMGiWH5ulPT@vger.kernel.org
X-Gm-Message-State: AOJu0YwCvt//o3kNBEwAXfsZvDBedTxEoug6+4pfYQO5yuCbQJUBNozH
	8nPg+shZ+sU1s6OkTO/+n10M/k3GkqYvow7de6WlstgAhR7uRYp2/1bEh0sDcuTH9kEAFyz0y3r
	yR+7cW4t8Z5fag20Kl5VuCsXV/IRa4FK72OU3ZPa2S15R6I4CkeJrGIrCcGrhV/pR
X-Gm-Gg: AY/fxX7jawhsycm/jqeVBXyH28DPohQHi97rjgBE7UsRKdbl3PDHpAqCu2CuEdPmnuw
	UiHfAD730ZfsnNdGSYQUmQwnxkjKGL5oY0YDNYP8Q+2jfwS5eT+uIFkvRRJLR4aTEHETvN0x+Cz
	yR2kSMtNFyjF5/rHl+svJFIPW3yyKCLoedJc/edcieE9IMHd8hjw/TeXnLCV8SkBOJkBgAnAQpC
	VFlsTi7zHXriyXbD8cdBwvGFvNu0YjYAeLD65v7m9yjdd82iMw8JB8RnC4pl3suEb9gkRqBfDBV
	3WFfe5ir9kz1i44+zIpDA8ZDaiDdmyv9o5jm+1o5Ae5Si+L+AsupD7Yboxg5t62tsMLdWJLyjrB
	spkDzOjSNFlhdeueODumUoe5U/h7X8vZSnp16fZZ7X/7iL9skmoSlRo8ld2lratFmviSQEqNUXa
	ilf83yGeR0fyp2SZweHpyBCdrbf1EV6cT7pqetyxQ=
X-Received: by 2002:a17:903:41c8:b0:2a0:ba6d:d101 with SMTP id d9443c01a7336-2a2f24248b5mr413724815ad.21.1767350805453;
        Fri, 02 Jan 2026 02:46:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IECEYPGc0NcGdquQIVLMrksakbr/aT+KQfboO/IFLgYUQTem9B3/aGPXFKvvjXMTxG+8gT4Wg==
X-Received: by 2002:a17:903:41c8:b0:2a0:ba6d:d101 with SMTP id d9443c01a7336-2a2f24248b5mr413724655ad.21.1767350804958;
        Fri, 02 Jan 2026 02:46:44 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d4cbb7sm377997115ad.59.2026.01.02.02.46.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jan 2026 02:46:44 -0800 (PST)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: sumit.garg@kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH] arm64: dts: qcom: ipq9574: Enable eMMC variant
Date: Fri,  2 Jan 2026 16:16:38 +0530
Message-Id: <20260102104638.3802715-1-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: XO0f_1S_34dGqHkxuiQpMBAlqLkpDjiD
X-Proofpoint-ORIG-GUID: XO0f_1S_34dGqHkxuiQpMBAlqLkpDjiD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTAyMDA5NCBTYWx0ZWRfXzxSiokEPCcdM
 1JP3FmjhxgARqoEUAISDqWRUxt1lXzEnuTxXKHNQO+/N19lPbsVQ4I3PEbPLZlLhSktYFcho35d
 VEy3CcrUGMAA9g+09FjJt/gAeURoP4sT2Gyn1ikFgvbOobKB69hQUUl3Gx8DMNk/NhOTzXAj0ta
 21Tq1Y3QBYz7/un15AhXtc9Ywe8WDGdJ34z6NfaEOQigPQOVoydx5/g7fQsKXnPhc8QtppevIhn
 dPR5cVwZdEBEZNGMPhaM9MDIc9M0Mzve23OoL0qJteFPOw0F6EiJHBQrrKShwxxJbGgWCJFmT15
 hmrOOQqLrAMm/XaxORyFt0U6RKzpXCYXVJWYDxuGeiWsOq0BfyKlkVAVbai015KNE1SzCK5a+K+
 h8+kH0+bLLa5DYOdchH5Uu5wRPeF29e59x5GL0KmFIluFS1NwoKw/uZkShsvCs4iQykB82JinHL
 /VSWO8eSB0jZWOmkcVw==
X-Authority-Analysis: v=2.4 cv=ev7SD4pX c=1 sm=1 tr=0 ts=6957a216 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=pPiS01ZHNgX3inIG970A:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-02_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 malwarescore=0 clxscore=1015 adultscore=0
 phishscore=0 impostorscore=0 lowpriorityscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601020094

RDP433 can have NAND or eMMC based on a board level rework. Since the
same GPIOS are used for both the interfaces, only one of them can be
used. Add a new DTS file to disable NAND and enable eMMC.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/Makefile             |  2 +-
 .../boot/dts/qcom/ipq9574-rdp-common.dtsi     | 32 +++++++++++++++++++
 .../boot/dts/qcom/ipq9574-rdp433-emmc.dts     | 26 +++++++++++++++
 3 files changed, 59 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 6f34d5ed331c..d5fe12ef4300 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -26,7 +26,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk01.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk10-c1.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk10-c2.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp418.dtb
-dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp433.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp433.dtb ipq9574-rdp433-emmc.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp449.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp453.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp454.dtb
diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
index bdb396afb992..e4ae79b2fcd9 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
@@ -169,6 +169,38 @@ data-pins {
 			bias-disable;
 		};
 	};
+
+	sdc_default_state: sdc-default-state {
+		clk-pins {
+			pins = "gpio5";
+			function = "sdc_clk";
+			drive-strength = <8>;
+			bias-disable;
+		};
+
+		cmd-pins {
+			pins = "gpio4";
+			function = "sdc_cmd";
+			drive-strength = <8>;
+			bias-pull-up;
+		};
+
+		data-pins {
+			pins = "gpio0", "gpio1", "gpio2",
+			       "gpio3", "gpio6", "gpio7",
+			       "gpio8", "gpio9";
+			function = "sdc_data";
+			drive-strength = <8>;
+			bias-pull-up;
+		};
+
+		rclk-pins {
+			pins = "gpio10";
+			function = "sdc_rclk";
+			drive-strength = <8>;
+			bias-pull-down;
+		};
+	};
 };
 
 &qpic_bam {
diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts
new file mode 100644
index 000000000000..ffd96b1b1c65
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * IPQ9574 RDP433 eMMC board variant device tree source
+ *
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+/dts-v1/;
+
+#include "ipq9574-rdp433.dts"
+
+&qpic_nand {
+	status = "disabled";
+};
+
+&sdhc_1 {
+	pinctrl-0 = <&sdc_default_state>;
+	pinctrl-names = "default";
+	mmc-ddr-1_8v;
+	mmc-hs200-1_8v;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	max-frequency = <384000000>;
+	bus-width = <8>;
+	status = "okay";
+};
-- 
2.34.1


