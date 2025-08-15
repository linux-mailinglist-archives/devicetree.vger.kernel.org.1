Return-Path: <devicetree+bounces-205169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B4AB2832B
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 17:46:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 68B2E1CC41EA
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 15:46:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 276851EFF9B;
	Fri, 15 Aug 2025 15:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jaGRIs3S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82D36188000
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 15:46:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755272773; cv=none; b=OdAyKzCFnbjYLudo/lRpJBNNHqmfnBcqNp6SJofYllOEY2VJb5UbAISNzrzhkDZbrsY+qejhnSEFZRGSenY5KR/vLflfYuZyQh+lIaGbLFmrEnNLWpg/F5xDdixPY/zFH8j8EV1tTDckknWwxnRZjxYU8NzJiN4pNshNCJPn8xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755272773; c=relaxed/simple;
	bh=AdyPZspn9jpl/n4EThew4HeSZsm3OTTzCIE9ywRTBiw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=jnSoiq7BrFsxERbsQQwqboC6WTQhtB13EcFEXKsVjbJU5ogCTZ3fqWMyWEfCpYIvWOxQor3cOI7Q0BHIgfi/Fm1lr2pVp0RWsAr92bznXA+V1k/0cKjlmjw7faqoDZiSe4K26dds6EgH2PCOizsC3epFORFOrTOn17OND4lTV7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jaGRIs3S; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57FEJ6Ma022073
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 15:46:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=JeU8hefHW3uk9caYXaFowl
	+wyNewewpbgOtBogE/RUo=; b=jaGRIs3StWainalYBGQhXbQmmoy3H5Gjf9751c
	UM0V0J0KV6mi8FvYH49NFW6/bx5LQCYiKsU2BVZ7l5OHc3asNn462JVTB3/xHMYC
	1e9YQR/7VOBUSFqqqvaytJpkfnlExWApMjlEOU9WfI4zOZQf6Ifof80IppZIUVSI
	q8rDwqa8WPXhFGOLbUypxo09Qp7uws9JqeYMW+muoDTX5OXJerHI2EqtjYGOn5WX
	HTRZZk1O1R38ZXAjQksuZOriHKxburiyEZYn1+CYKFF2jHt77r0WHvC6/IAEUZCw
	3EnxkTmla2g7CeHAeKX3vWO+NkdEBm+Vt8C2lFj19AW6tPIQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48gr9s03y5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 15:46:10 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70a9f55836dso46430586d6.3
        for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 08:46:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755272769; x=1755877569;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JeU8hefHW3uk9caYXaFowl+wyNewewpbgOtBogE/RUo=;
        b=M1QwXXSK6AcDuXCW8Y7ZEm+NqBNkv9qlWinK/8SxGxNzKFlX8lhVp1hdFP/rXLd8Uk
         DK7x22LcFagGpBbFh1RL67TjVLlA3Aa3AZMz5U2ePWRY3/5HRH55/+JRpcfe2p1JUstI
         PinAcUuKlUNJUAUw0y4hG0mxuOc82/JaH+gHvu0Ga+Hmp7p1NBuwYGEuYKs1ndkDcaRO
         zMULko+SsHdzhjAJdfaQ6hPSXjQYXTzhJbz5rnjaLUf3EYdJYaraoX0s8E+CT1A1iov5
         3JfskjbFU1GO59qHrJvkrMeDuI8p2mVwWZiBKnULKWmpf1LCKJW/wpr4+YWMsqdbWObb
         dtzA==
X-Forwarded-Encrypted: i=1; AJvYcCXAFATBiOj6Wl03hLCN4XqTKlnXlvqdAFrc9Zw+cuirHNQ08l0iCixduWntsv9/NaqkS8+7ECu4K86L@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9UQJFoJPdEzbog4iOlVt2ONE2eBvPOQ70kL20ondX9OPmVR8L
	ur1Yh8f+iXB0JnLItVmqypCr0cAHhmYhWy5dREMM28EAIESW9tUCaH5/a1K0sMCTaZoBvfvPipi
	1HxBKt4k3ogNhvKDddUXP/WFD4wXSongvbea28mSOrSdjO+siziO2Kk17mYR/1SLq
