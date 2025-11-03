Return-Path: <devicetree+bounces-234246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 390BBC2A95C
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 09:36:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E5C3A3A8335
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 08:36:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32A792E040C;
	Mon,  3 Nov 2025 08:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KDBvXRE7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KeJL1tiH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 732402DF6F8
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 08:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762158975; cv=none; b=YXrcaG2/++lI2k8Q95Q7bkOU99c8h1G1KKt2HwFDbKxKWIc27PzycfVokSVJwn+NrSo33tJ2WcNayQh7MViNmMn7Dz/zRzS8EzdElwcFSHWINXNuJwcyV3IPzBjw9xNS9682s13y0xcECL+48+l0NynY0Zr+HcSrJ+HYJaybmV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762158975; c=relaxed/simple;
	bh=IdS6SXHIusAtp5KUe3Y9+AjGoEUlYjkheTmAl5fxO0I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=o4zRFHuNFIceQgqwLfdxwh7pYASeC1vTPpGjcmNDEwdPYFsJ7tyQfDAkifM0sOu8BiVkWBqel3NWKBRAQJDzfegd/fyPzb7l6RMti/2bMLzw8/YrF+QYhMngesyIwEnG4DzWkf20DklnUsrKc4JWe2T8L4BjgBN3+iFyOhdYOtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KDBvXRE7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KeJL1tiH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A383UQb809005
	for <devicetree@vger.kernel.org>; Mon, 3 Nov 2025 08:36:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=FHHbu1mL53msShGeS1bqrw
	jBYht1bcw//M+fHwQIchQ=; b=KDBvXRE7/kLZfhaM23aC4Es8wrCJWi436ZThfo
	KF1IqA2h9vlL6l2dAH8pM7vcV7WLDv38BaNz8ksS3Dqhr4Iw65FQWt4D5pujksS0
	LZ1T9er+Nefq/lxfjwEAarDTNQUTjJJ/fEE9HWE7I23Id5VWDyP5SQdFAFxUyLrd
	T2zEK/UXydPdTB3G/s+iPoUhghK9vPNkRoRCq7vBio6OTv5Qhd+/e1o3VItKQHm3
	vRo8+TzfdtGxACnTWkt4RS7ZShfcYF7NBFv7TSXHxsSdRLjH+9YRr5XkyqSJnFsj
	NS0R4wE8pM9f+2wltm40ALP3qCPfztyv2Grgcwl/HimuMNlQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a5977c1b1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 08:36:12 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7a153ba0009so9232123b3a.1
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 00:36:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762158971; x=1762763771; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FHHbu1mL53msShGeS1bqrwjBYht1bcw//M+fHwQIchQ=;
        b=KeJL1tiHTcA2W8gGcqOzUasaJEmycPvtfKBKgg6rvfGSagVGief7sLYOK0OlFuJhAx
         ijDIW7X/izWaA9leS2yqmpL98/hnk2FMMrn6CLM/5z4SuvGvm6suAwNba7/cyD5zV8w9
         5FcWuSJagS6QLODUkHnIZXvtJ6VfrA9jII1dWMgTYb0sTBwk/L4Ya1+lWA6dgdAfYCfB
         T2zROl0/X+0fPmi8TKewBuDm8w8ukWzPbvvUUqygYD8bgyC062VVtfTvKoyF4HGF2+rK
         c9gGztkX+8mJ++ncd5un5iGW2sJrXimkTOYhzC6wEQPvOTcBw8aVO8LyVrQ3nPWiTZG5
         njGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762158971; x=1762763771;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FHHbu1mL53msShGeS1bqrwjBYht1bcw//M+fHwQIchQ=;
        b=syRmSHqMGpLGTfXE2Sh7v4WnhUWSWJ7BdIEX/BG7gHdMS/V7Jh8ugnprNlwGXX3hDa
         RIeAnRMDOpdK6pYKBU1qciMUqMqGJhi1pkdjX/g6hg+9kKzCvp1UC6ctaWb8JLZYcJoT
         exwncxF+gGejUvudpQwXM02wNHGEiTe7fT/t6MAlhlgE/4NEJZkBzMVRHqEAJuOqNoPp
         DOfA7qhcobHakauLSfgUlPnfOFCUd4Lprw8DWHZZTUr7z3lwOUXt46S6OJxBgzebAVF+
         pYwTl7piUxxVzHxy9b4UKM2Q4eiQcvG2IcAXA1r3cusolDDKcXnYFQyseBz6O/EmFIgs
         U47A==
