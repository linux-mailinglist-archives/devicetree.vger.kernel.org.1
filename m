Return-Path: <devicetree+bounces-256637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E516D39D6A
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 05:11:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1726830076A2
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 04:11:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17F1432F766;
	Mon, 19 Jan 2026 04:11:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CvW7X6Gb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JYEicZ3g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FAF232ED39
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 04:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768795873; cv=none; b=EVZYImMbFEKTEwx0Kl8RP4GmNcEQxoBf/PJVf0JwEe+TLq8IebpXiVf0cvTmc3qpJVVxfeec4EtY9toWLXZBwBScmQrGmxVx+B7PxfSxUBpB7eF2XZgwjlneoPXvESNaaikQdZtZqaMmZ6yaUD+k142bB8nP8B944sLicxRGkR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768795873; c=relaxed/simple;
	bh=brEFlgK/apBBNIsuikLYUlpLv/GgkyZGhCZG4fNm0oo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cOBlox6jLniub5KQ33OLvbMwHo+9RRKmnZEFtBeU1iMfqqOW4kIrrtuWauO96lOaIB7KukQSVGJVOyIk/HhTim2+joSpoTwJpLUjG1leaUafpxovedOiRAc7ezCFA6R1P3mHYT7zRv+intgj73RzHefmnAF5oiKROeeP4Dl9yuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CvW7X6Gb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JYEicZ3g; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60IIrd433777513
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 04:11:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=S0COB5S9fEQoqBaTjD19m/dFN/WswoekAHC
	oZ9Cc1/g=; b=CvW7X6Gbwl8GL5vORHH4bA9UKAObxl4GO1Li2y62DWw++ClbWa0
	e6YVG1LWH1om5doJq7kHUE0vdpXCo/ooN0If8Av+SPm1va/PUO8c9ClSDefc43aj
	0PdyVemBaI6MazWzulAiDeZKqNVq+r4/kWxWuvDihesIONIiVQIWkDRcaY2UaWc/
	vtlxAhr0llyxFiuV15uVDepociBVikLb+khx1UUA6QytWnkAZJewu/vPIfllVyW5
	J1A4yaFTtu9VNl+X5aW5Lp2QDC0DfHAr8tmRWOxyi8MeWIEp72gbi+8a+QxxC9N4
	adYzM9gBpZYCnNao3gg8zb0GjydbEUXplzA==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br1cqbr82-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 04:11:10 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2b6a8b32fa9so16823757eec.1
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 20:11:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768795870; x=1769400670; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S0COB5S9fEQoqBaTjD19m/dFN/WswoekAHCoZ9Cc1/g=;
        b=JYEicZ3gA2gNC8N/yyNkDyE1uqFejFN1k095Lg/bjfZ4etfZWMNb7ZU9+SRQXBjyhx
         jvHI9k/abHxkgVMzUrfms0QOvpadepUR4CTINFTJNxx/B1ZkO4lpic6/oqryhYgpPXgk
         ufIYlDiUsDFGxgYjT3hY0q2FnT+Lyy3yG6+wa8+urm35xQGfg1KoeU0I7SdrKzthlK4D
         3DPNv8JKne3aIkCTSEgaFL6RsmWJ1gL93BEKMx+AHmogbh9aaj1dZN/7wg4utjre7/tN
         UVVh7TZiIAnI6WBpzdVuJ1E+4YUDXD8NaBVkFfPIkbXjkO3spJRr3o8QKl16g+vIUgNR
         YEkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768795870; x=1769400670;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S0COB5S9fEQoqBaTjD19m/dFN/WswoekAHCoZ9Cc1/g=;
        b=n5ZKySgNNG+ihuZmH713VDDs6xv9Ocy5y45a3FRAoa2qLnWe8kWBl6EjcUOr1EImgU
         LkVPqrUtLLm8bqaiA/rUuFWT+WtAdC9rQGDIIasGJUxxJMYr01qzWXKgdsFikUoMSzES
         Y3xa8sIfByQdyVz2Z0aKgoZxHWPX412Gm2+29gNmj/Fd+ik83DjCY7rKnHlpajLKrkdh
         VAd2ACjHflxxeG5WxYbbAuKX/QbIcz/csswiIyeLWzo2eafViHVM1NF4nyggLAMzpPzD
         ApVkkMuhnqyM46IqADRTPyl4ih+k1xQPY8+o1rlh7dp7Cq5bySOJ6lJR/NgU6ZvSniHN
         DVOQ==
