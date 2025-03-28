Return-Path: <devicetree+bounces-161518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A31A745A6
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 09:46:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB64D3BBFA8
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 08:46:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 439C81C6BE;
	Fri, 28 Mar 2025 08:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W8LLHozJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6E921B87FD
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 08:46:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743151605; cv=none; b=IG8IR2Tjl0GdXHCRAcB+FrV3MgdOC0sPBNG8vLmMVctMnURA7AfYnFvzlUeK0NURIjzLvZyIYcz4gvqHUbF2R+Nez/frGDWAE9fmPHxWIl1R5wBfYDEFgF3eKxpsFcutXTzaY302H10/1/J6Wjp+I3O/8mB1UshPVE/eCPMgFS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743151605; c=relaxed/simple;
	bh=as/nwDc6tpW0x5Rq8lY1UK/LDUF9Ljw4CWXjcjoSyIA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=lGXNbYqsEx8vqLBCSfDsXAsYIqQz7yiGVCL+SchwqyZ2ZyHiTAuVultfdrDWfkPgRZbUB+su9lqQOIX+qeEXkcyXUgfvAyZrKWnt9vUwDgefnXd4Ik2KBnCU5U4CL3BoqrYRkr+Cf8GjiXJGcQLyP8FWq/WMKNBRdaUwOdpk0Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W8LLHozJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52S2C2IC023507
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 08:46:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=VeuF90ZbIxKLHjHHxyB/BcpBXCnucnai8se
	TjlBYVYo=; b=W8LLHozJc1qJgb12tib4EjIobbBjrmPXz8UEPMfIkC1ejCMETD9
	Sjdoy/92OU5TpvRnse3qC3aP6q6mGKwfXvMF64+NbKgQsgJuB0HspT8C8MjMvhLw
	K1bmTM7xIVnjWzuHW524xmKBEHlL0TuKxvQRwfmMEFZ91Zo/91ydXKYpjojaPRmd
	2UvFwm14mJqFpGHhF1gHdJSxaDlOYL6PqAWXZALuweTk30T/Mw5OfWJJgSutz7vi
	xvnp6hTDS9c9LbW8PvxUfuM9zgLx9sgjTyVxzeQXGDh9364UpcAqOlnUPATYsSpr
	UyPk+tLEQbzfjUbPWQ9lnc6XpLMzXu8OXNw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45njsc10xd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 08:46:42 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3032f4ea8cfso3623937a91.3
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 01:46:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743151602; x=1743756402;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VeuF90ZbIxKLHjHHxyB/BcpBXCnucnai8seTjlBYVYo=;
        b=caz1u7Ud8MgI9sX5tSOwyLv71cU7dPCvogazXFVPEzKv9KG/2JtqCKAG6WezIjRxiw
         91BlvVArTPa9eMEfSmcSF0ElHx9SQtmrGb9l7Nam8yAuzN07P+vGVTQJdMq0Y0bIZwBz
         Dtq2RaslCvCZbJvy9pdLJ/p5sZ31K08v7rUbpThPNb67KEOeIe6B2H4xz/NYgoBh1jqg
         t/bY48BM/ZM1DuZi1y5YCNlvWVKKzx4okpw/c3PAJaboK8UfGOWhulY06MRr6yUPfynL
         y0Ps41r/uc6Zo7FGh4+WZKqsdiMwA3D9VPIG9jYDBdAvpE01WoCbIvIsGqxZaAZ7c4KA
         4+dw==
X-Forwarded-Encrypted: i=1; AJvYcCVMYJiBCtOi9AmBPWFmBu1Rx6f1wia09feJdXqFUCW5LgLacY+41clAQu7wVrseWwXk2Fo9LSAS0/Wt@vger.kernel.org
X-Gm-Message-State: AOJu0YxIFYxPfw17weDLHwY+0QJShcqoHRRqPTbWgEUZCgdF8pI7HMGj
	lOU3GWIIQw78Gp7pFNsCA6I7vtkKXu20k7fUlfx2mCb8/0eFEsSG2K+0Whtk69hcbLoLPJnbRHY
	LVWftU677vIwohID3q9GmuFw+EQtYuSgUhsJAnj2GKho4C0JslZYwC51K/l3y