X-Forwarded-Encrypted: i=1; AJvYcCXIgXizP8T8KxL11xM1+xBd/8WmcV5awTAWRApNSawefSdkzNKr6sHsd24yLqzYYJoF+hb3sTIhoZjw@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2dJgY5x5aYKMo0CUUG2aaWlyMaftm2gErycIbn+Z0R8mLZ+Z5
	vim0JiShC3kTm/Ex44MTN7XJywSGXCcJ3/aBwhtMFFjWov+Dbdqv9cq8JMb3PYAUaubt5jab8Lr
	8eFFxY1QDBrUIPPGQmRV1xMT9hZqzjRnQJIDn+hVLEnH7mRlZl4RVGPVhP8FYJqOh
X-Gm-Gg: ASbGncuU/F87W/6SVnhtSAb1/6Nk7rVcGzIot2aSHVytJ4uI6+jqtY+sXKpMDdkeAMc
	laBJOGBQWf3DhY2//F/S25slv+Lm6hqQ+tiq95C69gBQWQEanrzkS41st9DpB1jLtc/M06POol7
	/zOKDs1w9ZNNUG7HyQ/pxQgshr7kyherCWgPGGy6dMpgnp1F67lxHgSt6lTT2VVbyWjdCZ2h+x8
	8d4dcQzJX8hTm3TmSjiddHGG+nUvBgrI7z7YlegzVkYuXlRhSlOHjvz4wwK7Kn4or4RiIRdiRUg
	YYJy+elYapaaMa8eIuKHvyYAtL+GebyPG/8cnZ0a3DoTXIW1jdWnB3Ej/Zht34f7fgfNsRxjV6f
	bSU/AFxPlxbtuBoqpWK9w/u0USu3bqITQckrSRkfGwXHgDGEhkEcgkFPrSdhxeQ==
X-Received: by 2002:a05:6a00:a24:b0:77f:50df:df36 with SMTP id d2e1a72fcca58-7a778af1ea0mr14578039b3a.18.1762158971211;
        Mon, 03 Nov 2025 00:36:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFVH8BWM9D3aJunPqzSJPf2bjDS4CvbRp6lp2vqJsrfAL6inV70CBFe5S8ADyZAZL6OB82YLA==
X-Received: by 2002:a05:6a00:a24:b0:77f:50df:df36 with SMTP id d2e1a72fcca58-7a778af1ea0mr14578008b3a.18.1762158970695;
        Mon, 03 Nov 2025 00:36:10 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7aadc2fa339sm3313766b3a.71.2025.11.03.00.36.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 00:36:10 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 03 Nov 2025 16:35:57 +0800
