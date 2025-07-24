Return-Path: <devicetree+bounces-199509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 75149B10F42
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 17:57:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 555F11CE53F9
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 15:57:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5070E2EACE8;
	Thu, 24 Jul 2025 15:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Rp9vTXhK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF1632EAB82
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 15:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753372626; cv=none; b=QEnVKp19m5SnupLRTMARMQUHYEKk8SZcAlW/AdXEV5OlztWnHMXZYdJ6QcjwnFMHswYNgrxkKyhMJ7umcxyixBDQJ8fpyQCOj0NUOYql7Rxga09XASDXLRw42CTO4DluH6Fc8P//mLreGxJxmNPRXonMalHC4jfqBsXvHq4Mwr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753372626; c=relaxed/simple;
	bh=7T14pRw0Q8ZjghHfjLjOR1LnpC5mJ0EyzHOg/XJK4FY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=NLPGk6I7oS6I+QAMvuBdF4dtoQHhII0Qsibs8HMh5fH8piQ2huSp7/eSqM0Ti9O8B+FJl07pE4RQvhfzEe7uyLQelD6pHchez2DycoUNhwMkRjLh6tUR2qRRD1jembmhljte5ZlLlOfWWCu5TQ28YtBEfat9b68ohcdRRVDUAp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Rp9vTXhK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56O9BIME005800
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 15:57:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=/eXGMOuQy5U
	D0xBEyKQmMrAv/q+wo0dMe9aS5o4AHm4=; b=Rp9vTXhKzXzy3b5R2M8brgvLf3G
	pJ3w1/OmpLn6mCZcKhFRMoiUvHAp+308LRXtqa3PqpV8iSBSjWmfsiXdI3j6oe19
	e8ekL00hQ+zy76jQwA+UOcd61HacLEJpw1HoG29Q2u3ABG22b4TcRbRCQMsnxKhd
	G+dhmUpPr7uI6GP3+vy5fjzaCcJ+QCYSn31B52aKzTn23WfoOqsw/7npJkWmK15y
	33vVfhARXOrHGcXEvsq64imos9I1HEg7QqePd1AciYeCxeFT7K4Z4EY25cDM8xXI
	vzJjKemQpDX9gpP794np3QGB5l6O1OukfLkrzOyws6Qb2sowmNc3M//JUgg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48047qhax2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 15:57:03 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-748fd21468cso1111531b3a.1
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 08:57:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753372622; x=1753977422;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/eXGMOuQy5UD0xBEyKQmMrAv/q+wo0dMe9aS5o4AHm4=;
        b=gD8NZKOMNJLYUICJA6baMybPrvywkahCYSSdxNB7NaSKA5kBaM2tp/38wg1nb0WvU8
         LRUzGfgCbSnFhd5utcCEBQbjaWdHlf7br35VLtrHCAmVgXwkidQTLD8n6s9fUuMiltqG
         xaZZs3QACW9y7iuEd5QWZdfU9siPN9SDXEwYtLNbPoWHLj5Xt653y4HSHAd/o3kTW4Ig
         //9+tnBq5I5iyaawyp3XbHk0w5/F302JjzBAcz4U0EnpC0e715bQMafi2dretmnFOvjW
         0blNHs2/5v66QwgInb9W4nWn8vV3QM2+pLwkf1DqGADqv34gUQYvkUMRC5ZRVQEY1bdj
         ICuQ==
X-Forwarded-Encrypted: i=1; AJvYcCWj8LQp3KTsXmrSMacO49XYfLNnvXlBKUSZqndNPhIHXTb+Ul7gMtK9GNj5391Wa9dIvoHA1TQ4D1Xq@vger.kernel.org
X-Gm-Message-State: AOJu0YzqV9am7IdBbeHyMUouEKuLP+AZ0RhNlGEnoJ2wnzUG+AaU6enK
	LsfkYs367DncTaF9yhAYPjKdmn1fxfHDZ97kVG4e9KJlsCQcF/kZgz5H2Uj40LQ6oAZtybDj1xT
	RCWcB2WcGfQRh5CAO+D+9HBsZ2HolmVTh1TqLRFYTQLzkVHB0gEKrmaS/K853Mitt7UNozxLR
X-Gm-Gg: ASbGncuSZ/1s7E/awjQAP/3M/wYGuJ1ngkhZLrN39AxwNidIxD1RWs2+kfmESYmI3ma
	max3+ezubAGlmc6KuopzIc14gOLree0yoljOM+ncQRq5jEYoGJ6vh50pjQvQiO8u6r9TIia+6DQ
	b1Ff0nKs4y6oAV9bO/GA709U05Y+xks8BlhnNRtgTjtZ1cmxmk0hPMh5XBLpAczQJ09HcXSOmXs
	pRnwyAoZBV6fjv8w4wRSlTHjcad8HjP7aA/BjpKaosuldo9QCppZK4tD6Tj19GNp+SIwx65dY9B
	Yl0t+wdPlXrMcDujDBvgbYzfXwmSVm6mmctYUzIyhGE8Xk6HUTnqEWmDZvJ0ocOfyu4pdPC+i25
	C
