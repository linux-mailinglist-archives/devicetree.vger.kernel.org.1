Return-Path: <devicetree+bounces-256014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7ACD2FB55
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 11:42:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8187C3012742
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:41:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B4EA3612CF;
	Fri, 16 Jan 2026 10:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L+vsve5H";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cYgEZ3dL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99C2D35FF6E
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768560112; cv=none; b=kRUOZ+oyD+FhVJkHxcNw56ztI862SRmyc2cAvRE9xINKGJmiebXWbyws14TEhX5Yss1ZUWp8JlCw7jKZrar8ZkyTF4rIPuHzWR7c2EthDJ8Fj8aVaNFBflTterMrspk2JNdzLvxMY5gXOGkEjNXUBPXSMAF3VaDQwkKHv8WfQZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768560112; c=relaxed/simple;
	bh=O8FU32FkBAciOl2oRzFV+HCHGNf0bjtI10/1QWem5aQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=coMWGni8b2HGuGaXe6A/kNZdSDfZhXgzTDyUhHE8M087Dgms9ZJwBCzLACx2PVoc2jJ5kQXAJFqBUKQO4UTtflaVedNP+CUGpdD2N8XY/+3NKQiQjDpMCDJpxOzTD746fpCg9DC9JoMyFpg9kSo2YbA/+fsVdiW3rGQ8wb72n2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L+vsve5H; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cYgEZ3dL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G7uvcp2819062
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:41:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KWlURl9YK/eYseoveAaKtXBZQlK2aafXh27y40DE+q8=; b=L+vsve5Hzzd9Fme0
	xXSQeqApEaz63H3KIFzTGLNsC3nbw7nlDM7e+BFnZ1TpYVJnNmttNJ8spfUdXBd/
	mPG947w7TIVpJgcHnVZQDMvBPr5WBrgCzLLnbodmfm2xLytstqIun+cFGhX8g1ko
	xtcpBC8jYDEJiIR0N3iIdiLriL+TewSwpED4e+OTM5BAWB2Yjf1dSMaOlTxNJWKy
	wMH8sytGcw0f/vVbN4CxgMqXH6sXbjmYW2lN/Bbx3U8xvFf7i1n6aC5FvR3CzEUH
	ubZvhe6lRCRVtN9Fimlwjf8+feLcEf3KesqCAMH5K0xAnWuzlUanLfaj+0QVA9bY
	QlKw0w==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq99ahudw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:41:47 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0c495fc7aso19164565ad.3
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 02:41:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768560107; x=1769164907; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KWlURl9YK/eYseoveAaKtXBZQlK2aafXh27y40DE+q8=;
        b=cYgEZ3dL54viIssRe1FHjCJJQe3UUBDqC7XVTkcGQlwXKZ3FdpoOjyXoG/q8QXcQBU
         0M5KkiqAsrd8QdKcpyELV4XATbNzLx3qdnRr9q4G2fdqwKDbqSdLHT0RadHX9wmJhaiD
         ztoOX8CMM/C3jeFWASdXQAIy6AZLbQuqV3AxYamO4xv+A0Km3LdG8v9Z10tBPC2dbeNn
         rG7TuY36vvOPk/oc8haP6+YqcQvRB8C/r/gMJx/NQt+5vcPb0ZK1B4uNPmjX4EjsiuCv
         uBPxCVjYBN4+cWPpbOFg8depHrRxMPf1JcxrgVKB2oiHcNep/xXkM+JoGjIObsfASZye
         QRWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768560107; x=1769164907;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KWlURl9YK/eYseoveAaKtXBZQlK2aafXh27y40DE+q8=;
        b=RLgDL2/3e8gFzKrenqcdF5g/l52EUrQajcK8e/83hiD031dCBuWKEL8T1+z5XQMy3I
         bnEbhL35WZ2dy9bkBjCeiuhH6+I6BxopCsgzVUUhw8TboTKQhfcsQ6BE47dhLnVhqZZ0
         ilJo7CBSPcoYFwaOObtnxNVcXuKQuVcyXr/qVn7L7HxaYrhVJqBvHJm141dhKwbsAupB
         UteFe/ULi4ukwLtdgCMim3Mqr9BOJZA5EGShPl1+ykpZjlWwcKtMV2U6g4vDJaJ6vBtl
         OJykFa/rVr84inGDLm53nYXy89NAhnsU+Kugb7A7OU2/cflrggIpjcz8oVQ4tgQ0y1pp
         FIUg==
X-Forwarded-Encrypted: i=1; AJvYcCUn27IpMJxJTMNJpbIb+zL6dv3nxsnFBDHLKOoQeqwk+RSXbfAhZkekc7Srs1G0ePZvWY/yGt9rOC4M@vger.kernel.org
X-Gm-Message-State: AOJu0Ywns3aKH8KC+ekwQ+sxd4BITdjHIOqZerlvWif0zUduZd+bZH7Z
	YIXzZmcGeAordCRv6hRA0s/RuQ9FrEGFhyZzxsfyX5wZhz8zibaSxPW/06FaE3NcW89s4WE0UdO
	RLhpwL2LNVMSeE8yzyghr/MveHjOwB6vTdvaTm6qqHgEa0guRwEQ2scP3i4srCpLb