Subject: [PATCH] arm64: dts: qcom: kodiak: add coresight nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-add-coresight-nodes-for-sc7280-v1-1-13d503123c07@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAG1pCGkC/x3NQQqDQAxA0atI1g3MjLZKr1Jc2CRqNjOSFBHEu
 zt0+Tb/n+BiKg7v5gSTXV1LroiPBmid8iKoXA0ppGeMocWJGamYuC7rD3NhcZyLoVOfhoCvQPL
 tmFLfMdTIZjLr8R98xuu6ARBgl3FwAAAA
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762158966; l=7430;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=IdS6SXHIusAtp5KUe3Y9+AjGoEUlYjkheTmAl5fxO0I=;
 b=Ch3Cso1QW1iKzrJzDjsD31ZTu2EjIu+Kgha/UlBh9CIchRwoFbYUQcQFDDI9SxT/Sdkb1LaEU
 HTPgda9+zAoBPjSogaEVMeXXIrZXJJCgkXm01FQE2zmLYS54QcRLl6C
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-GUID: wwNOBb8dx9H09w-m2K8EIXQcd0BW_tBC
X-Proofpoint-ORIG-GUID: wwNOBb8dx9H09w-m2K8EIXQcd0BW_tBC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDA3OCBTYWx0ZWRfX0/JTCwm+LZNE
 BCJdmT7mdCkKGAsj5P9iMF6GIYk2ELwdT7EAXr1Tazb/n5mWrT3BH4v6HIKMYHJ5LCPjr4rBa7Z
 PsFftQzWpaTuu7rfPuLQ4hRPfKEuv7QOLLDL8dxX6rbLbfKLRf+vP+Cqgc6nhhJrbo6SaueKrSZ
 qrGDOWZmO9yLCoOoh8uR7HMs7NJ8NmHHaHmHktMsk2cmA5S7xRYf8xYdFF5wWMbIbMGl8JxqRRv
 yOUGMHAiEQK68HVcdyaMUvmO6rCJQro8yUbiX3+pRaulN7SUPDtn5j2IrAI3GF42SiTuV0xxM2d
 FzCbAoPjD0OieyMHYjD03tgH8ScAKkM/qkSmQJDE2c+M4tTe8Yb24Qwr8OABiQjjygu1zhm6gYV
 XAjopjfsFJApnB0tN26oqrr5/9HV7A==
X-Authority-Analysis: v=2.4 cv=WcABqkhX c=1 sm=1 tr=0 ts=6908697c cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=CTXohUMGNYBRon0rOZ8A:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-02_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511030078

Add TPDM, TPDA, CTI and funnel coresight devices for AOSS and QDSS
blocks.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kodiak.dtsi | 290 +++++++++++++++++++++++++++++++++++
 1 file changed, 290 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kodiak.dtsi b/arch/arm64/boot/dts/qcom/kodiak.dtsi
index 3ef61af2ed8a..09aba1645408 100644
--- a/arch/arm64/boot/dts/qcom/kodiak.dtsi
+++ b/arch/arm64/boot/dts/qcom/kodiak.dtsi
@@ -3338,6 +3338,85 @@ stm_out: endpoint {
 			};
 		};
 