X-Received: by 2002:a05:6a00:1485:b0:748:f41d:69d2 with SMTP id d2e1a72fcca58-76034c0047fmr11693232b3a.4.1753372622191;
        Thu, 24 Jul 2025 08:57:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFQRpVKNYqX8ET8Nc5geOzF3YP+Ip7Ck74EGzan+vHURyt+s/W6A+BS/xt0gTmQP+zPfRHRlA==
X-Received: by 2002:a05:6a00:1485:b0:748:f41d:69d2 with SMTP id d2e1a72fcca58-76034c0047fmr11693190b3a.4.1753372621754;
        Thu, 24 Jul 2025 08:57:01 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-761b05e8498sm1988516b3a.98.2025.07.24.08.56.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 08:57:01 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_pkumpatl@quicinc.com,
        kernel@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v3 1/2] arm64: dts: qcom: sa8775p: Add gpr node
Date: Thu, 24 Jul 2025 21:26:31 +0530
Message-Id: <20250724155632.236675-2-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250724155632.236675-1-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20250724155632.236675-1-mohammad.rafi.shaik@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDEyMSBTYWx0ZWRfX4TWh4r+vxl57
 KO9Ulu62CHkiZx5USDQtYEhi89ePgaZ0+wRoD5gsuiO8VPPmEiyaEfFTPDbsooqYyFF3tApat60
 QERePCaC1cHiseE3LQPIG+pjO5LiViPRHZ5tZYpdv3UI9B8RkuBzsoMDVNhdxFGeaIvlgoIS2Yn
 pjL73cXJKeaC/V2mREd+8l6BJjEdOYqE2pv9Jiz5Vh1cMwKmvCnGnJe0RfcoumTiLe85kUaCNHi
 WzUu5W2Zo6VOGr++bEAo9NbVkFi3FjyHeiWFNz4IG12h2ZK1RL6vk97j2xxKsDHsZbzuA9m7w/W
 7KK5+aPzRSLgaExZiY1cit36WEq/u0duqKvtPHV1n12X9XZNqJ8vB2h/5Smua9C41/h/qeYLfz2
 gjH5FsfQR/7AUtrgnUjT97hloCH/JUDWBA8Y36BvdLtbZaPPCZuXhuA8bFvwUCN8W3LlpAV6
X-Proofpoint-ORIG-GUID: V1Ow_QYtN2pdXAgzp17wjoxltG5Ud7Yg
X-Proofpoint-GUID: V1Ow_QYtN2pdXAgzp17wjoxltG5Ud7Yg
X-Authority-Analysis: v=2.4 cv=IrMecK/g c=1 sm=1 tr=0 ts=688257cf cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=UhVUwdw8r1UmGneQsTgA:9
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0 clxscore=1015
 priorityscore=1501 spamscore=0 mlxscore=0 mlxlogscore=999 phishscore=0
 impostorscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507240121

Add GPR(Generic Pack router) node along with
APM(Audio Process Manager) and PRM(Proxy resource
Manager) audio services.

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 40 +++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 9997a29901f5..9bbf273ffce1 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -19,6 +19,7 @@
 #include <dt-bindings/firmware/qcom,scm.h>
 #include <dt-bindings/power/qcom,rpmhpd.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
+#include <dt-bindings/soc/qcom,gpr.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 
 / {
@@ -6584,6 +6585,45 @@ compute-cb@5 {
 						dma-coherent;
 					};
 				};
+
+				gpr {
+					compatible = "qcom,gpr";
+					qcom,glink-channels = "adsp_apps";
+					qcom,domain = <GPR_DOMAIN_ID_ADSP>;
+					qcom,intents = <512 20>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					q6apm: service@1 {
+						compatible = "qcom,q6apm";
+						reg = <GPR_APM_MODULE_IID>;
+						#sound-dai-cells = <0>;
+						qcom,protection-domain = "avs/audio",
+									 "msm/adsp/audio_pd";
+
+						q6apmdai: dais {
+							compatible = "qcom,q6apm-dais";
+							iommus = <&apps_smmu 0x3001 0x0>;
+						};
+
+						q6apmbedai: bedais {
+							compatible = "qcom,q6apm-lpass-dais";
+							#sound-dai-cells = <1>;
+						};
+					};
+
+					q6prm: service@2 {
+						compatible = "qcom,q6prm";
+						reg = <GPR_PRM_MODULE_IID>;
+						qcom,protection-domain = "avs/audio",
+									 "msm/adsp/audio_pd";
+
+						q6prmcc: clock-controller {
+							compatible = "qcom,q6prm-lpass-clocks";
+							#clock-cells = <2>;
+						};
+					};
+				};
 			};
 		};
 	};
-- 
2.34.1


