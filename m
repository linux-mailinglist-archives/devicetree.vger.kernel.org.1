Return-Path: <devicetree+bounces-195847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2654CB0355F
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 06:55:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 619D33BA426
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 04:54:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CECA202F83;
	Mon, 14 Jul 2025 04:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aEACTr4p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79FBD207E03
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 04:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752468811; cv=none; b=jD8QDDkYnC+BY0iH0n5S3LMRvHGVHO+3QI7EoPqASWZXRhDKeo/ZTgTBN1yVuL1xjy7bIR8BMLvTdwLg0DdfnPzEFB1F8g360UwDEobrOLluT27WFxR7YdysBZ586ji4qvpnlF0aacttkqG7Yt0OHUGGaxzkwN65l0NSNsBxN9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752468811; c=relaxed/simple;
	bh=vxDpJpKIIYMZdJyPGc60w0X3XM/jxcMfw4gnKyJa4fc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=pwTmQEXyblch7HO4rgCbqlyTRRPezXFvLu5BWkqdf+HCAYCRcetz5XnRmwIZpdAiqPtTcvTzKdAFEtEX0hBbI+EcBsHQoPlK+FhZyU8a8h6ny6rXob444m4dYNKFhvbjq7EnZsDOLwpSdBRU6Z0CGJXSLl6GzAdgZWGRowMS+Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aEACTr4p; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56DMDrdM018413
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 04:53:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=/dyS6lm2huG
	v1iQEO4KkSzy92fn0Qo8/r5nwum9cLug=; b=aEACTr4pWVffU44F0YrZdNC+gPf
	YHQ1LXOfNjCz6FvGojb92aac4LkUmDmyGiZlVlNKsnnM6uiXGhmYO4U0v+JvDfpZ
	Z4XyimXC7Q9MAgLdmGKVkAAGTjewp2dLG1EcGXldQY1yg709sTr2NvZZszW5zlzM
	YEAt8S6endA/MfuJBIecLfPpdPd5eDdWHNTGXKgfK1zeE/VEZheXaR2JVsKYO1Hb
	IE4N/EylEapVdo5kCCEaFTXKpjoUv6ym3vzj+hv0X9C3hDDrCgS8b1Lhs+6nQsEP
	GijU3f/bi0OvgXleMf+Q2k+5lui1zmfZfSz5/+r0vgZZeNjttZxSm3uw3sg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ug37u7qe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 04:53:28 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-23536f7c2d7so65293925ad.2
        for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 21:53:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752468807; x=1753073607;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/dyS6lm2huGv1iQEO4KkSzy92fn0Qo8/r5nwum9cLug=;
        b=kDID204dPZ+RZ1clqz8gJHLqunk9Y4d0Qj5/r9Pqn9akd2a5UvmW1IjMtLrwYFYsz9
         KVHYQYTMJ2xbP8X/YJF/+Pujk4OhD1/v67jfR13+sw+nnVA5+t+CpwycRZt5h9NwBarF
         Id+bYT1ppQ2EMCAI2OXprJ6iNY+tkIv+qjKsG39psDAqj/4ZsnO//jUK63JdizbL0ozm
         pJjTLRWFhT3f7JQ4JjUiSEuJuuHilHMXbRCjKIQfp0wwvs/8yAI7ryGcl7nZzNZbgUfi
         CRxXc8GXkXAP4OIyQ/ogA25XliL+3TY9Ctbf3Uj2Xfa1oG6c0UG1iJ18Me8X6YuWGb1x
         ey/w==
X-Forwarded-Encrypted: i=1; AJvYcCU9EXxcKpdE27NVzjugeAcU7U4CwrtL+3AK/SpM4hQC89PWKgIEK8m3dscgdW+dWfcZDTuonY2Qt9MC@vger.kernel.org
X-Gm-Message-State: AOJu0YzgozVphki2fPsGF2v1P7EW2BphESiUHE+9JEdyNFNRZzLS8B+/
	2i2YH34Hp0D0jFswxJbwtqE/DPTElIgENlwxquI1ZbaCb34R2hYmXbWNadl7FA33V1kJP6pq7vK
	XPdrBWGtDeq/qUCWavSywT21tbc3LiVN8YpI3qYFQw5ZvaO5aOKz2LL19uFPen8p3
X-Gm-Gg: ASbGncv1erGv//ZmREKNB1rCLj7o5QNShai/iVnPLQ9DP4Bo1jkToMnXlRB6aRtVW0t
	fAKryNCfj2N7ORRnf47ctBUiWg57B3uWA0xpp3mPltvsVVWuwcjIVgyrwilIn0eXWUYBiDY1yO6
	whEMfDoV8hZAb/a71BPgDgKVSIbOURCG3hV944eeaaqXugOqMrNu1VkkW0xMOvXKn8/brxzlXv1
	jXdE2/3TZTHosgcnirsrZFOh3dCuSEX7ccn89m0E6nUrUoGPz8vCsSBC4EQRzBzHccCeYByknY3
	9/XuAwqqX/JU3QcLCeVwbm9/h+Vef8SXxyymnWwWmiAYAVsbYoCVHhBRMyaI6HvfsIAeUpARnfK
	qgw==
