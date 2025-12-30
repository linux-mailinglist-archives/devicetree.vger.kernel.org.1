Return-Path: <devicetree+bounces-250662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BB3CEAEC8
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 00:42:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DE36E30552D1
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 23:38:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82C9C32ED4D;
	Tue, 30 Dec 2025 23:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RmCuZ46W";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VeHNPjcI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6B602F12C3
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 23:36:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767137792; cv=none; b=s8M0Z4ahyR6gVbE1M26DG8w/mY1biynWQ7ckMBEU/byL8O8y6yiS/39aiWeq3Qxc+YuEKMzTQ9bbhLNcKXIBS6CmRHY+YVXsyLa5HBKBw7FHxjPfCHcqGDTI5Ei3oiMVudMu1oFNkc9sXV0DXbeFRJYlcXmhc0fMl+/JFvcZ2/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767137792; c=relaxed/simple;
	bh=7LzbTKdhUl2NUOZfkS1Y8NaFZqr1Qnf7aC6QYgqUTZ0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Exu6Lzkt3W45q23NDeQxtQbJ1V2r3qeqGM61nDNRBrEq8+296RAK1TEvI8DbTCjr7g8KCcFP0CXxAgWCIMiNfOEPheVQHPemPh2LALYEvX7kbD+aqN+YKbK9zA+YQXyIFfPKsVcgpbvo1zbnjhxaOIyEzh84vE+xupznt6+9p8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RmCuZ46W; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VeHNPjcI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BU9umOd1751668
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 23:36:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xXbs7DTtJpHSfn5vW2Prly0waEmm7i+yQR+ng+cWcuQ=; b=RmCuZ46Wtvxb5Jas
	PG33QwpSsYmvl5FrTf4mNQmjVYcy0c9+0qPP4IuXcmmjsW/4nfFH6RZqAsw++x5C
	2pr9CPiJ6Ai77QJypILRE3ntRQVix7DAhfBr8S9geeKyMSBs7U533tYejFRelcfw
	0Z3mqXrVuofLASkDlrmKbt7TTky2Gon/SBw6qQMf4VXRWE8rcHv3kHmUf3MOMElG
	7rfNpM1TN92Pfz7kG/9X+xrXgjD5/xIEEsBqqEFLex74f9nKGYOdcTBd1VvWnGod
	zE2q9XH2/fpX8i6hdOfXezo5SvLJ9Y+SaUuFMDlU6w4txZ+GVbdHJo9S0Qvsni+z
	sWqubg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc0sgu2de-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 23:36:24 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed6ceab125so274980561cf.1
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 15:36:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767137783; x=1767742583; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xXbs7DTtJpHSfn5vW2Prly0waEmm7i+yQR+ng+cWcuQ=;
        b=VeHNPjcIo/AjpEBqPgCljQhhUjtZ4QqqkTZcrBc4leVtJEExibUmUSBmSf9bnZzltR
         fj7zsGH20EMugfx89zTt656Z1JiTO4JEOcWaUtzAbSi6NMzfyX5lPP1LIfbhxA4LN/Tk
         /BZo3zDX7ZeYomUl8APpKBP6554c9ymznb8TCQUN075urY+882wppmUTYUMtNeHKpu9D
         /h1Y/20t/dzR33qbFUI5iBYJhu41qqiL25d5GCgY9PZ8gzNDuwCR2MgIDj7L3JXHxVQk
         mHbTziWRxnzme3FJePWvv3fDIb1b+c6N51kAm7Gu0Ew0swx///VXYPw95oaaH/+qX3uu
         R9wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767137783; x=1767742583;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xXbs7DTtJpHSfn5vW2Prly0waEmm7i+yQR+ng+cWcuQ=;
        b=XvrGIlaHYpv+c8nKQcAa55zFq86OAzwPpya8/Y4x0IJ8Z6Vtbq5XsoOQpLGMO+Z6UJ
         zVhnMvy7oUb5M675Vhex6YBUHK/QzWW0R6lTmjsiwRFDYviHQ+ZpXKFMca0VmBkDVRHs
         +Txr8D8XFFOJZxa2k6J6dlVhCKQ/dvu/5HSR3SgVgkiazKI8OAXXl3Kd7R4KGMxeI0at
         AX4uwqdpo3+7Zb/bT+mKYR+ZuQkndkfdN0XiVaGqvDK7i7DoIE627kNuBPYCwFNHYrSR
         NfqB3WBYPFig83leEqK/yMcesYkaSFUxqdh3jSFQ0ilpgxI842PJQoOgK4qx6w0Zf3AC
         CiaA==
