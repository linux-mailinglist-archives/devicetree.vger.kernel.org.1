Return-Path: <devicetree+bounces-206921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CDFB2DF75
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 16:35:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A246C1883523
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 14:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85ADA275AE6;
	Wed, 20 Aug 2025 14:28:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ce4PT4Cx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B05BB26FDB2
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 14:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755700129; cv=none; b=hZ/BBgmt8D8UyVMs5mblPk7m69r52FOrcYkUjh+UnEBAFwACf8y6cOosAe69Tag/AoECeskrI2f9Ftqc0rnRu/zAEHNdnEP7WEzNhLkfXAz0q/Mi00MYZe/T0YO4RId6PqAKimwh2Tu4ANx/n8Bpb96GzBPt/mrPgfUKTnAky6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755700129; c=relaxed/simple;
	bh=neZ49KyTVZEtGa1LBEivdDxTGFlLG2vQYfbGidEXrKU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=G1HMd7hCHN7Dq0vQWrRiHRJq51siVXY6ue6cXXRL5Dow9/MU64eybyyd3YfRNC3pzES4y+znm7VX9GO/RncxmiNPbdfXM7H91mQHZslnRfblzBDICDc4vU+qxiLTOVECq+AF7p819ekN4LJTYH7sf6JcbioR1T+8nGAUAf/GBt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ce4PT4Cx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57KA38Qf004230
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 14:28:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=sPyP5LFvODeWiNRqv7MyVr
	8luCj0S9G/q4eynThmEkc=; b=Ce4PT4Cx2GuCNFZiAB3J96wj4oP7R1bingf/wl
	wNlxiVroMfdewBX9TwQ8aFA9DZvroLPws7Syw7KgAaTmpnDXn+mYnz02+1RJhwJF
	OSHebsffe/dCNUhnaDS94REGFNQQzbO8+2B4R5VHcEHbfgpoUdlnyHN/0RmcKJJC
	pIFYm9cvqLUVK0ITVTLIZw7iCc2K4i4OzbOXjaVgA+DNk44J8KjRKzFKe6bXhWjW
	UKz3eI95Zcu0ryLLU6Dswfu73rRNDm9K//4ZDJ2EmfilMF1/5PgMqj4QO1QpwyHS
	YYQZPOWEvvaB1CdM/Tvqgkglto7oJ1f3y2Cn6+U3JnLXuOew==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52ahymf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 14:28:45 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b471757dec5so11444394a12.3
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 07:28:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755700124; x=1756304924;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sPyP5LFvODeWiNRqv7MyVr8luCj0S9G/q4eynThmEkc=;
        b=REDu6zbLtzs0Qlk2bQ/uv6rDMMgLA3C3jdZlmDFiqeIVZQFptsBrQ9/pSbocBnqCgf
         4ViGDgB4oK/qdkIBbVNVpPlYg7vZGvAKUjia7E0+N4um2G2KNwshVHqmCu+O765J7NgU
         /TCG4ilJPbJZQ0Yka4umGEPaLfosChEnmoNIf3K9eUIvFSffdCTSMZ0BDTIEiaxf6Lfq
         9fbVkAfsDicEPQfsIgLCsJOXnoKkT+MrJWOXH3475jA39uQe2ZOj35JJoruE9qJejvl3
         GR6+tTu08JXb8n3p0iuIouCQcPcOSanUFsouI3pwYPHvu/A2A4MUd2hCvsVTk0svzKYH
         GVlQ==
X-Forwarded-Encrypted: i=1; AJvYcCUCHu5Y0Yn0zPR8FLbYyN7+WLEOMMjjWb4/jqRLsX2x1+bdd6XKcdWRiNeuiXml3j0dVH9CMwXAfcfa@vger.kernel.org
X-Gm-Message-State: AOJu0YxyXdT/mg8hbF7gnTnRaILt6Y+t45BYgTkDf7Sngp95lEtghvE0
	Bh+Q2lKi17siE99DOyljhz+5iOC63ov/zbGgOCSS1uJvBXP59mxp8ZnAOpShQjC+6mXxda7i828
	CCpuQ6tL9kNRZzYwAwGKFr+E+LwgkKYOxbQfObrv1kDwfEM1gmaS6nH5Qgfpm7Xwn
