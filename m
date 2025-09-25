Return-Path: <devicetree+bounces-221031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 53820B9CDAB
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:19:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 69A1A1BC5149
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 00:20:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E007A2045B7;
	Thu, 25 Sep 2025 00:17:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EtuGyUBM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF1B1EB193
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:17:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758759467; cv=none; b=UHogZhzQS49MUaiNCTywb3S6W/9KQYwG+VTo1/7RVRmmW3mZKXqOCriaLiLhSoHmhQvbKOk2tyth8zP5Qh2iOvkii53cZYeslHDQMBwte6uOah6hdqGByxMY+1Axh8wKKw743QRT7Eb0SWrBm2eBweDot2NE/e6fYcHucrJua4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758759467; c=relaxed/simple;
	bh=nIpTB0NeAUptoXv4uxWQfL7M88V4nsYNIHhSqJZnTHI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QadncmIW1r6m9BMD0Fi/Q4Dv6pKiagWAdPO07vrs3ItU/NDetapPkB7Q9CyxfnVsa0LnmKvwFxuH5s2xGsP3UyQ/FqoWDVwkFSS4gh3p3xr3iYgB04Va10cdmAVkuNZHbwEPs9ZW+QDTFqM8tS+q4glcurdLcIfny/q/qa5ynr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EtuGyUBM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCwa7P023773
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:17:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z41//8vHcA5fSlqMz3I2iIH0TKSTeYCJ9WHm1jj5e08=; b=EtuGyUBMuOIIgZ0O
	0ESUKQydhRP5kbxZFvC/zZI74PyfVnwCAElVBfTtPmL9Exd8qgtkY+jkdagoVQWt
	Pui+mIKp23ABsMbaSXe7oT6nyi6BCm/A+myHYzXxW2kXAtRKisgx2laU7cVtwElx
	XupNlOmCzYBxZvXXLPSPQ9028C+ibEeLFyfrXC9rH963qP0FDpLbsEfGlzLdxb69
	aNKB9kVpKU4PZz56gVMEbY+DmgCTDRiK4hrdZQ9eZ+6BJbTbhs491R3seMqWRsyC
	Z+bU+TopYcLlijryWU5V+tNvtfUPI1IpQ3Aor5bBDHY3qiwobK+9ShxPUPGaKLJq
	aII55w==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bwp0d5wb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:17:44 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-77f3aa0f770so601875b3a.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:17:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758759463; x=1759364263;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z41//8vHcA5fSlqMz3I2iIH0TKSTeYCJ9WHm1jj5e08=;
        b=VXzQc8hPvymX5DcgZrVqw98t6FHO8F9IwkacyZ9iPchsfZGtsauxTzmuAXwcczT9VD
         tl0vIvpmBtq3QyzOVSkN/vySbte2JXgXHSqtyf4S0gTWJypXtfLMZTpSnhE7+KYcv5Kv
         zN4B3OC8RHQ1KAr19eYHIpkVjodtrPbj2P4DbBcMQWJT5R8X3FLukE9/AHXFBpNYaSk2
         XeET60ZBsGEItJrNGsqTXeSfCNE5juvhxhpVOHXfs9llc/jK5gwOQ3YTeVKyGPiN1Lkb
         BC5CLW2zzi4g/n/I6arsZxbMnWj1a8BubaQgXl8EXtHCnidKuXXEUbeAPyXGlA6RzNPx
         H9dg==
X-Forwarded-Encrypted: i=1; AJvYcCXyp7ACq8E5t/o31zNWl0+hL6xNY8UZk2IUUW6SX0TmK1MjmAGgGIypOYaBn9hRxJ+I9G8h+Hp1+SFb@vger.kernel.org
X-Gm-Message-State: AOJu0YzulFFOWBCsycSh164P3dCvGB8Fk7DHSKCz87NJqsQhlr/frZam
	LLerJ4iiEASvmTr6LCWAFJK4ghvFwIGO3nboahqBgdyXrQzUnDs4siJZ2voMjaTe+exhR1nVVrW
	Xh1VCldRI5zgv4sYl9m1fBDZJecUr0S7bZVvKfDPll39q4QGxC9kKzSGgMxK6Xaev