X-Gm-Gg: AY/fxX5ML6caiAFxN1cdblnqByyMJCAxRjnsSVz/c4KyU31b0ufKDTyzrXcO1hyCAdN
	GfWfOCaVxhwBiI2rnvE8XPL8/Ti3gMSTc3LkOtKkb1icIPLWTZCwA+ewx/aNKNAdOy9yfCpjkaF
	kyHjKz21GxO4g9AiTflF1DBr+0jE8tDDKxUlige6L1OBbkvPOWLmfjqLo09ltKVYhWHHqmqvwcv
	LNf7E5sEGL/Q7f2fOXhcM8aOPSAtJcrkCFtxMCXmslhVu40TLFw3Ci/azoWGRECuVI1LT4Dr9md
	yBhIRI77py+G3StDS47vmfTYUYgmG11F0a3hEZivpEHIFFWcfq/0/R8qEXDcnllt+29m9sUaFdJ
	vdQ7ZLZqPayfYK7PwU8cDzr8qyNqKh7EK80FrkdeoA3WR0RYsLOucVM7rcWhrkgoR20jNdfCOP3
	c=
X-Received: by 2002:a17:902:ea03:b0:29e:c283:39fb with SMTP id d9443c01a7336-2a7177cf550mr23627475ad.52.1768560106619;
        Fri, 16 Jan 2026 02:41:46 -0800 (PST)
X-Received: by 2002:a17:902:ea03:b0:29e:c283:39fb with SMTP id d9443c01a7336-2a7177cf550mr23627245ad.52.1768560106159;
        Fri, 16 Jan 2026 02:41:46 -0800 (PST)
Received: from yijiyang-gv.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7190aa340sm18009215ad.3.2026.01.16.02.41.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 02:41:45 -0800 (PST)
From: YijieYang <yijie.yang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, yijie.yang@oss.qualcomm.com
Subject: [PATCH v4 3/4] arm64: dts: qcom: Add PURWA-IOT-SOM platform
Date: Fri, 16 Jan 2026 18:41:29 +0800
Message-Id: <20260116104136.2922032-3-yijie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260116-purwa-v4-0-89b2adae9f09@oss.qualcomm.com>
References: <20260116-purwa-v4-0-89b2adae9f09@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: MeztVT6xc1-1uwh0huzUI63M4FhX-UaH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA3OSBTYWx0ZWRfXyge28MOVjFQE
 RkGDxnGnHUWfJBPljxdtD1Mc69wzDC9tqPVdGTKkSsGnupvu7mwsnaXcYXyP4L7eH3RhSnrXfjj
 9acgAzgau7HbVBjJqq7EGems7TjV9paetMVOBk7fgV1EZsl9EMjDeviuHh2zwcUPxawwaVzTNgG
 5o/3Wa4+yFc78H8wgTHtGCHQQ7yxUzhTKUq3NGCYVxZH3j9m40J5/3p62HfY7U4i+Ytm1kuP98J
 3au//ITMzilu44V3R7DwsDnwgczJ+nV5iKz26DNq4cxY4TG0oWhcG6iafk5yQn9OkztJrCSqCXU
 X0busogaaWzFBajtGcme1pi0Gy73s+RSSWvTrihskqCqg5rvFVWVmhjd3DgUKUZL6WtCuFbCDOj
 4gQ9kpX8EGS68QrR5Y2L/ZH72OooRq4ciYa+mBs/2KHL2E1lUC9yjbprhJsz4j6T1dwAQPNqIad
 Le4DeBSVohUqUgmT1Nw==
X-Proofpoint-GUID: MeztVT6xc1-1uwh0huzUI63M4FhX-UaH
X-Authority-Analysis: v=2.4 cv=f5ZFxeyM c=1 sm=1 tr=0 ts=696a15eb cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=93V5M4jBH0hLqW-x8QsA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0
 suspectscore=0 spamscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160079

From: Yijie Yang <yijie.yang@oss.qualcomm.com>

The PURWA-IOT-SOM is a compact computing module that integrates a System
on Chip (SoC) — specifically the x1p42100 — along with essential
components optimized for IoT applications. It is designed to be mounted on
carrier boards, enabling the development of complete embedded systems.

Purwa uses a slightly different Iris HW revision (8.1.2 on Hamoa, 8.1.11 on
Purwa). Support will be added later.

Make the following peripherals on the SOM enabled:
- Regulators on the SOM
- Reserved memory regions
- PCIe3, PCIe4, PCIe5, PCIe6a
- USB0 through USB6 and their PHYs
- ADSP, CDSP
- Graphic

Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 .../qcom/{hamoa-iot-som.dtsi => purwa-iot-som.dtsi}   | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)
 copy arch/arm64/boot/dts/qcom/{hamoa-iot-som.dtsi => purwa-iot-som.dtsi} (99%)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
similarity index 99%
copy from arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
copy to arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
index b8e3e04a6fbd..fb90beb1096f 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
+++ b/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
@@ -3,11 +3,14 @@
  * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
  */
 
-#include "hamoa.dtsi"
+#include "purwa.dtsi"
 #include "hamoa-pmics.dtsi"
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
+/delete-node/ &pmc8380_6;
+/delete-node/ &pmc8380_6_thermal;
+
 / {
 	reserved-memory {
 		linux,cma {
@@ -378,16 +381,12 @@ vreg_l3j_0p8: ldo3 {
 	};
 };
 
-&iris {
-	status = "okay";
-};
-
 &gpu {
 	status = "okay";
 };
 
 &gpu_zap_shader {
-	firmware-name = "qcom/x1e80100/gen70500_zap.mbn";
+	firmware-name = "qcom/x1p42100/gen71500_zap.mbn";
 };
 
 &pcie3 {
-- 
2.34.1