X-Gm-Gg: ASbGncuv+3J0O3Uh/6cxWHh6GqRw+a9wvarw9OjlmViUKaJSKTXYeOq02MOOck5FRcV
	OrWZfC891NYl54v4+1vCpjOQ0wYOCgiqJbkF9lSD2jCY3lzkuthdyC430MTc+aZdym7Sic4Z1sD
	IV4SfU5SO4HRQPyEHJU6w8Grq9ZnYzSB9u5BlZ/V5bsPjHw8iJiM6kStMqwaJZgvWtUqNhK8HpQ
	ll+VT8noGcofTmRbqcNRa9d4p6Ct/JledPPxF/7VVAcbC554WERzOcdVuhEGJh+O/Whr0+OuzMa
	zHTEvq6xpE9wLdLfAvMYpHxBnA0GvrrVcDr/ofmDBLmC4UOrImDcKly6xWMJa7vAiMR8Txjq3Ue
	ncvV1vhglT6eS7lAaWx5BcJXN8buAhVWHYMe2o1cRXSOsPgRW7tHa
X-Received: by 2002:a05:6214:528a:b0:707:7090:5400 with SMTP id 6a1803df08f44-70ba7ae85bfmr28039826d6.17.1755272768452;
        Fri, 15 Aug 2025 08:46:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGRYLaK7tDeymqSjMuecb9APSDwBwGnwNEXCRuRxqk2zC0HT2M9Xfu1AiO5sN8hjfEaAL8SQQ==
X-Received: by 2002:a05:6214:528a:b0:707:7090:5400 with SMTP id 6a1803df08f44-70ba7ae85bfmr28039266d6.17.1755272767838;
        Fri, 15 Aug 2025 08:46:07 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef368eb8sm346967e87.59.2025.08.15.08.46.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Aug 2025 08:46:05 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 15 Aug 2025 18:46:04 +0300
Subject: [PATCH v2] arm64: dts: qcom: use DT label for DSI outputs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250815-msm-dsi-outs-v2-1-3662704e833f@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIADtWn2gC/1WOzQqDMBCEX0X23FgTtf6c+h7FQ9S1BhpTs1Es4
 rs3ai9lYWGG2W92BUKrkKAMVrA4K1Jm8EJcAmh6OTyRqdZrEJFIo0wkTJNmLSlmJkesbXMsbln
 NMc7Bn7wtdmo5cI/q1BbHyVPdaUItCVljtFauDAZc3FVLcmhhj/eKnLGf45mZH/lfb/rfO3PmJ
 08i3tVF16Tx3RCF4yRfOzr0C6pt275biPvb3gAAAA==
X-Change-ID: 20250724-msm-dsi-outs-dd8e967b1e38
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=9101;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=AdyPZspn9jpl/n4EThew4HeSZsm3OTTzCIE9ywRTBiw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBon1Y9Ydl8N2on6D7hVo6GoM1ZpeVTOw9tpy+tr
 6A/n9MM6GmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaJ9WPQAKCRCLPIo+Aiko
 1VQoB/931zHPkfIzBRvpcX9t5//9EnKXMe9w/9YWLSm0ctKWGDwgbrZ42g4pEwKa+lfB3RrfRzY
 Yoblcr3loQC0tcu1lx0rVMn//6HSunKBUjgdrCJlXHtQKiuksRyGqBbyD1wzGXeSwHd6WM9xbm0
 Xa1Zfj14xD08MjF+cQxVSRhm9Xql1xwq8Oc8pL4wf4OzOXOWMaEMGAM4hoaYUQ7aO1oih4RlQ0r
 TNedGA4uAXddzbZBuyH+gcIKy0wWsCwsWKZcK6upBPm3OUD8DDqcFSFdV/XpA8+Th2JMykOTfei
 RcYv23FsFFyn12l02mqC6VMOThgZ3m2YX3+2P5ldD8JBUyKk
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEzMDA5NCBTYWx0ZWRfX1Mz4JEaVzJ1t
 wfiYaTft3IRe65lpX9TfP3ZFUVL9JDgMDPcQM5Eq0eLj5EqeqQ+ixgoCaTQf5vnc2a8bnQNxw7q
 2zebwGPu15ELmZ/9q3FJsR/45iUT6ZMze4aUz50KXK+YZ5n5hZKyTjChCg/ZN3TFEu0R8mEpDJD
 yF3A8pGiF0lMjCQe+55h7IoJlFEj+Z54VObbvH7mSiGpXWPvBUYvakko/gU2ry9QkTLE94JSpSw
 yJEBuaCL8fVEcNBBf81kIzs65P1RqRxzmZ1Q07IL0CgmIhAbUYjcAgcsR22PIfe6PmwzH6rBgJr
 YtHQZBqwprmqAokP1/qpaebZLyLyUq0jOqWtOSKLXlK7UPGAb8lC9MGJg18kcu2pp8okur2VokI
 HH7MLGdj
