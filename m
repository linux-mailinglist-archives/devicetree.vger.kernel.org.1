Return-Path: <devicetree+bounces-184148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E737EAD31AF
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 11:21:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D08B0188FFC0
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 09:20:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F4D628C5D9;
	Tue, 10 Jun 2025 09:18:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D7VHjR54"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D4B728C5B9
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 09:18:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749547100; cv=none; b=a5S5o+6iVZURuoTveZRNz4BgCUtwJaV3qhrGHNWvp+JgxWHEK/pj7sCVDB90LR97nJP/FhURDteXa7FRbUv/wiBuqSSrrWw9/yw54S4VqkYcKUMjh7cBkuMjHhvT1t8Ro6JyuFpglmqUEPkWskrsWHRAURn9FwhJJHCbktxHMHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749547100; c=relaxed/simple;
	bh=tH3QCqQ5wvaEdWI6wS1XKcUQ5WTs4pu/tOm8/RdQwGw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=V9RlYqnMS710fHRjbmAaLhqfQQMPkZwdXPc2YRCyxpi1Kky0FxW1gubJWspvygepkoMWm/SqeSs2Q0G1BxIbYtlg2Rdr/VAFs+/37JYWxVlIscgII0p1mY+UlLkcgRi3E1tbppIl8XuFfciU5Mv94sYiCWdNqPjpw7M1CfoYtzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D7VHjR54; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55A8uloq025168
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 09:18:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=l7rgTxoln5S
	nezMYY0ZuZT8QaCnNOs5V2BsaLSK4/0M=; b=D7VHjR54OWUKhIPx3D+IgNnJbC7
	GTt5HdM2qxHP7eQRofRZqEqWXPSvL890KOnd+BDlnMnA6nk+PKVMnaUz2AxmzXit
	/1liM9Zu+VkHPIuZAKZrpnwtX1TSLjF/Z1T9v/nhJyDiP/WdAyKXEy1onyHVzMN4
	pWVh0gk3vjFQnj/oo1SWpXFWSpH911msVMbTv/wRdddKhfDc4DpcV7IVbO8UnmdU
	rGRYnx9DrDFsjzYugNlZxrTqkU6Mwtxao7obGaDvUeS92HTB+tACwIUoOaZV6eVl
	AGDqOAbAfHmqBTOIos6rDP4uQTy1DLyJqoqhiV3q7IF1EmlItlBo63mML/Q==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474d120xgq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 09:18:17 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2349fe994a9so38353135ad.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 02:18:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749547096; x=1750151896;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l7rgTxoln5SnezMYY0ZuZT8QaCnNOs5V2BsaLSK4/0M=;
        b=rt4hV1QA8vzvTTjQPrfm8Ry7v2BNyTvdScvloP9ZcBhwK2dTL7lw7rGWzKg/5hZv4/
         a6vNMgVtfBGcRVaI7qOYdqQjev6m5sWZSo5nc/IgIj7Td8EIALFD/dFaRdEAJUh1//YS
         flvCRvOxcmplcDECxEwDabwwn2eOUDvWTsUBrIXd+PwOG6c5TukuiBTPPJDTD+EvgD3c
         jqhzWkXhruzCzfSOGrOT3xJd4SU7zxrqgIAS1elIsTXhh8l+ioVPryAjWlLJRmwzUdva
         D6XTHUfaeiXBPcAF4l9k+n+2dYVsKp1MpBRZOcbHe3L8bBM9UqtcGayEHSrAxX0LYDw3
         zheQ==
X-Forwarded-Encrypted: i=1; AJvYcCUh4a3NuUtycBo8Xm766iwuzaXYLJvJmHLf9bq6qaBBxzafJL5fDs6881x8wjNCHeaXjigaP7+nR0YU@vger.kernel.org
X-Gm-Message-State: AOJu0YyqdGY9jPYQ06hyIwCWrwYZVgYH0vAhZ/xUCMtSFQ2A6z4o5hoC
	s7TtwRvVvbtKRVJ+vkTQ7OMk0tpfSRURz5Eghpo2v5uto5Ry0OQ9mFdPDq1Y8w8IghyXI3fS9eM
	c9F7m6DKealAYPWy5N4WrE5wwugXFZa9OLzXo2Y2ZS/a3Qr/m2VESHdmduiRXOSPVfM0Lqau+
