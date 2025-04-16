Return-Path: <devicetree+bounces-167656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B47FA8B3CD
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 10:29:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D164A17FF1F
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 08:29:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AA9C230BFB;
	Wed, 16 Apr 2025 08:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FELFO+EJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E679230BED
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 08:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744792178; cv=none; b=d/Tdr+hApTYkSR6kLZpRdEOBFULVmrPNXr9/bWyXQe9R8IZPVF/08gi/RFzF8iIMrldPlySXbjDBu9+Ox46QXT6nELINRaNzHDXD4EwaygGZMEOsYojZ8+TtOk6639n5+bxcrztPoUdho/a0rJzWXxtgmmxVTpHS1yUpMjzF/2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744792178; c=relaxed/simple;
	bh=na1/Zw24hI1uKkKNkkoiRtkTYgr19cUVzwcpNyunse4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JWgEOw59KIzh+ntqKeaN6H5LbmswSUK6oBfqr23Ptotzan24YPMZQhR3ICFvE6VHzAhPXlsXPSCYyw/83sRVHwqW0u+k64olgJ+E0VrQp3+XXYyJE/RvED/4svpYcumIvJAmBMJuA1M98N3KpvuBfLWxjcwYOwvBwXIkICx3MgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FELFO+EJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53G7JNKs001064
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 08:29:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lWARJA4TOUUcn5s9GU1UvI0az8KnFVRHVyq68Mr6JyY=; b=FELFO+EJk3iTsq3E
	R1YaD2noOJiXdFukqikMq3veVSAns5RdQ28BTrRn/M46I2RR4lfuJ8kVsCLMFr2T
	ygQz41ddOJH2j0XPzNEfi+CzuYKKAMel7hNUIKimNEqq/MyOj+Dn6mg11yFWUk+5
	5VMEbSJWcfUWX3U/TmI/qP0lbuEKX+17pqu/DD8A7xmciDli/I9vP8bjoZpUjimm
	Alm1JaJ7veWLh4aXiOiCQlJFDXzxvmHsaNhA+e0p4nk3PcK0ncMYOZhqM88Kt9Fg
	reiAB68hTp9hwC4BaHDVUn2xCgo2WMAUp/Y9UjLhFd+2EfM1Qyxv976um6PoKKN9
	gD7uQQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yf69tv77-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 08:29:36 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-225107fbdc7so58352175ad.0
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 01:29:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744792175; x=1745396975;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lWARJA4TOUUcn5s9GU1UvI0az8KnFVRHVyq68Mr6JyY=;
        b=ActAxNnoxNbreipDJGoY5J4VZaV5nR9qfswcSr34DFVLYhBBWSfRaAgm7eBSQT+/mT
         DjfwV+W2kUux5CQKU+lvVa5zabxbVJbVZnHnGTfM1FHeYyN390uXGNF0+Zyfnxjs4XSM
         ToQHWcTvVUjaniKfCGy/brt6Z2yHLT2TJf8E3C1Eh4Jw7FO7kxvyEYLzclx18poTb1JF
         w/XCp8DTgED+8SRHfxEMgbD5kEPFHWzAD/Cnk8CiVWTontOEBz6n/QQ27U/QRC8Kv6uz
         p8HJ/iPCNwy+BgwpwCmB1Qu4vxZQMbUX7oWZ4PLcOOv4ptnDOky3S4I1SsCpGbXk5WvS
         7h+A==
X-Forwarded-Encrypted: i=1; AJvYcCVmlx7eExqZfSvyWyqsQ3qVE7+9Nc8o5uQ/3/KPp9NGrodrVXe/wRFo3Rcmz/9VrUSLC6XoOEcYkQ1f@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1zerdSlgf23gZ2rnQ2iQlS4KYnYW5tcVsJwVqnRq4O+w6wg8H
	FX/BL5CboKJxp/bW8HzfJiwmApqzc1A41sMpGjg5PAvPo2oNXrFj2lRYAzC5Ob2boCCM7p85Y9s
	Xu3rQzAkdl8u9pstEMPlQpABii/SviBYWb8HXDZMUPshbqhLoFGfm0pwqKigh