X-Authority-Analysis: v=2.4 cv=NIrV+16g c=1 sm=1 tr=0 ts=689f5642 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=EQR83U5SduvbdnQy2FAA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: 9MUmeCXq3sUgE2B1uL9vpv-NqNkpj0u5
X-Proofpoint-GUID: 9MUmeCXq3sUgE2B1uL9vpv-NqNkpj0u5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_05,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 impostorscore=0 adultscore=0 suspectscore=0
 spamscore=0 malwarescore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508130094

Instead of keeping a copy of the DT tree going down to the DSI output
endpoint use the label to reference it directly, making DTs less
error-prone.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Changes in v2:
- Rebased on top of linux-next, solving the conflict.
- Link to v1: https://lore.kernel.org/r/20250725-msm-dsi-outs-v1-1-18401fb9fc53@oss.qualcomm.com
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts           | 12 ++++------
 arch/arm64/boot/dts/qcom/sc7180-idp.dts            | 12 ++++------
 .../dts/qcom/sc7180-trogdor-quackingstick.dtsi     | 12 ++++------
 .../boot/dts/qcom/sc7180-trogdor-wormdingler.dtsi  | 12 ++++------
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts         | 24 +++++++-------------
 arch/arm64/boot/dts/qcom/sdm845-mtp.dts            | 26 ++++++++--------------
 .../boot/dts/qcom/sdm850-lenovo-yoga-c630.dts      | 12 ++++------
 arch/arm64/boot/dts/qcom/sm8150-hdk.dts            | 24 +++++++-------------
 arch/arm64/boot/dts/qcom/sm8350-hdk.dts            | 12 ++++------
 .../boot/dts/qcom/sm8650-hdk-display-card.dtso     | 15 +++----------
 10 files changed, 52 insertions(+), 109 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index 33ecbc81997c5ecb5606c7555adefd1a53634b80..d99448a0732d9d165be1b5a1b1e15b2424b98b55 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -725,15 +725,11 @@ &mdss_dsi0 {
 	qcom,dual-dsi-mode;
 	qcom,master-dsi;
 #endif
+};
 
-	ports {
-		port@1 {
-			endpoint {
-				remote-endpoint = <&lt9611_a>;
-				data-lanes = <0 1 2 3>;
-			};
-		};
-	};
+&mdss_dsi0_out {
+	remote-endpoint = <&lt9611_a>;
+	data-lanes = <0 1 2 3>;
 };
 
 &mdss_dsi0_phy {
diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
index 0146fb0036d44893237520aae5449931f17f1cc2..19cf419cf531f353f17b83b89ec57dac697d5134 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
+++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
@@ -323,15 +323,11 @@ panel0_in: endpoint {
 			};
 		};
 	};
+};
 