X-Gm-Gg: ASbGncu2ipY1EqIbgCHjyRVqPgh5EsE5qded2Y2g5y7tjHETJW9D3YNFi15fTtSNB0a
	2nBC4ydJ95/oIT2y9Ccl3lodAUoKzc1jV9Wb0EfWttxi8INJuOoCE6dfD0GQUniXqjScOzE2x9j
	z8pcTK/9U3FTwdxDZPSnL2EhnwxmN+1+z3AQbw0n5/iqi4WkEjejKFzUo5M5vAL/AhspFXjFg1f
	dnpUO3dDkHcmbsj/IOD0PLYHoqZtzYyBtXtD9PfxwiXGRptjKRNW4QRi3xlGzDIFWhv4l81pMbR
	6lCMJjzYQbQcLs52oFQkdpqkpEENkwUgfued2UCpsnJfB4YoIBSH5VoVmseg
X-Received: by 2002:a17:902:d2c6:b0:234:cc7c:d2fc with SMTP id d9443c01a7336-23601d24945mr221214355ad.27.1749547095883;
        Tue, 10 Jun 2025 02:18:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHFcej03vQFIMMKVmpHAGolirDjjZCEDokkK2cjPvkzor+dPuEdvovLRKg+dO8kskZkkPXUDA==
X-Received: by 2002:a17:902:d2c6:b0:234:cc7c:d2fc with SMTP id d9443c01a7336-23601d24945mr221214055ad.27.1749547095471;
        Tue, 10 Jun 2025 02:18:15 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603d14206sm66951195ad.34.2025.06.10.02.18.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 02:18:15 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v2 1/2] arm64: dts: qcom: sm8450-qrd: add pmic glink node
Date: Tue, 10 Jun 2025 14:48:04 +0530
Message-Id: <20250610091805.2997546-2-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250610091805.2997546-1-krishna.kurapati@oss.qualcomm.com>
References: <20250610091805.2997546-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: SnSoNpXvBOE9IaWur6bU3Y8Z3ndYveed
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDA3MCBTYWx0ZWRfX3OKDDyaGdScT
 Vr4kAYmCn2PuEFAK1REc60LJ7X4qNsM0Jb+0rjcLrm4em8h9kUeCamKYujCsFI2GbT4ztVnd2GS
 jRrH7/tdixLl2RIowncRryzR8FG5xvEnQoKDFPocu5yCo8ZiqWJlT7SzXYjPb+Wb3CMqzsuhHbQ
 /eNQaOKufm/kkUIv8YBVvZGUst1z++Pd4Zomm2C8xdF/T98phrPbwXpBscILvUf2lqzJqPePAMX
 rm46hMzatlbrXHiGIMx1rxEtw/PmnDAunvHz6SwQhnykmMpBPGh6xqt4+HHdXtSQIo9dT+/fRNZ
 1B9O1pDqNt+4bZojPYr3SQePPrQx0sqtl++Hic9D0whWBddzdONB5dXh7MtqHKeo+TQ/coHy2OC
 yR9NYrHn8W85EB0/PdfLPu/wBI0P8PMnrdjAzbL9mBsjPle4iKtOPBLn+HHj1QWAsYo5KTUC
X-Authority-Analysis: v=2.4 cv=GYkXnRXL c=1 sm=1 tr=0 ts=6847f859 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=GRfoJ1sndLYZKjKjrdkA:9
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: SnSoNpXvBOE9IaWur6bU3Y8Z3ndYveed
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_03,2025-06-09_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 spamscore=0 mlxlogscore=995 bulkscore=0
 impostorscore=0 clxscore=1011 malwarescore=0 priorityscore=1501 mlxscore=0
 adultscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506100070

Add the pmic glink node linked with the DWC3 USB controller
switched to OTG mode and tagged with usb-role-switch.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8450-qrd.dts | 54 ++++++++++++++++++++++++-
 1 file changed, 53 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
index 8c39fbcaad80..0580408485eb 100644
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
@@ -462,7 +505,12 @@ &usb_1 {
 };
 
 &usb_1_dwc3 {
-	dr_mode = "peripheral";
+	dr_mode = "otg";
+	usb-role-switch;
+};
+
+&usb_1_dwc3_hs {
+	remote-endpoint = <&pmic_glink_hs_in>;
 };
 
 &usb_1_hsphy {
@@ -487,3 +535,7 @@ &usb_1_qmpphy {
 	vdda-phy-supply = <&vreg_l6b_1p2>;
 	vdda-pll-supply = <&vreg_l1b_0p91>;
 };
+
+&usb_1_qmpphy_out {
+	remote-endpoint = <&pmic_glink_ss_in>;
+};
-- 
2.34.1


