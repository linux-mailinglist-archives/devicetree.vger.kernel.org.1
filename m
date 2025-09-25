Return-Path: <devicetree+bounces-221187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC06B9DACB
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:38:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5E3952E2ADF
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:38:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 247FD2ECEA8;
	Thu, 25 Sep 2025 06:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EShHlFp5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1202ECD21
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758782030; cv=none; b=D7zwzlWyFseiGELqFTR0YAG6s3O08sCBRwsTxbm5WoSwwhV2WzmthmLwGJFTIsRzRm+lh+4/DbzF9QeLMegbf+wW5MBd9nRs+s3EYJN0LIQR1L3g0ySnoIAqwXIUQ1KJpl+3K/rKEnA01YAo0vPsUaINzqncKc2CxfXSHr6uLUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758782030; c=relaxed/simple;
	bh=gQJ2ZTluSPl0btbHY5JBZLmKAc79qMYc1ayPNK0oRzo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nJtux4yH3UQ3Xs5yESQl3wHYaxqanVSLvBMdW4Xt10w1D+AYoB/TuqggwH4lnVsJq5eKXLEbGTX8p98WRkCL+t8p/CFg8s673oYOjS1xEcmnkLag3qzlq5kbQRjlKfqrcu2YbwS9bAHi7XV7U3kqRmt7mP1jiAqTlTI8xyA2s8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EShHlFp5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0rHKD002802
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:33:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yYpcbaYMx/nDHjUz0/6uYp++ThN6Ho8R/IOjzK2L/PI=; b=EShHlFp5jJGjED7Y
	nIe1GUeLSr66Av2HpOrqTqt7tlkRtNpbsMUkxqm8SIdHKIVzNC2MQDCPtuwE/I7J
	rkFjvnZT9bjxGR0pUDYoBW4voeLxYzvAzA88rkk/UCm0VTakg+MQUyZV/d1AfnKa
	ewbyLcTaAJJ6g+SRRAhZH4WvvgK2Kmf1aZbR8kKX3DJs0NQwXiDOLalswjOXI0OQ
	zRoCCa440n+sqid5Xfk3wfWjm2kTiqhSeY7OzmNkXuRhLSFF7+WIB8Fu6qdTX4JU
	r2scOQVVOjKiCFYK/heIFl7CS+aYTyfywfDsemYuaKSmYa3HwCUk8Vg348iQuGjt
	UyZkiw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf1jrj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:33:47 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-24458345f5dso8652365ad.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:33:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758782027; x=1759386827;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yYpcbaYMx/nDHjUz0/6uYp++ThN6Ho8R/IOjzK2L/PI=;
        b=vtccWgK0PHKLiWsCZQ8jlL6/4e7kHOJRgKfCgfppFdGwzFXnbZXweBOHt/y2Y7RT+a
         xHnO7yVEspZn9j1SA6xzDuwFRThFtwiJXlv9FTJKvyYj1CnGpqD9sOwE01Q6tisINOJU
         L2exepyepC1zeLhNkrZljThZR4biHSSDN7nzysyfD2d9+xxTA25qA/zQ2275uzLn093R
         EdMH0PHGRyO5/cljelmL0SC9cpShNwXqFlvGivXUvMIr7AnheJ8hf5Xxpg3OMNsWuERY
         q0PP1wvpa28GqPRqXWt1LvdMVOCYPnvnZKFYuP1vAMzMSlsJpor4NV75UvwD0dmxNLg6
         xU7w==
X-Forwarded-Encrypted: i=1; AJvYcCUGJHgixOhXZrcM1ZEf/jHBMhd11ok8aXF+8VSxJ/mdLY2QaekasDdsN+N2nOQQxSyD86JAekDzxPxu@vger.kernel.org
X-Gm-Message-State: AOJu0YxsPORCqDWAM9S4y5vUXucqC1L2sZLn+LcYQ/tKkvnQ2GdVzagH
	vQZ6OGtJTVvC1eYYDPc95pBqwN66HXnVkrkyTVF/ZQKTcRfVOQg2As4xmj4LU6003hbfe02q7wn
	JSrqAnr0GP3DsIcj7xRcMOmX12OtHlK2WYTOzHpA/zlz0QUhBgMEckURWC90XTQXZ
X-Gm-Gg: ASbGncuF3vtoQ3whD7iSEyLdhBMyCVp/Wmw2ooOY4Ux/oA+s9ICY+IYFD2itgCcTUlN
	jliFF/gjWL6BPCpPO7D2lLeIBmnMVfUJekneD5DLRANwIags0/ptRe5CokBT3PIP+1ed2vE7JEp
	NrUlL7+vH+AYAHDCk/TYBP3Gco5BTPKaLMP1OyfRNfwgJBS5an5RjQ42I6aKKYUzp0nYiO/iyvS
	rs3HXztS8IsQ5CII3OeTQ4ZjdJ4kjM1pncR2RIdLIUj85bfTEZ7sIYPY/gkpsxpOcWEJ0VebwnJ
	vLZPEoqmGLSU4FKLkn4to4Wk1n1aRXoB9ttB9zsBWtAJkQlgDzZj3OGo/S0ewaLcDHZ+VzQZdVg
	O6qwyMtNRMbSR1awjRtycuUt5PoMdij8ilp6iNKmZJyOYDoyiSy6xMBCroHDy