X-Forwarded-Encrypted: i=1; AJvYcCWA6voF1hwBA4On+kbyaVpyeSN+bMtYQSjfhd5rDs+Nz8lWPaDUQP0R6IWzg3x73SBq/aVbIqxdEJ06@vger.kernel.org
X-Gm-Message-State: AOJu0YwehhmC4nOQhFnTT2aud+foBI6PUUVYKFYtKHqkJ8IShuKG5X+a
	7W3Yo3CtAndhcBPMCMvhmeMXgvc3YR9IJAFERfMixcrHorQy1mOhQ2rJtL0zF3bftzeySSCHvyt
	sVkEqtkjk7KNCXjjUoY6M5fci5BifGejnbl9tcdFPWoByeqklC9ciljP31PVzj401
X-Gm-Gg: AY/fxX4yGHx6k/cLQDGf0cbrooXzS4an3o5GgxZ/V/cW11+B9hGqsmsoeP1jz+bqMQ/
	Ajl4KO5dQ4H4O0FCm8VwXKy9cAKJKuVeHDxRc82gf2fUC41yD556si++AV6ebOo0eWLwJPLA5dN
	R9vR2tSV/K7BINIoa6kBbtXQWkWJ/Yw2I3cbf0GJIQzrFMKh/ZluYOCrt4tl1bjQZp+P2y4F6Xu
	wkO1kA7sktAZxghS0m61vY6kMgZDF82iq+hPwWfeqhgjGdXWihEjMeix9AxSxS/F5x2c2NgzNfQ
	O0iCipiOGFVPcrkdRqeEt27vtCI1TW+RVNQAU0Xd+b07IR04fhqgo6nY/e5ZZn2uK5sXRJQMrrq
	n2s8OQ/M/eHQDbCrw8DDI0OuGvJBDoss+21qriJNUgrLahbVs5M1c7Z61HEgqMHTS9A==
X-Received: by 2002:a05:7300:df4c:b0:2ac:1e9f:a0ed with SMTP id 5a478bee46e88-2b6b40d9828mr9869415eec.25.1768795869218;
        Sun, 18 Jan 2026 20:11:09 -0800 (PST)
X-Received: by 2002:a05:7300:df4c:b0:2ac:1e9f:a0ed with SMTP id 5a478bee46e88-2b6b40d9828mr9869390eec.25.1768795868320;
        Sun, 18 Jan 2026 20:11:08 -0800 (PST)