X-Gm-Gg: ASbGncuvFYZv60SOBUABvCqy8AMauyn2y7hOVONN/9A4WRiHeyYSyR8ARVXb14l+K2M
	ryHSFj9i/eFCwASOoyX3tPUujX6/UCVQMkVOiS+CjJhCZ8LNlkby8rfp5E+dYmzcwDUADAwG11v
	rsHBMVwoumbbFbK8dgiSZ1IJi+DIyIRRmcnmf1dPanhYMzs3G1IZIFXiVM2TwQsZIf75L4XZ0DG
	v8DIydJtN2MBFYLWnYQ+PRRjwADT7b001TyUJMk35hIOGGjtsOZuZSEiR6a52bjpFD3l+l1M15t
	rQFsYOaRvfy0/5XQDP1eJL1S3O+Vo34XZN8qAsX3VRygF9R5q5J6gK22kDjIdTM2Q9IklCr5iij
	j
X-Received: by 2002:a17:903:41ca:b0:242:8a7:6a6c with SMTP id d9443c01a7336-245ef150ae5mr48360905ad.17.1755700124116;
        Wed, 20 Aug 2025 07:28:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGcKKwNxAixqEvxQMv3bygAQ2ikirzD0wkL7Np597naqBY/v6S8MzZ47RtfUCn28knGEKgkxg==
X-Received: by 2002:a17:903:41ca:b0:242:8a7:6a6c with SMTP id d9443c01a7336-245ef150ae5mr48360085ad.17.1755700123520;
        Wed, 20 Aug 2025 07:28:43 -0700 (PDT)
Received: from hu-vvalluru-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed519787sm28551305ad.143.2025.08.20.07.28.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 07:28:43 -0700 (PDT)
From: Prahlad Valluru <venkata.valluru@oss.qualcomm.com>
Date: Wed, 20 Aug 2025 19:58:35 +0530
Subject: [PATCH v2] arm64: dts: qcom: lemans-evk: Enable Display Port
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-enable-iq9-dp-v2-1-973c9ca22474@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAJLbpWgC/3WOywrCMBBFf6XM2kimaZvElf8hLvKYaED7SGpRp
 P9urGs3A+fCPXPfkClFynCo3pBoiTkOfYF6V4G7mv5CLPrCUPO65RKRUW/sraSTZn5kxnunnUT
 dOg2lMyYK8bn5TucfJ5oeRTv/QrAmE3PD/R7nQ4XGtNxroUip4IxHgXXTSeu5ttRwIW2gToUAX
 9c15nlIr23qgpvsz6oFGbLOC4WEvG2kOA4576eHuX0f78uB87quH4k3/X/9AAAA
X-Change-ID: 20250711-enable-iq9-dp-addc9c7195c9
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Shashank Maurya <quic_ssmaurya@quicinc.com>,
        Prahlad Valluru <venkata.valluru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755700120; l=3004;
 i=venkata.valluru@oss.qualcomm.com; s=20250711; h=from:subject:message-id;
 bh=9yBiuRq/b37ygaYnKeX77bHnFkhApr+QDXwALNrB5Sw=;
 b=1bsu50TNA9TZbqwrGV6oUL1bym9pGMHIkLOj5tFGh0xK9kmRJaWhzeW0/0C6/9Bp1Z6MPKhBq
 kV+EFapaR7fDSjHrGGjjUgGD2MmNMqfNukkSdTZKRDOfzhaPYBmnvPW
X-Developer-Key: i=venkata.valluru@oss.qualcomm.com; a=ed25519;
 pk=f/CAPG1ZGl5SP8S1GuC97WMhUEV87h0JheHkNMt1nhM=
X-Proofpoint-GUID: D0YHE22VSUH4ucjOHQf2efc1zBvOgt0P
X-Proofpoint-ORIG-GUID: D0YHE22VSUH4ucjOHQf2efc1zBvOgt0P
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX35io49S1T+BU
 N2K6e0vWWahBkyOCZ7Sgb45rtlZYpJJNijIHD6j/6tPUF2wxo04iwumSvdJn6O5Ok1MePKMbGE4
 aJgD1JYcPaTmQZLL77/LZJDQ6Ox3J4D2vLoj9HN97WEVZK79nf1ZyOBaQ4GBD8uNM0xxEe86Q2v
 7qyj6rzbo1SadL90v/FA+k2VX/ARDLZ00TwKmiTTVdFbTWgONPssJ8LOr8emTh6VU82+IE96yWH
 kNB2e700lR0KAgoEVUGzhjxJ/HCiKHaLaPvdb09t6rX3g3kL7kCmbCplo9audNi46CB4S3Gj/uD
 e9U8rXEPPKgAq+J0nPdvaUmkryWj0XGivBScHPIA28dPkwLvV5IShf/GgPlTTJTPHDRVY1pBi8u
 rG99BcXkT+SQdhojYpSP1GWp7inhmw==
