Return-Path: <devicetree+bounces-180359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BA226AC358C
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 17:55:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F7063B6AA8
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 15:54:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0CFF1FBEB3;
	Sun, 25 May 2025 15:54:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DpgBdGzQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2277C1F8730
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 15:54:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748188478; cv=none; b=K4bNVOo3PuPkP995A5JVk1PWm4z3BG5kGDez1jfUmvOxYGSZHgseDPMDPA64qyBr6UlBlbjNEpfI5BKIoXJE54AQBozztTSvIQTYH23wtLEOMAQfEKzb5DNm+FE5qlW/tjSo4MsiK1nGPmJ31Dki7KlL3UVDWEZr8mKFhrsgrSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748188478; c=relaxed/simple;
	bh=vFhnjD2nLS307yoil/r7Jh1TA07/zWqWOId060i2bRk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cwsfcgXGs2cRhNvvTVdX/9zRiv5ZeOSsyUrTbSLAfb644RAnFd0V9gWiaevclLEBTxltwm+PEZjuZ0qnHHSL3i4RZpmtJQjZZOfl44FrUpipuQoXLs6lXi3x/RGNItWEcgRS0uO8ZhjG4tghdKAZE3mtaTzy5z1WnuN/ZVx6F3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DpgBdGzQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54PAZpL3017311
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 15:54:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=kZRaOFKYI5X
	beuENmaqYAXNNwOs5mPBPXmtK+BKVveg=; b=DpgBdGzQ198JNVekENRtXBJaZ7F
	NJGISJ4CF0qDabHkKUFjrErxuxCKTRHVeSEfIqVmWRZbr7f26o13hw095CnBSfQG
	SE7O+8ipC4MzvjVTwFlIg0XdiyTVHMKRXPEwPoWmtptW9DQyBFW2j1pLndPPTRus
	fR1Vggj6xfFYqxtFPh4NCiguq5nSjSHCRhhHNg4EZtlFRtlQEf7O1f1LnRMpqD/t
	bJJgnXKG7Qf+E5+A4ajIXWaroTfbrRte/rkGXm3hyyEgh5E2Qet2jOVJQqTemoVK
	zZnos+hoBWlh453DSjWYMOeP+xX8X7lpEUYUfWqzsyhC+qLqKwaMK+lXDIw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u52ut95b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 15:54:36 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-742b01ad1a5so2160524b3a.0
        for <devicetree@vger.kernel.org>; Sun, 25 May 2025 08:54:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748188475; x=1748793275;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kZRaOFKYI5XbeuENmaqYAXNNwOs5mPBPXmtK+BKVveg=;
        b=XNkeeGToPfFGOasi2Wy/cD9/bGcAY9LQt/5PCS/g9mpSgZV7a8YJpnRPmXcumkzOuC
         kxcd+yBtleLgZifJplIiJjNttq4QEwY6TG1S7xOmpubs3qHeCqNOvVvrN4yLeI+LTkUm
         NnSuGVWuAlnNEjmcmNs9br+qO7bHfNy+GsMvispDLNCQGhQx9UHeI00fsKP27f9zOf5c
         0YW9dfeKvf394oBUlErqQJiObxrO426OsM+EpWuEhlLnqA9wZn2vXW5ZUFq9VHPrg68w
         ccwDe5YbW8wrGhMwcfpSO0iXbjbHobS631r/itSRLIQluqodChF3Y+PVb8ujHygcezTc
         sQkw==
X-Forwarded-Encrypted: i=1; AJvYcCXNOFaDhikhNsHTMqehT441vvtGgL92O5tpLVIrsUOCr0YOj8pk8/a40o6EkkIHfb8Zr9bBgBIitNcY@vger.kernel.org
X-Gm-Message-State: AOJu0YzWK/Fb4zxbkg9WknqpVOKpGJVpqSDkOizLRgutPnkydAJGio3t
	2Xmq9e2WloUw19ZG+rN8X+YkKvkaGC9zLgdkIbwEEaE1OT9AyQJ0Dlf0B/jR3RJxH2N+CC04EYo
	9/D25w9n/9zvOpBB8uIpIAKbiNFlpv+Lke56zpS/o0TG5oxu7D8ZVdiDHRWzQBXMg