Received: from san-w175-na3-01.qualcomm.com (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6b36564ffsm11467470eec.28.2026.01.18.20.11.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 20:11:07 -0800 (PST)
From: Wei Zhang <wei.zhang@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Wei Zhang <wei.zhang@oss.qualcomm.com>
Subject: [PATCH v6] arm64: dts: qcom: qcs8300-ride: enable WLAN on qcs8300-ride
Date: Sun, 18 Jan 2026 20:11:00 -0800
Message-ID: <20260119041101.2685092-1-wei.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 6JVI6LLqLlYMi1tK92C98r0w_oCi848c
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDAzMiBTYWx0ZWRfXxc/fDuInOCDt
 u15KnxjVQrpVpO7DA8nSq87oEATjdMjhcgQpoQg16YmKaVKmFZyiCRayStxfABZBVuw7ZLJ+vlk
 C4E1vDusHktlWXjIs7vzezK6zNuogcyojE9MZMhHkbBlXwb2r1iLO2qWOyeDYxH56eabnSoT/Tz
 5ymP9duTIEorSBqN8A5riys2twaiOJ4mvAr/jKy1ossaXx7ByfLsEmzKWqpuwghBPeIsq/IguBq
 9XQ5hyg5zzf0BLJfoWFLgo4dg0MduysDdaazmC324cP69gEtofxiws6+WuPowe3xggCVOLw0XIF
 wNZS53W8NR8mupFV6NvsLmuiL2IN5eMQbV9YhY4ZqktXXzxFRb3AveIwjBqxUEKBURG2sEAe73S
 MBn2uj7SMDG7racDU+qY10zDcZ/x3mH50JqoIt1IRlay8nqCqNB25HCzO4Hfk9RN+puohlQ8saT
 9bEFB47WIearc0q9csQ==
X-Proofpoint-ORIG-GUID: 6JVI6LLqLlYMi1tK92C98r0w_oCi848c
X-Authority-Analysis: v=2.4 cv=NfbrFmD4 c=1 sm=1 tr=0 ts=696daede cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=vM19rjaGBDlTF_Dnh2IA:9
 a=6Ab_bkdmUrQuMsNx7PHu:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-17_03,2026-01-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 adultscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190032

Enable WLAN on qcs8300-ride by adding a node for the PMU module
of the WCN6855 and assigning its LDO power outputs to the existing
WiFi module.

On the qcs8300-ride platform, the corresponding firmware and BDF
are QCA6698AQ instead of WCN6855, which have been added in the
20250211 release.

Signed-off-by: Wei Zhang <wei.zhang@oss.qualcomm.com>
---
This patch depends on:
- PCIe
https://lore.kernel.org/all/20251128104928.4070050-1-ziyue.zhang@oss.qualcomm.com/

Changes in v6:
- Rebase patches
- Remove unintended 'output-low' from wlan-en-state pinctrl (Konrad)
- Link to v5: https://lore.kernel.org/all/20251113055148.2729943-1-wei.zhang@oss.qualcomm.com/

Changes in v5:
- Rebase patches
- Flip the order of property-n and property-names (Konrad)
- Flip the order of bias and output property (Konrad)
- Link to v4: https://lore.kernel.org/all/20250325075331.1662306-1-quic_stonez@quicinc.com/

Changes in v4:
- Rename the symbol pcieport0 to pcie0_port0 (Konrad)
- Adjust the property order in node pcie0_port0 (Konrad)
- Add to the commit message mentioning FW and BDF used by QCS8300 (Dmitry)
- Specify the calibration data using the correct variant (Dmitry)
- Link to v3: https://lore.kernel.org/all/20250318093350.2682132-1-quic_stonez@quicinc.com/

Changes in v3:
- Complete the nodes property definitions according to DTS binding requirements (Bjorn)
- Link to v2: https://lore.kernel.org/all/20250227065439.1407230-1-quic_stonez@quicinc.com/

Changes in v2:
- Rename the nodes name according to DTS coding style (Konrad & Krzysztof)
- Provide regulator-min/max-microvolt to the regulators (Konrad)
- Link to v1: https://lore.kernel.org/all/20250210062910.3618336-1-quic_stonez@quicinc.com/
---
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 107 ++++++++++++++++++++++
 1 file changed, 107 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
index 68691f7b5f94..9a5de3754cc1 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
@@ -33,6 +33,88 @@ regulator-usb2-vbus {
 		enable-active-high;
 		regulator-always-on;
 	};
+
+	vreg_conn_1p8: vreg-conn-1p8 {
+		compatible = "regulator-fixed";
+		regulator-name = "vreg_conn_1p8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		startup-delay-us = <4000>;
+		enable-active-high;
+		gpio = <&pmm8650au_1_gpios 4 GPIO_ACTIVE_HIGH>;
+	};
+
+	vreg_conn_pa: vreg-conn-pa {
+		compatible = "regulator-fixed";
+		regulator-name = "vreg_conn_pa";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		startup-delay-us = <4000>;
+		enable-active-high;
+		gpio = <&pmm8650au_1_gpios 6 GPIO_ACTIVE_HIGH>;
+	};
+
+	wcn6855-pmu {
+		compatible = "qcom,wcn6855-pmu";
+
+		pinctrl-0 = <&wlan_en_state>;
+		pinctrl-names = "default";
+
+		vddio-supply = <&vreg_conn_pa>;
+		vddaon-supply = <&vreg_conn_1p8>;
+		vddpmu-supply = <&vreg_conn_pa>;
+		vddpmumx-supply = <&vreg_conn_1p8>;
+		vddpmucx-supply = <&vreg_conn_pa>;
+		vddrfa0p95-supply = <&vreg_conn_1p8>;
+		vddrfa1p3-supply = <&vreg_conn_pa>;
+		vddrfa1p9-supply = <&vreg_conn_1p8>;
+		vddpcie1p3-supply = <&vreg_conn_pa>;
+		vddpcie1p9-supply = <&vreg_conn_1p8>;
+
+		wlan-enable-gpios = <&tlmm 54 GPIO_ACTIVE_HIGH>;
+
+		regulators {
+			vreg_pmu_rfa_cmn: ldo0 {
+				regulator-name = "vreg_pmu_rfa_cmn";
+			};
+
+			vreg_pmu_aon_0p59: ldo1 {
+				regulator-name = "vreg_pmu_aon_0p59";
+			};
+
+			vreg_pmu_wlcx_0p8: ldo2 {
+				regulator-name = "vreg_pmu_wlcx_0p8";
+			};
+
+			vreg_pmu_wlmx_0p85: ldo3 {
+				regulator-name = "vreg_pmu_wlmx_0p85";
+			};
+
+			vreg_pmu_btcmx_0p85: ldo4 {
+				regulator-name = "vreg_pmu_btcmx_0p85";
+			};
+
+			vreg_pmu_rfa_0p8: ldo5 {
+				regulator-name = "vreg_pmu_rfa_0p8";
+			};
+
+			vreg_pmu_rfa_1p2: ldo6 {
+				regulator-name = "vreg_pmu_rfa_1p2";
+			};
+
+			vreg_pmu_rfa_1p7: ldo7 {
+				regulator-name = "vreg_pmu_rfa_1p7";
+			};
+
+			vreg_pmu_pcie_0p9: ldo8 {
+				regulator-name = "vreg_pmu_pcie_0p9";
+			};
+
+			vreg_pmu_pcie_1p8: ldo9 {
+				regulator-name = "vreg_pmu_pcie_1p8";
+			};
+		};
+	};
 };
 
 &apps_rsc {
@@ -355,6 +437,25 @@ &pcie1_phy {
 	status = "okay";
 };
 
+&pcieport0 {
+	wifi@0 {
+		compatible = "pci17cb,1103";
+		reg = <0x10000 0x0 0x0 0x0 0x0>;
+
+		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
+		vddaon-supply = <&vreg_pmu_aon_0p59>;
+		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
+		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
+		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+		vddrfa1p8-supply = <&vreg_pmu_rfa_1p7>;
+		vddpcie0p9-supply = <&vreg_pmu_pcie_0p9>;
+		vddpcie1p8-supply = <&vreg_pmu_pcie_1p8>;
+
+		qcom,calibration-variant = "QC_QCS8300_Ride";
+	};
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
@@ -461,6 +562,12 @@ perst-pins {
 			bias-pull-down;
 		};
 	};
+
+	wlan_en_state: wlan-en-state {
+		pins = "gpio54";
+		function = "gpio";
+		bias-pull-up;
+	};
 };
 
 &uart7 {

base-commit: 24d479d26b25bce5faea3ddd9fa8f3a6c3129ea7
prerequisite-patch-id: 0e8aad7b8514142fb33c17829386f17c3a55127a
prerequisite-patch-id: e641f09d4139ac77c34757bd08af2db746de3963
prerequisite-patch-id: 4d16e87cf6213d6e25b2c40e2753d4e629778d53
prerequisite-patch-id: 40187dae2c9518a10866104b9fcd5a481ac67d51
prerequisite-patch-id: dd3bdf2aebda74f3603aff24a2c9aaa7f4fd6763
-- 
2.34.1


