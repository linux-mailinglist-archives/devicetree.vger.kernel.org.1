Return-Path: <devicetree+bounces-208017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9B9B31589
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 12:36:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D68EA007E6
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 10:31:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 945642F5339;
	Fri, 22 Aug 2025 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fxZXdlU3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F326A2F532C
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755858634; cv=none; b=QEhCT2kN1WXlOf1VVJaOkuFPNvcn9jDFo0uipdl91aH+V1ndWJiN6Ads7gAXWn87OFxVctR4OeopQntXeEtJTE39Jc9alRNUKjgLfzZzTYYhKAY4+92hetr9FIfo3YSt8F64N63SIasSWpuAQonQX/qyVVZCpcMQD8vwOXYl4no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755858634; c=relaxed/simple;
	bh=qiYYWeXGyneC1KjiHAMmCpDYJ9k3K0y9ORAAb4EGCAo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=E9tnhDIRfEgtBIrVnD1QESOKshpJY4DqsD8w92mizmwfI5vawvxIK7Qt4ivOTVOLK8L/Dqwh9EE2NmnHvN7WgFeXxNN+OWu1M8tptg2Z1A1O7Nr45D1RDHQjAL+VZL77aEX1hVTW7zAkEwcrdpsUoz3M7/yhjgmZaPEaXzAn7wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fxZXdlU3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UIsC020852
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:30:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=k13K1y4W7bk
	1dVHjpu6PSFA3QeSZb1Ld64NLLZxH3z4=; b=fxZXdlU398nJoHhnBD+wib2T1JM
	+xDw6l/rmrEY/qH5C0NBvJ3mYED0mjVRYXIC+QAq+1YavoNkWfvp0rnsRkf4BQWH
	DROM7bT6kiFZ1ALKbDktAD8EZUw9eP/1nkiM6aWa6amMtsPs8MER/sB3reDVH8li
	HbmMbgzbDGdMoVFUQ84pWn9baxNiYHYC34SSiz27cKugRZIkhKzc7x8RwSTntmUE
	WBv9tNOnOkI7OFgPebc3u5RAoCq8QrKVXhKfFr0lerGWihL3C9T3LZjTMN3Jt5SY
	nUo93SAp6J7OXcqNbrQwJvkmtKR5v5Sbj8KABjyTlQebbl2KBMgEANNY+Fw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n5290w8v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:30:31 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b4761f281a8so1566881a12.0
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 03:30:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755858631; x=1756463431;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k13K1y4W7bk1dVHjpu6PSFA3QeSZb1Ld64NLLZxH3z4=;
        b=EaAkg/9m5mqhtP3WgZvFO+LjBLAtRUurGgcZODcx6Vp+0b1lTdNv6InDASDAuJMgjA
         +25cMYPi2pw6AwXP7Uda9c0KkuhLdYABstJ++NL6MDemICrKFP9txKvA3JW8XGUiZsPi
         RWmuKHUDOU0qLFMW9QBpxhPNZTLH4qetCILtVYyDILD2mfSu7evKRVqfXCdf3+WtOtLm
         ZZITmbxXv7do/kl7J4AQxZQ3YWtUGwikmnhbbrTd18K0oe0WFc0Iv0NK52SQBaS2PjUp
         nJ+FHnGK7LBgBuBvdN00cl5EeZmRpxnytR9o27RYB4VISa5dFSya7orzft+FDdyWWV2u
         Eh1w==
X-Forwarded-Encrypted: i=1; AJvYcCX3K/Ev6J1w+0X25kSfUCDtlfPoiIIYo8Vn3N9S1hDeaAfzmV3vzXW+/Ge1NcFEtk7l7hCSJ4B0jOzg@vger.kernel.org
X-Gm-Message-State: AOJu0YwCbsBpfIKEe9xRxFPiWdbcuVOMAtxTN+09iBAX8hsZKRCigBzT
	WhsZEVu23bnHn4GP9nd+Fm7bb4JNuqMh9yFYcGHwQdVQ2FmJxBMy/M64C80wgNTJiZQJprIEd26
	JIzS4Ss7tAdHfdWkozBY26EbWA4cBs2GxIvleB3GVgard/GC23RAYlKdcichwQRnt
X-Gm-Gg: ASbGncs9wFuASBy66kdWolswGSzXScFBq0YPA1KWVP0Y7r2HIOSPsI5rAkSBR7+1k5m
	RqQ32ADnRvPun56srj9VGap1SwBJoVtY/10WBsl/n/7iedHBr94vJQmWZ/U7x4K1PpkVPVUTxZ4
	08LJ/nDqXgj/wjCiFaKjiXso8ZyKicNBZRMTxwJRYjoLh2wb9Zf3Dev6cXv9zjZ9mgZ4aD7PMo+
	Fsaw+A4kp0kQRKOwQ6tgS3+YtL23bXiKjIXyBJDDjwq0gaoBfTydkY2GSiX62StwZ+5DCQSHFho
	QLSa9TH92XUAIAiyoTTGtF6eLMA78WbGQqyuKTCaOiVuU8IveoYBBY9jBKbksshd1XxRlY+gJpr
	q7Y+dIpuDjaKn9ayjwmmr
