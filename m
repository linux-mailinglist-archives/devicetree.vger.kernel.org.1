Return-Path: <devicetree+bounces-245296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A95CAED92
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 05:17:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5F7D4301CE86
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 04:17:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4F212620FC;
	Tue,  9 Dec 2025 04:17:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HejLrZU2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bOzALkJH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF98224249
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 04:17:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765253833; cv=none; b=bQpYYebCCPxQo30SKxeYbGKbw6WYd5+Aw7/wyIobK8AWoIkizg4mJdZOxaKjnaI/H9quEFN66KDMcSXOepI4JKyEruL6mZD+FE7WrR6vsrs3ySktcOO7bq2TTLMHWViohL65u13U/BRU0tiHrWKDXGTuVDfGjxvwpzJabYTOWd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765253833; c=relaxed/simple;
	bh=ouV4hu2Ckotx57nJ10BglicB7KhhnLHINmkBFwlrVyA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=P3qgahgTfmLUVPiARY0yQId7zk10Li7FU/wK8CFoZZb9rx3Up1+yr78CNSdkNGl6ovfnk8FVC2ZaWY68+X9VVWLoSub3QRDBln7ED1KpjEBJtsG8JZun6fD9Xly+C7VwIiFjJdA2+Tp9r9KxJTbfOnEgu3x+xHPba9fJOEClGb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HejLrZU2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bOzALkJH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B8NXCC92429301
	for <devicetree@vger.kernel.org>; Tue, 9 Dec 2025 04:17:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=Rua47TYfgtzBn0mg9klTE9wMJ/ANQb1kuuu
	xs41BwTY=; b=HejLrZU2bfOilJiddAqrbl2MGzNTIVi15Se6vI39pU9mMa5eD+2
	6Hk3CQERXFfhSNG1sZL8rjdDRzJnprg03NT5LW/j0ttP4CqaP8tEJQvdrk8qZOiw
	zPIcCK7J+SZYD6K7mTE1DMAaYI8pByNhuFyTkQL5Z7kPiDBaRDIUyHvopNRwgUoO
	KjDgPc3qB857IYMCblRtWTwQ9uE8Oq75PhmnD9sxWFxwS/tu1dYZarBwCIU3QTFj
	NURJ3HrE/WYdftt4vmi2SJMmSowbVIsGza8qq2UMTfkBZjCmHuG27pI6md4DqLws
	2MHrXQ1v86Gjk8mzkvhB5TILFzDJvVbfptA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ax2rf1n85-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 04:17:10 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34378c914b4so10254409a91.1
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 20:17:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765253830; x=1765858630; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Rua47TYfgtzBn0mg9klTE9wMJ/ANQb1kuuuxs41BwTY=;
        b=bOzALkJHSSFQN5AfthQwgysMY1kRed0RNF3G+9VMFL7pvs21Aa8N2ATIm+iuv5Pb1u
         y74UcQobSYWP4A+6hfQIvGN93hiDXT6burFzBpXckRwJek4ecxhkxPfS1tRjCmttKwZr
         5dSxGu2ZH7S9J232c47s1KYpJiaz6yNLiVwLVD4yKLwG2PBkpu37DZAxe91W+18gJRB8
         b1wBQv1dv2MvWAqKEISdFO75VM3Aca+uSxsut+ctv5JyID/Csy+3cBrElVPUqBVmvfRl
         ov0GqUhKhVZiLdocsuVrK8rBS9POZXlfkhn06DBvIIblKsu4Znuj72jVCOybkT/0Hbhr
         d+9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765253830; x=1765858630;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rua47TYfgtzBn0mg9klTE9wMJ/ANQb1kuuuxs41BwTY=;
        b=KtLiUeTwiIZ0zTDBX8LbeUBwKnGsKyp7+JnbgxPupdlcG+0jETkABH6VUgkZXjdITj
         kAFSrA/0VnVl4sgC+Klj4STvhr6IZA+cgJL6T6SarPTXYsSHmxrxUwqUQhzLCYs5Zm56
         Frxzjoipco9RbG2EMF4EeYCKyO2rjpeoRnJVD67MpbzgOYu/Aqdfgfybm0yie7QiOqpy
         F8JaY4Upn4yvOJMI8vi9ni3nLK7j3ipoAkaarGNile23sxeayE7WEkSMTcpAKbyHJVFI
         uwGP6sCu9sNkINa6Flje6pvWkfpDEFcX7pYZ45yfF+UXMTioIn15wSZ1ZE/pq9bTjkDB
         J5CA==
X-Forwarded-Encrypted: i=1; AJvYcCXtf9hauEkRHA64t0xqjEQCpUAvzF59SpGjwZpsHsGwxeEHOI1daNPIaBjc8DIeBaaWj5kDmKXuCvR5@vger.kernel.org
X-Gm-Message-State: AOJu0Yy97E6jzuIoJNiS7QASJjRZhSqFpvlhFgnx1HabLLQJ6ZUEwObL
	wKLpS/RyBArRZPbe6UXCJtLk4lymBWDWGV6Ptget8OPDslLZC8btMyT8wHSKW8pywBtUV+iAjd/
	HH3Emtv19FnmccfqwyCZBmCjl/43mOVp4TtxNrFYpJ2pyrUL5XaWklwMWYYKxLyQO