X-Gm-Gg: ASbGncuTZ3SzlXNqii0l/HBFcEJb2iTch//neUisOd8nlAC2sQPmdZRT/xvzYiH5Xm8
	CSgqi8vQKD8UuyoGygQBXaPSONPB0+6bO2WQnQVwpXzkKaKceFMQRxVgjiy6GaC5kZBex8jbC8L
	Sxv+PkSgXzv29aRn7RxZDHzJxFAOyWD+yWImdvhMLvLmVVHVnjSIQB3trocq7qrt8EmzLWSTAPW
	VJK0t86Vr+ZQB85kyQn23/RXh78qY2+VDlDfxOubyNKqD1nfNQuYdcx83AS+Jbj6RuBE5wBDVZH
	VdQgQqSVAumZ2U2+26iU47Rsg5eTxoPu3Q9wtFf5Lv3PgRXMdUadFPOIIY7/Ovy25bmDZ+e8dFY
	U3vxZE1jv6e5pcc0=
X-Received: by 2002:a05:6a00:98d:b0:77f:6914:ed1d with SMTP id d2e1a72fcca58-780fced499emr1878228b3a.27.1758759463553;
        Wed, 24 Sep 2025 17:17:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFXFps2R9Lt4KZbIoLbgABdeFUsajRzhyvUdyW9Ku8o8y03n5rHoNIZC3NOGcdofL5GqUsl6w==
X-Received: by 2002:a05:6a00:98d:b0:77f:6914:ed1d with SMTP id d2e1a72fcca58-780fced499emr1878213b3a.27.1758759463149;
        Wed, 24 Sep 2025 17:17:43 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238e6fasm262748b3a.1.2025.09.24.17.17.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:17:42 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 17:17:27 -0700
Subject: [PATCH 10/20] arm64: dts: qcom: Add PMH0104 pmic dtsi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-dts-v1-10-3fdbc4b9e1b1@oss.qualcomm.com>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
In-Reply-To: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758759448; l=1536;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=PzGxNgs80hK/Q5JCvCqK5GCBIMfHwdCKONuBi7AoAB8=;
 b=/PYsSCARnprSR1JyZ9fqJ945vYHz6O5QqJ+Eg18n+k063EglvXO9TibRsFhZvFfe+r7KDxpWq
 POg2zkuB4QdB+25CLFax0wuBen5X5yVmyyebz4lPYcepV8OrnRZMXYW
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=KNxaDEFo c=1 sm=1 tr=0 ts=68d48a28 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=tfDFkgPjZAY9trorV74A:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: oFBMreGJPyUjlXEzYS9jK4zG7yTojBaA
X-Proofpoint-ORIG-GUID: oFBMreGJPyUjlXEzYS9jK4zG7yTojBaA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDEzOCBTYWx0ZWRfX4JGudh5mVAQR
 J+xT5u3c/qUmn//vA2m2iJO4aN3xkxoRMsxIzQhCPUFHDprj4wckbgd7p5idm6bTlqKE4GuILi+
 Rcxov3Z/V919jpfOgRGBPaOsfs2o1RKtfha1pyhfVBYNizjS8ApMlvNoaVcnTWgX4cXHf77AkCf
 SkmnEGc86di+PNl9jta0/wdV6ZY1bzqGCnhZEBHUK/6b6d8oRb7Sv2Aq15kktNojoLqULSAXpuP
 EU0N0lF61inBC7CDeOOk53iSm+ZjZYVrywIqcmGiH97kXBdLGaW4prE3tEhE2vu7Md6YdfQ1dsS
 Ft6NcOlpA+TkcSsDB/eyF6R93BMR9wqdvbmymuhr+X920ncWSf9PgXpOKAlXvnSVolchbgSlTZ6
 TaStEq0d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230138

From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>

Add base DTS file for PMH0104 inclduing temp-alarm and GPIO nodes.

Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/pmh0104.dtsi | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pmh0104.dtsi b/arch/arm64/boot/dts/qcom/pmh0104.dtsi
new file mode 100644
index 000000000000..f5393fdebe95
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/pmh0104.dtsi
@@ -0,0 +1,33 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/spmi/spmi.h>
+
+&spmi_bus1 {
+	pmh0104_j_e1: pmic@PMH0104_J_E1_SID {
+		compatible = "qcom,pmh0104", "qcom,spmi-pmic";
+		reg = <PMH0104_J_E1_SID SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pmh0104_j_e1_temp_alarm: temp-alarm@a00 {
+			compatible = "qcom,spmi-temp-alarm";
+			reg = <0xa00>;
+			interrupts = <PMH0104_J_E1_SID 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
+			#thermal-sensor-cells = <0>;
+		};
+
+		pmh0104_j_e1_gpios: gpio@8800 {
+			compatible = "qcom,pmh0104-gpio", "qcom,spmi-gpio";
+			reg = <0x8800>;
+			gpio-controller;
+			gpio-ranges = <&pmh0104_j_e1_gpios 0 0 8>;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+};

-- 
2.25.1


