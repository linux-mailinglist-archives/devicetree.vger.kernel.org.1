Return-Path: <devicetree+bounces-208111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BADB3193F
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:21:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F01CB177A20
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:19:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D46282FF16C;
	Fri, 22 Aug 2025 13:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q6FPDBLo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65EA52FF144
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 13:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755868770; cv=none; b=HeGm8F6EV1p7fKSvffOe/rftyyoCHB2mC07hwcOvmsbwXBKTjzsCFzdPnuc3xCpOUm0qrponOYhc4BlaknmW3PpfzsloD7ZhfL09vdXLl50bowh9J8EB3vWimsnR/RPr2ITHN2XTQQw3mSttPQcnI6mewwXIEryXc1PvUmeen/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755868770; c=relaxed/simple;
	bh=eiD1hB+Z0uOsoTw3flYptA1TO1Mamh7hsireh/vdeas=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=F9kCiYYJBuHSYIOyBxCJZfR89aKt+dgEriBQioSnGKOaJWRiCdW4W8nhdtykgIWie0S3UOY+3v8/aFESndSATVfuu55p1+DYFZIHprAb3I9WI1chfUx1ujp7lobOsEBMo8bQPtPYVE7o6HP/vjysDZz4r9Rpf0PiIfVUXK0xM6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q6FPDBLo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UlUq030778
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 13:19:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=YkT9zTnMs/T
	gchpz93nWzqSoV9Tb3aGhpZ9nYmMDUsw=; b=Q6FPDBLo4vyNHfBAMylYWREonrX
	vIylXDSvw3lu9p8UHBDqJi3sv/QNbGSHzlpxO28HFGfoe48pnUVX7SB/DExHzBbv
	+leYC351TPEXmFxlVLH0Eh4xFSGq4m8TToIiJsWgdYROKGYwwuBqL0Nk9p6KQHy0
	S8S0PjnTfT0QuGeI8SNZsHZ272HYq7zw5GLQexgEqvNWh8sM2gnBoV2epy2yE6jW
	TCDgqeWP8p1Duhq/wIU3+2xyDpK6Lt+Ch14aiE4FewNg/6jUt+y7Zkhttd3H7rzh
	hYL/2bmQoqAfqfBA8U+l221DvSyeV2xkmKkWPwkdu/T/2zkCxdFAdFt4m3g==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ngtdq54b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 13:19:28 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-76e8ae86ab3so2329820b3a.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:19:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755868768; x=1756473568;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YkT9zTnMs/Tgchpz93nWzqSoV9Tb3aGhpZ9nYmMDUsw=;
        b=ExVNrhePfeg07dDofrgQDkWCdwRcibVQavl6BPHj3KJFTtbHcStJg3JtPa4SaBEEpN
         uhOS4IU8mkcfAEV3WVqB9EsSRi8Z6uCYQAIOBPaailgmGFMNsyWh6IBhI1Bm9Nm+4jyn
         ChdXXUX6RhlYCH2nTQ+3IwMdMm04Z4/LxIGlcohrjTW6KNEfJ3+T+PblT4yWDp4vTibV
         rr/IoKC08G9fBIeEF3krj/WKwbAtau1JQYx+eQYOf7+thGnye9aEVA6jSuEEQNUICZvC
         JEBiqw6A/s5YVTjjp70P8/AcP5LH1BnvcdpdauEho9yw4dWxrAENDX3W+CpmzGaTmBnJ
         +iWA==
X-Forwarded-Encrypted: i=1; AJvYcCVE/MkGaAoAHjqAnuZbGIADFop8WPNHg+rmmtW0BbUuWfyxthga1NulQrjRN2Kv7KYRO5LDufQggwxu@vger.kernel.org
X-Gm-Message-State: AOJu0Yw692jUa1a6Z//IJF78Z6sI1JivjHWwFJgd+FEdNflL3hP2i43F
	VkZ7MoLdbDrZw0tl+8kXDA1nCoahA81geQ3NtuXx2GZpyQSttXaEdd/9GTdAcodztyjzR5Ax/0o
	fz0ZxK4mMB1OT0Rm1cTFYG5ISjMKcSKq2WF72H6jBgCZcLCooi3c5d6v+9Qw8kfIgUjOxnCnZ