X-Forwarded-Encrypted: i=1; AJvYcCUGz0o7KZkcUUN+j0Oq7crNqgsbwzbfAz6wMuYI+1uzGxziEbYdvag2387mpq/rJ1vPjlbDg6YEVvfZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9h9xWXvxObzy5yCoRzkh6UvtFNC4mBFMBeFzM6iW6fqIha54/
	Vluenlb+q7Qq4iVJxb6qWXDuDPJ4sjFGkwgkEkZk9VygljietR0ZvnXBLM3CPDS81VSgQnyH83G
	oPm+Q2DVXk2TOy+riW22DqNDsKYroZECksyftcDcx9snBGdLbxKlG2S4zWZIu9fdR
X-Gm-Gg: AY/fxX4ce0i4o2mEj3WBpn6iVI2DjhW/7OgVI/lzI9uu90dO2HiYogmv8Hc9Ki1zj74
	JYbVfqWTWAWAh3JFknnmepOd/eQaat4foRmU90ApF0ZY1y5uyoe6WGbTgt7IfqNZ+5fKk15lDxB
	b5/R1jWyIFXdKDuvk0ll7+RTKb5QVYWy5fFI+gPXgggy/q/Mr6AOIv0m46cK1jOZ6uq7XNNqwap
	E1GOPFfQL1U5z/jCG2hGmbLytaGuRS0lvi6uvol1XJC9qB8KeQkTabNYNE0PdRC9aNrzVS32DIa
	jOoi/NVYHAEd+D9xXPUb24LgDiwO8PM2aZXah9X+rHo9KT7+Ps7DwiawyvAtA+IupCLrjJQTI65
	2R6nTFfT0uA+NkpEUHbWabuIvUWLK2XheJzwQepUOhKuRkkgh2iDRierwSs0lTye8aP761kQbGv
	HWUq841zVHBZ7FiknjJvthP24=
X-Received: by 2002:ac8:46c8:0:b0:4f4:c7c0:bd15 with SMTP id d75a77b69052e-4f4c7c0c07bmr350491191cf.12.1767137783385;
        Tue, 30 Dec 2025 15:36:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFHgFhlkhyhLFU8i2+WJ6QjjuayQocRBFfLuWGYbFfjr/Q0s6li8Tz2KAy4EkSJhFPlWPtZLQ==
X-Received: by 2002:ac8:46c8:0:b0:4f4:c7c0:bd15 with SMTP id d75a77b69052e-4f4c7c0c07bmr350491011cf.12.1767137782979;
        Tue, 30 Dec 2025 15:36:22 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a18620337sm10349574e87.86.2025.12.30.15.36.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 15:36:22 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 01:36:03 +0200
Subject: [PATCH 13/14] arm64: dts: qcom: sdm845-db845c: describe WiFi/BT
 properly
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251231-wcn3990-pwrctl-v1-13-1ff4d6028ad5@oss.qualcomm.com>
References: <20251231-wcn3990-pwrctl-v1-0-1ff4d6028ad5@oss.qualcomm.com>
In-Reply-To: <20251231-wcn3990-pwrctl-v1-0-1ff4d6028ad5@oss.qualcomm.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Matthias Kaehlcke <mka@chromium.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
        linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2964;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=7LzbTKdhUl2NUOZfkS1Y8NaFZqr1Qnf7aC6QYgqUTZ0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpVGHlt4z1VN+r/pPI6AU/mqS10bThi9Wip+oPh
 anrX43GDfuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaVRh5QAKCRCLPIo+Aiko
 1QIqB/4z9CRzsybrVzMYR/eL+ntwoRcXl+n8IfnBasvwWl+nQzvSxZvxfwOTVOQTRK/2Hcio5MZ
 5/AGI44NEDVP5mIa+x09TC055gUH93N1KsQHGabaEW0DdLgDDKAUfv49SCVX06gI9cktKbgEoWo
 3u0jenZpnNQMPpaYo47lgDPuTfUWOnLiB932/LH5CrOG8KM8MgwTi5uGZn9pV+sadu9yBDOAxzT
 3Fjob7IKfw53bUmdEt5kv8IoipTEO4idE7dW9Rrn9xzJt3Crnafuf5SwKgM932Gy2Pts47BSW8n
 pu42ll8LsbXib3RYbHJQ67N3r6wf+9W1t+3vGlEReYye6uXv
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDIxMSBTYWx0ZWRfX2cNO9cqupLes
 AlhHvz5ZTKET/Qz2ILqZ7Y9efeAzlnLErbygTDMroqEHUrOAEPfyUY4UjpTsg6TcxLqt+jXxrXg
 2l316m1OnPIECiycQW80MwxRffFwCrYwB2ee+PJ2xbGD5xZquc7ENLyG4xnO6iM7jyJRAbyc40W
 +hISe8MQKCkHlr+9PJgwIA30CyHlhSS6u7iRSWdA+Mscg+njLs+OA6/QxN8lyRQHC1zg3u2Bfzp
 Yj3SPaKNhYZkxs+eLpkNV35qISDuY11JuSEmg+BFbtSmH/WvQe44VsPy2T6GKD04fmeXzIeyjkS
 d3EiA9aAka13S/ZhC3DQ7at0q605CoPFZGu18iLPenjq2/0aI4cLLKZR5cvq1VbaR3AI2cGG/Tu
 J9KoVqS0Fjps9iwKxZG4nbI8iYTYvVLStcLqw+bm98lVSH7IudWD4k50chxqveaAsZ3ubbvqlWh
 UUJvuTqtp/GrlsnEaxg==