+		tpda@6004000 {
+			compatible = "qcom,coresight-tpda", "arm,primecell";
+			reg = <0x0 0x06004000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@1c {
+					reg = <28>;
+					qdss_tpda_in28: endpoint {
+						remote-endpoint = <&spdm_tpdm_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					qdss_tpda_out: endpoint {
+						remote-endpoint = <&qdss_dl_funnel_in0>;
+					};
+				};
+			};
+		};
+
+		funnel@6005000 {
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+			reg = <0x0 0x06005000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				port {
+					qdss_dl_funnel_in0: endpoint {
+						remote-endpoint = <&qdss_tpda_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					qdss_dl_funnel_out: endpoint {
+						remote-endpoint = <&funnel0_in6>;
+					};
+				};
+			};
+		};
+
+		tpdm@600f000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x0600f000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,cmb-element-bits = <32>;
+			qcom,cmb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					spdm_tpdm_out: endpoint {
+						remote-endpoint = <&qdss_tpda_in28>;
+					};
+				};
+			};
+		};
+
+		cti@6010000 {
+			compatible = "arm,coresight-cti", "arm,primecell";
+			reg = <0x0 0x06010000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+		};
+
 		funnel@6041000 {
 			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0 0x06041000 0 0x1000>;
@@ -3357,6 +3436,14 @@ in-ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
 
+				port@6 {
+					reg = <6>;
+
+					funnel0_in6: endpoint {
+						remote-endpoint = <&qdss_dl_funnel_out>;
+					};
+				};
+
 				port@7 {
 					reg = <7>;
 					funnel0_in7: endpoint {
@@ -3471,6 +3558,38 @@ etr_in: endpoint {
 			};
 		};
 
+		cti@6b00000 {
+			compatible = "arm,coresight-cti", "arm,primecell";
+			reg = <0x0 0x06b00000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+		};
+
+		cti@6b01000 {
+			compatible = "arm,coresight-cti", "arm,primecell";
+			reg = <0x0 0x06b01000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+		};
+
+		cti@6b02000 {
+			compatible = "arm,coresight-cti", "arm,primecell";
+			reg = <0x0 0x06b02000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+		};
+
+		cti@6b03000 {
+			compatible = "arm,coresight-cti", "arm,primecell";
+			reg = <0x0 0x06b03000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+		};
+
 		funnel@6b04000 {
 			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0 0x06b04000 0 0x1000>;
@@ -3490,6 +3609,13 @@ in-ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
 
+				port@6 {
+					reg = <6>;
+					swao_funnel_in6: endpoint {
+						remote-endpoint = <&aoss_tpda_out>;
+					};
+				};
+
 				port@7 {
 					reg = <7>;
 					swao_funnel_in: endpoint {
@@ -3548,6 +3674,170 @@ swao_replicator_in: endpoint {
 			};
 		};
 
+		tpda@6b08000 {
+			compatible = "qcom,coresight-tpda", "arm,primecell";
+			reg = <0x0 0x06b08000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					aoss_tpda_in0: endpoint {
+						remote-endpoint = <&swao_prio0_tpdm_out>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					aoss_tpda_in1: endpoint {
+						remote-endpoint = <&swao_prio1_tpdm_out>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					aoss_tpda_in2: endpoint {
+						remote-endpoint = <&swao_prio2_tpdm_out>;
+					};
+				};
+
+				port@3 {
+					reg = <3>;
+
+					aoss_tpda_in3: endpoint {
+						remote-endpoint = <&swao_prio3_tpdm_out>;
+					};
+				};
+
+				port@4 {
+					reg = <4>;
+
+					aoss_tpda_in4: endpoint {
+						remote-endpoint = <&swao_tpdm_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					aoss_tpda_out: endpoint {
+						remote-endpoint = <&swao_funnel_in6>;
+					};
+				};
+			};
+		};
+
+		tpdm@6b09000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x06b09000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,cmb-element-bits = <64>;
+			qcom,cmb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					swao_prio0_tpdm_out: endpoint {
+						remote-endpoint = <&aoss_tpda_in0>;
+					};
+				};
+			};
+		};
+
+		tpdm@6b0a000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x06b0a000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,cmb-element-bits = <64>;
+			qcom,cmb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					swao_prio1_tpdm_out: endpoint {
+						remote-endpoint = <&aoss_tpda_in1>;
+					};
+				};
+			};
+		};
+
+		tpdm@6b0b000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x06b0b000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,cmb-element-bits = <64>;
+			qcom,cmb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					swao_prio2_tpdm_out: endpoint {
+						remote-endpoint = <&aoss_tpda_in2>;
+					};
+				};
+			};
+		};
+
+		tpdm@6b0c000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x06b0c000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,cmb-element-bits = <64>;
+			qcom,cmb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					swao_prio3_tpdm_out: endpoint {
+						remote-endpoint = <&aoss_tpda_in3>;
+					};
+				};
+			};
+		};
+
+		tpdm@6b0d000 {
+			compatible = "qcom,coresight-tpdm", "arm,primecell";
+			reg = <0x0 0x06b0d000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			qcom,dsb-element-bits = <32>;
+			qcom,dsb-msrs-num = <32>;
+
+			out-ports {
+				port {
+					swao_tpdm_out: endpoint {
+						remote-endpoint = <&aoss_tpda_in4>;
+					};
+				};
+			};
+		};
+
+		cti@6b11000 {
+			compatible = "arm,coresight-cti", "arm,primecell";
+			reg = <0x0 0x06b11000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+		};
+
 		etm@7040000 {
 			compatible = "arm,coresight-etm4x", "arm,primecell";
 			reg = <0 0x07040000 0 0x1000>;

---
base-commit: 20e1dca0f0d16ca3f0937a5969a789addedc0f29
change-id: 20251103-add-coresight-nodes-for-sc7280-60ceb4dc274d

Best regards,
-- 
Jie Gan <jie.gan@oss.qualcomm.com>


