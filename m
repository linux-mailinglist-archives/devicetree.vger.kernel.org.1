Return-Path: <devicetree+bounces-196344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2C0B050EA
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 07:28:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 627801606E8
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 05:28:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66E602D46C3;
	Tue, 15 Jul 2025 05:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g5pjkeah"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8082D3EDF
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 05:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752557274; cv=none; b=L31g9l0zFMUAaafsBoXKN+aLNhAB4JTSXqjK8s6e1F8HFiRiXj4eK5VIP4qZhQRbZDd5L7zC55tXJ5L3chkao+/RpQBg6pa8AfRwo/428IIeb/eDjLOvCsSmFsWWM1UIWhHyE48jmevReiAVSP2iBOQC+q3vAYryFRNs89aOfRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752557274; c=relaxed/simple;
	bh=vainm/xNRpN24g2SmNn9CA25Khfl60n8jqCt7ca7nNk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=btc1P2oXbJzRkxMog/Ue8HJnq2+XokpgXuyiRbLvgkvXDZLf0guOQ/jgyqfk2YiLTk3hL2OGwn0xUmlFTRBmiwRTmOzVBOMMquZyP1cgSwN4ysIB9fQdgJmNk83PWK2nDYFMtfe30qxKIgXWWigSK+P7nr6j4DBJKhIiUwNfs74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g5pjkeah; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56EGRvCO028103
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 05:27:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=52sZ/EqAgkg
	D1L1ASELuhg4WdghQGw/3nAe5HaeLCDU=; b=g5pjkeahSlPM3eZfFDYk4KJDRR4
	h5va7lOGiiJjzECK+cvmATOxowpelDnx02mSHqoyb8qlARAWG5XDrKmnKlFC2rh6
	IcaNA3iy/obQpe7mrNAGO7fpF/rFRA+Hus41shHNwSiFp+SaJSkgc7jYO8ikBIxd
	Qz2QtMRflpOJGcblrWIY5f5Qb1AUVKflk14sAxKDX6Z4LREUjldydWQFA2WTnQj8
	eotEknotVmTjtWT9iHKspWu/SYcVtjt4+n34jTH9NAMCeMkmqcKJIgJE7y0VhqQy
	4Cax6dspb4kwz/pUuTpI+O1KqkPxcd59nYwfWWU0ly3egeOX0/ruQcsQ1RA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5drhp8j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 05:27:52 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-74928291bc3so4369393b3a.0
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 22:27:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752557271; x=1753162071;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=52sZ/EqAgkgD1L1ASELuhg4WdghQGw/3nAe5HaeLCDU=;
        b=pFvMuP1AMFmBIl3zlzMfDUG/StF0R/JlyCPUEX4DoId2flXud1oVa36Dwcokb/JDdM
         iXdfFRkd9/HpK40yoKrO/tXv8WpNatDrCvdSdUxjfollVGcYng3V/BSkXjSQv4xG1RLY
         DgPrGXXpAwXXgDaW2nHHBCc9cL4tJ9R4ciJdzFLl3wCEjlagvdrdq4gZgB0+na6AVPee
         RO7E9/1qy2Bt/jjoJ54pJVqWscualuguT/Jt2ZMg1jPpEIT2voSpgt6k03z4nI7Q8/a+
         Tpa1B0PUHz1UY2Ee1I0UZZuKU/ZS8LEvaXQHsEBu/LZVCw9GJwzLEHaFc7HCtLVbGx1c
         JBQg==
X-Forwarded-Encrypted: i=1; AJvYcCUyowX4qu0vvk4h/qp/a5C4EBk9/wE7P7XQ/Bc+UO2k/iXFt4mACssGo7GYjY3JV0S8Sgrdeb0fx043@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ3fb4EqvswQeHfTdgk2xl5y1Sqet0oYOGHIXJBuiF31/qXdS1
	YnQK5JK8uHSBTaaoWlQLJOCjKDUYzoJ55iV/KvKrB2+iS5F5w4jDYQleerk4C2Tj0F/wAvmVI8H
	CARZGqPNOqafd9/hrhJHzDt+m64KqZDmOp1VDmeftAa6Okqi7gsoIsvZ9FaynKcW/eAmM9ktd