X-Gm-Gg: ASbGncsFTHlB0HWIcDX7XMzTB62ceUt5+5Z9qfr1fkrRuw+ZE/bgXWUDzrvq/M7weWp
	j3aBoaLo+7HPVx1pGCbZwnCNOtXyywz46LyzCpQgl0LMJ3Pdrbzpk75nbShckM9tAaRtvquNXpp
	EGfzIbELKxE9CXAULnuRWqQao1QXJZpQO2uIpOoQf1+ftKNKKMxedP2Q3BSf7O85Q9s2dMgYDGD
	eCK1SdVp+d2SbikbhsjemHyC5GUOWI37Br1k0jPTVPWU1j+cpUi49VRVXO+s7Jp4DYcg/nkfis+
	hT9J4LB/xqR05q4QwR+gADBj1TAmTo71LePnzNGSyCY0AsnHSbjPBmctY9tCtE4ZaHv5nmcafu/
	M
X-Received: by 2002:a05:6a00:4fd5:b0:770:304e:3f79 with SMTP id d2e1a72fcca58-770304e4ce9mr3977329b3a.14.1755868767787;
        Fri, 22 Aug 2025 06:19:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEkUbwnCaMCD6FD8jRHFi94nUzhVXub+bQPoS4iGq4KAqIZXczHs7G8IrCqxVInuv1iHBKQZQ==
X-Received: by 2002:a05:6a00:4fd5:b0:770:304e:3f79 with SMTP id d2e1a72fcca58-770304e4ce9mr3977296b3a.14.1755868767289;
        Fri, 22 Aug 2025 06:19:27 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7703d2b7301sm405621b3a.93.2025.08.22.06.19.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 06:19:27 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v4 1/2] arm64: dts: qcom: lemans: Add gpr node
Date: Fri, 22 Aug 2025 18:49:01 +0530
Message-Id: <20250822131902.1848802-2-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250822131902.1848802-1-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20250822131902.1848802-1-mohammad.rafi.shaik@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=LexlKjfi c=1 sm=1 tr=0 ts=68a86e60 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=UhVUwdw8r1UmGneQsTgA:9
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: PbOLoHC_YXTvKsV1p-JPEX4XrQzFHJ9l
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDEzNSBTYWx0ZWRfX2y1BZxJa5voe
 IseTF3SlOhKgLRS/tYOY+bbdEKkyDJbVuz3S6YcnYZFu8jzZ56MjSvtIEU6I6han/wPa4iDT47H
 cMf+AmmcpUK9wO1ADf+7jvRisvkB2GR64DVdO8+KOzjrKuitgKOk6S0w1la75StnLl/YiMRcReG
 4F9RNAyPcNjJHTGwE1rh95HLuSwlP8w8/SpGrEAtpVLZhYBxtaQnuS6Z2L7Tm7tZmDI/2I9xbrt
 K6fCN7Qw9vIvEZf/vfap0Mr8MSMSPvu5z59wPOZfAnU4SSPRi4+3C+C+9GEZHgzR1c8bYzBedM3
 uvW2gQqEtO3J0lX1QWrJuHNZP/u5RkT57/1DVoH3vWG6nfErcV0hrctmtf+8ciJe7eh5G0D0PSt
 ERhuXLHsqEP6R+lV4rDTvYQikOsP+g==
X-Proofpoint-ORIG-GUID: PbOLoHC_YXTvKsV1p-JPEX4XrQzFHJ9l
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_04,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0 malwarescore=0
 spamscore=0 priorityscore=1501 suspectscore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200135

Add GPR(Generic Pack router) node along with
APM(Audio Process Manager) and PRM(Proxy resource
Manager) audio services.

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 40 ++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 64f5378c6a47..7026f25877c8 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -18,6 +18,7 @@
 #include <dt-bindings/mailbox/qcom-ipcc.h>
 #include <dt-bindings/firmware/qcom,scm.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
+#include <dt-bindings/soc/qcom,gpr.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 
 / {
@@ -6596,6 +6597,45 @@ compute-cb@5 {
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
+						q6apmbedai: bedais {
+							compatible = "qcom,q6apm-lpass-dais";
+							#sound-dai-cells = <1>;
+						};
+
+						q6apmdai: dais {
+							compatible = "qcom,q6apm-dais";
+							iommus = <&apps_smmu 0x3001 0x0>;
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