X-Proofpoint-GUID: otZ2NJdxD9HAmH15Kziuh0IBqdgPlWTJ
X-Proofpoint-ORIG-GUID: otZ2NJdxD9HAmH15Kziuh0IBqdgPlWTJ
X-Authority-Analysis: v=2.4 cv=foHRpV4f c=1 sm=1 tr=0 ts=695461f8 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=urIVL_JefrS1cr2SfK8A:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_04,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300211

The onboard WiFi / BT device, WCN3990, has a simple on-chip PMU, which
further spreads generated voltage. Describe the PMU in the device tree.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 69 +++++++++++++++++++++++++-----
 1 file changed, 59 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index 5118b776a9bb..db221d5c770d 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -276,6 +276,43 @@ vph_pwr: vph-pwr-regulator {
 
 		vin-supply = <&vbat_som>;
 	};
+
+	wcn3990-pmu {
+		compatible = "qcom,wcn3990-pmu";
+
+		pinctrl-0 = <&sw_ctrl_default>;
+		pinctrl-names = "default";
+
+		vddio-supply = <&vreg_s4a_1p8>;
+		vddxo-supply = <&vreg_l7a_1p8>;
+		vddrfa1p3-supply = <&vreg_l17a_1p3>;
+		vddch0-supply = <&vreg_l25a_3p3>;
+		vddch1-supply = <&vreg_l23a_3p3>;
+
+		swctrl-gpios = <&pm8998_gpios 3 GPIO_ACTIVE_HIGH>;
+
+		regulators {
+			vreg_pmu_io: ldo0 {
+				regulator-name = "vreg_pmu_io";
+			};
+
+			vreg_pmu_xo: ldo1 {
+				regulator-name = "vreg_pmu_xo";
+			};
+
+			vreg_pmu_rf: ldo2 {
+				regulator-name = "vreg_pmu_rf";
+			};
+
+			vreg_pmu_ch0: ldo3 {
+				regulator-name = "vreg_pmu_ch0";
+			};
+
+			vreg_pmu_ch1: ldo4 {
+				regulator-name = "vreg_pmu_ch1";
+			};
+		};
+	};
 };
 
 &adsp_pas {
@@ -659,6 +696,14 @@ cam0_avdd_2v8_en_default: cam0-avdd-2v8-en-state {
 		qcom,drive-strength = <PMIC_GPIO_STRENGTH_HIGH>;
 	};
 
+	sw_ctrl_default: sw-ctrl-default-state {
+		pins = "gpio3";
+		function = "normal";
+
+		input-enable;
+		bias-pull-down;
+	};
+
 	vol_up_pin_a: vol-up-active-state {
 		pins = "gpio6";
 		function = "normal";
@@ -1038,10 +1083,11 @@ &uart6 {
 	bluetooth {
 		compatible = "qcom,wcn3990-bt";
 
-		vddio-supply = <&vreg_s4a_1p8>;
-		vddxo-supply = <&vreg_l7a_1p8>;
-		vddrf-supply = <&vreg_l17a_1p3>;
-		vddch0-supply = <&vreg_l25a_3p3>;
+		vddio-supply = <&vreg_pmu_io>;
+		vddxo-supply = <&vreg_pmu_xo>;
+		vddrf-supply = <&vreg_pmu_rf>;
+		vddch0-supply = <&vreg_pmu_ch0>;
+
 		max-speed = <3200000>;
 	};
 };
@@ -1155,16 +1201,19 @@ right_spkr: speaker@0,2 {
 };
 
 &wifi {
-	status = "okay";
-
+	/* SoC */
 	vdd-0.8-cx-mx-supply = <&vreg_l5a_0p8>;
-	vdd-1.8-xo-supply = <&vreg_l7a_1p8>;
-	vdd-1.3-rfa-supply = <&vreg_l17a_1p3>;
-	vdd-3.3-ch0-supply = <&vreg_l25a_3p3>;
-	vdd-3.3-ch1-supply = <&vreg_l23a_3p3>;
+
+	/* WiFi / BT PMU */
+	vdd-1.8-xo-supply = <&vreg_pmu_xo>;
+	vdd-1.3-rfa-supply = <&vreg_pmu_rf>;
+	vdd-3.3-ch0-supply = <&vreg_pmu_ch0>;
+	vdd-3.3-ch1-supply = <&vreg_pmu_ch1>;
 
 	qcom,snoc-host-cap-8bit-quirk;
 	qcom,calibration-variant = "Thundercomm_DB845C";
+
+	status = "okay";
 };
 
 /* PINCTRL - additions to nodes defined in sdm845.dtsi */

-- 
2.47.3