X-Gm-Gg: ASbGncvSlJ5DZ/1y77CGlmF7LHRvkkvnQYJK80e5S8n0YAJoCgNvH87SJFua6nCOxgd
	IudIdDs1Sb0e7o3WUb6JPfg2zw4+RcRB1P1fXWkUN9LoLeGtKeDxKim+HgSiqMwdl3aW+LCaPhS
	lbO+OjWAf1HRUQPkpy56UiLTss7QMm0vzlbmp7ZHw0+a+zc0PmbFGHaACcwP5JGdq4Nev4zSVZv
	BL4nClAs0OFNM7LwAieCiriiCeFXHcqiFBODm606I8uOphp0SkRHpvIZfe40TGIgqdRXAal6IxM
	+6lgt2Kb9OFJfRGsfs0oMhcYtJhQPd0gyrOtGGNbsrQLH52XZrgs2LprLvx9/+SBCL/bYSuQCHk
	EeHK1v32cxrKdW+8YsYbYP32FowZUbIFiiRR83gVzLnyv05g=
X-Received: by 2002:a17:902:db0d:b0:220:faa2:c917 with SMTP id d9443c01a7336-22c3596db15mr16780705ad.34.1744792174746;
        Wed, 16 Apr 2025 01:29:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG06rUxrdzAHKOZGs+EmUFQ4eIFU9Ex60xOVoX1QsrCuGTbmlzASmqV0FH4//IiXg4bgYsd6A==
X-Received: by 2002:a17:902:db0d:b0:220:faa2:c917 with SMTP id d9443c01a7336-22c3596db15mr16780365ad.34.1744792174341;
        Wed, 16 Apr 2025 01:29:34 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c33fcee11sm8340125ad.191.2025.04.16.01.29.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 01:29:33 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Wed, 16 Apr 2025 13:59:19 +0530
Subject: [PATCH v2 2/5] arm64: dts: qcom: ipq5424: Add the IMEM node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250416-wdt_reset_reason-v2-2-c65bba312914@oss.qualcomm.com>
References: <20250416-wdt_reset_reason-v2-0-c65bba312914@oss.qualcomm.com>
In-Reply-To: <20250416-wdt_reset_reason-v2-0-c65bba312914@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744792162; l=1346;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=na1/Zw24hI1uKkKNkkoiRtkTYgr19cUVzwcpNyunse4=;
 b=yjnfq6g2dSPN2XqgCgNy6ddNjI3ndxAMrR4pzsbwEpRmPnnFBvnc5FqqrWEejDn+lU8Iz9Ef7
 y57tFJLJdu8BtrZDUzr8NOENBpRmI4IfieN6worrjH2OBI0pnB+Imab
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-GUID: s7zIwi3MEpYrgPc2mUtzLOAMSgw91vQV
X-Authority-Analysis: v=2.4 cv=JNc7s9Kb c=1 sm=1 tr=0 ts=67ff6a70 cx=c_pps a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=QDJorwyCwNfNgOuVDpwA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: s7zIwi3MEpYrgPc2mUtzLOAMSgw91vQV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-16_03,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 suspectscore=0 mlxlogscore=868 lowpriorityscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 phishscore=0 adultscore=0 priorityscore=1501
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504160068

Add the IMEM node to the device tree to extract debugging information
like system restart reason, which is populated via IMEM. Define the
IMEM region to enable this functionality.

As described, overall IMEM region is 112KB but only initial 4KB is
accessible by all masters in the SoC.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v2:
	- Describe the entire IMEM region in the node
	- Explicitly call out that initial 4K only accessible by all
	  masters in the commit message
---
 arch/arm64/boot/dts/qcom/ipq5424.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
index 5d6ed2172b1bb0a57c593f121f387ec917f42419..4f18ea79502738c2b9cb4b13e8eb4ac4ddd89adf 100644
--- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
@@ -486,6 +486,15 @@ ssphy_0: phy@7d000 {
 			status = "disabled";
 		};
 
+		sram@8600000 {
+			compatible = "qcom,ipq5424-imem", "syscon", "simple-mfd";
+			reg = <0 0x08600000 0 0x1c000>;
+			ranges = <0 0 0x08600000 0x1c000>;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+
 		usb3: usb3@8a00000 {
 			compatible = "qcom,ipq5424-dwc3", "qcom,dwc3";
 			reg = <0 0x08af8800 0 0x400>;

-- 
2.34.1


