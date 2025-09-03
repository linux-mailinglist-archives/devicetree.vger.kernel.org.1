Return-Path: <devicetree+bounces-212130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 730E9B41D98
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 13:53:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF3CE1BA6FE4
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 11:52:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FAA930275C;
	Wed,  3 Sep 2025 11:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V5ZoMyae"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00F923009F1
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 11:48:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756900114; cv=none; b=Mpx0G/2mw0pgHyul3YOtbPo0nuFQ64ywNV8sHK8KyjFB+zGXZIfaeFVbA0cHZnKGfdQhfQgv2VL2mFM7JxGSHrH0SltPLZQaOML2HhRSOfXULE3xMBSPI3nBVdh5UF+DTu0gZiq4AJPkSTkllAI6+TDnF1K0nvafiqrmkhrO0aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756900114; c=relaxed/simple;
	bh=Q+4M1gxYM9HSpOhjer1cCvNOrpmuy2jkOdR2r3bDUIg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=buQm0kbIBWoxn3sHoTfWbnvFkrINsV4A5nIX7pBu221LMLeEufg93sFnR/BZZMKRJj07Y1LVGqmUcNT0kMvjFsHogOze/7026UmNUr9Ca1UZVb1OdHDXfczJ+iqUyf0hr5c2+tU/XH1nxP/uoB4s4RU035YtvqI0gb3Wi0mvi3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V5ZoMyae; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583BFDxV004810
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 11:48:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3yoLPIunPhlxXFE1YCNYajxXEoQDgef9KEiYtHFNANU=; b=V5ZoMyaeQ/IMBAZS
	NSftbvkO9lVLdFO5Bi0+h1D0e2XRtjZGPbUKa/MiyFhRBsml++Cdlefsu150yOpb
	LmU2ZdFqVbpnklrxTkFpG09MEkybAzoF6BRU3KU5sQ/hDtUIsBQyH7O//KJcgKaP
	F3ytORc+yQILisfLCCWrW18NZJJLRqgqlOfiLWzQiA6Zfc24MOGAXVC0LLDtffOu
	P52k8N8rB4hqhd/j51ohY9TLgWoCzmzJdlynX0mH9/SvQrFZH77bXIIESWFZ1MEj
	2VQKZcNTQMzXMZCy5rC7yAwje0LReENfZrBR0BS5gEUhRDd1mFlM5ctF77VUOqto
	o0WhEQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48upnpbnuy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 11:48:30 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b4fa4be5063so674362a12.0
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 04:48:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756900109; x=1757504909;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3yoLPIunPhlxXFE1YCNYajxXEoQDgef9KEiYtHFNANU=;
        b=akbeEbPIsq646rgG96CDzqvEkVqtLUUzXmU4/9VeO5f5K75mea3FdBb2arCobgGoYz
         Yyz9h4KjewZYm4i+O7uKdP9VCjo0pnqKSB9Wo6hsgBWpenj19WLznltNVhM/H3WOQ99m
         +MhicQXKXcIL3i53os6GKpuCsNRwQ99qJm+1MNZO2VbJV3Txv1Vco+/GYSHVkvDzQQl+
         MCCt71xTbuaGxHi2VXvgs5O7nfw01RxvC+VHfuj/DZxAal1LpbbiiBpZFua6HLoyNSNL
         V+KU06rtf+pkMHT7haO91brqLcYmTO60+U+xq5/R2gBECTA6elDiUtIy+NknetZPWuNy
         ntMA==
X-Forwarded-Encrypted: i=1; AJvYcCVp9JAc2UtZJiOay+AlMzCRQ7LWlBWF5HqXK3vJuN1ptpfzfngX9c9UEA7rCadpsuHJo/4M7WCXKZ2u@vger.kernel.org
X-Gm-Message-State: AOJu0Ywlxq9i2EJoHoEcbHJUJTUgp1dH4FQw7R8Vohrd3s70uVtoU/zW
	boqFydtT3Yp0GN5OZRcsxS27gmUnR5RgGPY0oRLG6xveJcvEPSj9DWCKcEvK7adQw92k2X9JMrg
	F+gGbUgszJDfzCzT8eZY18cIbn2uoKQ/TUgKPHrQNYsYXd0WoYfaJEk2EUSNqaE3K5ez/SMXX