X-Gm-Gg: ASbGncvg3Jn4IjcuFT2zjqBgJ+ivCUDGnImpdxWZISXmUlpSagU7PatCctGVX0ty5ab
	vlHePyYhMcqJ9osV6mCQKFQp1l5D/63wMWO5kavODtQjrxteMSEhJ1EZzzOFQsFLKEldoLr47GK
	h3R7di04tBCVRhT7/9v2n8hZ7E/Y/mdAq8EhJpNshKaXGfXXAuvHp2EI4jt/ee/u+49jl3w8Nug
	0SN5zmOxsTRi/BUSwtmAR3yNn1IQoUZRPozEdsuVlcSAz3rsxr+U0QXsQp6+P0MU2+17MxWwx6R
	xsLdSPpbQ7gl+2lVixmyTEvBZ1sBHQR7VWUiflRw5/WfW8jDKfQ=
X-Received: by 2002:a17:90b:2b8b:b0:2ee:ed1c:e451 with SMTP id 98e67ed59e1d1-303a7f6eb38mr10648560a91.15.1743151601613;
        Fri, 28 Mar 2025 01:46:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHIXAXo8F17vmdUxdCArQZWMf6OcZ2S+QRE7Rf2hJ9sqvGmbRD2L/Y/wTIuvzG26jsvcouGEQ==
X-Received: by 2002:a17:90b:2b8b:b0:2ee:ed1c:e451 with SMTP id 98e67ed59e1d1-303a7f6eb38mr10648511a91.15.1743151601113;
        Fri, 28 Mar 2025 01:46:41 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:7062:5f5a:bf69:400d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3039f8b1998sm3595249a91.49.2025.03.28.01.46.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 01:46:40 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org
Cc: robh@kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v2] arm64: dts: qcom: qcm2290: Add crypto engine
Date: Fri, 28 Mar 2025 09:46:29 +0100
Message-Id: <20250328084629.1290797-1-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=fJk53Yae c=1 sm=1 tr=0 ts=67e661f2 cx=c_pps a=vVfyC5vLCtgYJKYeQD43oA==:117 a=xqWC_Br6kY4A:10 a=Vs1iUdzkB0EA:10 a=QcRrIoSkKhIA:10 a=EUspDBNiAAAA:8 a=foE35NVKWDKkT8SmfxwA:9 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: kqTu5zB9A_KTlg4Cfdhl0NjajNkfOik3
X-Proofpoint-ORIG-GUID: kqTu5zB9A_KTlg4Cfdhl0NjajNkfOik3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-28_04,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 mlxscore=0 mlxlogscore=999 clxscore=1015 phishscore=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 suspectscore=0 spamscore=0
 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503280060

Add Qualcomm Crypto Engine (QCE) and BAM related nodes for this SoC.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 v2: Remove redundant iommu streams already covered by the SMR masks

 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index f0746123e594..ffe4b2444256 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -749,6 +749,30 @@ config_noc: interconnect@1900000 {
 			#interconnect-cells = <2>;
 		};
 
+		cryptobam: dma@1b04000 {
+			compatible = "qcom,bam-v1.7.0";
+			reg = <0x0 0x01b04000 0x0 0x24000>;
+			interrupts = <GIC_SPI 247 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&rpmcc RPM_SMD_CE1_CLK>;
+			clock-names = "bam_clk";
+			#dma-cells = <1>;
+			qcom,ee = <0>;
+			qcom,controlled-remotely;
+			iommus = <&apps_smmu 0x0084 0x11>,
+				 <&apps_smmu 0x0086 0x11>;
+		};
+
+		crypto: crypto@1b3a000 {
+			compatible = "qcom,qcm2290-qce", "qcom,qce";
+			reg = <0x0 0x01b3a000 0x0 0x6000>;
+			clocks = <&rpmcc RPM_SMD_CE1_CLK>;
+			clock-names = "core";
+			dmas = <&cryptobam 6>, <&cryptobam 7>;
+			dma-names = "rx", "tx";
+			iommus = <&apps_smmu 0x0084 0x11>,
+				 <&apps_smmu 0x0086 0x11>;
+		};
+
 		qfprom@1b44000 {
 			compatible = "qcom,qcm2290-qfprom", "qcom,qfprom";
 			reg = <0x0 0x01b44000 0x0 0x3000>;
-- 
2.34.1