X-Received: by 2002:a17:902:cecd:b0:235:1b91:9079 with SMTP id d9443c01a7336-23dee238341mr236151115ad.32.1752468806939;
        Sun, 13 Jul 2025 21:53:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH+rDCunYHTkDmhlfHGHnNzzoXPu6ht8XZBiBrXWddujytUCEQsw7LWiUufuT8EKxDa15qWgw==
X-Received: by 2002:a17:902:cecd:b0:235:1b91:9079 with SMTP id d9443c01a7336-23dee238341mr236150695ad.32.1752468806550;
        Sun, 13 Jul 2025 21:53:26 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de42864a8sm85664325ad.42.2025.07.13.21.53.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Jul 2025 21:53:26 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, neil.armstrong@linaro.org
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v3 1/2] arm64: dts: qcom: sm8450-qrd: add pmic glink node
Date: Mon, 14 Jul 2025 10:23:09 +0530
Message-Id: <20250714045310.2092385-2-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250714045310.2092385-1-krishna.kurapati@oss.qualcomm.com>
References: <20250714045310.2092385-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDAyNiBTYWx0ZWRfXxkndoeWmZsJN
 XuT3rnHv4UxSx/56Ip3yBtVS4la4+mckWkAMVHBl2WR2D+h3D508eyngVB6d3zV6fWQLmOkc5I6
 DObSZ0BDQTn0eNIEnnsTpiZ7rujS/g/uMhmTMIx8SlHjHpMCcsNcAlcOJHnbhUcnYfUsJJlZhzn
 +1Nd987A2dCx+aSBQtNhhKS+2lwq8fR2IspBuarOrW2vtbOQ+YTYLbbl6zTuaunyV8YFEXixl+O
 LTspWkDd5i/Esa+36xJfas+sL12Kluk8r3ik/n78sy8ZpSyqULIUgTFDDHTElcSutZKb6a0jeR6
 dT9gOFDF96rmeS7n+IYOBhUC+HPWNmJa8x8FQLL6cpWuuIo3I/PEZZSo2GUo4jA6oBAV5/2pUAY
 rD5pEChSPF+YGvnGfEEA2BR8D2duPVS+6G0USQOFmUgDpEheW3gJqV9YGM+J86GV4NbxqdQe
X-Proofpoint-GUID: bUi9DJ77CXIwfLUwp5pmWnXBygJDJ0Ss
X-Authority-Analysis: v=2.4 cv=SZT3duRu c=1 sm=1 tr=0 ts=68748d48 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=jfJnQzvz6-r5myQHi-gA:9
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: bUi9DJ77CXIwfLUwp5pmWnXBygJDJ0Ss
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=999 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 impostorscore=0 malwarescore=0
 phishscore=0 spamscore=0 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507140026

Add the pmic glink node linked with the DWC3 USB controller
switched to OTG mode and tagged with usb-role-switch.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8450-qrd.dts | 51 ++++++++++++++++++++++++-
 1 file changed, 49 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
index 8c39fbcaad80..a5093eee3dea 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
@@ -37,6 +37,49 @@ vph_pwr: vph-pwr-regulator {
 		regulator-always-on;
 		regulator-boot-on;
 	};
+
+	pmic-glink {
+		compatible = "qcom,sm8450-pmic-glink", "qcom,pmic-glink";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		orientation-gpios = <&tlmm 91 GPIO_ACTIVE_HIGH>;
+
+		connector@0 {
+			compatible = "usb-c-connector";
+			reg = <0>;
+			power-role = "dual";
+			data-role = "dual";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					pmic_glink_hs_in: endpoint {
+						remote-endpoint = <&usb_1_dwc3_hs>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					pmic_glink_ss_in: endpoint {
+						remote-endpoint = <&usb_1_qmpphy_out>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					pmic_glink_sbu: endpoint {
+					};
+				};
+
+			};
+		};
+	};
 };
 
 &apps_rsc {
@@ -461,8 +504,8 @@ &usb_1 {
 	status = "okay";
 };
 
-&usb_1_dwc3 {
-	dr_mode = "peripheral";
+&usb_1_dwc3_hs {
+	remote-endpoint = <&pmic_glink_hs_in>;
 };
 
 &usb_1_hsphy {
@@ -487,3 +530,7 @@ &usb_1_qmpphy {
 	vdda-phy-supply = <&vreg_l6b_1p2>;
 	vdda-pll-supply = <&vreg_l1b_0p91>;
 };
+
+&usb_1_qmpphy_out {
+	remote-endpoint = <&pmic_glink_ss_in>;
+};
-- 
2.34.1