X-Gm-Gg: ASbGncvSHJEb9q9YA2JfD0Uaaf+3xjpLk9qrrJocCdMLB+CPztCRNzoSf4MFQEgEGo1
	IQSjWJgJmWCVj6kEDaPBtoOmmRvmeUnR8AlX9vOA7L9+94yQ33b/W76HbTDO9otaerVuQynQ/gs
	JbVEr5cdRkH+oEhKUHL0UR5ydSrAhJgE9EhtkJ6iZtjPM9Glv3n7ZzV0gqBtrnO7wkRUM5rRPpd
	zzXWIhadrolB0VEeJhN10hvb8r51izBI+MCG9BzmXKXn0GQiK4PhuWXaOg1+Uvbo7J8Q6+aKGVC
	uKLltRgTgu6uZbFvwVuNgMTcWYOiA9ZCuW/387uN0fOWcdIVdGX1IxAFB9O7xkB6O0Nn
X-Received: by 2002:a05:6a20:a10a:b0:246:4bd:b1e0 with SMTP id adf61e73a8af0-24604bdb601mr4899140637.11.1756900109292;
        Wed, 03 Sep 2025 04:48:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEAWInvuzPYzNObB97vfhFOKCVNEC/bk/7+AjIv2wJlRbSZhoDyW3yO6kIqh6YF/MAAVsUJHw==
X-Received: by 2002:a05:6a20:a10a:b0:246:4bd:b1e0 with SMTP id adf61e73a8af0-24604bdb601mr4899109637.11.1756900108811;
        Wed, 03 Sep 2025 04:48:28 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4f8a0a2851sm6584074a12.37.2025.09.03.04.48.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 04:48:28 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Wed, 03 Sep 2025 17:17:13 +0530
Subject: [PATCH v2 12/13] arm64: dts: qcom: lemans: Add gpr node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250903-lemans-evk-bu-v2-12-bfa381bf8ba2@oss.qualcomm.com>
References: <20250903-lemans-evk-bu-v2-0-bfa381bf8ba2@oss.qualcomm.com>
In-Reply-To: <20250903-lemans-evk-bu-v2-0-bfa381bf8ba2@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756900050; l=2037;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=U/3aiQXpOo/u0LdqKxwMBduUHkRjUaNYx/wLMpz8xkc=;
 b=oknvzwqjjZHQ+lM3hzDmbgunEZPkHv8q/ZeUVHhRQ06P+pw430u+f7T4pnXpjUGz2rrAewx4N
 DQTGHRuuSd5CnIsNIR2doOiv+j97FbkbvVtyredmF73OecIYOJgyPRa
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-GUID: 0Hoc0eR6kteJwec-iRkOyADZiG1MZ7pw
X-Authority-Analysis: v=2.4 cv=Jt/xrN4C c=1 sm=1 tr=0 ts=68b82b0e cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=vHYnVJDjh8PKMNTngWAA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: 0Hoc0eR6kteJwec-iRkOyADZiG1MZ7pw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwMSBTYWx0ZWRfX+GJeHM75mjeW
 WmDODUx3F8Et49Lj3j0xmwi1MEc7fFNZrPO+Jd/7En7dgqc2UphenX3Xm2PDJOmUM7kjneLx/6z
 L0sle/XCCb2kyQzdVPxMvNtZTWQwPo3xHChhXyPwsiowCLDKN7dUQ42jyhsiZtLYFgnk50shg7/
 90y2/rKoPJbJx5Islm2OwNbNyx9Ijk48Ay52HMbe2zp8AWyOK61S5k2OBJ9nCfH9icyaNuxt5RV
 QHifQ3Mil4VqqMmifCNSID9esWFdOUGxcIlrop3zpzV6XtImJjDyDQ/zPg6bU37Bc/OwufW7OzP
 SSu+3GQfr18hDF4QiSIwD/066+RNX3PgU3pRFIlBdX8FgK50CpQEWLnIH/c7/bxd0MeVsS2WxDQ
 wOstbf47
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 impostorscore=0
 spamscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300001

From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>

Add GPR(Generic Pack router) node along with
APM(Audio Process Manager) and PRM(Proxy resource
Manager) audio services.

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 40 ++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 9e4709dce32b..41003d8878f0 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -18,6 +18,7 @@
 #include <dt-bindings/mailbox/qcom-ipcc.h>
 #include <dt-bindings/firmware/qcom,scm.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
+#include <dt-bindings/soc/qcom,gpr.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 
 / {
@@ -6700,6 +6701,45 @@ compute-cb@5 {
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
2.51.0