X-Gm-Gg: ASbGncuxvoqtsrz4i3kZGqF8TNkTYGoyaYpZfrRFscgXWtPfg259B/4/ThkLKKhkClV
	3Ore2munGYdM9Q0ISLrqcCPcau+2ABKh7VEjhQv21lqAlB8EehxuF6UHagYCNWoI4MZ+PR+HbLn
	OdUby0VGZwgzprWQeBRx2ZlZQeTWIILqs/9Qopnj/r5bdM+///Xo/2BgukxmiLd5184bRZ57Ppz
	IrZYvVQNVERb3m95t/np5sDCdOnH1CLZXD8uf/ifoMxq/Q3/6umB6975K+GRaS7NpdQEshATEPs
	UfKRywsN6MWkQlKomIhokp32FJuhALTfWiQy3bEUMfnVLeXi
X-Received: by 2002:a05:6a00:21c6:b0:736:5664:53f3 with SMTP id d2e1a72fcca58-745fe06456bmr8061824b3a.15.1748188475337;
        Sun, 25 May 2025 08:54:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHoyuCdtKsWW8jpfX2jHhlwf4Me6hSuTKiLPTNv5/ihyhxbTf0Yjb3AKJtdjeZF2GWTqLtqyQ==
X-Received: by 2002:a05:6a00:21c6:b0:736:5664:53f3 with SMTP id d2e1a72fcca58-745fe06456bmr8061804b3a.15.1748188474910;
        Sun, 25 May 2025 08:54:34 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-742a96de11csm15634488b3a.31.2025.05.25.08.54.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 May 2025 08:54:34 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_pkumpatl@quicinc.com,
        kernel@oss.qualcomm.com
Subject: [PATCH v1 1/2] arm64: dts: qcom: sa8775p: Add gpr node
Date: Sun, 25 May 2025 21:23:55 +0530
Message-Id: <20250525155356.2081362-2-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250525155356.2081362-1-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20250525155356.2081362-1-mohammad.rafi.shaik@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI1MDE0NyBTYWx0ZWRfXyZQx2mPe5ZDL
 pgsAf8U3LrFXi9SpMwuuqcAtmZCXs9KpDwMglKxvZfO5wYwHDdzYCIS1NH2T8GWw65OFDtunHzf
 tGbRL17gC0x2pU0nUskEwF7dRmJW9TNh6eXaK0k+2ikLXhYOeAO76/8v1WKq0GgXuV22L0ueliU
 NasdTTreYEfdyV/LNq1Gv85BP5OQZ90o+Yve+uLUUcUtifAcJFEaavH7zkepWP2w7LW6KB+23pD
 3kkeZKA0Z/H82nHoq3hZ8xXCkUP/ELwPmIkYgVyHa1KWYl6anIeFMTZx6ylXsf0WENwdsmM7VOw
 /6wjAvl/EwM8hwF8wM7ssduaXSbRPhWpEpvnyOsLco/HEC7bGgfKdbgj+gerFPucOdi2tSEQXyW
 fQjq00mhhDrBH1fCUEXOE7L/55YNJr+0zJFqv8E3VqbfkLkkoTwnXLnoJVmUbO1iC1tiU2nv
X-Authority-Analysis: v=2.4 cv=f/5IBPyM c=1 sm=1 tr=0 ts=68333d3c cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=UhVUwdw8r1UmGneQsTgA:9
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: PP-VKGzef-_y4TtMA1ry6D-Hs5j14WSV
X-Proofpoint-GUID: PP-VKGzef-_y4TtMA1ry6D-Hs5j14WSV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-25_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 adultscore=0 impostorscore=0 suspectscore=0 mlxlogscore=999
 spamscore=0 clxscore=1015 phishscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505250147

Add GPR(Generic Pack router) node along with
APM(Audio Process Manager) and PRM(Proxy resource
Manager) audio services.

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 40 +++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 45f536633f64..187a59e29f59 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -13,6 +13,7 @@
 #include <dt-bindings/dma/qcom-gpi.h>
 #include <dt-bindings/interconnect/qcom,sa8775p-rpmh.h>
 #include <dt-bindings/mailbox/qcom-ipcc.h>
+#include <dt-bindings/soc/qcom,gpr.h>
 #include <dt-bindings/firmware/qcom,scm.h>
 #include <dt-bindings/power/qcom,rpmhpd.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
@@ -6109,6 +6110,45 @@ compute-cb@5 {
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