X-Gm-Gg: ASbGncuxde87qUau9qt4I1fThoRVBO2h7M9t2CLSJngie4Ca9vJiLugcholfAkLRInw
	f4Vx8HfOGuSIwY3LgHf1WEjDjZjq6QjWKZ3C3j2D0lWRomXMbV5tOmM5zmsN3LY4UkgmBsYoP/x
	nXR8/48/SumT6myTx5Km+JLaT1WqEgLQpFK9SwiSJoziJZl7AZ8WW9BjVisddOTBcBCrEJjyl9w
	beb2FIPAdIN72+Sd57MaxYUoaNIIlNQgZZly8mbyttvS9aBybNWxZ+6sTK+m+CzpZ6k3pcLmhEd
	mtmHChnxf8QYyHoGo94aurQ7ZeidjRvyHQGGTnXLuLWsNCw1jJlpMxn8Eu3nbvqsKGBGunX6/61
	KGw==
X-Received: by 2002:a05:6a00:21cc:b0:742:a334:466a with SMTP id d2e1a72fcca58-74f1e7deaffmr21401122b3a.12.1752557271060;
        Mon, 14 Jul 2025 22:27:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEjHHRCqb843TFZouUVb+ppsFdAQ5P9WglVKciLnWHuaOIeW3ZTU6Z7D0yDvKTFScJr2cVt6g==
X-Received: by 2002:a05:6a00:21cc:b0:742:a334:466a with SMTP id d2e1a72fcca58-74f1e7deaffmr21401093b3a.12.1752557270635;
        Mon, 14 Jul 2025 22:27:50 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74eb9f8f24dsm11071535b3a.156.2025.07.14.22.27.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 22:27:50 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, neil.armstrong@linaro.org
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v4 1/2] arm64: dts: qcom: sm8450-qrd: add pmic glink node
Date: Tue, 15 Jul 2025 10:57:38 +0530
Message-Id: <20250715052739.3831549-2-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250715052739.3831549-1-krishna.kurapati@oss.qualcomm.com>
References: <20250715052739.3831549-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: qWrfvieaOV9i-jw0f8mVo3j1xTQTAJyy
X-Authority-Analysis: v=2.4 cv=D4xHKuRj c=1 sm=1 tr=0 ts=6875e6d8 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=z-YkvCHTclE8bPj8c4IA:9
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: qWrfvieaOV9i-jw0f8mVo3j1xTQTAJyy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDA0NyBTYWx0ZWRfX9kDaV3AgLYB6
 /34dGy2URZphppN96hHSOusaMwSHNRFJ5eNG2Ub3OrUG1OI3KFuc0dqo4Kpr33G7k6/YwykwfW7
 rsl4R0vZ7x+bQr4qjfdGnxf9sXzTDNWUlptFLUVI85KyZUHvifm4iFaz9WNQZ9f3v1z5Yt06sUS
 SaMqy58qDzLP7uGoYhaDnRxnq+kWs13vCemNGDIvJFussEvM5P//kAZ82s2r+jcmDnet8vrPLgE
 wffLl6i9Xuc3ivHJnqUTZn+kfE6tkdPpyW2Frlay83tCpRczebGjqfRx2oz+jK/S6iMQKjYk8xK
 04YqIApngn2AKexFjZ8lE1HBSoZcO6dPjkmPjWFBdewHRjsvWAxkLGnfydfHZpVcL5vna8gW1QJ
 NTyHsf9eHui7k3Co6MsaP+URnac1BckzHfTvzJOH72NOEnR2SdfGGvikwFEziJegDfu1Rkiu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_03,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=999 impostorscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 suspectscore=0 bulkscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507150047

Add the pmic glink node linked with the DWC3 USB controller
switched to OTG mode and tagged with usb-role-switch.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8450-qrd.dts | 51 ++++++++++++++++++++++++-
 1 file changed, 49 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
index 8c39fbcaad80..56db5f79f59d 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
@@ -28,6 +28,49 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
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
+
 	vph_pwr: vph-pwr-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vph_pwr";
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