-	ports {
-		port@1 {
-			endpoint {
-				remote-endpoint = <&panel0_in>;
-				data-lanes = <0 1 2 3>;
-			};
-		};
-	};
+&mdss_dsi0_out {
+	remote-endpoint = <&panel0_in>;
+	data-lanes = <0 1 2 3>;
 };
 
 &mdss_dsi0_phy {
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi
index ff8996b4de4e1e66a0f2aac0180233640602caf3..4bea97e4246e160bbd4497551a15a9abe50167e3 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi
@@ -90,15 +90,11 @@ panel_in: endpoint {
 			};
 		};
 	};
+};
 
-	ports {
-		port@1 {
-			endpoint {
-				remote-endpoint = <&panel_in>;
-				data-lanes = <0 1 2 3>;
-			};
-		};
-	};
+&mdss_dsi0_out {
+	remote-endpoint = <&panel_in>;
+	data-lanes = <0 1 2 3>;
 };
 
 &sdhc_2 {
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-wormdingler.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-wormdingler.dtsi
index 17908c93652011d69a2d04b980f45f6732f16977..6078308694ac2085b7958704335dd81dc7109e27 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-wormdingler.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-wormdingler.dtsi
@@ -148,15 +148,11 @@ panel_in: endpoint {
 			};
 		};
 	};
+};
 