X-Received: by 2002:a05:6a20:1594:b0:238:3f54:78ec with SMTP id adf61e73a8af0-24340def5fbmr3825812637.46.1755858630403;
        Fri, 22 Aug 2025 03:30:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFVlMDlU6sV9lQpDsihzPt7GlkamAV4d2zA9RgA04+j3Ibuouglgjezu/LoQBnFhZnLmMuvHg==
X-Received: by 2002:a05:6a20:1594:b0:238:3f54:78ec with SMTP id adf61e73a8af0-24340def5fbmr3825768637.46.1755858629955;
        Fri, 22 Aug 2025 03:30:29 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4763fec0e9sm6825196a12.24.2025.08.22.03.30.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 03:30:29 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlmao.mao@oss.qualcomm.com>,
        Tao Zhang <quic_taozha@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v1 3/3] arm64: dts: qcom: lemans: enable static TPDM
Date: Fri, 22 Aug 2025 18:30:08 +0800
Message-Id: <20250822103008.1029-4-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250822103008.1029-1-jie.gan@oss.qualcomm.com>
References: <20250822103008.1029-1-jie.gan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=I4c8hNgg c=1 sm=1 tr=0 ts=68a846c7 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=8Krfq1_MhNCW99YIMDUA:9
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: VlobfznHurI-8TrpJskEIpxAfSCaWOTo
X-Proofpoint-ORIG-GUID: VlobfznHurI-8TrpJskEIpxAfSCaWOTo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX8e2AhgQvdVsU
 aTg7qaCfcAQd9Gy0UUnav4joXm03Smt5lXgNBOhIRNdGnqGBl5wS+HipVOFDf5xAAaJaHZkwqSM
 nWL1ebh6HV/J0TuieECo+CNJkJNRgGtizVh4LNLUzCi/MLFqSaThGNoYLnNyvhBAaNkeTQbjCOg
 NBawya4NlbFoBGP2GWrC5BX/YqHUVLJasvoYsUbj8q1guezq6DytCv1698Yb8tTN+QyS+XW0r91
 edz0mWTp5exnr0QRdyI/HqIxH+V/AQviAjOjxgzmMN1fI4AQP46nqOxEyt66Wiat8ZWKDsRVegh
 mlQ29T41m9D+2l3xyhOwpdUbv9iPOIAewWbAqAnrFTDqL/RcNszmcZtY0B2d+RbFwhXc7PKq1k1
 SeMt/AzxME5KlJAWm5onyNy6Tb5DHA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

Enable static TPDM device for lemans.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 105 +++++++++++++++++++++++++++
 1 file changed, 105 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 64f5378c6a47..077e22b28279 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -2959,6 +2959,14 @@ funnel1_in4: endpoint {
 						<&apss_funnel1_out>;
 					};
 				};
+
+				port@5 {
+					reg = <5>;
+
+					funnel1_in5: endpoint {
+						remote-endpoint = <&dlct0_funnel_out>;
+					};
+				};
 			};
 		};
 
@@ -3116,6 +3124,60 @@ etr1_out: endpoint {
 			};
 		};
 
+		tpda@4ad3000 {
+			compatible = "qcom,coresight-tpda", "arm,primecell";
+			reg = <0x0 0x4ad3000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@10 {
+					reg = <16>;
+					dlct0_tpda_in16: endpoint {
+						remote-endpoint = <&turing0_funnel_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					dlct0_tpda_out: endpoint {
+						remote-endpoint =
+						<&dlct0_funnel_in0>;
+					};
+				};
+			};
+
+		};
+
+		funnel@4ad4000 {
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+			reg = <0x0 0x4ad4000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				port {
+					dlct0_funnel_in0: endpoint {
+						remote-endpoint = <&dlct0_tpda_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					dlct0_funnel_out: endpoint {
+						remote-endpoint = <&funnel1_in5>;
+					};
+				};
+			};
+		};
+
 		funnel@4b04000 {
 			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0x0 0x4b04000 0x0 0x1000>;
@@ -3388,6 +3450,35 @@ aoss_cti: cti@4b13000 {
 			clock-names = "apb_pclk";
 		};
 
+		funnel@4b83000 {
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+			reg = <0x0 0x4b83000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@1 {
+					reg = <1>;
+
+					turing0_funnel_in1: endpoint {
+						remote-endpoint = <&turing_llm_tpdm_out>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					turing0_funnel_out: endpoint {
+						remote-endpoint = <&dlct0_tpda_in16>;
+					};
+				};
+			};
+		};
+
 		etm@6040000 {
 			compatible = "arm,primecell";
 			reg = <0x0 0x6040000 0x0 0x1000>;
@@ -7578,6 +7669,20 @@ arch_timer: timer {
 			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>;
 	};
 
+	turing-llm-tpdm {
+		compatible = "qcom,coresight-static-tpdm";
+
+		qcom,cmb-element-bits = <32>;
+
+		out-ports {
+			port {
+				turing_llm_tpdm_out: endpoint {
+					remote-endpoint = <&turing0_funnel_in1>;
+				};
+			};
+		};
+	};
+
 	pcie0: pcie@1c00000 {
 		compatible = "qcom,pcie-sa8775p";
 		reg = <0x0 0x01c00000 0x0 0x3000>,
-- 
2.34.1