X-Gm-Gg: ASbGnctmaGLnSZ9F2MSvj0J6A0mkBKDglFbXsBhR1ZkawdypZkulYyzWJmDNEbEpw8D
	cwyNjGAtjGNTIttZaQMmmv2P2IOvHT5k4m17oIa25at5EI9TnvZi7YOFz0/Z2112gnCv27qO6g3
	80x06R/xplJkGZkHzqs+Kw/zhnZXFhmEu7wVuNe599BX3lNQKZHkFtpwMvBozqc5vaq8Phu+gx/
	u6hMVZOAEIgkOM7ocVCHjKQBq7jb1+8MfbZr7gO6U0G7X/CvFkUdu7F10OPULUSiBOBaHGnc6Wf
	GkOb+wx9y9Cva9cHLzbXsHF4NUiuCpvTLyPdFfCDPrBtHeDrVtx/NipP9Gz/9eIFpYUb5h0r9IK
	J3yxhuj0hAVS1j1kEwruWFN2fuSHd/27taCgcTNOED9fftUk=
X-Received: by 2002:a17:90b:4c89:b0:343:6611:f21 with SMTP id 98e67ed59e1d1-349a24e3b08mr7662903a91.1.1765253829730;
        Mon, 08 Dec 2025 20:17:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGIH4I/5geCVC6YIqRUZSlBlgyj8wEpwj1NWaFGsXD76bHJvgHvXApbLVFCtQbVQ6Vyv8xPSQ==
X-Received: by 2002:a17:90b:4c89:b0:343:6611:f21 with SMTP id 98e67ed59e1d1-349a24e3b08mr7662885a91.1.1765253829257;
        Mon, 08 Dec 2025 20:17:09 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34a49af0395sm761256a91.4.2025.12.08.20.17.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 20:17:08 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v2] arm64: dts: qcom: hamoa-iot-evk: Add vbus regulator support for Type-A ports
Date: Tue,  9 Dec 2025 09:47:01 +0530
Message-Id: <20251209041701.3245452-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ee0wvrEH c=1 sm=1 tr=0 ts=6937a2c6 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=_BliF1bqmBcd-Gst3x0A:9
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: cOrRDYOr_PgqLwRw3jwBSsLcQ0d2evbG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDAyOSBTYWx0ZWRfXwoP1Uec281Nd
 D2L6r6QeH9TxdEkYCAefgPcVJb18U97eMkTNJjTyHxz0C0Y9ypOAzm196SBm8Skn0LsVHuQAzJR
 t6EVngUhB8vKZ5SIKmlFudK+SVzQm5fU0jAfSAzYqUXstTmLjz48u5xD8ml1sdj8He84gjxDqq6
 fAwZOkwZVsGdpwMHs/9Dls1+z7aM+Qpir9QOk0aQxYKFF8zndd3MtGcDIZvkZUYLX6NuWgM47Ks
 xBhVGg2Xh47Ra0i2NBXEhF2+qWLnlE9E38ytN29hdxY3Nc40ojSEASxQ01DYLGwTqm25Hd5TgdR
 tDXwEUni77A3suFyuGDufkAF4HnsN6Yd3jas9pPOcMiXWbGwEZB/yKDwZkLFEjE/SqAr8rVzQCF
 /GyukE74Yn5gHziuU8doP+SeIPCXPQ==
X-Proofpoint-ORIG-GUID: cOrRDYOr_PgqLwRw3jwBSsLcQ0d2evbG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-08_07,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 priorityscore=1501 spamscore=0 bulkscore=0
 phishscore=0 suspectscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512090029

The Multiport controller on Hamoa EVK platform is connected to Two Type-A
ports. VBUS for each of these ports are provided by a TPS2559QWDRCTQ1
regulator, controlled from PMIC GPIOs.

Add the necessary regulators and GPIO configuration to power these.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
Changes in v2:
- Re-ordered nodes to be in sorted order.

Link to v1:
https://lore.kernel.org/all/20251208085152.2597818-1-krishna.kurapati@oss.qualcomm.com/

 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 37 ++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
index 36dd6599402b..e53de768b0ec 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
+++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 
 #include "hamoa-iot-som.dtsi"
+#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
 
 / {
 	model = "Qualcomm Technologies, Inc. Hamoa IoT EVK";
@@ -344,6 +345,26 @@ vreg_rtmr2_3p3: regulator-rtmr2-3p3 {
 		regulator-boot-on;
 	};
 
+	regulator-usb3-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "USB3_VBUS";
+		gpio = <&pm8550ve_9_gpios 4 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&usb3_en>;
+		pinctrl-names = "default";
+		enable-active-high;
+		regulator-always-on;
+	};
+
+	regulator-usb6-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "USB6_VBUS";
+		gpio = <&pm8550ve_9_gpios 5 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&usb6_en>;
+		pinctrl-names = "default";
+		enable-active-high;
+		regulator-always-on;
+	};
+
 	vph_pwr: regulator-vph-pwr {
 		compatible = "regulator-fixed";
 
@@ -877,6 +898,22 @@ usb0_1p8_reg_en: usb0-1p8-reg-en-state {
 		input-disable;
 		output-enable;
 	};
+
+	usb3_en: usb3-en-state {
+		pins = "gpio4";
+		function = "normal";
+		qcom,drive-strength = <PMIC_GPIO_STRENGTH_HIGH>;
+		output-enable;
+		power-source = <0>;
+	};
+
+	usb6_en: usb6-en-state {
+		pins = "gpio5";
+		function = "normal";
+		qcom,drive-strength = <PMIC_GPIO_STRENGTH_HIGH>;
+		output-enable;
+		power-source = <0>;
+	};
 };
 
 &pmc8380_5_gpios {
-- 
2.34.1