-	ports {
-		port@1 {
-			endpoint {
-				remote-endpoint = <&panel_in>;
-				data-lanes = <0 1 2 3>;
-			};
-		};
-	};
+&mdss_dsi0_out {
+	remote-endpoint = <&panel_in>;
+	data-lanes = <0 1 2 3>;
 };
 
 &pm6150_adc {
diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index 3ec2c7864f1ebb596f1ac2644de58d2f7a2b6faa..8abf3e909502f3c3b82c0ca3d7509fdaf23d882c 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -534,15 +534,11 @@ &mdss_dsi0 {
 
 	qcom,dual-dsi-mode;
 	qcom,master-dsi;
+};
 
-	ports {
-		port@1 {
-			endpoint {
-				remote-endpoint = <&lt9611_a>;
-				data-lanes = <0 1 2 3>;
-			};
-		};
-	};
+&mdss_dsi0_out {
+	remote-endpoint = <&lt9611_a>;
+	data-lanes = <0 1 2 3>;
 };
 
 &mdss_dsi0_phy {
@@ -560,15 +556,11 @@ &mdss_dsi1 {
 				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 	status = "okay";
+};
 
-	ports {
-		port@1 {
-			endpoint {
-				remote-endpoint = <&lt9611_b>;
-				data-lanes = <0 1 2 3>;
-			};
-		};
-	};
+&mdss_dsi1_out {
+	remote-endpoint = <&lt9611_b>;
+	data-lanes = <0 1 2 3>;
 };
 
 &mdss_dsi1_phy {
diff --git a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
index a98756e8b965fe7aa475271f72c0b73b20fbceaa..63d2993536ade229a84da16e811e8bc83c46bd15 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
@@ -445,15 +445,6 @@ &mdss_dsi0 {
 	qcom,dual-dsi-mode;
 	qcom,master-dsi;
 
-	ports {
-		port@1 {
-			endpoint {
-				remote-endpoint = <&truly_in_0>;
-				data-lanes = <0 1 2 3>;
-			};
-		};
-	};
-
 	panel@0 {
 		compatible = "truly,nt35597-2K-display";
 		reg = <0>;
@@ -483,6 +474,11 @@ truly_in_1: endpoint {
 	};
 };
 
+&mdss_dsi0_out {
+	remote-endpoint = <&truly_in_0>;
+	data-lanes = <0 1 2 3>;
+};
+
 &mdss_dsi0_phy {
 	status = "okay";
 	vdds-supply = <&vdda_mipi_dsi0_pll>;
@@ -497,15 +493,11 @@ &mdss_dsi1 {
 	/* DSI1 is slave, so use DSI0 clocks */
 	assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
 				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
+};
 
-	ports {
-		port@1 {
-			endpoint {
-				remote-endpoint = <&truly_in_1>;
-				data-lanes = <0 1 2 3>;
-			};
-		};
-	};
+&mdss_dsi1_out {
+	remote-endpoint = <&truly_in_1>;
+	data-lanes = <0 1 2 3>;
 };
 
 &mdss_dsi1_phy {
diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
index 480192c86fb7c6981011923ef619b83b7460c78f..90efbb7e3799b9aa75ac4df84fe0006d470ae131 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
@@ -598,15 +598,11 @@ &mdss {
 &mdss_dsi0 {
 	status = "okay";
 	vdda-supply = <&vreg_l26a_1p2>;
+};
 
-	ports {
-		port@1 {
-			endpoint {
-				remote-endpoint = <&sn65dsi86_in_a>;
-				data-lanes = <0 1 2 3>;
-			};
-		};
-	};
+&mdss_dsi0_out {
+	remote-endpoint = <&sn65dsi86_in_a>;
+	data-lanes = <0 1 2 3>;
 };
 
 &mdss_dsi0_phy {
diff --git a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
index e1e294f0f462ac824bffe96615b36ddcd8996d80..0339a572f34d01633ebf09e473d6fdff9005682d 100644
--- a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
@@ -478,15 +478,11 @@ &mdss_dsi0 {
 
 	qcom,dual-dsi-mode;
 	qcom,master-dsi;
+};
 
-	ports {
-		port@1 {
-			endpoint {
-				remote-endpoint = <&lt9611_a>;
-				data-lanes = <0 1 2 3>;
-			};
-		};
-	};
+&mdss_dsi0_out {
+	remote-endpoint = <&lt9611_a>;
+	data-lanes = <0 1 2 3>;
 };
 
 &mdss_dsi0_phy {
@@ -504,15 +500,11 @@ &mdss_dsi1 {
 				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 	status = "okay";
+};
 
-	ports {
-		port@1 {
-			endpoint {
-				remote-endpoint = <&lt9611_b>;
-				data-lanes = <0 1 2 3>;
-			};
-		};
-	};
+&mdss_dsi1_out {
+	remote-endpoint = <&lt9611_b>;
+	data-lanes = <0 1 2 3>;
 };
 
 &mdss_dsi1_phy {
diff --git a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
index f9de0e49fa249af52cb3cbdfdabb394815ce82d3..24a8c91e9f70f40247fde6eb63aa5ce58e258139 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
@@ -385,15 +385,11 @@ &cdsp {
 &mdss_dsi0 {
 	vdda-supply = <&vreg_l6b_1p2>;
 	status = "okay";
+};
 
-	ports {
-		port@1 {
-			endpoint {
-				remote-endpoint = <&lt9611_a>;
-				data-lanes = <0 1 2 3>;
-			};
-		};
-	};
+&mdss_dsi0_out {
+	remote-endpoint = <&lt9611_a>;
+	data-lanes = <0 1 2 3>;
 };
 
 &mdss_dsi0_phy  {
diff --git a/arch/arm64/boot/dts/qcom/sm8650-hdk-display-card.dtso b/arch/arm64/boot/dts/qcom/sm8650-hdk-display-card.dtso
index cb102535838def8c9a354675545d4f4c988ccd0d..5a594d7311a71f6c5a106683c1b7376f8978cc8b 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-hdk-display-card.dtso
+++ b/arch/arm64/boot/dts/qcom/sm8650-hdk-display-card.dtso
@@ -60,19 +60,10 @@ panel0_in: endpoint {
 			};
 		};
 	};
+};
 
-	ports {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		port@1 {
-			reg = <1>;
-
-			mdss_dsi0_out: endpoint {
-				remote-endpoint = <&panel0_in>;
-			};
-		};
-	};
+&mdss_dsi0_out {
+	remote-endpoint = <&panel0_in>;
 };
 
 &spi4 {

---
base-commit: 1357b2649c026b51353c84ddd32bc963e8999603
change-id: 20250724-msm-dsi-outs-dd8e967b1e38

Best regards,
-- 
With best wishes
Dmitry