X-Received: by 2002:a17:902:c402:b0:26a:ac66:ef3f with SMTP id d9443c01a7336-27ed49df693mr26538235ad.8.1758782026943;
        Wed, 24 Sep 2025 23:33:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHvM2LDyqLNvkc0nxyhLAA1mDrXFQTQu+3sbzXmRSdxmhazBOlTMhhgZ3KJl7wIoNnhs0bfvg==
X-Received: by 2002:a17:902:c402:b0:26a:ac66:ef3f with SMTP id d9443c01a7336-27ed49df693mr26537605ad.8.1758782025732;
        Wed, 24 Sep 2025 23:33:45 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671732asm13793515ad.49.2025.09.24.23.33.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:33:45 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 12:02:16 +0530
Subject: [PATCH 08/24] arm64: dts: qcom: glymur: Enable ipcc and aoss nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v1-8-24b601bbecc0@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: W9GGcGOkvRmnYj-FhBTOTm2gv5rml9bX
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d4e24b cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=f5wZDNqicMbGYsbpI58A:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfXxulV230umyNW
 i4TyGpxwhhp0957fRHAF7+gu0tm6DDtgzIyla8IMlUSm0bBa2cmrRpYwJNEJ4a2fhX7JLq1jrdT
 Zb0LT7BXytBQzulYOk/izIIeOw7saHd3kiuSAPgg2NHaRL2yDExk6O1EnS3+y9UYbmNjX8kz9CU
 m6GKEQ+Ofq3K21OTIH6dPBAQyVNu+KP8RWSInH3r9NS7qnJMjF+uBN4W8LbDWS3b83U6Vzc5Amz
 CJiUIL/XNhlEUhb+W64cT+VtD0M9At4zWiI5kCDDkExw1RRE0XnPUmkwg3OgCxOfjbNjLsiRoCh
 Y6Pkmag4E0gJA86wVwN/aJ/4pqwG2dEZMGp93QvArqRstUKRk2GOsNEHMgD9QiFKHTzPxH0Xyq+
 +/9lHJaG
X-Proofpoint-ORIG-GUID: W9GGcGOkvRmnYj-FhBTOTm2gv5rml9bX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168

From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>

Enable ipcc and aoss nodes on Glmyur SoCs.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index d924b4778fd37af8fe7b0bceca466dee73269481..2632ef381687c2392f8fad0294901e33887ac4d3 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -11,6 +11,7 @@
 #include <dt-bindings/interconnect/qcom,icc.h>
 #include <dt-bindings/interconnect/qcom,glymur-rpmh.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/mailbox/qcom-ipcc.h>
 #include <dt-bindings/phy/phy-qcom-qmp.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
@@ -2536,6 +2537,17 @@ hsc_noc: interconnect@2000000 {
 			#interconnect-cells = <2>;
 		};
 
+		ipcc: mailbox@3e04000{
+			compatible = "qcom,glymur-ipcc", "qcom,ipcc";
+			reg = <0 0x03e04000 0 0x1000>;
+
+			interrupts = <GIC_SPI 229 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <3>;
+
+			#mbox-cells = <2>;
+		};
+
 		lpass_lpiaon_noc: interconnect@7400000 {
 			compatible = "qcom,glymur-lpass-lpiaon-noc";
 			reg = <0x0 0x07400000 0x0 0x19080>;
@@ -2572,6 +2584,17 @@ pdc: interrupt-controller@b220000 {
 			interrupt-controller;
 		};
 
+		aoss_qmp: power-management@c300000 {
+			compatible = "qcom,glymur-aoss-qmp", "qcom,aoss-qmp";
+			reg = <0 0x0c300000 0 0x400>;
+			interrupt-parent = <&ipcc>;
+			interrupts-extended = <&ipcc GLYMUR_MPROC_AOP IPCC_MPROC_SIGNAL_GLINK_QMP
+						     IRQ_TYPE_EDGE_RISING>;
+			mboxes = <&ipcc GLYMUR_MPROC_AOP IPCC_MPROC_SIGNAL_GLINK_QMP>;
+
+			#clock-cells = <0>;
+		};
+
 		sram@c30f000 {
 			compatible = "qcom,rpmh-stats";
 			reg = <0x0 0x0c30f000 0x0 0x400>;

-- 
2.34.1