X-Authority-Analysis: v=2.4 cv=XfbQDI55 c=1 sm=1 tr=0 ts=68a5db9d cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=ZQucwW7hKNWrINUWBWsA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_04,2025-08-20_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 spamscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2508110000
 definitions=main-2508200013

From: Shashank Maurya <quic_ssmaurya@quicinc.com>

Lemans EVK board has two mini-DP connectors, connected to EDP0
and EDP1 phys. Other EDP phys are available on expansion
connectors for the mezzanine boards.
Enable EDP0 and EDP1 along with their corresponding PHYs.

Signed-off-by: Shashank Maurya <quic_ssmaurya@quicinc.com>
Signed-off-by: Prahlad Valluru <venkata.valluru@oss.qualcomm.com>
---
Changes in v2:
- added dp-connector nodes for edp0 and edp1.
- Link to v1: https://lore.kernel.org/r/20250711-enable-iq9-dp-v1-1-6d381e105473@oss.qualcomm.com
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 84 +++++++++++++++++++++++++++++++++
 1 file changed, 84 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 669ac52f4cf6aece72141416068268531fd9f79a..40becda317ef2546e16ecd44476f76a4cde98be4 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -22,6 +22,30 @@ aliases {
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
+
+	edp0-connector {
+		compatible = "dp-connector";
+		label = "EDP0";
+		type = "mini";
+
+		port {
+			edp0_connector_in: endpoint {
+				remote-endpoint = <&mdss0_dp0_out>;
+			};
+		};
+	};
+
+	edp1-connector {
+		compatible = "dp-connector";
+		label = "EDP1";
+		type = "mini";
+
+		port {
+			edp1_connector_in: endpoint {
+				remote-endpoint = <&mdss0_dp1_out>;
+			};
+		};
+	};
 };
 
 &apps_rsc {
@@ -253,6 +277,52 @@ vreg_l8e: ldo8 {
 	};
 };
 
+&mdss0 {
+	status = "okay";
+};
+
+&mdss0_dp0 {
+	pinctrl-0 = <&dp0_hot_plug_det>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&mdss0_dp0_out {
+	data-lanes = <0 1 2 3>;
+	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
+
+	remote-endpoint = <&edp0_connector_in>;
+};
+
+&mdss0_dp0_phy {
+	vdda-phy-supply = <&vreg_l1c>;
+	vdda-pll-supply = <&vreg_l4a>;
+
+	status = "okay";
+};
+
+&mdss0_dp1 {
+	pinctrl-0 = <&dp1_hot_plug_det>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&mdss0_dp1_out {
+	data-lanes = <0 1 2 3>;
+	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
+
+	remote-endpoint = <&edp1_connector_in>;
+};
+
+&mdss0_dp1_phy {
+	vdda-phy-supply = <&vreg_l1c>;
+	vdda-pll-supply = <&vreg_l4a>;
+
+	status = "okay";
+};
+
 &qupv3_id_1 {
 	status = "okay";
 };
@@ -261,6 +331,20 @@ &sleep_clk {
 	clock-frequency = <32768>;
 };
 
+&tlmm {
+	dp0_hot_plug_det: dp0-hot-plug-det-state {
+		pins = "gpio101";
+		function = "edp0_hot";
+		bias-disable;
+	};
+
+	dp1_hot_plug_det: dp1-hot-plug-det-state {
+		pins = "gpio102";
+		function = "edp1_hot";
+		bias-disable;
+	};
+};
+
 &uart10 {
 	compatible = "qcom,geni-debug-uart";
 	pinctrl-0 = <&qup_uart10_default>;

---
base-commit: 1aa50d938e88fcad1312467bd09be4037bfe68ff
change-id: 20250711-enable-iq9-dp-addc9c7195c9

Best regards,
-- 
Prahlad Valluru <venkata.valluru@oss.qualcomm.com>


